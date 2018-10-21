	const_def 2 ; object constants
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK

MrPokemonsHouse_MapScripts:
    db 0 ; scene scripts

	db 0 ; callbacks

MrPokemonsHouse_MrPokemonScript:
	jumptextfaceplayer MrPokemonIntroText1

MrPokemonsHouse_OakScript:
	jumptextfaceplayer MrPokemonIntroText2

MrPokemonsHouse_ForeignMagazines:
	jumptext MrPokemonsHouse_ForeignMagazinesText

MrPokemonIntroText1:
	text "Iremos a Battle"
	line "Tower muy pronto,"
	cont "el mejor lugar"

	para "para encontrar"
	line "entrenadores"
	cont "fuertes."
	done

MrPokemonIntroText2:
	text "Necesito la"
	line "habilidad para"
	cont "Cortar obstáculos"
	
	para "para explorar"
	line "nuevas áreas."
	
	para "Además se que en"
	line "Kita se usa una"
	cont "técnica más"
	
	para "poderosa que las"
	line "demás regiones."
	
	para "Iré donde hay"
	line "entrenadores"
	cont "fuertes para en-"
	cont "contrarla."
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "Algunas carpetas"
	line "con imágenes."

	para "Una dice: Fiona"
	line "la idol purfecta."
	
	para "y la otra:"
	line "Laila la idol"
	cont "random."
	
	para "2TB con nada más"
	line "que imágenes."
	done


MrPokemonsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  2, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  1,  2, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines

	db 2 ; object events
	object_event  5,  4, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  5,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_OakScript, -1
