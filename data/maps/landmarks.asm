landmark: MACRO
; x, y, name
	db \1, \2
	dw \3
ENDM

Landmarks: ; 0x1ca8c3
; entries correspond to constants/landmark_constants.asm
	landmark   0,   0, SpecialMapName
	landmark 148,  52, NewBarkTownName
	landmark 132,  52, Route29Name
	landmark 124,  52, CherrygroveCityName
	landmark 148,  68, Route30Name
	landmark 116,  52, Route31Name
	landmark 116,  68, Route32Name
	landmark 100,  52, VioletCityName
	landmark  92,  52, IlexForestName
	landmark 148,  59, UnionCaveName
	landmark 148,  76, BlackthornCityName
	landmark 124,  76, SlowpokeWellName
	landmark 148,  84, Route33Name
	landmark 148,  92, AzaleaTownName
	landmark 156,  92, SproutTowerName
	landmark 140, 108, Route34Name
	landmark  84,  44, RuinsOfAlphName
	landmark  84,  58, Route36Name
	landmark  84,  68, EcruteakCityName
	landmark  84,  86, Route35Name
	landmark  84, 108, GoldenrodCityName
	landmark  94,  86, Route37Name
	landmark 108,  86, OlivineCityName
	landmark 140, 126, CianwoodCityName
	landmark  70,  86, Route38Name
	landmark  78,  90, MtMortarName
	landmark 108, 100, Route39Name
	landmark 108, 124, BattleTowerName
	landmark 124, 124, Route40Name
	landmark  84, 124, Route41Name
	landmark  92, 140, Route42Name
	landmark  83, 141, RadioTowerName
	landmark  60,  92, MahoganyTownName
	landmark  44,  95, Route43Name
	landmark  44, 132, LakeOfRageName
	landmark  44, 135, WhirlIslandsName
	landmark  28,  93, Route44Name
	landmark  28,  96, TinTowerName
	landmark  19,  93, NationalParkName
	landmark  43,  52, Route45Name
	landmark  28,  52, Route46Name
	landmark  60,  44, DarkCaveName
	landmark  60,  46, SilverCaveName
	landmark  74,  58, BurnedTowerName
	landmark  46,  78, LighthouseName
	landmark 138,  54, IcePathName	
	landmark 140,  52, DragonsDenName
	landmark  60, 124, PalletTownName
	landmark  60, 108, Route1Name
	landmark  60,  92, ViridianCityName
	landmark  60,  80, Route2Name
	landmark  60,  68, PewterCityName
	landmark  72,  68, Route3Name
	landmark  84,  68, MtMoonName
	landmark  96,  68, Route4Name
	landmark 108,  68, CeruleanCityName
	landmark 108,  60, Route24Name
	landmark 116,  52, Route25Name
	landmark 108,  76, Route5Name
	landmark 116,  92, UndergroundName
	landmark 108,  92, Route6Name
	landmark 108, 100, VermilionCityName
	landmark  96,  76, DiglettsCaveName
	landmark  96,  84, Route7Name
	landmark 124,  84, Route8Name
	landmark 124,  68, Route9Name
	landmark 140,  68, RockTunnelName
	landmark 140,  72, Route10Name
	landmark 140,  76, PowerPlantName
	landmark 140,  84, LavenderTownName
	landmark 148,  84, LavRadioTowerName
	landmark  84,  84, CeladonCityName
	landmark 108,  84, SaffronCityName
	landmark 124, 100, Route11Name
	landmark 140,  96, Route12Name
	landmark 132, 116, Route13Name
	landmark 124, 128, Route14Name
	landmark 112, 132, Route15Name
	landmark  76,  84, Route16Name
	landmark  76, 108, Route17Name
	landmark  88, 132, Route18Name
	landmark 100, 132, FuchsiaCityName
	landmark 100, 144, Route19Name
	landmark  84, 148, Route20Name
	landmark  76, 148, SeafoamIslandsName
	landmark  60, 148, CinnabarIslandName
	landmark  60, 136, Route21Name
	landmark  44,  84, Route22Name
	landmark  36,  68, VictoryRoadName
	landmark  36,  60, Route23Name
	landmark  36,  52, IndigoPlateauName
	landmark  36, 108, Route26Name
	landmark  28, 116, Route27Name
	landmark  20, 116, TohjoFallsName
	landmark  28,  84, Route28Name
	landmark 148, 132, FastShipName
; 0x1caa43

NewBarkTownName:     db "Pebble¯Town@"
CherrygroveCityName: db "Grass¯Town@"
VioletCityName:      db "Cloudy¯City@"
AzaleaTownName:      db "Sunny¯City@"
GoldenrodCityName:   db "Smog¯City@"
EcruteakCityName:    db "Foggy¯City@"
OlivineCityName:     db "Meteor¯ShowerCity@"
CianwoodCityName:    db "Hail¯City@"
MahoganyTownName:    db "Mud¯Town@"
BlackthornCityName:  db "Snowy¯City@"
LakeOfRageName:      db "Sand¯Town@"
SilverCaveName:      db "Cyber Inc.@"
SproutTowerName:     db "East¯Shrine@"
RuinsOfAlphName:     db "North¯Shrine@"
UnionCaveName:       db "Mt.¯Salty eyes@"
SlowpokeWellName:    db "Collohuasi¯Mine@"
RadioTowerName:      db "South¯Shrine@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "West¯Shrine@"
TinTowerName:        db "#BALL¯Factory@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "Grind¯Cave@"
MtMortarName:        db "New¯Cave@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
SilphCoName:         db "SILPH CO.@"
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@"
CeruleanCaveName:    db "CERULEAN¯CAVE@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "Route 1@"
Route30Name:         db "Route 2@"
Route31Name:         db "Route 3@"
Route32Name:         db "Route 4@"
Route33Name:         db "Route 5@"
Route34Name:         db "Route 6@"
Route35Name:         db "Route 8@"
Route36Name:         db "Route 7@"
Route37Name:         db "Route 9@"
Route38Name:         db "Route 10@"
Route39Name:         db "Route 11@"
Route40Name:         db "Route 12@"
Route41Name:         db "Route 13@"
Route42Name:         db "Route 14@"
Route43Name:         db "Kita¯Sea@"
Route44Name:         db "Flower¯Town@"
Route45Name:         db "Kita Sea¯North@"
Route46Name:         db "Rain¯City@"
DarkCaveName:        db "Void¯Island@"
IlexForestName:      db "Sugarloaf¯Forest@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@"
DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "Battle¯Tower@"
SpecialMapName:      db "SPECIAL@"
