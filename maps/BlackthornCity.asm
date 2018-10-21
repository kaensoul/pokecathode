	const_def 2 ; object constants
	const BLACKTHORNCITY_SUPER_NERD1
	const BLACKTHORNCITY_SUPER_NERD2
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	return

BlackthornSuperNerdScript:
	jumptextfaceplayer Text_ClairIsOut
	
BlackthornSuperNerdScript2:
	jumptextfaceplayer Text_ClairIsIn	

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	jumptextfaceplayer BlackthornGrampsGrantsEntryText

BlackthornBlackBeltScript:
	jumptextfaceplayer BlackBeltText_WeirdRadio

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText

BlackthornCooltrainerF2Script:
	jumptextfaceplayer BlackthornCooltrainerF2Text

SantosScript:
	jumptextfaceplayer SantosGivesGiftText

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

BlackthornCityPokecenterSign:
	jumpstd pokecentersign

BlackthornCityMartSign:
	jumpstd martsign

Text_ClairIsOut:
	text "Nunca volveré a"
	line "esa horrible"
    cont "montaña."
	
	para "Sin importar la"
	line "cantidad de teso-"
	cont "ros que se pueden"
	cont "encontrar ahí."
	done

Text_ClairIsIn:
	text "Veo al Líder del"
	line "GYM luchar, es"
	cont "increíble."

	para "¿Como alguien"
	line "borracho lucha"
	cont "tan bien?"

	para "Antes vino una"
	line "chica con ropas"
	cont "que parecían de"
	cont "Delibird y un"
	
	para "chico con cabello"
	line "azul. Ellos son"
	cont "de los pocos que"
	
	para "han derrotado a"
	line "Francis."
	done

BlackthornGrampsRefusesEntryText:
	text "El agua aquí es"
	line "caliente, la"
	cont "gente y Thermaques"

	para "vienen a relajarse"
	line "con frecuencía."
	done

BlackthornGrampsGrantsEntryText:
	text "Las 4 bestias"
	line "cardinales son"
	cont "un misterio."

	para "Hace unos 20 años"
	line "vinieron a Kita,"
	cont "y hace 2 años"
	
	para "el ave carmesí"
	line "del sur destruyó"
	cont "Hail City."
	
	para "La gente intanta"
	line "mantenerlas"
	cont "vigilaras en"
	cont "santuarios."
	
	para "Pero creo que"
	line "ellas son las que"
	cont "nos vigilan."
	done

BlackBeltText_WeirdRadio:
	text "Vine buscando un"
	line "#MON raro que"
	cont "vive en Salty Eyes"
	
	para "pero tras estar"
	line "día y noche allá,"
	cont "no lo pude ver."
	
	para "Tal vez deba ir"
	line "más temprano."
	
	para "Tiene forma de"
	line "polluelo con cola"
	cont "escamosa."
	done
	
BlackthornCooltrainerF1Text:
	text "Este es el lugar"
	line "más alto de la"
	cont "región."
	done

BlackthornYoungsterText:
	text "!Mi hermana dijo"
	line "atraparía unos"
	cont "#MON raros"
	cont "para mí!"
	done

SantosGivesGiftText:
	text "Un Gargolit tomó"
	line "mi gorra y se"
	cont "escondió sobre"
	cont "un árbol."
	done


BlackthornCooltrainerF2Text:
	text "Es difícil encon-"
	line "trar buenas #-"
	cont "BALLs en Kita."

	para "La fabrica de"
	line "#BALLs en"
	cont "Flower Town no"
	
	para "acostumbra vender"
	line "a la región."
	done

BlackthornCitySignText:
	text "Snowy City"

	para "Mantente en calor"
	line "con la gente."
	done

BlackthornGymSignText:
	text "Snowy City"
	line "#MON GYM"
	cont "Líder: Francis"

	para "¡Siempre listo"
	line "para combatir"
	cont "y beber!"
	done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 30, 25, BLACKTHORN_GYM_1F, 1
	warp_event  5, 19, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 11, 19, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 21, 17, BLACKTHORN_MART, 2
	warp_event 21, 25, BLACKTHORN_POKECENTER_1F, 1
	warp_event  5, 25, MOVE_DELETERS_HOUSE, 1
	warp_event 10,  3, UNION_CAVE_B2F, 3
	warp_event 11, 25, BLACKTHORN_GYM_2F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 12, 14, BGEVENT_READ, BlackthornCitySign
	bg_event 28, 26, BGEVENT_READ, BlackthornGymSign
	
	db 9 ; object events
	object_event 12,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, -1
	object_event 29, 26, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript2, -1
	object_event 18, 18, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, -1
	object_event  9, 27, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, -1
	object_event  7, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event 15, 22, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 25, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, -1
	object_event 19, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 19, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
