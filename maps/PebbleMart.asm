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
	text "This Mart is"
	line "younger than you."

	para "Now than many"
	line "kids start their"

	para "adventure here,"
	line "my son decided to"
	
	para "open a shop and"
	line "sell basic stuff"
    cont "to trainers."
	done

PebbleMartFisherText:
	text "Another adventurer"
	line "i see, you should"

	para "go to Cloudy City"
	line "and get a fishing"
	
	para "rod. Many strong"
	line "#MON live"
	
	para "underwater..."
	line "But i guess you"
	
	para "can't fish in a"
    line "place like this"
    cont "anyway."	
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
