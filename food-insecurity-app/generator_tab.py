import streamlit as st
from image_api import get_recipe_image
from storage import save_favourites
from PIL import Image
import sys
import os
import tempfile

# Add "ai model" directory to the path
ai_model_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "ai model"))
sys.path.append(ai_model_path)
print(f"Added to path: {ai_model_path}")

# Try to import from image-recognition as well
image_recognition_path = os.path.abspath(os.path.join(ai_model_path, "image-recognition"))
sys.path.append(image_recognition_path)
print(f"Added to path: {image_recognition_path}")

# Import user preferences and recommendation functions
from userinputs import get_user_preferences
from get_recommendation import get_recommendations

# Import the FoodRecognizer class - with error handling for debugging
try:
    from clip_model import FoodRecognizer
    print("Successfully imported FoodRecognizer")
except ImportError as e:
    print(f"Error importing FoodRecognizer: {e}")
    print(f"Current sys.path: {sys.path}")
    # Fallback to a mock recognizer if import fails
    class FoodRecognizer:
        def __init__(self):
            print("Using mock FoodRecognizer")
        
        def recognize(self, image):
            return [("tomato", 0.9), ("onion", 0.8), ("garlic", 0.7)]

# Initialize FoodRecognizer once
try:
    ingredients_csv = os.path.join(image_recognition_path, "data", "top_500_ingredients.csv")
    print(f"Looking for ingredients CSV at: {ingredients_csv}")
    
    if os.path.exists(ingredients_csv):
        print(f"Ingredients CSV found at: {ingredients_csv}")
        recognizer = FoodRecognizer(ingredients_csv=ingredients_csv)
    else:
        print(f"Ingredients CSV not found at: {ingredients_csv}")
        recognizer = FoodRecognizer()  # Fall back to default path
except Exception as e:
    print(f"Error initializing FoodRecognizer: {e}")
    recognizer = FoodRecognizer()  # Fall back to default initialization

