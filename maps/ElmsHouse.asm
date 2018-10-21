	const_def 2 ; object constants
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd difficultbookshelf

ElmsWifeText:
	text "Prof. Kapok es"
	line "inteligente,"
	cont "pero el Profesor"

	para "Yggdrasil es más"
	line "listo."

	para "¡Puede crear"
	line "#MON!"
	done

ElmsSonText:
	text "Prof. Yggdrasil"
	line "trabajaba en"
	cont "Mud Town, pero"

	para "ya nadie sabe"
	line "que es de él."
	done

ElmsHousePCText:
	text "Kita's Region News"
	line "Junio 13, 2018."

	para "Aquel extraño"
	line "#MON que"
	cont "apareció en aque-"
	cont "lla película,"

	para "¡Es real!"

	para "Pero no todas son"
	line "buenas noticias."

	para "Prof.Yggdrasil,"
	line "creador de"
	cont "Montrake"

	para "fue acusado por"
	line "experimentación"
	cont "en #MON vivos."

	para "Y no solamente"
	line "los suyos."
	
    para "¿Qué dirá"
	line "Yggdrasil al"
	cont "respecto?"
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	db 2 ; object events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
