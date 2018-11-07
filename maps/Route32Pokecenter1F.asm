	const_def 2 ; object constants
	const ROUTE32POKECENTER1F_NURSE
	const ROUTE32POKECENTER1F_FISHING_GURU
	const ROUTE32POKECENTER1F_COOLTRAINER_F

Route32Pokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route32Pokecenter1FNurseScript:
	jumpstd pokecenternurse

Route32Pokecenter1FFishingGuruScript:
	jumptextfaceplayer Route32Pokecenter1FFishingGuruText_No

Route32Pokecenter1FCooltrainerFScript:
	jumptextfaceplayer Route32Pokecenter1FCooltrainerFText

Route32Pokecenter1FFishingGuruText_No:
	text "¿Viste algunos"
	line "pescadores de"
	cont "camino aquí?"
	
	para "Somos de un club"
	line "de pesca de otra"
	cont "región, vamos de"
	cont "paso a Cloudy"
	cont "City."
	done

Route32Pokecenter1FCooltrainerFText:
	text "La mina fue aban-"
	line "donara hace años,"
	cont "ya que la Profeso-"
	cont "ra Kapok descubrió"
	cont "el nido de un raro"
	cont "#MON llamado"
	cont "Voltcro muy cerca"
	cont "de las excavacio-"
	cont "nes."

	para "Aun así, desde"
	line "hace unas semanas"
	cont "que escucho maqui-"
	cont "narias."
	done

Route32Pokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, ROUTE_32, 1
	warp_event  4,  7, ROUTE_32, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FFishingGuruScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FCooltrainerFScript, -1
