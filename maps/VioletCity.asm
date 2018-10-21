	const_def 2 ; object constants
	const VIOLETCITY_EARL
	const VIOLETCITY_LASS
	const VIOLETCITY_SUPER_NERD
	const VIOLETCITY_GRAMPS
	const VIOLETCITY_YOUNGSTER
	const VIOLETCITY_FRUIT_TREE
	const VIOLETCITY_POKE_BALL1
	const VIOLETCITY_POKE_BALL2

VioletCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VIOLET
	return

VioletCityEarlScript:
	jumptextfaceplayer Text_EarlAsksIfYouBeatFalkner

VioletCityLassScript:
	jumptextfaceplayer VioletCityLassText

VioletCitySuperNerdScript:
	jumptextfaceplayer VioletCitySuperNerdText

VioletCityGrampsScript:
	jumptextfaceplayer VioletCityGrampsText

VioletCityYoungsterScript:
	jumptextfaceplayer VioletCityYoungsterText

VioletCitySign:
	jumptext VioletCitySignText

VioletGymSign:
	jumptext VioletGymSignText

SproutTowerSign:
	jumptext SproutTowerSignText

VioletCityPokecenterSign:
	jumpstd pokecentersign

VioletCityMartSign:
	jumpstd martsign

VioletCityPPUp:
	itemball MOON_STONE

VioletCityRareCandy:
	itemball RARE_CANDY

VioletCityFruitTree:
	fruittree FRUITTREE_VIOLET_CITY

VioletCityHiddenHyperPotion:
	hiddenitem SACRED_ASH, EVENT_VIOLET_CITY_HIDDEN_HYPER_POTION

Text_EarlAsksIfYouBeatFalkner:
	text "Deberías ir a"
	line "pescar, no te"
	cont "preocupes por"

	para "empapar el lugar,"
	line "cuando Nate saca"
	cont "a pasear a sus"
	cont "Mop ellos secan"
	cont "todo el lugar."
	done

VioletCityLassText:
	text "Escuche unos"
	line "aullidos la otra"
	cont "noche,"
	
	para "Creo que un raro"
	line "#MON lobo"
	cont "vive en Route 3."
	done

VioletCitySuperNerdText:
	text "Dicen que un"
	line "turista de Johto"
	cont "perdió algo muy"
    cont "importante en la"
	cont "ciudad."

	para "Aun así, no se"
	line "molestó en bus-"
	cont "carlo."
	
	para "Tal vez no sea"
	line "tan importante,"
	
	para "son rumores, es"
	line "normal que no"
	cont "tengan sentido."
	done

VioletCityGrampsText:
	text "Antes se podía"
	line "llegar a North"
	cont "Shrine a pie"
	cont "desde el bosque,"

	para "pero El Guerrero"
	line "negro del Norte"
	cont "inundo el camino."

	para "Pensabamos cons-"
	line "truir un puente,"
	cont "pero es mejor no"

	para "hacer enojar a"
	line "las 4 bestias"
	cont "cardinales."
	done

VioletCityYoungsterText:
	text "Trabajo en el"
	line "GYM y soy amigo"
	cont "de Nate."

	para "Él contrató a"
	line "únicamente com-"
	cont "pañeros de clases"
	cont "para trabajar"
	cont "aquí."
	done

VioletCitySignText:
	text "Entrada al"
	line "bosque Sugarloaf."

	para "El bosque"
	line "viviente."
	done

VioletGymSignText:
	text "Cloudy City"
	line "#MON GYM"
	cont "Líder: Nate"

	para "¡No es un"
	line "chico noraml!"
	done

SproutTowerSignText:
	text "Escuela de"
	line "Pesca."
	done

VioletCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 17, 19, VIOLET_MART, 2
	warp_event  4, 13, VIOLET_GYM, 1
	warp_event 21,  9, EARLS_POKEMON_ACADEMY, 1
	warp_event 23, 17, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 11, 19, VIOLET_POKECENTER_1F, 1
	warp_event 11, 13, VIOLET_KYLES_HOUSE, 1
	warp_event 21, 26, ROUTE_31_VIOLET_GATE, 1
	warp_event 21, 27, ROUTE_31_VIOLET_GATE, 2

	db 0 ; coord events

	db 6 ; bg events
	bg_event  9,  3, BGEVENT_READ, VioletCitySign
	bg_event  3, 15, BGEVENT_READ, VioletGymSign
	bg_event 19,  9, BGEVENT_READ, SproutTowerSign
	bg_event 12, 19, BGEVENT_READ, VioletCityPokecenterSign
	bg_event 18, 19, BGEVENT_READ, VioletCityMartSign
	bg_event 19,  8, BGEVENT_ITEM, VioletCityHiddenHyperPotion

	db 8 ; object events
	object_event 24,  9, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityEarlScript, EVENT_VIOLET_CITY_EARL
	object_event 18, 24, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityLassScript, -1
	object_event 10, 23, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletCitySuperNerdScript, -1
	object_event  9,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityGrampsScript, -1
	object_event  6, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityYoungsterScript, -1
	object_event  5, 22, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityFruitTree, -1
	object_event 24,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VioletCityPPUp, EVENT_VIOLET_CITY_PP_UP
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VioletCityRareCandy, EVENT_VIOLET_CITY_RARE_CANDY
