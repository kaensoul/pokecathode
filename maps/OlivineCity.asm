	const_def 2 ; object constants
	const OLIVINECITY_SAILOR1
	const OLIVINECITY_STANDING_YOUNGSTER
	const OLIVINECITY_SAILOR2
	const OLIVINECITY_OLIVINE_RIVAL

OlivineCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_OLIVINE
	return

OlivineCitySailor1Script:
	jumptextfaceplayer OlivineCitySailor1Text

OlivineCityStandingYoungsterScript:
	jumptextfaceplayer OlivineCityStandingYoungsterPokegearText
	
OlivineCitySailor2Script:
	jumptextfaceplayer OlivineCitySailor2Text
	
Someonemeteor:
    jumptextfaceplayer Meteortalktext	

OlivineCitySign:
	jumptext OlivineCitySignText

OlivineGymSign:
	jumptext OlivineGymSignText

OlivineCityPokecenterSign:
	jumpstd pokecentersign

OlivineCityMartSign:
	jumpstd martsign

	
Meteortalktext:
    text "En este lugar se"
	line "supone que una"
	cont "gran roca se"
	cont "estrelló."
	
	para "Pero algunos dicen"
	line "que fue algo"
	cont "muy diferente."
	done

OlivineCitySailor1Text:
	text "El líder Pluto"
	line "se ve igual que"
	cont "cuando lo conocí."
	
	para "Y eso fue hace"
	line "20 años cuando"
	cont "vine a vivir aquí"
	cont "junto a mis"
	cont "padres."
	done

OlivineCityStandingYoungsterPokegearText:
	text "Trato de descubrir"
	line "el secreto de"
	cont "Pluto,"
	
	para "¡Antes lo vi"
	line "hablar con sus"
	cont "#MON!"
	done

OlivineCitySailor2Text:
	text "Spader es un mis-"
	line "terioso #MON,"
	
	para "Se descubrió hace"
	line "50 años en esta"
	cont "ciudad."

	para "Y dicen que puede"
	line "leer mentes."
	done

OlivineCitySignText:
	text "MeteorShower City"

	para "Uniendo mundos."
	done

OlivineGymSignText:
	text "MeteorShower City"
	line "#MON GYM"
	cont "Líder: Pluto"

	para "No es de este"
	line "mundo."
	done


OlivineCity_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 13, 17, OLIVINE_POKECENTER_1F, 1
	warp_event 20, 17, OLIVINE_GYM, 1
	warp_event  5, 15, OLIVINE_TIMS_HOUSE, 1
	warp_event  7, 11, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 15, 27, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  9, 27, OLIVINE_CAFE, 1
	warp_event 25, 25, OLIVINE_MART, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 15,  5, BGEVENT_READ, OlivineCitySign
	bg_event 17, 17, BGEVENT_READ, OlivineGymSign
	bg_event 14, 17, BGEVENT_READ, OlivineCityPokecenterSign
	bg_event 26, 25, BGEVENT_READ, OlivineCityMartSign

	db 4 ; object events
	object_event  9, 18, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor1Script, -1
	object_event 17, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityStandingYoungsterScript, -1
	object_event 20, 28, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor2Script, -1
	object_event 27, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Someonemeteor, -1
