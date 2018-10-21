	const_def 2 ; object constants
	const VIOLETMART_CLERK
	const VIOLETMART_GRANNY
	const VIOLETMART_COOLTRAINER_M

VioletMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIOLET
	closetext
	end

VioletMartGrannyScript:
	jumptextfaceplayer VioletMartGrannyText

VioletMartCooltrainerMScript:
	jumptextfaceplayer VioletMartCooltrainerMText

VioletMartGrannyText:
	text "El oficial ya era"
	line "trabador, pero"
	cont "desde que su hijo"

	para "se convirtió en"
	line "líder trabaja el"
	cont "doble."

	para "Supongo que no"
	line "quiere parecer un"
	cont "debíl anciano"
	cont "como yo."
	
	para "Creo que tanto"
	line "trabajo le esta"
	cont "afectando la"
	cont "cabeza, ya dice"
	cont "cosas raras y"
	cont "todo."
	
	para "Aunque supongo"
	line "que ya era de"
	cont "los que decían"
	cont "tonterías antes."
	done

VioletMartCooltrainerMText:
	text "Estoy en mi tiempo"
	line "libre pero no dejo"
	cont "de trabajar."

	para "Unos chicos raros"
	line "intenraron robar"
	cont "#MON a los"
	cont "clientes el otro"
	cont "día."

	para "Según testigos"
	line "parecían llevar"
	cont "armaduras."
	
	para "pero tengo la"
	line "corazonada de que"
	cont "¡eran robots!"
	done

VioletMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIOLET_CITY, 1
	warp_event  3,  7, VIOLET_CITY, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletMartClerkScript, -1
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletMartGrannyScript, -1
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletMartCooltrainerMScript, -1
