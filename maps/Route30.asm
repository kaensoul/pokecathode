	const_def 2 ; object constants
	const ROUTE30_YOUNGSTER1
	const ROUTE30_YOUNGSTER2
	const ROUTE30_YOUNGSTER4
	const ROUTE30_MONSTER1
	const ROUTE30_MONSTER2
	const ROUTE30_FRUIT_TREE1
	const ROUTE30_FRUIT_TREE2
	const ROUTE30_COOLTRAINER_F
	const ROUTE30_POKE_BALL

Route30_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoey1SeenText, YoungsterJoey1BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_YOUNGSTER_JOEY
	endifjustbattled
	opentext
	checkflag ENGINE_JOEY
	iftrue .Rematch
	checkcellnum PHONE_YOUNGSTER_JOEY
	iftrue .NumberAccepted
	checkevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext YoungsterJoey1AfterText
	buttonsound
	setevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_YOUNGSTER_JOEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	trainertotext YOUNGSTER, JOEY1, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext YoungsterJoey1BeatenText, 0
	copybytetovar wJoeyFightCount
	ifequal 4, .Fight4
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight4:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
.Fight3:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
.Fight2:
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer YOUNGSTER, JOEY1
	startbattle
	reloadmapafterbattle
	loadvar wJoeyFightCount, 1
	clearflag ENGINE_JOEY
	end

.LoadFight1:
	loadtrainer YOUNGSTER, JOEY2
	startbattle
	reloadmapafterbattle
	loadvar wJoeyFightCount, 2
	clearflag ENGINE_JOEY
	end

.LoadFight2:
	loadtrainer YOUNGSTER, JOEY3
	startbattle
	reloadmapafterbattle
	loadvar wJoeyFightCount, 3
	clearflag ENGINE_JOEY
	end

.LoadFight3:
	loadtrainer YOUNGSTER, JOEY4
	startbattle
	reloadmapafterbattle
	loadvar wJoeyFightCount, 4
	clearflag ENGINE_JOEY
	end

.LoadFight4:
	loadtrainer YOUNGSTER, JOEY5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY
	checkevent EVENT_JOEY_HP_UP
	iftrue .GiveHPUp
	checkevent EVENT_GOT_HP_UP_FROM_JOEY
	iftrue .done
	scall .RematchGift
	verbosegiveitem HP_UP
	iffalse .PackFull
	setevent EVENT_GOT_HP_UP_FROM_JOEY
	jump .NumberAccepted

.done
	end

.GiveHPUp:
	opentext
	writetext YoungsterJoeyText_GiveHPUpAfterBattle
	waitbutton
	verbosegiveitem HP_UP
	iffalse .PackFull
	clearevent EVENT_JOEY_HP_UP
	setevent EVENT_GOT_HP_UP_FROM_JOEY
	jump .NumberAccepted

.AskNumber1:
	jumpstd asknumber1m
	end

.AskNumber2:
	jumpstd asknumber2m
	end

.RegisteredNumber:
	jumpstd registerednumberm
	end

.NumberAccepted:
	jumpstd numberacceptedm
	end

.NumberDeclined:
	jumpstd numberdeclinedm
	end

.PhoneFull:
	jumpstd phonefullm
	end

.RematchStd:
	jumpstd rematchm
	end

.PackFull:
	setevent EVENT_JOEY_HP_UP
	jumpstd packfullm
	end

.RematchGift:
	jumpstd rematchgiftm
	end

Route30YoungsterScript:
	jumptextfaceplayer Route30YoungsterText_DirectionsToMrPokemonsHouse


Route30CooltrainerFScript:
	jumptextfaceplayer Route30CooltrainerFText

Route30Sign:
	jumptext Route30SignText

MrPokemonsHouseSign:
	jumptext MrPokemonsHouseSignText

Route30Antidote:
	itemball TM_THIEF

Route30FruitTree1:
	fruittree FRUITTREE_ROUTE_30_1

Route30FruitTree2:
	fruittree FRUITTREE_ROUTE_30_2

Route30HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_30_HIDDEN_POTION

YoungsterJoey1SeenText:
	text "This is the top"
	line "percentage of"
	cont "Trismunk, you may"

	para "not like it, but"
	line "this what top"
	
	para "percentage looks"
	line "like."
	done

YoungsterJoey1BeatenText:
	text "I may need more"
	line "Trismunk."
	done

YoungsterJoey1AfterText:
	text "Trismunk is a"
	line "cool #MON,"
	cont "they move fast in"

	para "the grass and run"
	line "when people is"
	cont "near. But if you"

	para "could hit trees"
	line "a bunch of them"
	cont "would fall out!"
	done

Route30YoungsterText_DirectionsToMrPokemonsHouse:
	text "Im training to"
	line "be able to cross"
	cont "the mountine, is"
	
	para "a really long"
	line "travel."
	done

Route30CooltrainerFText:
	text "I was a trainer"
	line "but a weird thing,"
	cont "like a metal-man"

	para "defeated me in"
	line "battle using weird"
	cont "#MON."
	
	para "Then it stole all"
	line "my #MON, and"
	cont "i don't know what"
	
	para "to do anymore…"
	done

Route30SignText:
	text "Route 2"
	line "Salty Eyes outside"
	cont "area."

	para "N:Pebble Town"
	line "S:Snowy City"
	done
	
MrPokemonsHouseSignText:
	text "The old route"
	line "was destroyed, the"
	cont "cave is the only"
	
	para "way to Snowy City."
	
	para "WARNING:"
	line "Extreme cold in"
	cont "some areas."
	done


YoungsterJoeyText_GiveHPUpAfterBattle:
	text "So you are the one"
	line "who is beyond the"
	cont "Trismunk power."

	para "I don't know if"
	line "you need this, but"
	cont "i need to show my"

	para "respect somehow."
	done

Route30_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 41, UNION_CAVE_1F, 3
	warp_event 17,  5, MR_POKEMONS_HOUSE, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 11,  7, BGEVENT_READ, Route30Sign
	bg_event  3, 43, BGEVENT_READ, MrPokemonsHouseSign
	bg_event  5, 42, BGEVENT_ITEM, Route30HiddenPotion

	db 6 ; object events
    object_event  8, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJoey, -1
	object_event 17, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route30YoungsterScript, -1
    object_event 14,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30FruitTree1, -1
	object_event  6, 22, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30FruitTree2, -1
	object_event  4, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30CooltrainerFScript, -1
	object_event  0, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route30Antidote, EVENT_ROUTE_30_ANTIDOTE
