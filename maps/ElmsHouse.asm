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
	text "Prof. Kapok is"
	line "really smart, but"

	para "the Prof. Yggdra-"
	line "sil is smarter."

	para "He can even make"
	line "#MON!!"
	done

ElmsSonText:
	text "Prof. Yggdrasil"
	line "used to work on"
	cont "Mud Town, but no"

	para "one know where he"
	line "is now."
	done

ElmsHousePCText:
	text "Kita's Region News"
	line "January 13, 2018."

	para "The rare #MON"
	line "used in that"
	cont "famous movie last"

	para "year was real"
	line "after all!"

	para "But not everything"
	line "is happy news,"

	para "Prof.Yggdrasil"
	line "Montrake's creator"

	para "experimented on"
	line "#MON and"

	para "not only his own,"
	line "two accusations"
	
    para "than can end with"
	line "Yggdrasil's career"
	
	para "The 70 years old"
	line "man have too much"
	cont "to explain."
	
	para "Oh, this new look"
	line "better."
	
	para "Gulpin's poison"
	line "can be used to"
	
	para "cure cancer, read"
	line "more on page 84!"
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
