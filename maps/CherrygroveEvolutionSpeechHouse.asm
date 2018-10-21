	const_def 2 ; object constants
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_YOUNGSTER

CherrygroveEvolutionSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveEvolutionSpeechHouseYoungsterScript:
	jumptextfaceplayer CherrygroveEvolutionSpeechHouseYoungsterText
	

CherrygroveEvolutionSpeechHouseLassScript:
	jumptextfaceplayer CherrygroveEvolutionSpeechHouseLassText


CherrygroveEvolutionSpeechHouseBookshelf:
	jumpstd magazinebookshelf

CherrygroveEvolutionSpeechHouseYoungsterText:
	text "¿De donde vienes"
	line "la TM se pueden"
	cont "usar más de una"
	cont "vez como aquí?"
	done

CherrygroveEvolutionSpeechHouseLassText:
	text "Mi papi dice la"
	line "clave de triunfar"
	cont "es más que subir"

	para "de nivel a tus"
	line "#MON, tienes"
	cont "que enseñarles"
	cont "movimientos,"
	
	para "como Love Cannon"
	line "que usa mi idola"
	cont "Fiona."
	done

CherrygroveEvolutionSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf

	db 2 ; object events
	object_event  3,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseLassScript, -1
	object_event  2,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseYoungsterScript, -1
