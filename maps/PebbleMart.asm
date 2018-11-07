    const_def 2 ; object constants
	const PEBBLEMART_CLERK
	const PEBBLEMART_GRAMPS
	const PEBBLEMART_FISHER

PebbleMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PebbleMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_PEBBLE
	closetext
	end

PebbleMartGrampsScript:
	jumptextfaceplayer PebbleMartGrampsText

PebbleMartFisherScript:
	jumptextfaceplayer PebbleMartFisherText

PebbleMartGrampsText:
	text "Esta tienda es"
	line "más joven que tú."

	para "Como muchos niños"
	line "empiezan su viaje"
	cont "aquí, mi hijo"

	para "abrió esta tienda"
	line "para vender cosas"
	cont "baratas a todos."
	done

PebbleMartFisherText:
	text "Pareces un chico"
	line "listo."

	para "Ve a Cloudy City"
	line "y consigue una"
	cont "caña de pescar,"
	
	para "muchos #MON"
	line "fuertes viven"
	cont "bajo el agua."
	done

PebbleMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NEW_BARK_TOWN, 5
	warp_event  3,  7, NEW_BARK_TOWN, 5

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PebbleMartClerkScript, -1
	object_event  2,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PebbleMartGrampsScript, -1
	object_event  7,  2, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PebbleMartFisherScript, -1
