	const_def 2 ; object constants
	const ROUTE31VIOLETGATE_OFFICER
	const ROUTE31VIOLETGATE_COOLTRAINER_F

Route31VioletGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route31VioletGateOfficerScript:
	jumptextfaceplayer Route31VioletGateOfficerText

Route31VioletGateCooltrainerFScript:
	jumptextfaceplayer Route31VioletGateCooltrainerFText

Route31VioletGateOfficerText:
	text "Entrenador, ¿no?"
	line "debes venir por la"
	cont "medalla."
	
	para "Nuestro líder es"
	line "bastante joven"
	cont "pero muy fuerte."
	
	para "Reemplazó a su"
	line "abuelo después"
	cont "de cumplir los 18."
	
	para "Antes de ello era"
	line "como un jefe para"
	cont "sus compañeros en"
	cont "la escuela,"
	
	para "con sus puños de-"
	line "rribaba a todos"
	cont "los que buscaban"
	cont "problemas,"

    para "aunque claro, ello"
    line "le causo problemas"
    cont "varias veces."

    para "Ese sentido de la"
    line "justicia lo sacó"
    cont "de su padre,"

    para "un oficial de"
    line "policía renegado"
    cont "como los que"
    cont "aparecían en TV"
    cont "en el pasado." 	
	done

Route31VioletGateCooltrainerFText:
	text "Vine a tomar"
	line "clases de pesca,"
	cont "son gratuitas y"
	cont "divertidas."
	done

Route31VioletGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, VIOLET_CITY, 7
	warp_event  0,  5, VIOLET_CITY, 8
	warp_event  9,  4, ROUTE_31, 1
	warp_event  9,  5, ROUTE_31, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route31VioletGateOfficerScript, -1
	object_event  1,  2, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route31VioletGateCooltrainerFScript, -1
