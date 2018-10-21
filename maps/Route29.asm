	const_def 2 ; object constants
	const ROUTE29_COOLTRAINER_M1
	const ROUTE29_YOUNGSTER
	const ROUTE29_TEACHER1
	const ROUTE29_FRUIT_TREE
	const ROUTE29_FISHER
	const ROUTE29_COOLTRAINER_M2
	const ROUTE29_TUSCANY
	const ROUTE29_POKE_BALL

Route29_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

CatchingTutorialDudeScript
    jumptextfaceplayer Jaklopetext	
	
Route29YoungsterScript:
	jumptextfaceplayer Route29YoungsterText

Route29TeacherScript:
	jumptextfaceplayer Route29TeacherText

Route29FisherScript:
	jumptextfaceplayer Route29FisherText

Route29CooltrainerMScript:
	jumptextfaceplayer LeavingText

TuscanyScript:
	jumptextfaceplayer Lasttext

Route29Sign2:
	jumptext Route29Sign2Text

Route29FruitTree:
	fruittree FRUITTREE_ROUTE_29

Route29Potion:
	itemball TM_RAGE

Jaklopetext:
    text "I want to catch a"
	line "Jaklope for my"
	cont "daughter and a"
	
	para "Bask for my son"
	line "but Jaklope only"
	cont "appear during the"
	
	para "morning and Bask"
	line "at night, so i"
	cont "will be here the"
	
	para "whole day…"
	done
	
	
Route29YoungsterText:
	text "I try to evade"
	line "tall grass, but"
	cont "sometimes there"

	para "is no other way,"
	line "sometimes a man"
	cont "must fight fear"

	para "itself to live,"
	line "but thanks to"
	cont "god im a kid."
	done

Route29TeacherText:
	text "You should visit"
	line "the #MON"
	cont "fan club, you"

	para "never know what"
	line "kind of weird"
	cont "stuff the nerds"

	para "there can teach"
	line "you."
	done

Route29FisherText:
	text "There is so much"
	line "weird stuff going"
    cont "on lately."
	
	para "Movie mons than"
	line "become real, a"
	cont "bird than destroy"
	
	para "cities for fun, a"
	line "cave appearing"
	cont "for no reason,"
	
	para "margarine than i"
	line "can't believe it's"
	cont "not butter."
	
	para "Better just ignore"
	line "everything and"
	cont "fish all day."
	done

LeavingText:
    text "Is kind of fun,"
	line "ya know, the GYM"
	cont "leader leave and"
	
	para "then Pebble Town"
	line "become popular."
	
	para "Not than Emma was"
	line "bad, but now Ann"
	cont "give free shit"
	
	para "to everyone who"
	line "come here, before"
	cont "no one knew we"
	
	para "had a lab. And if"
    line "you ask me Ann is"
    cont "cuter than Emma,"	
	
	para "i really love cute"
	line "milfs."
	done

Lasttext:
    text "I love my Chillma,"
	line "it's so cute."
	
	para "I would hug it the"
	line "whole day, may i"
	cont "should go to Orre"
	
	para "and marry him!"
	done


Route29Sign2Text:
	text "Route 1"
    line "Just your old"
	cont "mountine smell."
	
	para "W:Grass Town"
	line "E:Pebble Town"
	done

Route29_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 1 ; bg events
	bg_event  51,  11, BGEVENT_READ, Route29Sign2

	db 8 ; object events
	object_event 20, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CatchingTutorialDudeScript, -1
	object_event 43,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29YoungsterScript, -1
	object_event  5,  6, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29TeacherScript, -1
	object_event 26,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route29FruitTree, -1
	object_event 33,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route29FisherScript, -1
	object_event 54, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29CooltrainerMScript, -1
	object_event 48,  9, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TuscanyScript, -1
	object_event 49,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route29Potion, EVENT_ROUTE_29_POTION
