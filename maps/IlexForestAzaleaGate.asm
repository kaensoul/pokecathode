	const_def 2 ; object constants
	const ILEXFORESTAZALEAGATE_OFFICER
	const ILEXFORESTAZALEAGATE_GRANNY

IlexForestAzaleaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IlexForestAzaleaGateOfficerScript:
	jumptextfaceplayer IlexForestAzaleaGateOfficerText

IlexForestAzaleaGateGrannyScript:
	jumptextfaceplayer IlexForestAzaleaGateGrannyText

IlexForestAzaleaGateOfficerText:
	text "Si quieres ver"
	line "al #MON"
	cont "legendario vas a"
	
	para "necesitar algún"
	line "#MON que"
	cont "pueda usar Surf."
	
	para "De todas formas,"
	line "el bosque esta"
	cont "lleno de #-"
	cont "raros y fuertes."
	done

IlexForestAzaleaGateGrannyText:
	text "Mi esposo y mi"
	line "nieta cuidan del"
	cont "bosque,"

	para "deberías cono-"
	line "cerlos, son muy"
	cont "amables con los"
	cont "entrenadores."
	done

IlexForestAzaleaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, ILEX_FOREST, 1
	warp_event  0,  5, ILEX_FOREST, 1
	warp_event  9,  4, VIOLET_CITY, 9
	warp_event  9,  5, VIOLET_CITY, 10

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IlexForestAzaleaGateOfficerScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IlexForestAzaleaGateGrannyScript, -1
