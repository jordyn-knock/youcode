��
�*�)
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( ""
Ttype:
2	"
Tidxtype0:
2	
�
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
$
DisableCopyOnRead
resource�
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.19.02v2.19.0-rc0-6-ge36baa302928��
��
ConstConst*
_output_shapes	
:�<*
dtype0*��
value��B��<BtheBandB1BaBtoBcheeseBinBcupB12B2BwithBoilBuntilBsaltBflourBminutesBofBorBpepperBforBteaspoonBwaterBintoBcupsB14BoliveBaddBdoughBonBchoppedBtablespoonsBparmesanBbreadB3BeggsBfreshBovenByeastBmilkBbakingBaboutBgratedBeggBheatBplaceBbowlBlargeBbutterBpanBoverBsugarBbakeB
tablespoonB4BwarmBisBonionBmixtureBsausageBgarlicBitalianB	teaspoonsBtopBbasilBcookBtomatoesBshreddedBletBcutBatB
mozzarellaBitBpowderBdriedBmixBstirBmediumBdryBfromBricottaBblackBgroundBsauceBcoverB5BwholeBeachBsprinkleBouncesBspinachBremoveB10BlightlyB34BpreheatBsetBslicedBthenBredBallBoutBcreamBpotatoesBskilletBwellByouBserveB8BcombineBbrownB	remainingBparsleyBsmallB6BifBdegreesBsprayBtomatoBsheetBlbBmincedBhalfBslicesBupBareBhotBcoolB13BrollBoreganoB	mushroomsBounceBingredientsBpourBpizzaB
allpurposeBgoldenBcookingBtogetherBasBinchByourBriseBwheatBwhiteBbaconB15BgBcookedB	seasoningBdishBzucchiniBleavesB30BmakeBgreenBspoonBdicedBwhenBuseBcanBanBsmoothBmoreBvirginBturnBfrozenBbeBsurfaceBspreadBpiecesBusingBsideBloafBnotBbeatenBonionsBoneBwhiskBbeatBdrainBclovesBtemperatureBasideBontoBstirringBtasteBkneadBroomBbeforeBcornmealBfatBlemonBdownBputB	vegetableB20BwillBflakesBfinelyBextraBbottomBbellBlowBflouredBtransferBactiveBthemBjustBrackBfreshlyBcrustB18BnutmegBsidesBhoneyBpaperBbrownedBmeltedBkosherBiBpotatoBevenlyBstandBunsaltedBfBwrapBthickBbrushBbatterBnonstickB350BvanillaBsliceBgreasedBtimeBhourBminuteBhamBbyBrosemaryBhoursBtenderBcenterBslightlyB23BdivideBcrushedBthisBpreparedBrestBplasticBsoftBjuiceBcloveBgentlyBballBmachineBpackageBblendBpinchBservingBwhitesBinstantBformBgreaseBpeppersBcoatBsizeBheavyBdoubledBboilBthroughBdrainedBanotherBcheddarBallowB
prosciuttoBpieBmushroomBmixingBfillingBbutBseasonBedgesBsweetBplateB	spaghettiBotherBveryBskimBmuffinBlayerBtwoBbringBoffBcoldBseaBfoldBthatBmixerBlittleBdividedBthinlyBshapeBinchesBsauteBseedsBfryingB7BpressBonceBtowelB	asparagusBtheyB45BhasBzestB	pepperoniBcleanBriceBhaveBcinnamonBpancettaBlbsB
unbleachedBromanoBturkeyBenoughByellowBsaucepanBdesiredB400BlikeBfrenchBwhileBknifeBfoilBdoBthymeBsoBpotBsimmerBpastryBshouldBhighBaroundBlightBorangeBkaleBcookieBpolentaBimmediatelyBampB25ByolksBplusBthawedBrepeatBchardBcontinueBanyBreduceBmeltBcubesB375BworkBthinBcottageBcoveredBpurposeBporkBkeepBextractBafterB16BlukewarmB9BsomeBliquidBasiagoBarrangeBcanolaB
substituteBreturnBfewBballsBspatulaB
granulatedBfontinaBdoneBswissBleafBalmondBagainBforkBdashBmeatBsundriedBfoodBsheetsBseedBfennelBspeedBlongerBloavesB
vegetablesBmixedBrefrigerateBdrizzleBwireBroastedBoccasionallyBboilingB
additionalB	processorBmayB12inchBsecondsBreadyBchivesBroundBneededBturningB
mediumhighBfryBpestoBpansBxBtossB	parchmentBgrillB40BunderBtoastedBpunchBcoarselyB350°fBtooBtakeBpieceBnoBleastBenjoyBdeepBcrispBrollsBoiledBbackB	artichokeBtoastBlinksBcomesBsyrupBplainBpastaBsunBcrumbledBfirstB
buttermilkBbroilerBhandsBcombinedBbabyByolkBsodaBremovedB	margarineBmiddleBlowfatBgarnishBfirmBsautéBlineBdissolveBsoftenedBsausagesBbreadcrumbsBstickyB	rectangleB	preheatedB	meanwhileBlongBcycleB
completelyBsalamiBplumBpeeledBchopB	provoloneBpasteBmarinaraBblendedBfreeByogurtBpeelBnutsBaddingBolivesB	containerBcoffeeB	carefullyBtopsBsealBglutenBsureBespressoBbothBvinegarBchickenBwedgesBsharpBfineBsageB
mascarponeBfillBelasticBbroccoliBtspBprocessB
parmigianoBendsBslowlyBmlBleaveBfrittataBalmondsBpowderedB	casseroleBbulkBbitBtimesBcoarseB450BsitBexcessBequalB	chocolateBpackedB35BcircleB	graduallyBedgeBwashBherbsBflatBtoppingsBboardBtillBpartskimBwoodenBtowelsBsourB
lengthwiseBusedBcakeBalmostBsemolinaBhandB100B	uncoveredBstillBdoubleBcherryBcayenneBsesameBrefrigeratorBprepareBnoteBcornBcheesesBbroilBbetweenB
thoroughlyBsqueezeBformsBaniseBwhippingBcrustsBtrayBhalfandhalfBstemsB	necessaryBiceBcannedBtbspBslideBpineBheartsBgoodBendBcBbrothBwineBomeletB	microwaveBgoatB50BparmigianoreggianoBnonfatBleavingBfetaBdustBcubedBcasingsB24BseparateBreggianoBonlyB	overnightBbreakBtightlyBtBblenderBsecondBflipB
constantlyBromaBrefrigeratedBneedBinsideBglassBstripsBrollingBorderBmashedBcuttingBcoatedBapproximatelyBinsertedBalsoBpatBfigsBbagBuncookedBstartBmildBdropBdayBcrumbsBheatedBseededBrisingBbeginB200BtableBsameBnextB
directionsBstoneBelectricB	accordingB400°fBwithoutBseamBperBbubblyBwantBslottedBmakingBjackBgetBbiscuitsB425BthanBrecipeBhollowBflavoredBawayBwetBsaltedBpaprikaBhalvedB9inchBstickBlidB1520B14inchBtoppingB
shorteningBroundsBdaysBstiffBsmokedBshallowBmuchBfreezeBbeginsBbaguetteBamountB1inchBportionsBpancakeBminBhookB500BdiceBcrumbleBstartingBsettingB	scallionsBrunBpecorinoBfavoriteBcooledBchillBbubblesBbestBbeansBsquaresBmuffinsBlayBkneadingBtinBtempBstoreBshellBfingersBbutteredBsteamBseeBpumpkinBpuffB	dependingB110BportionBlinedBhardBevenBsiftB
seasoningsBreducedBquicklyBmustardBmadeBlowerBlooselyBherbBhalvesBdegreeBtastyBsquareBexceptBcrepeBchiliB510B	tortillasBthreeBspringBpuffedBmontereyBkitchenBflattenBcrackedBbeefBrisenBripeBcomeBcocoaBchunksBcansBapproxBalongBstretchBsingleBshallotBpackagesB	mediumlowBmealBmarjoramBhandleBfastBbunchBscoopB	ovenproofBmakesBitsBgruyereBroughlyBplatterBgreensBdustingBwayB
preferablyBbagelsBapartB1015BwideB	thickenedBstartsBraisinsBpacketBmeltsBbeenBbaseBamongB½BroastBreservedBregularBpositionBloosenBjarBfullBdipBdampBberriesB2025BtheseB	sourdoughBscrapeBozB	hazelnutsBcounterBbowlsB250BtinsBsprayedBincorporatedBcutterBclothBbiscuitBuncoverBshellsBsaladBrussetBrindBpulseBpreventB	measuringBcrepesBcreamyBcirclesBbalsamicBaluminumBrawB
portabellaBpeasBliftBfourBeitherBdiscardBcrispyBconsistencyBbakedB60BtortillaBstickingBquartBpancakesBmashBfitB
evaporatedBchoiceBchipsBwiltedBtappedBslicingBpinkBconfectionersBbreakingBteaBsqueezedBpinBopenBoftenBmyBmintBminsBironBhalfwayBfloursBcasingBbisquickBaboveB10inchBwarmedBwalnutsBtipBsalsaBrubberBpureeBpressingBpartB
frequentlyBcanadianBstrawberriesBstarchBseveralBreserveBracksBpittedBoptionalBnowBlessBfoamyBcapsB375°fB350°BpreferBnoodlesBminiBlayersBfreezerBcrackB1012B	toothpickBthirdBstarterBpullBgumB
generouslyBfruitBdarkBcoconutBairtightB11BtotalB	thicknessBsuchBskinBfinishedBaheadB300BxanthanBwouldBstockBshallotsBshakeBproofBpartsB	moistenedBlargerBgriddleB	dissolvedBcustardBchilledBcarefulB	beginningB¼B	ungreasedB
underneathBsteamedBrubBlogBincreaseBglazeBfrothyB
everythingBdiameterB	crosswiseBcloseB325BtofuBtartBsplitBspicyB	quarteredBpointBlastBhashBcrustyBcrescentBcentreBbuttonBblueberriesBbigBbatchesB8inchBworkingBsplendaBspearsBsoupBscatterBscallionBplatesBpattiesBniceBcheckBacrossB150BvolumeBsoundsBsoftenBsizedBsandwichBpossibleBmostBliqueurBholeBholdBfigBdillB
cornstarchBbananaBwhiskingBwhippedBthawB
springformBsixBrightBquartersBmoistureBmetalBleanBgreekBetcBdatesBcoupleBbunsBamarettoB350fB28BweBtrimmedBtouchBstyleB
sprinklingBsprigsBselectBrinseB
reducedfatBoldBmoistBmeasureBjalapenoBfittedBenglishB
distributeBairB425°fBstepBstalksBpankoBfullyBfinishBdirectedBcolorBcapsicumBunsweetenedBspicesBsoyB
sandwichesBpamBmanufacturerBjellyBgoB	drippingsBdiagonalBbrownsBbrieflyB	breakfastBboxBappleB115BwaffleBtrimBstrainerBseasonedBscrambleBpoppyBmoderateBfridgeBcreateBadjustB125B121BwhichBtornBsoakBslashB	separatedBholesBgreatBgrainBboiledBbitsBbasicB
attachmentBtwiceBtranslucentBstuffBserratedBringsBprickB
individualBfoldingBenvelopeBcookerBborderBtipsBtilBtheirBtapiocaBsmallerBrunnyBrunningBpushBpuffyBpressedBovalBgoldBfluffyBdutchBduringBcoolingBbrewedBbeatersB810BwhipBthereBtabascoBstrataBskinsBrecommendedBnonBinvertBgritsBfurtherBfatfreeBeasyBcarrotsB
artichokesByoghurtBwipeBveggiesBtbsB	scrambledBraisinBpizzasBleftBextravirginB	draftfreeBdirectlyBcarrotBbranBbecomesBareaBworksBusuallyBtowardB	sunflowerBsprigBsimplyBroastingBrinsedBquarterBoutsideBlookBformedBcountryBciabattaB	baguettesBbagelB2530B180BwashedBunrollBtryBstewedBstemBspeltBshortBshavedBsaveB	resemblesBramekinsBquicheBomeletteBlooseBlevelBlengthBlemonsBleekBlardBinstructionsBgenoaBfloretsBflatleafBfingerBeveryBentireBeggplantBbladeBbiteBbecomeBbeatingBadditionB57B2inchBwhateverB	sprinkledBscrapingBrimmedBorzoBleeksB	juliennedBgiveBgenerousBflavorBfirmlyB
fingertipsBdon’tBdeliBclosedBcherriesBcakesBbeerB400°ByukonBstoveBskewerBsauteedBreheatBpoundBplacingBnearlyB	manicottiBlumpsBlaterBincorporateBgrateBfoamBeatBeasilyBdonenessB
diagonallyBcreminiBcolanderBcmBcastBbuttBbubblingBbubbleBbraidBbottomsBarugulaBabsorbedB68B450°fBtapBstrainB	spreadingBspiceBsliveredB	simmeringBropeB	reservingBremovingBpokeB	partiallyBownBlukeBgramsB	deliciousBchileBallowingB9x13B375°B105BtoasterBstrongBryeBpureB
moderatelyBlogsBleftoverBinsteadB	includingBgrindBgreasingBgrapeBeasierBcurrantsBcompleteBbeingBbagsB1215BwaitBtightBthermometerBswirlBshelledBservedBpacketsBovermixBnutritionalBnicelyBmoveBlowestBjuicesBhelpBgnocchiBformingBfiveBfilledBdegBcremeBcouldBcornerBcauliflowerB90B56B1412B13x9BwrappedB	trianglesBtearBspongeBsoundBsiftedBsieveBsalmonBrotatingBreallyBpuffsBpeachesB	parmeseanBpaleBoriginalBmassBheartB
glutenfreeBfairlyBdollopBdoesBdishesBcutsBcardamomBcandiedBbrowningBbarelyBveggieB
vegetarianBturnsBtubeBstripBsticksBspotBslipBsafeBremainsBrapidBpulpBpopBpeaksBnaanBlistedBjamB	importantBhowBgranulesBdotBdontBdijonBdenteBcilantroBcaramelBblanchedBassembleBalB78B3040B180°cBtypeBtuscanBtruffleBthickensBspotsBslowBshapesBshapedBrumBqualityBpitaBpadanoBnutellaBmightBmeatsBmatzoBmapleBmakerBliftingBitselfBgasBfriedBfollowBemptyBdumpBdistributedBdinnerBcurdBcrimpBceleryBbetterBbayBarborioBaddedB7inchB400fB2030B112BwalnutBtraysBtarragonBsodiumBsnippedBsBribsBreachesBraisingBquartsBpinchesBouterBoatsBnightBnaturalBmonthsBmatzosB	marmaladeB	marinatedBfragrantBfindBdustedBdiskBcapersBamarettiB3035BwaxedBvitalB
vigorouslyBtiltingBtiltBthirdsBthickenBtestBsubBshakingBservingsBroundedBreleaseBquinoaBpreBpecansBorganicB
mayonnaiseBkindBkgBgrapesBcriscoB
cannelliniBbarleyBavoidB58B55B200cB120BunpeeledBtoughBtoppedB	sweetenerBstackB	spoonfulsBslitsBrusticBropesBrolledBrimB
rectanglesBraiseBquiteB	pillsburyBphylloBpeanutBoverlappingBmustBmoundBmedhighBlooksBlinkBlikingB	liberallyBladleBkernelsBheapingBgrilledBgivenBflowBfleshBdraftsBdoorBdeflateB
croissantsBcoveringBcornersBclearBburnBbloodBbelowBbecauseBbeanBbatchBapricotsBappearB75B200°cB
wholewheatBwellflouredBwatchBwasBtwistBtenB	suggestedB
stretchingBstopBslashesBroughBratherBpullsB	preferredBpitasB	pineappleBpileBparchmentlinedBnewBmuensterBmanyBlasagnaBkeepingB	jellyrollBicingBhorizontallyBhomemadeBgranaBgetsBgentleBfraicheBcrisptenderB
cheesecakeBcartonBbrokenBbottledBalternativelyB3540B34inchB325°fB22B175B123B–BwishB	wholemealBwhiskedBwhereBwhatBwafflesBveganBupsideB	undrainedBtraditionalBtongsBtblspBtakesBstraightBspaceBshelfBrotateBremainBreachBpuddingBproteinB
preferenceBpinchingBpickBpaddleBorangesBmonthBmoldB	leftoversBlayeringBkingBindentationB	heavydutyB	heatproofBheatingBheadBhazelnutBfluidBensureBdayoldBcroutonsBcrackersBcombinationBcleanedBchiliesBceramicBcelsiusBavocadoB80B70B4045B38B130BwiltBwedgeBunbakedBtesterBtackyBstandardBspringyBsouffleBshredBshinyBseamsBprunesBproceedBpocketsBpintBoatBnearB
mortadellaBmineBminceBmarnierBmarkBlinersBjulienneBinsertBhelpsBgermBgarbanzoBfollowedBfloatBflaxBfeelB
fastrisingBfallBencloseB	doughnutsBdippingB	croissantBcoatingBchooseBcapBcalledBbrushingBarthurBapricotBandorB450°B32B19B105115BworcestershireBvarietyBtuckBslitBshiitakeBsecureBsaffronBringBraspberriesBquickBpoachedBpenneBpearsBomitBmotorBkalamataBjumboBit’sB	hamburgerBhalveBgatherBfloretBflameBfavaBescapeBendingBdrinkBdraftBcrumblyBcohesiveBciderBbunchesBbreadsBbrandB3quartB300°fB190B180cBwithinBupperBtwentyB	sweetenedB
strawberryBstovetopBsquashBsoonBsmartBsettleBseperateBsemiBselfBseedlessBsectionsBscrapsBscoreB	remainderBpullingBproductB	procedureBpatternBparmaBpalmsBourBoppositeBonesBnarrowB
mediumsizeBlettingBkeptBjugBindividuallyB
grapefruitBgrandBfocacciaBflavorsBfinalB
fahrenheitBeggnogB	dissolvesBdefrostBdairyBcutsideBcreamedBcoversBcooksB
containersBcolbyBcentersBburnerBbunBbreadsticksBbouillonB4inchB36B17B13inchB12cupByoungBwelldrainedBweightBweeksBwaxBvitaminBversionBuponBuniformBturnedBturkishBtouchingB
toothpicksBtmBtinyBthoughBthickerBtapenadeBtamariBstuffedBstreamBsoymilkBsouffléBshaggyBservesB	semisweetBscissorsBscantBrigatoniBrequiredBputtingBpuréeBpowerB
portobelloBpoblanoBpoachBpliableB
pistachiosBpearBpeachBmorningBmistBmilletBmillBmedBhereBherbesBhandfulBgrindingB
gorgonzolaB	followingB
evaporatesB	differentBcuminB
croquettesB	corianderBcaramelizedB
bruschettaB
breadmakerBbottleBboboliBblanchBbigaBbbqBalternatelyBalfredoBagedBagaveBadvanceBabsorbB46B3inchB375fB2quartB2ndBzitiBwildBweekB	undersideBtriangleBtossingBthoseBthinkBthicklyBtepidBsultanasBstorageBspacingBsorghumBsizzleBshrimpBsetsBseemsBsconesBsautBrisesBresultsBreplaceB	registersB	recommendBprovenceBpoundsBplumpBpiercedBpattyBpattedBparmB	panettoneBonethirdBnutBmotionBmoistenBmexicanBmelonBmatBmaintainBinsidesBholdingB
hardboiledBgoudaBgoesBfrypanBflanBfinallyBfeelsBfanBevooBdozenBdoublesBdiscsBdeBcylinderBcranberriesBcoloredBcoarsleyBcinnamonsugarBchunkyBchangeBcastironBcalzoneBbitesizeBbiscottiBbechamelB
artificialBapplesBalwaysB8x8B85B6inchB450fB425°B4050B26B220B18inchB05B¾BwoodyBwiltsBunslicedBunsiftedBtuckingBtotsBtextureBstuffingBstoredBstandingBstaleBspritzBspoonsBspaetzleBsourceBsolidBsmokingBsinceBsiliconeB
shortcrustBshapingBselfraisingBscrubBscraperBromaineBrememberBrectangularBrazorBprogramBpouringBpleaseBplacedBpipingBpintsBpierceBpalmBpackBokBneedsBmugBmovingBmolassesBmicrowavesafeBmeantimeBmanufacturer’sBmaceB	macaroonsBlinguineBjarsBimportedBgraterBglossyBgingerBfrothBforthBfoccaciaBfeedBfashionBequallyBenhancerBeightBedibleBdurumBdryingBdressingB	discardedBdevelopBdependsBdecreaseBdecorateBdateBdashesBcubeBcrumbBcrispsBcourseBcoredBcontinuouslyBcolourBclumpsB	clarifiedBchilliBcaseBcarawayBcalzonesBburningBbreastBbobBblendingBbasketBbarsB	availableBanythingBangleBallspiceBableB67B475B
13x9x2inchB124ByummyBworryBweightsBweedBvaryBuntillB	uniformlyBtinesBtieBthumbB
throughoutBtakingBstemmedBsteelBstayBstalkBstageBsprayingBspoonfulBsplashB	specifiedBspearBspanishBspaghettiniB	sometimesBsnackBseamsideBsealingBscrubbedBsavoryBrindlessBresultBreheatedBrealBreachedBravioliBrabeBqtBpyrexBpureedBproofedB	preparingBpreparationBpointsBplumsBpkgBpiesBpersonBperfectBpercentBoverhangBovercookB	otherwiseBnormalB
mozzerellaBmouldsBmethodBmessBmarksBlumpyBliddedB
kitchenaidBkernelBjimmyBjarredBitalianstyleB	intervalsBinternalBinteriorBidahoBhadBgratinBgolfBgillsBfrittersBfoundBfoldsBflowerBflippingB	flattenedBfilterB	favouriteB
extralargeBexpandBeatingBdropsBdrizzledBdiscBdessertBdesireBdeanBcurrantBcrossBcouscousBcontentsBclingBchorizoBchipotleBchickpeaBchestnutBcharcoalBchallahBcasesB	capsicumsBcapacityB	buckwheatBbrushedBbriocheBbrieBbreezeBbrandyBblossomB	bitesizedBbenchBbalanceBattachedBatopBanisetteBaniseedBagainstBactivateB5060B425fB350ºfB341B3045B12inchthickB122B110fByou’reBwrapsBwiskBwidthBwereBwaitingBwB
vermicelliB	variationBunmoldBundisturbedBturmericBtryingBtreeBtransparentBtomatoeBtoastsBthrowBtexturedBtablespoonfulsBsuggestBstoppingBstonesBsteepBsteadyBspringsB	sparklingBspagettiBsomewhatBsoakedBsnipBsmokeBskipBsinkBsidedBsherryBsectionBsealedBsaltampBribbonsBrestingBrenderedBrelaxBregB	readymadeBreadBpushingBpulledB
proscuittoBprettyB
preheatingB	precookedBpotatoesregB	pistachioBpipeBparselyBparingBparallelBmushyBmittsBmeltingBmedlowB	meatballsBmeBmashingBmasherBmanualBmangoBmaltBmacaroniBlotBloadBlinesBlettuceBknockBkeepsBinvertedBindentationsBieBholdsBgrinderBgrainsBfrothedB	frittatasBfreezingBforcedBfoldedB	foillinedBfluteBflakyBfillingsB	farenheitBeyeBevansB
equivalentB	drizzlingBdoughnutBdistributingBdimpleBcupcakeBcrostiniBcreatingB
countertopBcottonBcookiesB	combiningBcoloringBcoilBcitronBcircularBchoppingBchiaBcheeseclothBcheckingBcelciusBcareBcaponB
cantaloupeBcaloriesBbrightBbrickB
breadstickBbowBboughtBbottomedBboilsBbeetB	beautifulBbeaterBbasesB	appetizerBamountsBamericanBamaranthB	alternateB812B710B4550B400ºfB212B20cmB14inchthickB1413B1234B100110B—B½inchByeastyBwrappersBwontonBwiseBwellgreasedBvoskosBvisibleBventBvealB
variationsB
towellinedBtowelingBthirtyBthinnerBtablespoonfulBswitchBstrokesBstrandsBstoreboughtB	stirsauteBstarBsolidsBsoggyBsofterBsmearBslightBskilletsBsilpatB
shimmeringBshavingsB	seperatedB
separatelyBsauteeBrouxBrotiniBrisottoB	removableB	reductionBragú®BraggedBquickcookingB	purchasedBpriorBprepBprebakedBplanBplacesBphiladelphiaB	perimeterBpeppercornsBpeasantBpassataBpassB
paperlinedBpaniniBpaintBovensafeBovalsBothersBopeningBoBnotesB
neufchatelBmsgBmrsBminimumBmeyerBmeshBmediumsizedBmeatlessBmaybeBmanufacturersBmainBlotsBlookingBliquorBlimpB
lengthwaysBlengthsBkraftBinstantreadBinnerBicecoldBhrBhooksBhollowedBgroundedBgranularBgoneBgoldenbrownBgoingBgiantBgfBgettingB	freerangeBfourthsBforceBfollowsBfoamsB	flavoringB	flatbreadBflakeBfishBfireBfilmBfermentBfamilyBfacingBessenceBemmenthalerBdutyB	dumplingsBdumplingBdroppingB
discardingB	directionB	difficultBdependBdenseB
decorationBcutletBcurdsBcrumblesB	crespelleBcrackerBcountBcoreB
continuingB
commercialBcloverBchopppedB
chiffonadeBcatsupB	béchamelBbuyB	butternutBburstBburrataBbundtBbulbBbreastsBbraidsBbonelessB	bologneseBboatsBblotBblintzBassortedBartisanB	arrowrootBapBalreadyB	additionsBachieveB9x9B9x13inchB6cupB500°B375ºB3545B3060B225B1½B170B1518B13x9x2B13x9inchB1312B12quartB1214B110115BziplockBziplocBzipByourselfByieldByetBwrapperBworldB
wholegrainBwellsBwellblendedBweighBwarmingBv8BusualBunlessB	twothirdsBtwelveBturnerBtripledBtransferringBtortaBtoothBtookBtomatosBtilesBthumpedBthingBtendsBtellBtearingBswirlingBsurfacesBsuppleBsubstitutedBsteviaBstepsBstartedBspiralBsoyaBsoppressataBsolarBsnuglyBsmellBslabBskewersBsizzlingBsizzlesBsimilarBshredsBshaveBshakenBsaltinesBsachetBrubbedBrocketBrimsBricerBrhodesBrerollBreleasedBreducedsodiumBrapiniBrampsBramekinBraguBquesoBquesadillasBpulsesBproperlyBproperBproofingB
proceedingBprobablyBpokedBpodsBplungeB	pinwheelsBpearlBoverlapBopaqueBomeletsB	oilpackedBoilingBobtainBoblongBoatmealBnigellaBnestBneatB
multigrainB
mozzerallaB	mozarellaBmortarBmixturesB
minimuffinB	miniatureBmiloBmilledBmessyBmeetBmeasuredBmarsalaBmarinateBmarinadeBmandolinBmachinesBlunchBloveBloseBliterBlinerBlighlyBlecithinBlayeredBladyfingersBlabelBkumaraBknivesB	jalapenosBintroBintactB	indentionBhummusBhoweverBhoagieBhintBherbedBheirloomBheapedBheBhandheldBgrandsBgrahamBglassesBgivingBgivesBgallonBflutedBfloorBflavourB
flatteningB
flatbreadsBf45B	excellentB
especiallyB	envelopesBenamelBeatenBdoesntBdividingBdisksB	dishtowelBdinosaurBdepthBdailyBcrushB	crumblingBcrockB
courgettesB	courgetteB
convectionBcontinuallyB
containingBcontactBclayBcitrusBchosenBcholesterolB	chickpeasBcheesyBcasterB
carmelizedBcarbBcaesarBbutterscotchBbutterflavoredBburritoBbroilerproofBbraidedBbouleBbottlesBbittersweetBberryBbeautifullyBbasedBbareBattachB	anchoviesBalternatingBachievedB9x5B750B600B500°fB375ºfB365B312B30cmB2cupB275B2535B210B1stB1poundB18cmB1814B116B1020B00BzuchiniByumByoursBwrittenBwristBwon’tBwontB	wonderfulB
wildflowerB	wholemilkBwheyBweighingBvelvetyBvegetariansBvegBuprightBunwrapBunfoldB
unflavoredBunfilledBunevenlyBundissolvedB	turnoversB	turnedoffBtubesBtrimmingBtowardsBtossedBtimerB	they’reB	there’sBthatsBtemperBtaterBtastesBtappingBtaperingBtaperB	tangzhongB	switchingBsweatBsultanaBsubmergeB
stracchinoBstoringBstonegroundBstonedBstockpotBstirredBstirfryBstiltonBsteamingBsrB	sprinklesB	somethingBsolidifyBsoftensBsmashedBslatherBskinnedBshrinkBshoulderB	shiratakiB
separatingB
selfrisingBsecondsspeedBsearBsconeB	schnitzelBscamorzaBscaleBsautéedBsaucesB
saltpepperBsafBrubbingBrowsBroomtemperatureBrobustBripenedBretainBrestedBresistsBrelishBreducesBrecoverBpsylliumB
processingB
previouslyB	preslicedBpresentBpremadeBprebakeBpouredBpourableBpopoversBpoolishBpocketBplentyBpipB
pepperonisBpeelingBpatchesBpackagedBoysterBoverworkB
onequarterB	onefourthBnozzleBnostickBnoodleBnineBnectarBmovesBmoundsBmostlyBmorelsBmonteBmissionBmineralB	mennoniteBmeatloafBmeasurementB	mccormickBmarginBmannerBmangoesB
manageableBmaldonB	makeaheadB	lowmediumBloverBlongestBlockB	locatelliBlintfreeBlilyBlentilsBlentilB
lenghtwiseBlacinatoBknownBknowBkneedBkirschBkindsBkielbasaBkidneyBkickBkettleBjumbotBjigglyBjiggleB	jarlsbergBjapaneseBjamsB
instructedBingrediantsBinfusedB	inchthickBimaginationBideaBhuskBhungryBhomogeneousBhomeBhollandaiseBhighlyBhighestBheavybottomedBheavilyBheatsBheadsBhavartiBhandlingBhandfulsBhaddockBhabaneroBgrindsBgravyBgratingBgrabBgotBgingerbreadBgheeBgelatinBgathersB	garnishedBgarfavaBgapsBgaletteBfusilliBfullfatBfryerBforemanBfoamingBflowsBflexibleB
fleishmansBfistBfirmsB	finishingBfilteredBfiberB
fettuccineBfaucetBfarroBfallingBfaceB
extrasharpBestimateBelseBeasiestBdyedBdripBdrinkingBdredgeBdrawBdrapeBdoublecrustBdonBdoaheadBditaliniB	disaronnoBdeseededBdescriptionB
depressionBdeglazeB	defrostedB
definitelyB
deepfryingB
decorativeBdecafBcuttersBcuredBcrunchyBcrowdBcrispierB	creationsBcoolsBcontentBconfectioners’B
compressedBcolbymontereyBcoddlerBcoalsBclubBclingsBclimbBclassicB	cipolliniBchunkedBchunkBchiveBchipBcharredBcauseBcantBburgerBbulbsBbrisklyBbringingB
breadcrumbBbodyB	blueberryBbloomB	blisteredBbeepBbatonBbarillaBbakewareBbakesBaromaticBappearsBanjouBaideBadjustmentsBadhereBadBactuallyB910B85°B800B480B48B475°fB	400degreeB3744B360B33B300°B2tB2cmB27B250°fB24cmB240B220cB210°cB21B200°c400°fB1”B1quartB1cmB1cB190°cB12inchesB11x7B11inchB0B¼inchBzstarByou’llByou’dByoureByoudByieldsBwrinkledBwringBwrappingB	workspaceBwobblingBwhyBwhiskeyB	whicheverBwheelBwellroundedB
watercressBwarmthBwarmerBvineBvideoB
verticallyBvermouthBvelveetaBvegetaBvegemiteBvariesB
upsidedownBuppermiddleBunusedBuntoBunsmokedB	unmoldingB	unflouredB
undersidesBuncutBtwistsBtunaBtubB	trimmingsBtrickB
triangularBtouchedBtorteB
tomatillosB	tobleroneBtoastingBtimingBtiBthumbsB	throughlyB
thickeningB
tendernessBtempehBteaspoonfulsBtblsBtblBtbBtautBtartsBtaperedBtallBtakenBtahiniBszechwanBsyrupyBswirlsB	sweetnessB	superfineBsuperBsubstitutingB	subsituteB	submarineBstuckBstrengthB
straightenBstoppedB
stickinessBsteepingBsteamerBstateBstarsB	stainlessBstackingB	squeezingB
spreadableBspacesBspacedBsoupsBsoftsetBsoaksBsoakerBsmoothlyBsmokerBsittingBsimultaneouslyBsilkBsiliconBshowBshotBshorterBshortcutBsheetpanBshearsBshakesBsettingsBsecretBsecBscotchBscorchBscaldingBsayBsauteingBsausagecheeseBsargentoBsardinesBsandwhichesBsanBsaltyBsachetsBrunsBrulerBrotiBrotelBroomtempB	romanescoBrockBrobustoBridBricherBrewarmBresprayBresidualB
resealableBrequireBrefrigerationBrefridgerateBrecipesBreadilyBreB	raspberryBrashersBrapidlyBraisedBrainbowBquickrisingBquantityBpunctureBpunchingBptB	progressoBpreshreddedBpreheatsBprefBpoutBpotatoeB	positionsBpleatB	placementBpitsBpitBpinenutsBpimientoBpiadinaBphaseBpetiteBpestleBperforationsBpepperedBpelmeniBpeelerBpeanutsBpeaceBpattingBpatsBpastinaBpassedBpartyBparmigianoregianoBparmasanBparedBpapertowellinedBpapayaBorecchietteBoptionBoperateBopensBonoffBomittingB	omelettesBokayBoamcBnumberBnormallyBneverBneutralBnBmusselsBmozzaBmountainBmoundingBmouldBmorbierBmoonsBmomentBmmBminutesintervalBmiddlesBmicrowavableB	microcookB	mediumhotBmeatyBmauiBmaturedBmarrowBmarmiteBmarketBmamaligaB	malleableBmalfattiB	macadamiaBlowcarbBlovelyBlongwaysBlocationBliteBliquidsBlighterBleakBleafyBlatticeBlargestBkneadedB	kneadableBkillBjuicedBjohnsonvilleBjelliesBjalepenoBiodizedB
ingredientBinfuseB	indicatesBindexBincorporatingBincludeB	immersionBimmerseBhulledBhorseradishBhominyB	homestyleBhogBhighqualityBheelsBheartyBhawaiianBhavingBhardenBhangBhandledBhandhotBhalfhourBgrownBgrouseBgroceryBgrilleBgridsBgraspBgrapefruitsBgingerbreadflavoredBgiardinieraBgermanBgeorgeB
garnishingBfudgeBfruitsBfriesBfrescaBfreezesBfourthBforwardBflushBfluffB	floursaltBflaxseedB	flavoriteBflakedBfittingBfinemeshBfifteenBfieldBfedBfasterB	extremelyBexB
eventuallyB	evaporateBentirelyB
eggbeatersBegBearlierBearBdroppedBdredgingBdrainingBdoughmanualBdottedBdonutsBdonutBdoingBdogsBdogB	disappearBdimplesBdidBdiamondB	developedBdelBdeeplyBdeepfryBdeepdishBdecorationsBdecideBdabBcurveBcurlBcurdledBcupboardBcrêpesBcrêpeBcrustedBcrumpetBcrisplyBcrisperBcrispedB	crespellaBcreatedBcreasesBcowBcotijaBcornishB	cornflourBcoresB
concentricBcompartmentBcompactBcomingBcomalBcoinsBcoinBcoatsBcloserBclingingB	clingfilmBclearsBcleansBclassicoBcigarBchervilBcheesecakesBchapatiB	chamomileBcashewsB
cappuccinoBcalorieBcajunBcabbageBbucketBbrewBbounceBboneBboilerBbobsBblossomsBblancoB	blackenedBbicarbonateBbeverageBbeneathBbehindBbeepsBbedBbecelBbathBbasteBbarBbananapecanBbaggieBbabasBbabaBauB	assembledBaromaBaproxBapprxBapproximateB
applesauceB
appetizersBappBanchovyBamarettinisBalternativeB	alongsideBallowedBaccumulatedB9x12B9inB	9by13inchB95B8x8inchB8quartB8090B6ounceB6090B5cmB5055B4quartB4cupB4560B430B425ºfB390fB
350ampdegfB34inchthickB342B300fB29B25cmB220°cB205B2022B200°fB1tB1inB1gallonB1cupB190cB175°cB16inchB160°cB160B15inchB14ounceB145B144B142B140B	13by9inchB12x6inchB
12inchwideB127B120°fB120130B115°fB114B113B10ounceB105°B100fB025ozB•inB–inchB½”B°fBzucchiniampBziptopB
zipperlockBzestyB	za’atarByouveByesByelloB
yeastwaterByamBxanthamBwtheBwrungBworkedBwoodBwonBwolfsonBwokBwobblyBwobbleBwinterB	widthwiseBwidestBwiderBwhizBwhishBwhereverBwhBwettedBwellseasonedBwellcombinedBwellbrownedBweighedBweekendBwedgeshapedBwcookingBwaysBwateryBwaterpackedBwater2BwashingBwareBwantedBwakenBwakameBvortexBvolumnB	virginianBvinaigretteBvinBviginBviennaBvidaliaBventsBvegiesBvegesBvanillaflavoredBvalueB	valentinaButensilsButensilBuseableBupwardBunplugBunnecessaryBunglazedBuncuredB
unbutteredB
unblanchedBunavailableBudiB	typicallyBtwistingB
tuttorossoBtutorialBtubularBtspsBtruviaBtrunkBtrickyBtreatsBtrapBtransferredBtoraniBtopsideBtongueBtonBtomatopepperB	tomatoesaBtomatobasilB	tomatilloBtoastyBtippingBtipoBtinfoilBtightenB	tictactoeBthusBthruBthreequartersBthreadBthomasB
thinslicedBthicBthanksBtestsBtestingBterryBtennisB	temperingBtemperedB	tempatureBtelB	techniqueBtbspsBtblspsBtastedBtartletBtartarB	tapénadeBtanBtadaB
tablespponBtablespoonsreadBtabBtaBsyrupsBswishingBsweeterBsurroundB
supplementBsupermarketsBsupermarketB	sunnysideBsunnyBsumacBsuitableBsufficeBsubstitutecottageB
substitureBsubsidesBstufferBstringsBstringBstretchyBstrainedBstiringBstifflyBstiffenBstewBsteakBstaysBstarchyB	starbucksBstagesBsrirachaBsquirtBsquidBsquashesBspraysBsprayerstirringBspottyBspooningBspoonedBspokesBsplitcutB	spirulinaBspinachcheeseBspiceyBspeckledBspecificationsBspecificBspatulasBspatualB	sparinglyBsoupyBsoundingBsorbetB	somewhereBsolmailBsoftlyB
sodiumfreeBsoakingBsnowBsnapBsnakeBsmurfBsmuckersB
smoothstirB	smoothingBslotBsloppyBsliversBslingBslidingBslidesBsliderBslicerBslapBslabsBskimmerBsizesBsimpleBsilkyBsilkenBsignalBsignBsiftingBshutBshrivelBshowsBshotsBshoppingBshittakeB
shelldoughBsheepBshareBsevenBsetupBsemisoftB
selectionsBselBseitanBsegmentsBsegmentBseemBseeingBsecuringBseaweedBseasonsB
seasoningaBseasondBscrappleB	scrappingBscrapedB
scramblingBscoopedBscdBscapesBsaysBsavoyB	sauvingonB	sauvignonBsausagetomatoBsausageflavoredBsaucerBsatinyBsaranBsaraBsantoB
sangioveseBsandBsamedayBsambalB	saltinessBsaltineBsaladsBsafelyBsabayonBrufflesBruffedBroyaleBrowBroundtopBroshB
rosamarinaB	roquefortBrootBrollupsBrobinBritzBrigateBrichlyBriceflouredBrhubarbB	returningBresumeBrestsB	resistantB	resilientBreshapeBresetBreplacerB
repeatedlyBrendersB
renderingsBrenderB
relativelyB
rehydratedB	reheatingBregrindB	reggiannoBrefreshBrefreezeBreflourBredbushB
recommendsB
reasonableBreadyrolledBrawspicebar’sBrapokoB	rapidriseBrangeBrandomlyBramanoBquichesBquarterturnBquarkBquailBpusBpuréedBpurpleBpurchaseBpulpfreeBpuddingsBpublixBprovideBproseccoB	proscuttiBproductsB	prociuttoB	processerBproblemBprickedB	prewashedBpreviousBpretzelsBpreserveBpresentationBpreppedBpotatoesampBporciniBpopoverBpoorBpointedBpodBpoachingBplumpedBpleatedBpiriBpipedBpinoBpinchedBpimentosBpilsburyBpilotBpilesBpignoliaB	pierogiesBpiercingBpideBpicolinoBpicnicBpickledBphillyBpheasantBpersianBperiodicallyBperiodBpeppersonionsB
peppersampBpepperonciniB
peppercornBpeperBpeopleB
pelligrinoBpeelsBpeekBpeasizedBpeakBpeacesBpeaBpastyBpastriesBpastizziBpasoBpartlyBparticularlyB
particularBparboilBparbakedBparbakeBpaprikabrownBpaperwrappedB
papertowelB	paperthinBpancettavegetableBpamesanBpalestBpakageBpairsBpairingBpackingBovoliniBovertopBoverfillBoverbrowningBovensBovenroastedBoutwardBoutsidesBounesBosemBoruntilBorgranBoregenoBorangeflavoredB
optionallyBonionampBonehalfB
oilsprayedBoilsBoilampBofferBoelekBoccassionallyBoccaisionallyB	nutsgreenBnutmegsBnukeBnosaltaddedBnorB	nonstickyBnonreactiveBnoboilBnicoiseBnickBnicerBnestsBnestleBneitherB
nectarinesBnapkinsBnapBnaansBmyzithraBmungBmulledB
mulberriesBmuirBmugsBmozzBmoundedBmortinBmooseB
montrachetB	monterreyBmontasioBmoninB	moistnessBmoistendBmocaBmnutesBmniutesBmixesBmistingBmisterBminutedBminuetsBmindBmidwayBmicrowaveableB	microvaveBmicrogreensBmiaBmexicoB	metamucilBmellowBmedjoolB	medium–B
mediummeshBmediterraneanBmedheatB
medallionsBmeansB
mealiemealBmayoBmaximumBmaxBmatzahBmatureBmassageBmarzanoBmarianiBmarconaBmarbleB
maraschinoBmanufacturesBmandarinBmahlepiBmahlebBmaggiB
madeleinesB
macadamiasBmBluchisBlttleBlowmoistureBlowermiddleBlovesBloraBloopBlonghandledB	longgrainBlitersBlintBlinseedsBliningBlimonataBlimeBlikelyBlightlyflouredBlightenBlidsBlicorBletterBletsBlemonadeB	legthwiseBleeBleaveslooksBleakingBlawrysBlaughingBlastlyBlasagneBlameBlakesBlaceBlaborsBlaBlBkonaBknucklesBknorrBknockingBknockedBknobBkissesBkefirB
kefalotiriBkebabBkaiserBjulieneBjuicyBjiffyBjerkingBjerkB
jardiniereBitaltotsBisn’tB	irregularBinwardB	invertingBintheB
internallyB	interfereBinstallmentBinsertsBinotB	initiallyBinitialBingredsBingredientsexceptBinfoBinexpensiveBindrectB	increasedBincludesB
impressionBicecreamBhuskedBIhrefhttpswwwgeniuskitchencomrecipetuscanitalianblendseasoning501579tuscanBhousesBhotterBhornBhoodBhomogenizedBhollowsoundingBholdersBhighproteinBhigherBhickoryBhiBherbalBhenBhelpingBheldBheelBheavierBheartierBhealthyB	healthierBheadingB	hashannahBharvestBhappensBhappenedBhappenBhangingBhandyBhalfinchB
halffilledBhairB	guancialeBgruyèreBgrovieraBgroungBgroundsBgritBgripB	grindingsBgrillingBgrillerBgrigioBgreyB	grapeseedBgrapefruitsizeBgrangerBgrainyB	graduatedBgoumetBgoodnessBgomashioBgoatsBgnudiBglovesBglenBglazingBglazedB	gingernutBgimmeBgillsideBgillB	generallyB	gatheringBgatheredBgarlickyBfutureBfunnelBfunBfullflavoredBfujiBftBfruityBfructoseBfrontBfrondsBfritterBfriendsBfridayBfriandBfreshyBfreshgroundBfrescoBfreezersafeBfreelyBfraîcheBframeBfouredBforthsB
forktenderBforkfulBforestBfoodsBfondutaBfondBfolkBfoilwrappedBflowersB
flouryeastBflourbakingBfloridaB
florentineB	flieshmanBfleischmannsBflaxmealB
flavouringBflattensBflapBflakeyBfixBfiveofheartsBfitsBfirmripeB	fingertipBfigureBferrariBfermipanB	fermentedBfattyBfarmerBfarinataBfarfalleBfarB	fanforcedBfacesBextractsBexpressoBexposingBexposeB
experimentBexpelB	exceptionBexampleBexactlyBeveningBeuropeanstyleBetB	equipmentB	equalsizeBensuringBenjoyedBendiveB	enclosingBelongateB
eliminatesB	eliminateBelBeighteenBeidamB	eggwhitesBeggwaterBeggwashB	eggplantsBeggmilkBeffectBedmondsBedamB	easyblendBeasterBeaseBdurkeesBdunkBdryingredientBdriveBdrippingBdownwardBdoughyBdoughsB
doughlinedBdoublingBdoreenB
domeshapedB
dishtowelsBdirtyBdirectsBdippedBdillweedBdigBdiamondsBdevourBdeveinedBdesignBdeseedB
departmentBdentBdenserBdelightBdelicateB	dehydrateBdegreesspeedBdeadBdarknessBdarkerB	dandelionBdamperBdampenedBcutsidesBcutoutsBcutletsBcushionBcurryBcureB	cuisinartBcucumberBcrèmeBcrystalsBcrystallizeBcrustierBcrushingBcrumpetsBcruditesBcrucialBcroutonBcriticalBcrinklyBcrimpingBcresentB	crescenzaBcremaB
creamstyleBcreamierBcrankBcracksBcrackingBcountyBcottenBcorrectBcornmealsprinkledBcorningBcoredseededchoppedBcookstirBconventionalBcontainsB	contaimerB	contadinaBconsiderBconfectionerB
condimentsB	condensedBcompressB	completedBcommonBcomboBcolorsB	collapsesB	collapsedBcollapseBcolavitaBcoilsBcodBcocktailB
coccochinoBcobBcoarsegroundBclumpB
cloverleafBcloudberriesBcloselyBclipB	clingwrapBcleaningBclarifyBclamsBclamBcircaBchuteB	christmasBchoppedlBchoosingBchobaniB	chiffinodBchewyBchefsBchefB	cheescakeBchavrieBcharBchapatisBchanterellesBchangesB
champignonBchamberBchallahsB	cazveveryBcavityBcavaloBcautiousBcatchBcastelvetranoB
casserolesBcassavaBcarolinaB	carnationB	carnaroliBcaramelizesB
caramelizeBcaraBcapicolaBcapeB	capalinniBcapacolaBcanningBcandyBcaciottaBcabralesBcabernetBbutteryBbusinessBbushelBburstsBbuitoniBbuffaloBbucatiniBbrunoiseBbrunchBbrotformBbrineBbridesBbredBbreaksBbreadmachineBbratBbraidingBboxesBboulesBbotherBbordenBbookBbonedBbonBboltedB
bocconciniBboarderBbluntBblueBblottedBblockBbladesBblackenBblackberriesBbisqueBbindBbiggerBbiasBbendB	beetrootsBbeetrootBbeeperBbeechB	bearnaiseB
batterlikeBbatonsBbatiBbastingBbasketsB
barberriesBbarbecueBbandBbananasBbakeryBbakersBbaggiesBbaggedBbadiaBbacksBawesomeBauthorBassistBascorbicB	arrabiataBapproximentlyBappropriateBapplyB	applewoodBappetitBappearedB
appearanceBanytimeB	antipastoBannattoBangelB	andouilleBanchorBanaheimB	aluminiumBaltitudeBalthoughBalterBalpineBalfonseBakaBairingBaioliBageBaffordBadnBadequateBaddinsBactualBacidBaccentB	absorbentB
absolutelyBabmBaargersiB9”B9x5x3B9x5inchB9inchdiameterB9cmB95105B8x12B8ozB8ounceB86B7x11B75fB712B700B6x10B6inB65B62B610B5thB5quartB5inchB4”B4by8inchB480gB460B45minB4555B450ºB44B43B42B400°f200°cB
400degreesB3mmB3cheeseB390B365fB350ºB
350degreesB
34inchhighB34cmB340B330B325°B325fB315B314B30minuteB30gB2”B2qtB2lbB270B260B255B24inchB2325B231B230°cB230cB230B2225B213B210°fB210fB2045B2035B200°B200fB200c390ampdegfB2000B1¼B1qtB1kgB190ºcB18”B185B1820B180°B17inchB16xB16ozB16ounceB165B15x12B	15minutesB1530B1525B	14x10inchB14gB14cB143B1416B13ounceB13cupB1318B1315B130°fB130fB12x8inchB12qtB12ozB
12inchlongB12inchdiameterB12inB12cB126B125mlB1223B115fB1113B1112B10x6B10x15B10inB10cmB105115fB100115B1000B•sprinkleB•rollB
•preheatB•foldB•brushB“thickB“testales”B
“sing”B“resists”B“muffins”B“mountain”B“meatB
“hole”B“comal”B“break”B‘sponge’B‘snake’B‘snakes’B–10BåB×BÃ¯B¼”B
¼inchdeepB inBBBzitibroccoliB	zippertopBzipperedBzestsBzestedBzestandBzeppolesBzeppoleBzealandBzaarByvesByou’veByoutubeByoumayB	yorkshireByolkmilkByokesByokeByoghourtByoByellowishcreamByellowchoppedByellB
yeastsugarB
yeasthoneyByearByBxshapedBxsBwwwwalmartcarecipecentreBwwwmushroomscaBwuallahBwsausageBwsaltBwrinklesBwrapfilmBwouldntBworthBworktopBworkoutBworkbowlBworkboilingBworkableBwmintBwittedBwitheredBwithaBwith1BwitbBwispsBwirhBwiredBwineglassesB	wineglassBwindowBwindingBwiltonB	wilt23minBwillriseBwilBwidemouthedB	widemouthBwhsikB
whitewaterBwhiteltBwhiskyBwhiskeggB	whirlpoolBwhirledBwhirlBwhilstBwhilBwhetherBwheelsBwheataBwheat2BwhatsBwhackBwettingBwetterBwentB
wellwashedB
wellingtonBwellincorporatedB
welldustedB	welldriedBwelldistributedBwelldefinedB
wellcoatedBwellchilledBwellbutteredBwellblottedB
wellbeatenB	welectricBwelcomeB
weighedoutBweatherBwearBwbreadcrumbsBwbakingBwaxyBwavesB	wateromitBwateroilhoneysugarBwateroil34tspBwateroilB	watermaltBwaterletBwaterandBwaterampBwater110115BwatchingBwasteBwasntB	warmtohotBwarmishB	warmhumidBwanttimeBwanganuiBwandBwanatBwallsBwalkBwahsBwaBvolumeaboutBvoilaBvoerBvlBvisuallyBvisualBvisitBvigorousBverticalBversion—substituteBverBventedBveinyBveinsBveinBvegiBvegetablestuffedBvegeBveeeeryBveB	varietiesBvanillatillBvanillamixingBvaluesBvacuumButilBusingsBuseingBusageBusBurB	uppermostBupdatedBuntoppedB	untoastedBuntlBuntiBunthawedBunsetB	unrollingBunrolledBunrisenBunrefrigeratedB	unrefinedBunreasedBunprocessedB
unpleasantBunopenedB
unmouldingBunlikelyBunitBunionBunheatedBunevenBundyedBundoB	underripeB	underdoneB	undercookB	underbakeBuncoverspreadBuncoveredinBuncookBunbleached170gBunbeatenB
unattendedBumbrellaBultrasmoothBtypesBtypedusseldorfBtyingBtwistedBtwirlBtvBturnoverBtunnelBtuningBtummiesBtumbleBtulioBtugB6tuck one end under the roll and pinch to sealBtuckedBtspbrownBtrustBtrummedBtrulyBtroughBtropicalB	trnsferedBtrivetBtriplesB
trimmedcutBtrimmedbreadBtrifoldBtriesB
tricoloredBtricolorBtriangeBtriB
treeshapedBtreatB	traysheetBtrappedBtransportingBtransportedBtransluscentBtranslucentwhenB
transferedBtransfatB	traditionBtraderBtowlBtowelspaperBtowelsetB	towelpitaBtowellBtoweBtouchesBtotallyBtosatedB
topping”BtoppingsampBtopperBtoolBtongBtoneBtomatotomatoBtomatoesroastedBtomatoesolivesandBtomatoesincludingB
tomatoes12BtomatocheeseparsleyBtomBtogethermeasureBtodayBtoasts—cutBtoastmuffinwaffleBto1BtiramisuBtippedBtip8BtinstoBtinpaperBtimeconsumingBtightleyBtightfittingBtightensBtighlyB?tie each rope into a loose knot leaving two long endsBticktacktoeBthymemarjoramBthursdayBthumpB	thumbnailBthudBthrustB	throughdoBthroughaboutBthreefourthsBthouroughlyB
thouroghlyBthinsBthinnlyBthinnestBthinlyslicedBthinklyBthinjustBthingyBthincookBthincoarselyBthinckBthickslicedBthicknesBthickishBthickestBthickcutB
thermostatBthereofB
themselvesB	thempaperBthe20BthawingB	thawedcutBthat’sBthanksgivingBtexasBtestersBtestedremoveBtestalesBtestalBterenceBtentBtenisB	tenderaddBtendencyBtendBtempsBtempermentalB
temeratureBtellsBtehBteflexBteatowelBteaspoonfulBteaspoomB
tearshapedBtearsBteacupBteacreamBtbsptoastedB	tbsplemonBtbenBtaughtBtastingB	tastinessBtasteyBtastBtansferBtallerB	tablspoonBtablespponsBtablespoonsizedBtablespoonfullBsystemBsyrupsweetenerBsyrnikiBswuareBswishBswimmingBswiftlyBswiftBsweetenBsweepBsweatingBswappedBswapBswBsuspendBsurpriseBsupposedBsupportBsupperBsummerBsuitB
suggestionBsugarsaltorangeBsugareggBsugarcoatedB	sugarbakeB
sufficientBsufaceBsuddenlyBsuccessBsubstitutiteBsubstitutionsBsubstitutionasiagoBsubstitutionBsubstitutesB	substitutB	substitueB
subsequentBsturdyBstunningB	structureBstrongerBstripesBstricsB	stretchedBstrengthensBstreakyBstreaksBstrawBstrandBstraightsidedB	stove’sB	stouffersBstoresBstopsB
stockwaterBstock1BstirpsBstirinsBstireBstilBstifferBstiffensBstfffB
steampoachB
steamfreshBsteambastedBstealBsteadilyBstckyBstayingB
starshapedBstaqndBstandsBstandardsizeBstampB	staggeredBstageitBstacksBsrubbedBsrayBsquidgyBsqueezedriedBsqueezeddryB	squeazingBsquashscallionB	squareishBsqeezedBspudsBsproutedBsproutB	spritzingBspriteBspringwaterB
springsideBsprialBspreadstretchrollBspreadsB	spreadoutBspraysprinkleBspraypamBsprayerBsprayedsideB
spraycoverBspponBspoutBspottedB
spoonfullsBspookBspongingB	spokelineBsplatteringB
splatteredBsplatterB	splashingB
spiralizedB	spiralizeB	spiralingBspinnerBspinichBspinachpotatoBspinachchopBspinachblendingB	spinachanBspinB	spilloverBspikyBspiderBspheresBspecksBspecklesBspeckBspecificallyB	specialtyBspecialBspeadingBspeadBspayedBspatterBspankBspaetzlemakerBspB	southwestB	sourcreamBsoundifBsossiesBsortBsoreadBsootBsomeoneBsoldiersBsoldBsoftnessBsoftfirmBsoftampBsofrittoBsoddenBsoccaBsnipsBsnappedBsnaplockBsnailshapedBsnacksBsnackingBsmoothlBsmootherBsmoothcoverBsmooshBsmokeyBsmlBsmithBsmidgenBsmellsBsmashBsmallmeduimBsmallmediumBsmallestB
smalldicedB	smallcurdBsmBslowroastedBslowestBslopingBsliverB
slitsventsBslipsBsliicedBslightyBslightlystirBslighlyBslidBslickB	slicescutBsliceddividedBsliceandBslenderBsleepyBsleekBslawBslatBslashingBslackBskullBskippedBskinsideBskinonBskinnnedchoppedBskinnnedBskimpB
skilletpanB	skilletonBskilletcookB
skilletampBskilletaBskillerBskilledBskicedBskewBsizzle—don’tBsizzleupB	sizeaboutBsize20BsixthsBsixthBsixteenB	sixpepperBsitsBsitrringBsirBsinglyB
singleedgeBsimmersB	similarlyBsilvaBsillBsignsBsignificantlyBsighBsieveifBsidedownB
sidebysideBside4BshrunkB	shriveledB	shreddingBshownBshouldn’tBshouldbeBshoudBshortlyB
shortgrainBshopsBshoppedBshopB	shinglingBshimmersBshiftBsheetsdivideB	sheetsampBsheeseBsheadedBshardsB
shapeplaceB
shallowfryBshakesprinkleB
shadybrookBsesaonB	sesamesubB
servings90BserveralBserverBservceB	seriouslyBseranBsepatateBsemihardB	semidriedB	selectionBselectedB	segmentedBseepBseededdicedB	seededcutBseedandBsecurelyBseasoningandBseasoning12tspBseasonalBsealableB	sdprinkleBscumBscrubbedhalvedBscrollsBscrewBscreenBscrapesBscrapBscramblestirB	scramblesBscrambedBscoutBscoupB	scorchingBscoopingBscoffB	schweppesBscewerBscenicB
scatteringBscaryBscapeBscandinavianBscambleBscallopBscaldedBscaldBsbdB
saysselectBsavouryBsavorBsavingB	sautéingBsautÃƒÂ©B	sauteeingBsautedBsausaugesauceBsausagevegetableBsausagestirBsausageslicedBsausageshapesBsausagepotatoBsausageonionBsausagekaleBsausagebreadBsaulteBsaucingB	saucestirBsauceampBsatndB
satisfyingBsatisfactionBsatBsaskatchewanBsarnieB	sargentosB
sanitariumBsandyB	sandwhichBsamppBsambosaBsalttoB	saltsugarBsaltreducedBsaltoptionalBsaltmixBsaltfreeBsalt14Bsalt12BsaleBsalamB
saladreadyBsaladampBsaideBsaidBsadzaBryeorBrusksB	runninessB
ruminfusedBruleBruinedBruffledBrueBrounds—theBroundsusingBroundingBrotaryBrosyBrostiBrosinBrosetteBrortatBrootsBroolB	rollshapeBrollpatB
rolling…BrollerB	rolledoutBrolingBrolB	rockmelonBrockingBroatingBroasterBroBriskBrisingsBripplingBripBrinsingBrindsBrimlessBrigidBrightsideupB	rightsideBrightlyBrighthandedBridgesBridgedBridgeBrideBricottaappleBrichBricemilkBribbonBreworkBreviewB	revealingBreusedBreturnsBretunBretrieveBretardB	retainingBrestrictB
restaurantB
resistanceBresistBreplenishingB	replenishBreplateBrepetitionsBrepairedB	renderingBrenderedremoveB
removedcutBremovalBrememberingBremaningB	remainlngB
remaining2B	releasingBreleasesBrelaxedBrekneadBreinvertBregularsizeB	regularlyBregianoBrefrigeraterewarmBrefrigBrefridgeratedB	refoldingBreflectBrefirgeratorB	refillingBreducingBreducedcalorieBredstarBredripeBrediwhipBrediBreddiwipBrectangllesBrectangeBrecrispBreconstitutedBrecommendationsBrecommendationB	recombineBrecessBreceivesB
reasonablyBrearrangingB	rearrangeBrealeaseB
readytouseBreadytobakeBreadycookedBreadsBreachingBrazoorBrawspicebarsBrawspicebarBrawflipBraviolisBratioBrareBraptBrapeseedBrapeBrangesBrandalBrancidBranchBrampantBraidBragged—thenBradishesB	quotthickBquotB	quickriseBquickilyBquickerBquickandeasyBquickactingBquessadillaBquesaedillasB
quesadillaBquartslitersBquarterinchdeepBquartercupfulsBquarryB
quantitiesBqualB	quadrupleBquadrantBqtsBpyramidBpwdrBputsBpushesBpurposesBpuristsBpumpkinspinichBpumpkinsBpumpkincinnamonnutmegB
pulverizedBpulsingBpullmanBpuffingBpuffedeBpuddimBpuasB	ptotaotesBpsBprudentB	providingBproveB
protectionB
protectingBprotectB
prosicuttoBproportionedB
proportionB	producingBproducesBproduceBprodigyBprocesswhenBprocesB
procciuttoBproBprinceB	primitivoB
pretoastedBprestoB	pressmoldB	preservesBpreservativeB
prescribedB	prepearedBpreparationinBprepackagedBpremiumBpreheatingiB	pregratedB	prefferedBprefersBpreferencesBpreferedB
preferableBprecutBprecookB	precoatedB	precisionBpreciseB
preceedingB	preboughtBpreaheatBprcessorBprawnsBpowserBpoweredBpowderyBpowdersBpowder12Bpound450BpoultryBpouchBpotheatB	potentialBpotatosBpotatoes—358B
potatoesupBpotatoedBpostitBpostedBpostBpossiblyBposoleBposibbleBportobellosBporridgeB	poppyseedBpoppingB
poolishmixBpolpetteBpolentsBpolentasliceBpokingB	pointpourBpointerBpoilingBpoiB
pocketlessBpoatoesBpnceBplyableBplungingBplugBplitBpletzelBpleatingB
pleasantlyB	playdoughBplattterBplaticBplatespreadBplantsBplantBplace1BpkgesstouffersBpkgesBpkBpizzelleB	pizzasizeBpizzabakingBpithB	pitapaperBpistouBpiripiriBpinwheelBpinknessBpineappleampBpillowyBpillowsBpignoliBpiecrustlinedBpiecrustB
piecesthenBpiecedBpidesBpicturesBpicturedBpictureBpicottaBpicnicsBpicksBpickelBpickedB	piccolinoBpiadiniBphotosBphotoBpetalsBpersonsB
personnalyB
personallyBpersonalBperogyBpermeateBperhapsB	perfectlyBperduBpepperusingBpepperspineBpepperpepperonimozzerallaBpepperoptionalBpepperonipepperampBpeppernutmegBpeppermushroomBpepperchiniB	pepperampBpeperoniBpeperoncinoB
pencillikeBpencilBpeheatBpeelingsBpeeledseededchoppedBpeeledseededBpeeledpittedBpeeledhalvedslicedBpeeleddeseededBpecorinoromanoBpeckBpeasizeBpealBpckgBpayBpaveBpatternsBpatienceBpatchBpastrylinedBpastiesBpastBpasleyBpartwayB
partsshapeBpartlyskimmedB	particlesBparsleyblackBparskimBparsesanBparselychiveBparnesanBparmiggianoreggianoBparmiggianoBparmiganareggianoB	parmessanB	parmesianBparmesanreggianoBparmesanparsleyBparmegianoreggianoBparmedanB
parmeaseanBparmasenBpareBparchmentlineBparchmentcoveredB
parchementB	parboiledBparBpaper–linedBpaperyBpapertowelsBpapersBpan’sBpantry®B	pantryregB	panreturnB	panrepeatBpankoparmesanBpaninBpanicBpanhasB
pangreasedB	panfryingBpanfryBpanforBpaneraBpancookBpancettaonionBpancettabaconBpancakebatterlikeBpanampBpammedBpalateBpainfulBpainBpadBpackeddrainedBp2BpBoztotalBozsBoz155gBoz100gBoverwrapBoverwhipBoverstuffedBoverprocessBoverpoweringBoverorBoverniteBovernightitBovernightcontinueBovernBoverheadBoverflowB	overcrowdBovercookingB
overcookedBoverbeatB
overbakingB	ovenproffBovenampBoveBovaltineB
ovalsplaceB
ovalshapedBovalrectangularBout—don’tBoutwardsBoutstandingBoutlineBoutdoorsBoutdoorBoutbuildingBoursBotBortilBorientalstyleBorientalB	oregano12BoreBordinaryBor9BoptionaldependsBoptimalBoptBopenedchilledBopenedBoozingsBoozeBooilBontBonlineBonionsmushroomsBonionpepperBonionpancettaBoniongarlicBonionceleryBonionbisquitBonionbaconspinachB
onionbaconB	onesecondBonehalfinchB	oneeighthB
oneatatimeB	omelletteBoloivesBoldsharpB	ojakangasBoilspoonBoilnotBoilmixBoiledsidedownBoildoB	oilcheeseB	oilbutterBoftheBoffsetBoffersB	offcenterBoerBodorBodBoctoberBoccurBoccasionalyB
occasionalBoccBocasionallyBobtainedBobrienBobligedBobjectBoatbranBoalBnycBnuttyBnutsifBnutsandBnutriBnutellacheeseBnusaltBnuggetsBnudgeBnubblyBnovaBnotquiteBnotingBnoticedBnoticeBnothingBnoteimportantBnookBnon–stickBnonstickinessBnonmetalB
noniodizedBnondairyBnonaluminumBniftyBnickleBnicelysizedBniBnexttolowestBnewmansB
neufchÃƒBnestlingB	nessecaryBneroBneedleBneckBnecessarilyB	neccesaryBneatlyBnearestBnbaBnavelBnatviaB	naturallyBnaturalfoodsBnasiBnapkinBnameBnachoBmxBmustardpepperBmushroomspinachBmushroomsgreenBmushroomleekBmushroombaconBmushBmultiplyBmultipleBmultiBmuffisB	muffinpanB	muffincupB	muchroomsBmozzerellauseBmozzarrellaBmozzarellaparmesanBmozzarellaandB	mozzarelaB	mozerellaB
movingcakeBmovementBmouthBmoussesBmortonsBmornayBmoretheB	moreserveBmoppingBmonteryBmom’sBmomstickBmomentsBmollyBmoldsBmoldingBmochaBmmmmBmixturestirB
mixturemixB
mixtureletBmixturelB	mixtureitBmixtureendingB
mixtureampBmixtueBmixingkneadingB
mixingbowlB	mixer’sBmixersBmixeddoBmistoBminxtureBminutuesBminuteswillBminuteswhenBminutesthendrainBminutesthenBminutesstirBminutesspeedB
minutessetBminutessB	minutesorBminutesmineBminutesmeanwhileB
minutesletBminutesdoughBminutesdependingBminutesaddingB	minutes50B	minutes37BminusBminuresBminuntesBminuiteBmintuesBmintesBmintedBminnutesBminiquichesBminiprocessorBminipepperoniBminimuffinsBminiloafBminichopperBmincerBmincedpressedBmincedoptionalBmimicsB
milligramsBmildyBmilderBmidB
microwavesB
microwavedBmichaelBmgBmesureBmessesBmesclunBmenuBmenB	melonballBmellowsBmeldedBmeldBmeetingBmedium—highBmediumthickB
mediumsoftBmediumhightBmediumgrindB
mediumfineBmediumcoarseBmediuimBmedalB
meatcheeseBmeasuresBmeasurementsBmeantBmeaningBmealtB	mceldonnyBmcbutterBmayhemBmaximizeBmatterBmatchsticksB
matchstickBmatchBmassagedBmasonBmaskBmashtheBmasalaBmarinaBmarieBmaridadeBmargarinebutterBmarbledBmanufacturorBmanufacturereBmanufactureBmanuallyBmanicottiesB	mandolineBmanageB	maltomealB
maltbutterBmalgieriB	malasadasBmakersBmaizenaBmaindishBmagicB
madelainesB	madelaineBmacerateB	macchiatoB	luxuriousBlusciousBlumpingBlumpfreeBlumpB	lubricateBlrgBlqyerB	lowsodiumBlowishBlowerysBlowerfatBloversBlostBlooserB	loosepackBloosensB	looseningBlooselypackedBloosegroundBloosebottomedBlongwiseBlolBlocallyBlocalBloavesbrushBloaves6BloBllongBllBlitreBliquidyB
liquidsnotBliquidonB
liquidizerB	liqueuredBliqhtlyBlipBlinseedBlinguiniBlinenBlikenessBlikedBlikechoppedBliitleBlightweightBlightlyoiledBlightluyBlightiyB	lightenedBlightcoloredBligfhtlyBliftedBlifingBlifeBlieuBliberalBlgBleveledBletterstyleBlestBlessfatBlentwiseB
lenhthwiseBlengthwisecreamBlenghtBlemoninfusedBleggosBleggoBlegBlebronBleavesstemsBleatheryBleanerBleaksBleafsBlayoutBlavashBlatkeBlatelyiBlateBlastsBlappedBlandBlaminateB	lambruscoBlaidBladlesBladelBlacyBlackBkrusteazBkraftregBkoserBknotBknocksBknoBknifBkneadingthrowBkmeadBkitchenwareBkitchentowelBkitchentableBkirschwasserBkingarthurflourcomBkind58gBkilosBkillsBkeyBketchupBkerryBkernalsBkemonBkelliBkahveBkaBjutB	jumbosizeBjuiceandBjohnsonville®Bjohnsonville174BjoesBjoeBjlBjeffBjarstyleBjamlikeBjamieBjamesB	jalepenosB	jalapeñoBjacko’lanternsBjBi’mBiveBitalianblendBitaliaBisntBiseBironsBirishBinutesBintuitB	intricateB
into14inchBinto12BintersectingBintermittentlyB	intensifyBintendedB	integrityBintBinsuringBinstructionB	instant3gBinsBinoBinmediatelyB
ingredintsBingredinetsBingredientsmixBingredientsandB
ingrediensBingrediatesBingredBingreadientsBinformationBinedibleBindoorB
indicationB	indicatedBindianB
incrementsB
incrediblyB
increasingB	increasesBincorporatesBincorporatedsprinkleBincorparateBincoporatedBincludedBinclinedBinchwideBinchdiameterB
inchbakingB	inbetweenB
inactuallyB
im¬provesBimproveBimprintBimportantlyBimporantB
implementsB
imperativeB	immersingBimmersedB
immedietlyBimmedietelyB
immediatlyBimmediatleyB	immedatlyB	imitationBimbeddedBilBideasBideallyBidealBicinbBhyssopBhydrogenatedBhydratedBhurryBhunkBhunidityBhungeryBhumidityBhumidBhullBhttpthesimpletablecomarchives1Bhttpsourdoughusacomp1248BhrsBAhrefhttpswwwgeniuskitchencomrecipepizzadoughwholewheat451789pizzaBFhrefhttpswwwgeniuskitchencomrecipeovenroastedtomatoes232092ovenroastedBGhrefhttpswwwgeniuskitchencomrecipeovendriedherbedtomatoes57884ovendriedBhowtoBhouseB	hoursthisBhours1BhourorBhottestB
hottabascoBhotelBhorridB
hornshapedB	hormelregB
horizontalBhopperBhoochB	honeystirBhoneyscotchBhoneycitrusBhoneybutterBhoney6gBhomogenizedwarmedBhollowsBhollowedoutBhittingBhitBhisBhinkB
highglutenBhideandBhhyouBhetBherbsyouBherbflavoredBherbandspiceBhempBhelppBhelpfulBheightBheeseBheeelBheavytoB
heavybasedBheaviestBheavenlyBheaveBheatsimmeringBheatsensitiveBheatsafeBheatforB	heatbrownBheataddBhearedB
healthfoodBheadroomBhazelnutstoBhavledBhatfieldBhatchB
hashbrownsB
hardcookedBhappyBhandsqueezedB	handsizedBhandlesB
handleableBhandaddB
hamwrappedBhamsBhamampBhalwayBhalvesseededBhallowBhalfwiseBhalfsprinklingB	halfpowerB	halfpintsBhalfpintB	halfnhalfBhalfmoonBhalfhalfBhalffullBhalfedBhaledBhaetBguideBguestsBguestBgroveBgroovesBgrooveB	grillmarkBgriddle—placeB
griddlewokBgriddlecombineBgridBgreesedBgreasyBgreaseproofBgreasedoiledBgreasedcoverBgreasBgratingsB	gratinataBgratesBgrapefruitsizedB
granualtedBgranaryBgranBgradeBgrBgoundBgorengBgooyeyBgoodsBgoodqualityBgoodiesBgomasioBgolfballsizeBgolfballBgobsBgobreadBgobblebologneseBgnocciBgnocchisBgmsB	glutinousBglossBgilbertsBgilbertBgigglyBgiftBgiBgerhardsBgentleyB
gentlemansBgenlyBgenerouslyflouredBgenerateBgeneralBgashesB	garnishesBgarlicsauteBgarlicmushroomsB
garlicleekBgarlicflavoredBgarlicchardB	garlicampBgameBgalette…theyBgalBgainBfuzzyB
funnelholdBfunctionB	fryingpanBfryedBfruitierBfruitampB	frquentlyBfrothycouldBfrothyapproximatelyBfrotherB
frothcremaBfrostingBfromtBfromopeningBfromeBfrohesBfroBfrittasBfritattaBfrictionBfreshsautedB	freshnessBfreshlygroundBfreshlogBfrenchstyleBfremoveBfreezedriedBfraucheBfrappuncinosBfrappuncinoBfrappacchinoBfortyBformed—fifteenBforkorB
forkbeatenB	forgivingBfootballshapedBfootB	foodgradeBfoodcomBfontinasBfondueBfollowingkalamataBfoldingsBfoilampBfoamy510minBfoBflyingB
fluffinessBflowingBflouryouBfloursugarrosemaryBflourssugarsaltBfloursaltsugarvitalBflourpreheatBflournoBflourmixtureBflourmixB	flourmakeBflouringBflouriBflourfunnelBflourdustedBflourcoffeeBflourcheesesaltBflourbutterBflourandbutterBflour1BfloppyBfloatingBflippedBflickBfleurBfleischmansBfleckedBflavoursB
flatleafedBflatenBflaringBflaredBflapsBflansB
flameproofB	flakesampB	fivequartBfistsizeBfistsB	fistfullsBfirttataBfirstandBfirmnotBfirmnessBfirmerBfireroastedBfinshBfinishesBfingersheatB
fingernailB
fingerlingBfinesBfinelygroundB	finegrindBfinedBfinderBfillsBfilletBfilingBfigure8BfibrousBffB	fettucineBfestBfermentsBfermentedveryBfermentationBfeetBfeedingBfeatheryBfeatherweightBfeastB	favoritesBfattenBfatsauteB
fatreducedBfastenB	fashionedBfarmsBfarmersBfarinaB	farenhiteB	fantasticBfangasBfancyBfamiliesBfallsBfalkesB
fahrenehitBfadeBfactoryBfabulousBfabricBf27BeyeballBextrasB	extraleanB
extrafancyBexteriorBextendsB	extendingBextendBexposedB	explainedB
experienceBexpellerexpressedBexpectB	expandingBexpandedBexamplelikeBexactB	eveythingBeverydayBeverBevenlyspacedBeveBeuropesBeuropeanBetc…BesBequippedB
equalsizedBenvironmentBenvelopestyleBentreesBenterBenrichedBenoughtBenhanceBenenlyBenclosedBencasedBemittedB
eliminatedBelementB	electreicBelbowBelasticyB
elasticaddBelasticaboutBeighthsBeighthBehBegsBeggspaghettiBeggsmilkwinegreenB	eggshapedBeggscreamcheeseB	eggsbreadBeggs12BeggplantampBeggmushroomBeggland’sBegglandsBegglandBeggflourBeggflipBeggcreamB	eggcoatedB	eggbutterBeggbasilB
eggandmilkBedgesandBeatsmartBeasytohandleBeasybakeBeasternBeasingB	easepressBearthBearsB	earlykeepBearlyB	eachotherBeaachBeBdvidedBdustyBdurhamBdumpingBdueBdrynessBdriesBdribbleBdreianedBdrawingBdraughtfreeBdramaticallyBdramaticBdrainsavingB
drainedcutBdraggingBdragB	draftlessBdowelB	doughthisB
doughpastaB	doughonlyBdoughnutshapedB	doughlikeBdoughisB	doughhookBdoughenhancerBdoughbutBdoughandBdoublethickBdoublelayerBdoubledaboutBdoubleapproxBdoubleactingBdoubleaboutBdottingBdomeBdollopsBdollarB	doesn’tBdockedBdivisionBdividngBdividBdivdeB
disturbingBdistrictBdistinctB	distilledBdissoveBdissolveandB
disruptingBdisolvedBdisolveBdisintegrateB
dishwasherBdishpanB	dishlayerBdishandBdiscolorBdiscardiB
disappearsBdirtBdirectBdipsBdippersBdimplingBdimpledB	dimesizedBdilutedBdiluteBdigitalBdifferentlyBdifferencesB
differenceBdie–BdicingBdibsBdialB	diagionalBdiBdgreesB	dexterousBdevidedBdevideB
developingBdetailsBdestinationBdesiresBdesignsBdesignedB
desiccatedB	deshelledBdeserveBdepressionsB	depressedBdepositBdenzelsBdenzelBdentsB	demitasseBdeluxeB	delisiousBdelightfullyBdeliciouslyB	deliciosoBdelicacyBdeleteBdelayedBdelayB
dehydratorB
dehydratedBdegressB	degrees B	degreesorBdegreesfBdegcBdegassedBdegasBdefrosteddrainedBdefreesB	deflatingBdeepfatBdeeperBdeepenedBdecorativelyB	deciliterBdechlorinatedB	decadenceBdeboneBdealBday’sBdartBdarkmeatBdarkenedBdarkenBdarioleBdanishBdampenB	dalmatianBdabsBdaBcylindricalB	cylindersBcyclesBcycleifBcutupBcutterplaceBcuttedBcutingBcuteBcustardsBcurlsBcuringBcurdlikeBcurdleBcurBcupscustardBcuppaBcupfulsBcupbowlBcupaBcup14B
cultivatedBcucuzzaB
crustlinedB	crustlessBcrustinBcrustiBcrunchytenderBcrunchBcrunbledBcrumpledBcrumbiyBcruetBcrownBcrowdingBcrossedB
crossbonesB	croquetteBcrockpotBcritical–BcrisscrossingBcrisscrosscheckerboardB
crisscrossB	crispnessB
crispinessB
crispchewyBcrinkleBcrimpedBcrevicesBcreepsBcreativeBcreatesBcreaseBcreamylookingB
creamthymeBcreamerB	creamcurdBcrazyBcratersBcrannyB	cranberryBcrackledBcrackleBcrackerlikeBcrabBcpsBcoverageB	coverableBcountrystyleBcountersBcounterclockwiseB	countdownBcoundBcouldntB	correctlyBcornmealsugarBcornmealdustedBcornmealcoveredB	cornerandB	cornbreadBcormealBcopperBcoolerBcookscrambleBcookeryBcookercrockB
cookedthenBcookedrememberB	cookedampB	cookbooksBcookbookB	convertedBconventionallyBconvectionalBcontunesB	continuedBcontinentalB	containedBconsumeBconsistency—thatBconsistencyusuallyBconsistencyaddBconsistancyBconsiderablyBconsecutiveBconicalBconformsBconformBconfigurationBconfectioner’sB
concoctionBconcentrateBconcaveBcompromisingBcompoteB	completesB
complementBcompartmentsBcompany’sB	companionBcommentBcommealBcomfortablyBcomfortableBcombinesBcombinationsBcolouredBcolorfulB
collectionB	collectedBcollarB	collanderBcoleBcoldrunningBcolandarBcokeBcoilingBcoiledBcocoBcoccochinoorangeBcoaxingBcoastBcoarslyBcoarsegrainBcoalB
coagulatedBclusterBclumpedBcloudBclottedBclothandBclosestBcloggedBclocthBclockBclimateBclicesBclearedBcleanupBcleanlyB	clean2022BcircledB
circlecookBcinnominB	ciabattasBchurrosBchunksbrushBchucksBchuckBchoseBchopperBchoppediBchoppedaboutBchokingBchokesBchocolatecoveredBchlorinatedBchipsremainderBchillsBchilisBchildrenandBchiasBchewierBchessesBcheesierBcheesesugarandBcheesestirringBcheesespredBcheesericottaB
cheesemeatB	cheeseeggBcheeseclothlinedBcheesechoppedBcheeseburgerB	cheeseampB	cheeseaddBcheesBcheersBcheekilyBcheckerboardBcheaseBchatBchargrilledBchard3BcharacteristicsBcharacteristicBchangingBchanceBchanaBchamoisBchalkyB
chakchoukaBchainBchafingBchablisBcentresBcentralB
centigradeBcentBcellBcelcuisBceasesBceanBcavitiesBcautionBcausingBcausesBcaughtBcatchesBcastorB	cassaroleB	casingaddBcascadeBcarvingsBcarvingBcarvedBcarveBcartonsBcarpetBcarpalBcarefullytryBcarbohydratesBcarbohydrateBcaramelizationBcapsicummushroomsBcaponsBcanÃBcans—foundBcanolaoliveBcannotBcannedslicedBcanisterBcaneBcancrushBcanadaBcamperBcalories362BcallsBcallingBcaliforniastyleBcalciumBcalBcakeyBcakeandpastryBcafeBc100gBbveenB
butterwithBbutterspaghetticheeseBbuttersheetB	butterputB	butteroilBbuttermargarineB
buttergheeBbutterflavorBbutter13Bbutter12BbutcherBbusyBburyingBburstingBburritostyleBburpBburnersBburgersBbuonBbundlesBbundleBbunchedBbumpyBbumpsBbummedBbulletBbuildingBbuildBbucketsBbubblyfrothyBbtBbrusselsBbrummelbrownBbrummelBbruiseB	brownnessBbrowndottedB
brownaboutBbrowBbroilersafeBbroiledBbrodysBbrodyBbroccolisausageBbroccoilBbrittleB
briquettesB
briocheishB
brinecuredBbrimBbrienBbridgBbricksBbrewsBbreiflyBbreakastB	breadsizeBbreadsausagebreadBbreadsausageBbreadmixBbreadedBbreadbakingBbranchesBbranchBbrakeBbraiserBbrachaBboxedB	bowlwhiskBbowlturningBbowlturnBbowltoBbowlstirBbowlorBbowldisgardBbowlcrushingBbowlcombinemilkoileggampBbowlcombineBboutB
bottomcookBbotheredBboschBborageBbooksBbonesBbondBbonaciniB
boilreduceBboilcookB	boilaboutBboatBboarsBboarBblueberryflavoredBbloomedBblitzBblisteryBblistersBblisterBblintzesBblinisBblendprocessBblenderprocessBblendedheatBblendaddB	blanchingBbladedBbitterBbitesideBbitesBbisquickwatereggsgarlicBbirdsBbipBbetweenlayersBbetweeenBbesideBbenefitsBbenchtipBbellyBbellasBbelieveBbelgianBbeignetsBbegunBbeerdissolveBbecomingBbeccosBbeccoBbeataddBbeardsBbeadBbcaonBbbqdBbatteriBbatardB	basilsaltBbasilparsleyBbasiloreganoBbasicnormalBbasiBbarbaraBbandsBbananaspreadBbambooBballsonBballerBbakkeBbakingsheetBbakingroastingBbakeriesBbakedhollowBbake10BbainBbaileysBbaguettestyleBbaguettBbaguetesBbaggingBbagelfriendlyBbadlyBbadderBbadBbBawhileBawareBavoidingBautolyseBautoBauthenticityB	australiaBaugratinBaudiblyB
attractiveBattemptB	attatchedBattainBatomizerBateBassumeBassemblyB
assemblingBaspectBasisBasianBashBasapBartfulBarriveB	arrangingB	arrangeinBarraneBaroungBaroundoftenBarmBapprovedBappropriatelyBapprBapplicationBapplauseBappetitoBappenzellerB	appearingBaperolBaoutBanyoneBanymoreBanticipatedBantBansBaniseedsBangesBangeBandusingBandhandBamishBamdBamarettichocolateBalvedBalufoilB
alternatlyBallvegetableB
allpouposeBallinoneBallergicBallbreadBalittleBaldenteBalcoholBalbertBakingBajustBairyB	airthightB	airetightBaimingBaidsBaidB
aheadcoverBagentB
againaboutB	afternoonBafricaBafraidB
aestheticsBadyBadventBadornBadoreBadoptedBadobeB	adjustingBadjustedBadjustablebladeBadintBadheresBaddititionalB	activatesBactionBactingBactifryBactBaconeB	achievingBaccordinglyBaccomplishedB	accompanyB
accomodateBaccommodateBaccessB
accentuateBabutB
absorptionBabsorbsBabout15Ba180cB9–inchB9×5inchB9xx13B9x9x2B9x9inchB	9x5x3inchB9x13x2B9x1B9ozB9by9inchB9bakeB9amp8243B99B97B95°fB95cB950B949mgB93B91gB910”B90°fB90gB90fB90cthisB8–10B8B	8x8x2inchB8x8x2B8x5inchB8x4inchB8x12inchB8x10B8variationsB	8inchlongB	8incheachB8inB8cmB	8by12inchB	8by10inchB8bakeB88°B875B87B85°fB	85x45inchB85fB850B84°B844B82B813B
810minutesB80°B80mlB80fB7–8B7x10B7forB7cupB7coverB7cmdeepB76gB75°f–85°fB75°fB75°80°B750mlB73B72B70°fB7090B7075B6″B6½7B6x4inB6quartB6punchB6cmB6allowB69gB665gB665B65mlB650B6400200B64B62gB60gmB605B6000B5x6B5mmB5layB5inB5greaseB5gB59B	55cm2¼inB5565B550gB550fB550B515B512x3B50gB50cB500ºfB4–5B4x4B4x10B4tB4qtB4ouncesB4ounceB4letB4kneadB	4inchwideB4heatB4greaseB4cupsB4cmB492B475ºfB475°B475fB
475degreesB466mgB45minsB45degreeB
450degreesB445460B443B440B435fB
435ampdegfB435430fB42mgB420B41gmonoB415B412inchB410B40zB40cmB4060B4050°cB400ºB400°ftB400fgasB400f205cB
400ampdegfB3–4B3usingB3topB3steamB3setB3rdB3oB	3inchwideB3inB3divideB3coverB3cmB398B392°fB39B38inchB385B375°f190°cB375forB
375degreesB	375degreeB375degfB375400B370°fB370B37B365ºfB3648B360gB35cmx22cmx5cmB35cmB3550B355B350Â°B350°f175°cB350oB350mlB350gB350f190cB
350f180°cB350f180cgasB	350degreeB350degfB
350amp1618B	350375°fB350375°B35006500B34cmx24cmx5cmB3445B343B336°fB330°fB325Â°B320B316gB30ounceB	30minutesB30ishB30522B3030B300gB
2–3quartB2–3B2tbsB2tbB2shapeB2sauteB2minuteB2minB2lB2invertB	2inchwideB2inB2hrsB2cbreadB2bakeB2addB29cmB297B2966B293B290B28ozB28ounceB28mgB28cmB284B2832B2829B2820B2803B280B27cmB27cB275ºfB26x36cmB25inchB25cm1inB256B25365B2520B250°c475°fgasB250mlB250gB250fB250275B24hrsB245B2430B240ºcB240°fB23x32cmB23rdsB23cmB235B234B233B	230250mlsB22ocB229gB227B225ºcB225°cB225°B225ozB225cmB2228B2215B220ºcB
220ampdegcB2200B216B215B214B20–30B20x15B	20minutesB20gmB20cm8B205fB2026B2025minsB2025minB2024B20210B200ºcB200mlB200f100cgasB200dB200cgasB200c392fB200c180cB2004B1″B1–2B1x3B1tspB1tablespoonB1preheatB1percentB1ounceB1mixB1lbB1kg1B	1inchwideB
1inchthickB	1inchdeepB1hourB1cmthickB1chopB1bB1amp8243B1allB19cmB195B190°fB190°c375°fB190°B
190c375°fB	190200°fB190200B18x4inchB	18x12inchB18x12B	18x10inchB18inchthickB18inB18byB189B1823B1822B1812B180ºcB180°c350°fB180fB180degB180c356fB180c350fB180c0B	180200ºfB17”xB17cmB177°cB175c°B175c350fB175cB174degcB170°fB170°180°cB170fB16x8inchB16x14B16x12B16inB169B165°fB1620B160°fB160degfB15–20B	15x12inchB15x10x1B	15x10inchB15x10B15mlB15minsB15minB15inB15gB155B1517B15101B150°B150mlB150cB150456B14x12inB14thB14quotB14indeepB
14inchdeepB14cupB	14amp8243B149°B147B1420B1415B13B13x9x12B13x7inchB13rdB13inB13cup0B135B134B133B132B131B130°B1302B
12”thickB12”30B12–15B
12×15inchB12x9inchB12x8B12x8B	12x15inchB12x15B	12x10inchB12x10B12x1B12wellB12tB12ounceB12minB12lbB	12inthickB
12inchdeepB12holeB
12footlongB12cupsB	12cupcakeB12countB12by14B125°f130°fB125°130°fB125130B122inchB1218B1217B1216B120°130°fB120°B120f130fB120fB120130°B120130fB11x7x1B11x7inchB11x17B11x15B	11x13inchB11x13B11oB116thB115ºfB115118B112inchinchB112inchB1114B1112inchB1112hrsB1110B111B110°c225°fB110°B10”25B10–15B	10x15inchB10minB
10inchlongB10inchdiameterB10by7B
10by15inchB10639B105Â°f115Â°fB105f40cB105fB1055B
105115ÃƒB105115ÃB105110fB	105100ºfB1012inchB100°cB100°B100gB100110fB055B02B01gB00gpoly
��
Const_1Const*
_output_shapes	
:�<*
dtype0	*��
value��B��	�<"��                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      
H
Const_2Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R
I
Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
j

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name76*
value_dtype0	
�
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape:	@�*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	@�*
dtype0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape
:P@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:P@*
dtype0
�
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
�
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
�
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:�*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:�*
dtype0
�
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
�

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
�
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:	�@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *%

debug_nameembedding/embeddings/*
dtype0*
shape:���*%
shared_nameembedding/embeddings
�
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*!
_output_shapes
:���*
dtype0
�
dense_3/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_3/bias_1/*
dtype0*
shape:�*
shared_namedense_3/bias_1
n
"dense_3/bias_1/Read/ReadVariableOpReadVariableOpdense_3/bias_1*
_output_shapes	
:�*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpdense_3/bias_1*
_class
loc:@Variable*
_output_shapes	
:�*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:�*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
b
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes	
:�*
dtype0
�
dense_3/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_3/kernel_1/*
dtype0*
shape:	@�*!
shared_namedense_3/kernel_1
v
$dense_3/kernel_1/Read/ReadVariableOpReadVariableOpdense_3/kernel_1*
_output_shapes
:	@�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpdense_3/kernel_1*
_class
loc:@Variable_1*
_output_shapes
:	@�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	@�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	@�*
dtype0
�
dense_2/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_2/bias_1/*
dtype0*
shape:@*
shared_namedense_2/bias_1
m
"dense_2/bias_1/Read/ReadVariableOpReadVariableOpdense_2/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpdense_2/bias_1*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
dense_2/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_2/kernel_1/*
dtype0*
shape
:P@*!
shared_namedense_2/kernel_1
u
$dense_2/kernel_1/Read/ReadVariableOpReadVariableOpdense_2/kernel_1*
_output_shapes

:P@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpdense_2/kernel_1*
_class
loc:@Variable_3*
_output_shapes

:P@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape
:P@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
i
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes

:P@*
dtype0
�
dense_1/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_1/bias_1/*
dtype0*
shape:*
shared_namedense_1/bias_1
m
"dense_1/bias_1/Read/ReadVariableOpReadVariableOpdense_1/bias_1*
_output_shapes
:*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpdense_1/bias_1*
_class
loc:@Variable_4*
_output_shapes
:*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:*
dtype0
�
dense_1/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_1/kernel_1/*
dtype0*
shape
:*!
shared_namedense_1/kernel_1
u
$dense_1/kernel_1/Read/ReadVariableOpReadVariableOpdense_1/kernel_1*
_output_shapes

:*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpdense_1/kernel_1*
_class
loc:@Variable_5*
_output_shapes

:*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape
:*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
i
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes

:*
dtype0
�
dense/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense/bias_1/*
dtype0*
shape:@*
shared_namedense/bias_1
i
 dense/bias_1/Read/ReadVariableOpReadVariableOpdense/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpdense/bias_1*
_class
loc:@Variable_6*
_output_shapes
:@*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:@*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:@*
dtype0
�
dense/kernel_1VarHandleOp*
_output_shapes
: *

debug_namedense/kernel_1/*
dtype0*
shape:	�@*
shared_namedense/kernel_1
r
"dense/kernel_1/Read/ReadVariableOpReadVariableOpdense/kernel_1*
_output_shapes
:	�@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpdense/kernel_1*
_class
loc:@Variable_7*
_output_shapes
:	�@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:	�@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
j
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:	�@*
dtype0
�
embedding/embeddings_1VarHandleOp*
_output_shapes
: *'

debug_nameembedding/embeddings_1/*
dtype0*
shape:���*'
shared_nameembedding/embeddings_1
�
*embedding/embeddings_1/Read/ReadVariableOpReadVariableOpembedding/embeddings_1*!
_output_shapes
:���*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpembedding/embeddings_1*
_class
loc:@Variable_8*!
_output_shapes
:���*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:���*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
l
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*!
_output_shapes
:���*
dtype0
r
serve_full_textPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
q
serve_servingsPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserve_full_textserve_servings
hash_tableConst_3Const_2Const_4embedding/embeddings_1dense/kernel_1dense/bias_1dense_1/kernel_1dense_1/bias_1dense_2/kernel_1dense_2/bias_1dense_3/kernel_1dense_3/bias_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU 2J 8� �J *4
f/R-
+__inference_signature_wrapper___call___9674
|
serving_default_full_textPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
{
serving_default_servingsPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_full_textserving_default_servings
hash_tableConst_3Const_2Const_4embedding/embeddings_1dense/kernel_1dense/bias_1dense_1/kernel_1dense_1/bias_1dense_2/kernel_1dense_2/bias_1dense_3/kernel_1dense_3/bias_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU 2J 8� �J *4
f/R-
+__inference_signature_wrapper___call___9706
�
StatefulPartitionedCall_2StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *&
f!R
__inference__initializer_9717
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *&
f!R
__inference__initializer_9729
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_2
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�
Const_5Const"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
C
0
	1

2
3
4
5
6
7
8*
C
0
	1

2
3
4
5
6
7
8*
* 
C
0
1
2
3
4
5
6
7
8*

0
1*

trace_0* 
"
	serve
serving_default* 
JD
VARIABLE_VALUE
Variable_8&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_3&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_2&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEVariable&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEembedding/embeddings_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense/kernel_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense/bias_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_2/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_3/bias_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_1/kernel_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_1/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_2/kernel_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_3/kernel_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
R
_initializer
 _create_resource
!_initialize
"_destroy_resource* 
m
#_create_resource
$_initialize
%_destroy_resource)
table _misc_assets/1/.ATTRIBUTES/table*
/
&	capture_1
'	capture_2
(	capture_3* 
/
&	capture_1
'	capture_2
(	capture_3* 
/
&	capture_1
'	capture_2
(	capture_3* 
* 

)trace_0* 

*trace_0* 

+trace_0* 

,trace_0* 

-trace_0* 

.trace_0* 
* 
* 
* 
* 
 
/	capture_1
0	capture_2* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableembedding/embeddings_1dense/kernel_1dense/bias_1dense_2/bias_1dense_3/bias_1dense_1/kernel_1dense_1/bias_1dense_2/kernel_1dense_3/kernel_1?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Const_5*!
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *&
f!R
__inference__traced_save_9941
�
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableembedding/embeddings_1dense/kernel_1dense/bias_1dense_2/bias_1dense_3/bias_1dense_1/kernel_1dense_1/bias_1dense_2/kernel_1dense_3/kernel_1MutableHashTable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J **
f%R#
!__inference__traced_restore_10007��
�
�
+__inference_signature_wrapper___call___9674
	full_text
servings
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:���
	unknown_4:	�@
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:P@
	unknown_9:@

unknown_10:	@�

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	full_textservingsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU 2J 8� �J *"
fR
__inference___call___9641p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name9670:$ 

_user_specified_name9668:$ 

_user_specified_name9666:$ 

_user_specified_name9664:$
 

_user_specified_name9662:$	 

_user_specified_name9660:$ 

_user_specified_name9658:$ 

_user_specified_name9656:$ 

_user_specified_name9654:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_user_specified_name9646:QM
'
_output_shapes
:���������
"
_user_specified_name
servings:R N
'
_output_shapes
:���������
#
_user_specified_name	full_text
�
+
__inference__destroyer_9733
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
__inference_save_fn_9751
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:d
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:,(
&
_user_specified_nametable_handle:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�
-
__inference__initializer_9729
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�Y
�
!__inference__traced_restore_10007
file_prefix0
assignvariableop_variable_8:���0
assignvariableop_1_variable_7:	�@+
assignvariableop_2_variable_6:@/
assignvariableop_3_variable_5:+
assignvariableop_4_variable_4:/
assignvariableop_5_variable_3:P@+
assignvariableop_6_variable_2:@0
assignvariableop_7_variable_1:	@�*
assignvariableop_8_variable:	�>
)assignvariableop_9_embedding_embeddings_1:���5
"assignvariableop_10_dense_kernel_1:	�@.
 assignvariableop_11_dense_bias_1:@0
"assignvariableop_12_dense_2_bias_1:@1
"assignvariableop_13_dense_3_bias_1:	�6
$assignvariableop_14_dense_1_kernel_1:0
"assignvariableop_15_dense_1_bias_1:6
$assignvariableop_16_dense_2_kernel_1:P@7
$assignvariableop_17_dense_3_kernel_1:	@�M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�2MutableHashTable_table_restore/LookupTableImportV2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB%_misc_assets/1/.ATTRIBUTES/table-keysB'_misc_assets/1/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_8Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_7Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_6Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_5Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_4Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_3Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_2Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variableIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp)assignvariableop_9_embedding_embeddings_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_kernel_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_bias_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_bias_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_3_bias_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_1_kernel_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_1_bias_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp$assignvariableop_16_dense_2_kernel_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp$assignvariableop_17_dense_3_kernel_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:18RestoreV2:tensors:19*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*&
 _has_manual_control_dependencies(*
_output_shapes
 Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*
_output_shapes
 "#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:UQ
#
_class
loc:@MutableHashTable
*
_user_specified_nameMutableHashTable:0,
*
_user_specified_namedense_3/kernel_1:0,
*
_user_specified_namedense_2/kernel_1:.*
(
_user_specified_namedense_1/bias_1:0,
*
_user_specified_namedense_1/kernel_1:.*
(
_user_specified_namedense_3/bias_1:.*
(
_user_specified_namedense_2/bias_1:,(
&
_user_specified_namedense/bias_1:.*
(
_user_specified_namedense/kernel_1:6
2
0
_user_specified_nameembedding/embeddings_1:(	$
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
+
__inference__destroyer_9721
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
__inference_restore_fn_9758
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:,(
&
_user_specified_nametable_handle:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0
�
�
+__inference_signature_wrapper___call___9706
	full_text
servings
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:���
	unknown_4:	�@
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:P@
	unknown_9:@

unknown_10:	@�

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	full_textservingsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU 2J 8� �J *"
fR
__inference___call___9641p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name9702:$ 

_user_specified_name9700:$ 

_user_specified_name9698:$ 

_user_specified_name9696:$
 

_user_specified_name9694:$	 

_user_specified_name9692:$ 

_user_specified_name9690:$ 

_user_specified_name9688:$ 

_user_specified_name9686:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_user_specified_name9678:QM
'
_output_shapes
:���������
"
_user_specified_name
servings:R N
'
_output_shapes
:���������
#
_user_specified_name	full_text
�
E
__inference__creator_9725
identity: ��MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 5
NoOpNoOp^MutableHashTable*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�
9
__inference__creator_9710
identity��
hash_tablej

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name76*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: /
NoOpNoOp^hash_table*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
��
�
__inference__traced_save_9941
file_prefix6
!read_disablecopyonread_variable_8:���6
#read_1_disablecopyonread_variable_7:	�@1
#read_2_disablecopyonread_variable_6:@5
#read_3_disablecopyonread_variable_5:1
#read_4_disablecopyonread_variable_4:5
#read_5_disablecopyonread_variable_3:P@1
#read_6_disablecopyonread_variable_2:@6
#read_7_disablecopyonread_variable_1:	@�0
!read_8_disablecopyonread_variable:	�D
/read_9_disablecopyonread_embedding_embeddings_1:���;
(read_10_disablecopyonread_dense_kernel_1:	�@4
&read_11_disablecopyonread_dense_bias_1:@6
(read_12_disablecopyonread_dense_2_bias_1:@7
(read_13_disablecopyonread_dense_3_bias_1:	�<
*read_14_disablecopyonread_dense_1_kernel_1:6
(read_15_disablecopyonread_dense_1_bias_1:<
*read_16_disablecopyonread_dense_2_kernel_1:P@=
*read_17_disablecopyonread_dense_3_kernel_1:	@�J
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	
savev2_const_5
identity_37��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: d
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_variable_8*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_variable_8^Read/DisableCopyOnRead*!
_output_shapes
:���*
dtype0]
IdentityIdentityRead/ReadVariableOp:value:0*
T0*!
_output_shapes
:���d

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_7*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_7^Read_1/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0_

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_6*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_6^Read_2/DisableCopyOnRead*
_output_shapes
:@*
dtype0Z

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_5*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_5^Read_3/DisableCopyOnRead*
_output_shapes

:*
dtype0^

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_4*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_4^Read_4/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_3*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_3^Read_5/DisableCopyOnRead*
_output_shapes

:P@*
dtype0_
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes

:P@e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:P@h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_2*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_2^Read_6/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_1*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_1^Read_7/DisableCopyOnRead*
_output_shapes
:	@�*
dtype0`
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	@�f
Read_8/DisableCopyOnReadDisableCopyOnRead!read_8_disablecopyonread_variable*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp!read_8_disablecopyonread_variable^Read_8/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:�t
Read_9/DisableCopyOnReadDisableCopyOnRead/read_9_disablecopyonread_embedding_embeddings_1*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp/read_9_disablecopyonread_embedding_embeddings_1^Read_9/DisableCopyOnRead*!
_output_shapes
:���*
dtype0b
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*!
_output_shapes
:���n
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_dense_kernel_1*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_dense_kernel_1^Read_10/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@l
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_dense_bias_1*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_dense_bias_1^Read_11/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@n
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_2_bias_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_2_bias_1^Read_12/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:@n
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_dense_3_bias_1*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_dense_3_bias_1^Read_13/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�p
Read_14/DisableCopyOnReadDisableCopyOnRead*read_14_disablecopyonread_dense_1_kernel_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp*read_14_disablecopyonread_dense_1_kernel_1^Read_14/DisableCopyOnRead*
_output_shapes

:*
dtype0`
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes

:e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:n
Read_15/DisableCopyOnReadDisableCopyOnRead(read_15_disablecopyonread_dense_1_bias_1*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp(read_15_disablecopyonread_dense_1_bias_1^Read_15/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:p
Read_16/DisableCopyOnReadDisableCopyOnRead*read_16_disablecopyonread_dense_2_kernel_1*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp*read_16_disablecopyonread_dense_2_kernel_1^Read_16/DisableCopyOnRead*
_output_shapes

:P@*
dtype0`
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes

:P@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:P@p
Read_17/DisableCopyOnReadDisableCopyOnRead*read_17_disablecopyonread_dense_3_kernel_1*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp*read_17_disablecopyonread_dense_3_kernel_1^Read_17/DisableCopyOnRead*
_output_shapes
:	@�*
dtype0a
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�f
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	@�L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB%_misc_assets/1/.ATTRIBUTES/table-keysB'_misc_assets/1/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1savev2_const_5"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *#
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_36Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_37IdentityIdentity_36:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:?;

_output_shapes
: 
!
_user_specified_name	Const_5:yu

_output_shapes
:
Y
_user_specified_nameA?MutableHashTable_lookup_table_export_values/LookupTableExportV2:yu

_output_shapes
:
Y
_user_specified_nameA?MutableHashTable_lookup_table_export_values/LookupTableExportV2:0,
*
_user_specified_namedense_3/kernel_1:0,
*
_user_specified_namedense_2/kernel_1:.*
(
_user_specified_namedense_1/bias_1:0,
*
_user_specified_namedense_1/kernel_1:.*
(
_user_specified_namedense_3/bias_1:.*
(
_user_specified_namedense_2/bias_1:,(
&
_user_specified_namedense/bias_1:.*
(
_user_specified_namedense/kernel_1:6
2
0
_user_specified_nameembedding/embeddings_1:(	$
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
__inference___call___9641
	full_text
servingsP
Lfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_table_handleQ
Mfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_default_value	-
)functional_1_text_vectorization_1_equal_y0
,functional_1_text_vectorization_1_selectv2_t	K
6functional_1_embedding_1_shape_readvariableop_resource:���D
1functional_1_dense_1_cast_readvariableop_resource:	�@B
4functional_1_dense_1_biasadd_readvariableop_resource:@E
3functional_1_dense_1_2_cast_readvariableop_resource:D
6functional_1_dense_1_2_biasadd_readvariableop_resource:E
3functional_1_dense_2_1_cast_readvariableop_resource:P@D
6functional_1_dense_2_1_biasadd_readvariableop_resource:@F
3functional_1_dense_3_1_cast_readvariableop_resource:	@�E
6functional_1_dense_3_1_biasadd_readvariableop_resource:	�
identity��+functional_1/dense_1/BiasAdd/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�-functional_1/dense_1_2/BiasAdd/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�-functional_1/dense_2_1/BiasAdd/ReadVariableOp�*functional_1/dense_2_1/Cast/ReadVariableOp�-functional_1/dense_3_1/BiasAdd/ReadVariableOp�*functional_1/dense_3_1/Cast/ReadVariableOp�0functional_1/embedding_1/GatherV2/ReadVariableOp�?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2p
-functional_1/text_vectorization_1/StringLowerStringLower	full_text*'
_output_shapes
:����������
4functional_1/text_vectorization_1/StaticRegexReplaceStaticRegexReplace6functional_1/text_vectorization_1/StringLower:output:0*'
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite �
)functional_1/text_vectorization_1/SqueezeSqueeze=functional_1/text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������t
3functional_1/text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
;functional_1/text_vectorization_1/StringSplit/StringSplitV2StringSplitV22functional_1/text_vectorization_1/Squeeze:output:0<functional_1/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
Afunctional_1/text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
;functional_1/text_vectorization_1/StringSplit/strided_sliceStridedSliceEfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:indices:0Jfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack:output:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_1:output:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Efunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Efunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=functional_1/text_vectorization_1/StringSplit/strided_slice_1StridedSliceCfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:shape:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Nfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Nfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
dfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDfunctional_1/text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFfunctional_1/text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
mfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizehfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
rfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0{functional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
mfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
nfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
nfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ufunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
vfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapehfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0functional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
vfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountyfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0yfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
kfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
ofunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
kfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2LookupTableFindV2Lfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_table_handleDfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:values:0Mfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
'functional_1/text_vectorization_1/EqualEqualDfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:values:0)functional_1_text_vectorization_1_equal_y*
T0*#
_output_shapes
:����������
*functional_1/text_vectorization_1/SelectV2SelectV2+functional_1/text_vectorization_1/Equal:z:0,functional_1_text_vectorization_1_selectv2_tHfunctional_1/text_vectorization_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*functional_1/text_vectorization_1/IdentityIdentity3functional_1/text_vectorization_1/SelectV2:output:0*
T0	*#
_output_shapes
:����������
>functional_1/text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6functional_1/text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������      �
Efunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?functional_1/text_vectorization_1/RaggedToTensor/Const:output:03functional_1/text_vectorization_1/Identity:output:0Gfunctional_1/text_vectorization_1/RaggedToTensor/default_value:output:0Ffunctional_1/text_vectorization_1/StringSplit/strided_slice_1:output:0Dfunctional_1/text_vectorization_1/StringSplit/strided_slice:output:0*
Tindex0	*
Tshape0	*
T0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSa
functional_1/embedding_1/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
functional_1/embedding_1/LessLessNfunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0(functional_1/embedding_1/Less/y:output:0*
T0	*(
_output_shapes
:�����������
-functional_1/embedding_1/Shape/ReadVariableOpReadVariableOp6functional_1_embedding_1_shape_readvariableop_resource*!
_output_shapes
:���*
dtype0o
functional_1/embedding_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB" N  �   v
,functional_1/embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.functional_1/embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.functional_1/embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&functional_1/embedding_1/strided_sliceStridedSlice'functional_1/embedding_1/Shape:output:05functional_1/embedding_1/strided_slice/stack:output:07functional_1/embedding_1/strided_slice/stack_1:output:07functional_1/embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
functional_1/embedding_1/CastCast/functional_1/embedding_1/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
functional_1/embedding_1/addAddV2Nfunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0!functional_1/embedding_1/Cast:y:0*
T0	*(
_output_shapes
:�����������
!functional_1/embedding_1/SelectV2SelectV2!functional_1/embedding_1/Less:z:0 functional_1/embedding_1/add:z:0Nfunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*(
_output_shapes
:�����������
0functional_1/embedding_1/GatherV2/ReadVariableOpReadVariableOp6functional_1_embedding_1_shape_readvariableop_resource*!
_output_shapes
:���*
dtype0h
&functional_1/embedding_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!functional_1/embedding_1/GatherV2GatherV28functional_1/embedding_1/GatherV2/ReadVariableOp:value:0*functional_1/embedding_1/SelectV2:output:0/functional_1/embedding_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*-
_output_shapes
:������������
>functional_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
,functional_1/global_average_pooling1d_1/MeanMean*functional_1/embedding_1/GatherV2:output:0Gfunctional_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
functional_1/dense_1/MatMulMatMul5functional_1/global_average_pooling1d_1/Mean:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
+functional_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4functional_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_1/dense_1/BiasAddBiasAdd%functional_1/dense_1/MatMul:product:03functional_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@z
functional_1/dense_1/ReluRelu%functional_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:*
dtype0�
functional_1/dense_1_2/MatMulMatMulservings2functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-functional_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1/dense_1_2/BiasAddBiasAdd'functional_1/dense_1_2/MatMul:product:05functional_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
functional_1/dense_1_2/ReluRelu'functional_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
&functional_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
!functional_1/concatenate_1/concatConcatV2'functional_1/dense_1/Relu:activations:0)functional_1/dense_1_2/Relu:activations:0/functional_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������P�
*functional_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:P@*
dtype0�
functional_1/dense_2_1/MatMulMatMul*functional_1/concatenate_1/concat:output:02functional_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-functional_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_1/dense_2_1/BiasAddBiasAdd'functional_1/dense_2_1/MatMul:product:05functional_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
functional_1/dense_2_1/ReluRelu'functional_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
*functional_1/dense_3_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_3_1_cast_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
functional_1/dense_3_1/MatMulMatMul)functional_1/dense_2_1/Relu:activations:02functional_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_3_1/BiasAddBiasAdd'functional_1/dense_3_1/MatMul:product:05functional_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
functional_1/dense_3_1/SoftmaxSoftmax'functional_1/dense_3_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������x
IdentityIdentity(functional_1/dense_3_1/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^functional_1/dense_1/BiasAdd/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp.^functional_1/dense_1_2/BiasAdd/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp.^functional_1/dense_2_1/BiasAdd/ReadVariableOp+^functional_1/dense_2_1/Cast/ReadVariableOp.^functional_1/dense_3_1/BiasAdd/ReadVariableOp+^functional_1/dense_3_1/Cast/ReadVariableOp1^functional_1/embedding_1/GatherV2/ReadVariableOp@^functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������:���������: : : : : : : : : : : : : 2Z
+functional_1/dense_1/BiasAdd/ReadVariableOp+functional_1/dense_1/BiasAdd/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2^
-functional_1/dense_1_2/BiasAdd/ReadVariableOp-functional_1/dense_1_2/BiasAdd/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp2^
-functional_1/dense_2_1/BiasAdd/ReadVariableOp-functional_1/dense_2_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_2_1/Cast/ReadVariableOp*functional_1/dense_2_1/Cast/ReadVariableOp2^
-functional_1/dense_3_1/BiasAdd/ReadVariableOp-functional_1/dense_3_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_3_1/Cast/ReadVariableOp*functional_1/dense_3_1/Cast/ReadVariableOp2d
0functional_1/embedding_1/GatherV2/ReadVariableOp0functional_1/embedding_1/GatherV2/ReadVariableOp2�
?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_user_specified_nametable_handle:QM
'
_output_shapes
:���������
"
_user_specified_name
servings:R N
'
_output_shapes
:���������
#
_user_specified_name	full_text
�
�
__inference__initializer_97175
1key_value_init75_lookuptableimportv2_table_handle-
)key_value_init75_lookuptableimportv2_keys/
+key_value_init75_lookuptableimportv2_values	
identity��$key_value_init75/LookupTableImportV2�
$key_value_init75/LookupTableImportV2LookupTableImportV21key_value_init75_lookuptableimportv2_table_handle)key_value_init75_lookuptableimportv2_keys+key_value_init75_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: I
NoOpNoOp%^key_value_init75/LookupTableImportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�<:�<2L
$key_value_init75/LookupTableImportV2$key_value_init75/LookupTableImportV2:C?

_output_shapes	
:�<
 
_user_specified_namevalues:A=

_output_shapes	
:�<

_user_specified_namekeys:, (
&
_user_specified_nametable_handle"�L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
5
	full_text(
serve_full_text:0���������
3
servings'
serve_servings:0���������=
output_01
StatefulPartitionedCall:0����������tensorflow/serving/predict*�
serving_default�
?
	full_text2
serving_default_full_text:0���������
=
servings1
serving_default_servings:0���������?
output_03
StatefulPartitionedCall_1:0����������tensorflow/serving/predict:�8
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
_
0
	1

2
3
4
5
6
7
8"
trackable_list_wrapper
_
0
	1

2
3
4
5
6
7
8"
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
8"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trace_02�
__inference___call___9641�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *Q�N
L�I
#� 
	full_text���������
"�
servings���������ztrace_0
7
	serve
serving_default"
signature_map
):'���2embedding/embeddings
:	�@2dense/kernel
:@2
dense/bias
 :2dense_1/kernel
:2dense_1/bias
 :P@2dense_2/kernel
:@2dense_2/bias
!:	@�2dense_3/kernel
:�2dense_3/bias
):'���2embedding/embeddings
:	�@2dense/kernel
:@2
dense/bias
:@2dense_2/bias
:�2dense_3/bias
 :2dense_1/kernel
:2dense_1/bias
 :P@2dense_2/kernel
!:	@�2dense_3/kernel
f
_initializer
 _create_resource
!_initialize
"_destroy_resourceR jtf.StaticHashTable
O
#_create_resource
$_initialize
%_destroy_resourceR Z
table12
�
&	capture_1
'	capture_2
(	capture_3B�
__inference___call___9641	full_textservings"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z&	capture_1z'	capture_2z(	capture_3
�
&	capture_1
'	capture_2
(	capture_3B�
+__inference_signature_wrapper___call___9674	full_textservings"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 *

kwonlyargs�
j	full_text

jservings
kwonlydefaults
 
annotations� *
 z&	capture_1z'	capture_2z(	capture_3
�
&	capture_1
'	capture_2
(	capture_3B�
+__inference_signature_wrapper___call___9706	full_textservings"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 *

kwonlyargs�
j	full_text

jservings
kwonlydefaults
 
annotations� *
 z&	capture_1z'	capture_2z(	capture_3
"
_generic_user_object
�
)trace_02�
__inference__creator_9710�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z)trace_0
�
*trace_02�
__inference__initializer_9717�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z*trace_0
�
+trace_02�
__inference__destroyer_9721�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z+trace_0
�
,trace_02�
__inference__creator_9725�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z,trace_0
�
-trace_02�
__inference__initializer_9729�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z-trace_0
�
.trace_02�
__inference__destroyer_9733�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z.trace_0
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
�B�
__inference__creator_9710"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
/	capture_1
0	capture_2B�
__inference__initializer_9717"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z/	capture_1z0	capture_2
�B�
__inference__destroyer_9721"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_9725"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_9729"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_9733"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
�B�
__inference_save_fn_9751checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_restore_fn_9758restored_tensors_0restored_tensors_1"�
���
FullArgSpec7
args/�,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
__inference___call___9641�&'(	
[�X
Q�N
L�I
#� 
	full_text���������
"�
servings���������
� ""�
unknown����������>
__inference__creator_9710!�

� 
� "�
unknown >
__inference__creator_9725!�

� 
� "�
unknown @
__inference__destroyer_9721!�

� 
� "�
unknown @
__inference__destroyer_9733!�

� 
� "�
unknown G
__inference__initializer_9717&/0�

� 
� "�
unknown B
__inference__initializer_9729!�

� 
� "�
unknown �
__inference_restore_fn_9758bK�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "�
unknown �
__inference_save_fn_9751�&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor	�
+__inference_signature_wrapper___call___9674�&'(	
o�l
� 
e�b
0
	full_text#� 
	full_text���������
.
servings"�
servings���������"4�1
/
output_0#� 
output_0�����������
+__inference_signature_wrapper___call___9706�&'(	
o�l
� 
e�b
0
	full_text#� 
	full_text���������
.
servings"�
servings���������"4�1
/
output_0#� 
output_0����������