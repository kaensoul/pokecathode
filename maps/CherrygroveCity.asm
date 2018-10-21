	const_def 2 ; object constants
	const CHERRYGROVECITY_GRAMPS
	const CHERRYGROVECITY_SILVER
	const CHERRYGROVECITY_TEACHER
	const CHERRYGROVECITY_YOUNGSTER
	const CHERRYGROVECITY_FISHER

CherrygroveCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	return

CherrygroveCityGuideGent:
    jumptextfaceplayer GuideGentIntroText

CherrygroveTeacherScript:
	jumptextfaceplayer CherrygroveTeacherText_NoMapCard
	
CherrygroveYoungsterScript:
	jumptextfaceplayer CherrygroveYoungsterText_NoPokedex

MysticWaterGuy:
	jumptextfaceplayer MysticWaterGuyTextBefore
	
Chicalindacherry:
    jumptextfaceplayer ChicalindacherryText	

CherrygroveCitySign:
	jumptext CherrygroveCitySignText

GuideGentsHouseSign:
	jumptext GuideGentsHouseSignText

CherrygroveCityPokecenterSign:
	jumpstd pokecentersign

CherrygroveCityMartSign:
	jumpstd martsign

GuideGentIntroText:
	text "Yo funde el Fan"
	line "Club hace muchos"
	cont "años."

	para "En esos tiempos"
	line "aun era un gran"
	cont "entrenador."

	para "Líder de GYM en"
	line "Cloudy City y"
	cont "experto en"
	cont "tipo Normal."
	
	para "Es bueno saber"
	line "que mi nieto es"
	cont "mucho mejor líder"
	cont "que yo."
	done

CherrygroveTeacherText_NoMapCard:
	text "No hay mucho que"
	line "hacer en esta"
	cont "ciudad, la gente"

	para "viene de pasada"
	line "porque dos GYM"
	cont "estan cerca y dan"
	
	para "#MON gratis"
	line "en Pebble Town."
	
	para "Esto podría ser"
	line "un simple centro"
	cont "#MON y nada"
	cont "cambiaria."
	done

CherrygroveYoungsterText_NoPokedex:
	text "Un extraño Tauros"
	line "mecánico se robó"
	cont "mis #BALLs."
	
	para "¿Tendrá relación"
	line "con esos sujetos"
	cont "extraños que no"
	cont "parecen humanos?"
	done

MysticWaterGuyTextBefore:
	text "Dicen que los tipo"
	line "Dragón y Bicho de"
	cont "esta región no se"
    cont "llevan muy bien."

	para "Abzero caza Pis-"
	line "cale y Eagatrice"
	cont "come Snoworm."
	
	para "Es un ciclo de"
	line "odio."
	done
	
ChicalindacherryText:
    text "Cada ciudad tiene"
	line "su GYM,"
	
	para "¿Crees que cada"
	line "pueblo tenga algo"
	cont "de interes?"
	done

CherrygroveCitySignText:
	text "Grass Town"

	para "Un descanso para"
	line "entrenadores."
	done

GuideGentsHouseSignText:
	text "#MON Fan Club."
	done

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  9, 11, CHERRYGROVE_MART, 2
	warp_event  9,  5, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 25,  5, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 15,  3, GUIDE_GENTS_HOUSE, 1
	warp_event 17, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1

	db 0 ; coord events
	
	db 4 ; bg events
	bg_event 28,  6, BGEVENT_READ, CherrygroveCitySign
	bg_event 16,  4, BGEVENT_READ, GuideGentsHouseSign
	bg_event 10, 11, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 10,  5, BGEVENT_READ, CherrygroveCityPokecenterSign

	db 5 ; object events
	object_event 14,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGuideGent, -1
	object_event 23,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Chicalindacherry, -1
	object_event 14, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event  6,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event 30,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1
