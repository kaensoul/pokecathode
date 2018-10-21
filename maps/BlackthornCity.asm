	const_def 2 ; object constants
	const BLACKTHORNCITY_SUPER_NERD1
	const BLACKTHORNCITY_SUPER_NERD2
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	return

BlackthornSuperNerdScript:
	jumptextfaceplayer Text_ClairIsOut
	
BlackthornSuperNerdScript2:
	jumptextfaceplayer Text_ClairIsIn	

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	jumptextfaceplayer BlackthornGrampsGrantsEntryText

BlackthornBlackBeltScript:
	jumptextfaceplayer BlackBeltText_WeirdRadio

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText

BlackthornCooltrainerF2Script:
	jumptextfaceplayer BlackthornCooltrainerF2Text

SantosScript:
	jumptextfaceplayer SantosGivesGiftText

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

BlackthornCityPokecenterSign:
	jumpstd pokecentersign

BlackthornCityMartSign:
	jumpstd martsign

Text_ClairIsOut:
	text "Dude thanks to"
	line "god i don't have"
    cont "to go to Salty"
	
	para "eyes again in my"
	line "life, i did see "
	cont "some stuff behind"

	para "rocks but thats "
	line "not enough to make"
    cont "me want to go"
	cont "back there."
	done

Text_ClairIsIn:
	text "I'm watching the"
	line "GYM Leader fight,"
	cont "he is impressive."

	para "I didn't knew"
	line "someone drunk "
	cont "could fight like"
	cont "that."

	para "Some time ago a"
	line "girl with Delibird"
	cont "clothes and a blue"
	
	para "haired kid defea-"
	line "ted him in awesome"
	cont "battles."
	done

BlackthornGrampsRefusesEntryText:
	text "The water here is"
	line "hot, people and"
	cont "Thermaque use it"

	para "to relax a bit."
	done

BlackthornGrampsGrantsEntryText:
	text "Do you know about"
	line "the four cardinal"
	cont "beast?"

	para "They come to Kita"
	line "around 20 years"
	cont "ago, people had"
	
	para "to make shrines"
	line "to keep them calm"
	cont "until a the day a"
	
	para "trainer catch"
	line "them."
	
	para "They are dangerous"
	line "no long ago the"
	cont "Crimson Bird of"
	cont "the south,"
	
	para "destroyed a city"
	line "not so far from"
	cont "here."
	done

BlackBeltText_WeirdRadio:
	text "I come here"
	line "because i was told"
	cont "a really rare and"
	
	para "strong #MON"
	line "than look like a"
	cont "chicken live in"
	
	para "Salty Eyes, but"
	line "i spend the whole"
	cont "day and night"
	cont "there and nothing."
	
	para "Maybe i should go"
	line "early in the"
	cont "morning."
	done
	
BlackthornCooltrainerF1Text:
	text "This place is"
	line "really high, Ice"
	cont "#MON can"
	
	para "live around here"
	line "nicely."
	done

BlackthornYoungsterText:
	text "My sis say than"
	line "she will catch"
	cont "a strong #MON"
	cont "for me!"
	done

SantosGivesGiftText:
	text "A Gargolit took"
	line "my new hat, it"
	cont "must be hide on a"
	cont "tree around here."
	done


BlackthornCooltrainerF2Text:
	text "Is hard to get"
	line "good #BALLs in"
	cont "Kita, the factory"

	para "in Flower Town"
	line "would rathen sell"
	cont "the good ones to"
	cont "other regions."
	done

BlackthornCitySignText:
	text "Snowy City"

	para "Stay cool and"
	line "chill in the"
	cont "highest place in"
	cont "Kita."
	done

BlackthornGymSignText:
	text "Snowy City"
	line "#MON GYM"
	cont "Leader: Francis"

	para "Always ready for"
	line "a good fight and"
	cont "a good drink!"
	done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 30, 25, BLACKTHORN_GYM_1F, 1
	warp_event  5, 19, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 11, 19, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 21, 17, BLACKTHORN_MART, 2
	warp_event 21, 25, BLACKTHORN_POKECENTER_1F, 1
	warp_event  5, 25, MOVE_DELETERS_HOUSE, 1
	warp_event 10,  3, UNION_CAVE_B2F, 3
	warp_event 11, 25, BLACKTHORN_GYM_2F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 12, 14, BGEVENT_READ, BlackthornCitySign
	bg_event 28, 26, BGEVENT_READ, BlackthornGymSign
	
	db 9 ; object events
	object_event 12,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, -1
	object_event 29, 26, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript2, -1
	object_event 18, 18, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, -1
	object_event  9, 27, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, -1
	object_event  7, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event 15, 22, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 25, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, -1
	object_event 19, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 19, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