def render_generator_tab():
    prefs = get_user_preferences()
    st.header("Upload Ingredients")

    # Initialize session states
    if "current_ingredients" not in st.session_state:
        st.session_state.current_ingredients = []
    if "ingredient_processed" not in st.session_state:
        st.session_state.ingredient_processed = False
    
    # Defaults
    combined_ingredients = []
    use_substitutes = False
    
    # Single file uploader
    uploaded_file = st.file_uploader(
        "Upload an image of your ingredient",
        type=["jpg", "jpeg", "png"],
        key="ingredient_uploader"
    )
    
    # Status container
    status_container = st.empty()
    
    # Process the uploaded image (only once per upload)
    if uploaded_file and not st.session_state.ingredient_processed:
        # Show progress message
        status_container.info("Analyzing your ingredient...")
        
        # Save uploaded file to a temp file
        with tempfile.NamedTemporaryFile(delete=False, suffix='.jpg') as tmp_file:
            tmp_file.write(uploaded_file.getvalue())
            temp_path = tmp_file.name
        
        try:
            # Display the image
            image = Image.open(temp_path).convert("RGB")
            st.image(image, caption="Uploaded Image", use_container_width=True)
            
            # Run image recognition once
            try:
                detected = recognizer.recognize(image)
                # Get ingredient names and add to current ingredients
                new_ingredients = [ingredient for ingredient, prob in detected]
                # Add new ingredients without duplicates
                for ingredient in new_ingredients:
                    if ingredient not in st.session_state.current_ingredients:
                        st.session_state.current_ingredients.append(ingredient)
                
                st.session_state.ingredient_processed = True
                status_container.success(f"Detected: {', '.join(new_ingredients)}")
                
            except Exception as e:
                print(f"Error with recognize method: {e}")
                status_container.error(f"Error analyzing image: {e}")
                
        except Exception as e:
            status_container.error(f"Error processing image: {e}")
        finally:
            # Clean up temp file
            try:
                os.unlink(temp_path)
            except:
                pass
    elif uploaded_file and st.session_state.ingredient_processed:
        # If already processed, just display the image
        try:
            image = Image.open(uploaded_file).convert("RGB")
            st.image(image, caption="Uploaded Image", use_container_width=True)
        except Exception as e:
            pass
    
    # Reset button to allow processing a new image
    if uploaded_file and st.session_state.ingredient_processed:
        if st.button("Reset Image Analysis", key="reset_analysis"):
            st.session_state.ingredient_processed = False
            st.rerun()
    
    # Display and edit current ingredients
    if st.session_state.current_ingredients:
        st.subheader("Here's what I see:")
        
        # Simple display of ingredients without custom CSS
        ingredients_to_remove = []
        
        # Create a clean layout with multiple columns - without custom styling
        cols = st.columns(4)  # Use 4 columns for a compact layout
        
        for i, ingredient in enumerate(st.session_state.current_ingredients):
            with cols[i % 4]:
                # Create a compact button with smaller text
                if st.button(f"❌ {ingredient}", key=f"del_{i}", use_container_width=True):
                    ingredients_to_remove.append(ingredient)
        
        # Remove ingredients that were deleted
        if ingredients_to_remove:
            st.session_state.current_ingredients = [
                ing for ing in st.session_state.current_ingredients 
                if ing not in ingredients_to_remove
            ]
            st.rerun()
    
        # Add new ingredients manually
        new_ingredient = st.text_input("Want to add or remove anything? (comma-separated)")
        if new_ingredient and st.button("Update Ingredients"):
            # Process additions
            additions = [x.strip().lower() for x in new_ingredient.split(",") 
                        if x.strip() and not x.strip().startswith("-")]
            
            # Process removals (with minus sign)
            removals = [x.strip().lower()[1:] for x in new_ingredient.split(",") 
                       if x.strip() and x.strip().startswith("-")]
            
            # Update ingredients list
            for ing in additions:
                if ing and ing not in st.session_state.current_ingredients:
                    st.session_state.current_ingredients.append(ing)
            
            st.session_state.current_ingredients = [
                ing for ing in st.session_state.current_ingredients 
                if ing not in removals
            ]
            
            st.rerun()
    
        # Clear all ingredients button
        if st.button("Clear All Ingredients"):
            st.session_state.current_ingredients = []
            st.rerun()
    else:
        st.info("Upload an image to detect ingredients or add them manually.")
    
    
    # Combine with pantry and grocery items
    combined_ingredients = st.session_state.current_ingredients.copy()
    
    # Add pantry items if available
    if st.session_state.get("pantry"):
        if st.checkbox("Include items from my pantry", value=True):
            for item in st.session_state.get("pantry", []):
                if item not in combined_ingredients:
                    combined_ingredients.append(item)
    
    # Add grocery items if enabled in preferences
    if prefs.get("use_grocery", False) and st.session_state.get("grocery"):
        if st.checkbox("Include items from my grocery list", value=True):
            for item in st.session_state.get("grocery", []):
                if item not in combined_ingredients:
                    combined_ingredients.append(item)
    
    # Display final ingredients
    if combined_ingredients:
        st.markdown("### Final Ingredients Being Used:")
        st.write(", ".join(combined_ingredients))

        print(combined_ingredients)
    
    # Generate recipe button
    if st.button("Generate Recipe"):
        if not combined_ingredients:
            st.warning("Please upload an image and confirm your ingredients before generating.")
            return

        # Update preferences with ingredients and substitute toggle
        prefs["ingredients"] = combined_ingredients
        prefs["allow_substitutions"] = use_substitutes

        # Show a loading spinner while getting recommendations
        with st.spinner("Finding the perfect recipe for you..."):
            top_recipe, other_recs = get_recommendations()

        if not top_recipe:
            st.warning("No matching recipes found.")
        else:
            st.subheader(f"Top Recipe: {top_recipe['name']}")
            
            # Use your existing get_recipe_image function from image_api.py
            with st.spinner("Fetching recipe image..."):
                img_url = get_recipe_image(top_recipe["name"])
            
            if img_url:
                st.image(img_url, caption=top_recipe["name"], use_container_width=True)
            
            st.write(f"**Ingredient Match Score:** {top_recipe['ingredient_score']:.2f}")
            st.write("### Ingredients")
            st.write(", ".join(top_recipe["ingredients"]))
            st.write("### Steps")
            try:
                # First, try to safely evaluate the steps string into a list
                steps = eval(top_recipe["steps"]) if isinstance(top_recipe["steps"], str) else top_recipe["steps"]
                
                # Ensure steps is a list
                if isinstance(steps, list):
                    for i, step in enumerate(steps, 1):
                        st.write(f"{i}. {step}")
                else:
                    # Fallback if steps is not a list
                    st.write(top_recipe["steps"])
            except Exception as e:
                # Fallback error handling
                st.write("Error parsing recipe steps")
                print(f"Steps parsing error: {e}")
                print(f"Original steps: {top_recipe['steps']}")

            if st.button("Save to Favourites"):
                if "favourites" not in st.session_state:
                    st.session_state.favourites = []

                recipe = {
                    "name": top_recipe["name"],
                    "ingredients": top_recipe["ingredients"],
                    "steps": top_recipe["steps"],
                    "time": "Unknown",  # Update if time is added
                    "cuisine": prefs["cuisine"]
                }

                st.session_state.favourites.append(recipe)
                save_favourites(st.session_state.favourites)
                st.success("Recipe saved to favourites!")

            if other_recs is not None and len(other_recs) > 0:
                st.markdown("### Other Recommended Recipes")
                for _, recipe in other_recs.iterrows():
                    score = recipe.get('ingredient_score', 0)
                    st.markdown(f"- **{recipe['name']}** (Score: {score:.2f})")