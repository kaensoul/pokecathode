	const_def 2 ; object constants
	const BLACKTHORNMART_CLERK
	const BLACKTHORNMART_COOLTRAINER_M
	const BLACKTHORNMART_BLACK_BELT

BlackthornMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BlackthornMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_BLACKTHORN
	closetext
	end

BlackthornMartCooltrainerMScript:
	jumptextfaceplayer BlackthornMartCooltrainerMText

BlackthornMartBlackBeltScript:
	jumptextfaceplayer BlackthornMartBlackBeltText

BlackthornMartCooltrainerMText:
	text "I need Burn and"
	line "Ice heal for the"
	cont "GYM."

	para "They should sell"
	line "Full Heal but i"
	cont "guess companies"

	para "don't care about"
	line "our city."
	done

BlackthornMartBlackBeltText:
	text "Smog City is the"
	line "best place to buy"
	cont "stuff but the air"

	para "smell like a"
	line "Koffing and the"
	cont "people act like a"
	
	para "bunch of Wiindigoo"
	line "so i try to stay"
	cont "away from there."
	done

BlackthornMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, BLACKTHORN_CITY, 4
	warp_event  3,  7, BLACKTHORN_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartCooltrainerMScript, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornMartBlackBeltScript, -1
