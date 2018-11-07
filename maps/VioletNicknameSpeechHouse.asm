	const_def 2 ; object constants
	const VIOLETNICKNAMESPEECHHOUSE_TEACHER
	const VIOLETNICKNAMESPEECHHOUSE_LASS
	const VIOLETNICKNAMESPEECHHOUSE_BIRD

VioletNicknameSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletNicknameSpeechHouseTeacherScript:
	jumptextfaceplayer VioletNicknameSpeechHouseTeacherText

VioletNicknameSpeechHouseLassScript:
	jumptextfaceplayer VioletNicknameSpeechHouseLassText

VioletNicknameSpeechHouseBirdScript:
	faceplayer
	opentext
	writetext VioletNicknameSpeechHouseBirdText
	cry GROWLITHE
	waitbutton
	closetext
	end

VioletNicknameSpeechHouseTeacherText:
	text "Los Positt son"
	line "conocidos por ser"
	cont "muy agresivos,"

	para "pero al final del"
	line "día un #MON"
	cont "no atacará a un"
	cont "buen entrenador."
	done

VioletNicknameSpeechHouseLassText:
	text "El canto de"
	line "Positt me ayuda"
	cont "a dormir."
	done

VioletNicknameSpeechHouseBirdText:
	text "Positt: ¡Ribbi!"
	line "¡RIB!"
	done

VioletNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, VIOLET_CITY, 4
	warp_event  4,  7, VIOLET_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  2,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseTeacherScript, -1
	object_event  6,  4, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseLassScript, -1
	object_event  5,  2, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseBirdScript, -1
