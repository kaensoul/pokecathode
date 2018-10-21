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
	text "We are going to"
	line "the Battle Tower"
	cont "soon, is full of"

	para "strong trainers."
	done

MrPokemonIntroText2:
	text "I need Cut to"
	line "explore new areas"
	cont "and i heard than"
	
	para "there is an upgra-"
	line "ded version with"
	cont "more power than"
	
	para "the international"
	line "HM CUT here in"
	cont "Kita."
	
	para "I want to meet"
	line "strong trainers,"
	cont "because they must"
	
	para "know where i can"
	line "find it."
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "Some folders with"
	line "pics, the first"

	para "one say Fiona"
	line "the purrfect idol"
	cont "and the other"
	
	para "Laila the random"
	line "idol."
	
	para "2TB of nothing"
	line "but pics."
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
