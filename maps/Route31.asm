	const_def 2 ; object constants
	const ROUTE31_FISHER
	const ROUTE31_YOUNGSTER
	const ROUTE31_BUG_CATCHER
	const ROUTE31_COOLTRAINER_M
	const ROUTE31_FRUIT_TREE
	const ROUTE31_POKE_BALL1
	const ROUTE31_POKE_BALL2

Route31_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcherWade1:
	trainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, BugCatcherWade1SeenText, BugCatcherWade1BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_BUG_CATCHER_WADE
	endifjustbattled
	opentext
	checkflag ENGINE_WADE
	iftrue .WadeRematch
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue .WadeItem
	checkcellnum PHONE_BUG_CATCHER_WADE
	iftrue .AcceptedNumberSTD
	checkevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext BugCatcherWade1AfterText
	waitbutton
	setevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumberSTD
	jump .Continue

.AskAgain:
	scall .AskAgainSTD
.Continue:
	askforphonenumber PHONE_BUG_CATCHER_WADE
	ifequal PHONE_CONTACTS_FULL, .PhoneFullSTD
	ifequal PHONE_CONTACT_REFUSED, .DeclinedNumberSTD
	trainertotext BUG_CATCHER, WADE1, MEM_BUFFER_0
	scall .RegisterNumberSTD
	jump .AcceptedNumberSTD

.WadeRematch:
	scall .RematchSTD
	winlosstext BugCatcherWade1BeatenText, 0
	copybytetovar wWadeFightCount
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
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer BUG_CATCHER, WADE1
	startbattle
	reloadmapafterbattle
	loadvar wWadeFightCount, 1
	clearflag ENGINE_WADE
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, WADE2
	startbattle
	reloadmapafterbattle
	loadvar wWadeFightCount, 2
	clearflag ENGINE_WADE
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, WADE3
	startbattle
	reloadmapafterbattle
	loadvar wWadeFightCount, 3
	clearflag ENGINE_WADE
	end

.LoadFight3:
	loadtrainer BUG_CATCHER, WADE4
	startbattle
	reloadmapafterbattle
	loadvar wWadeFightCount, 4
	clearflag ENGINE_WADE
	end

.LoadFight4:
	loadtrainer BUG_CATCHER, WADE5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WADE
	end

.WadeItem:
	scall .ItemSTD
	checkevent EVENT_WADE_HAS_BERRY
	iftrue .Berry
	checkevent EVENT_WADE_HAS_PSNCUREBERRY
	iftrue .Psncureberry
	checkevent EVENT_WADE_HAS_PRZCUREBERRY
	iftrue .Przcureberry
	checkevent EVENT_WADE_HAS_BITTER_BERRY
	iftrue .BitterBerry
.Berry:
	verbosegiveitem BERRY
	iffalse .PackFull
	jump .Done
.Psncureberry:
	verbosegiveitem PSNCUREBERRY
	iffalse .PackFull
	jump .Done
.Przcureberry:
	verbosegiveitem PRZCUREBERRY
	iffalse .PackFull
	jump .Done
.BitterBerry:
	verbosegiveitem BITTER_BERRY
	iffalse .PackFull
.Done:
	clearflag ENGINE_WADE_HAS_ITEM
	jump .AcceptedNumberSTD
.PackFull:
	jump .PackFullSTD

.AskPhoneNumberSTD:
	jumpstd asknumber1m
	end

.AskAgainSTD:
	jumpstd asknumber2m
	end

.RegisterNumberSTD:
	jumpstd registerednumberm
	end

.AcceptedNumberSTD:
	jumpstd numberacceptedm
	end

.DeclinedNumberSTD:
	jumpstd numberdeclinedm
	end

.PhoneFullSTD:
	jumpstd phonefullm
	end

.RematchSTD:
	jumpstd rematchm
	end

.ItemSTD:
	jumpstd giftm
	end

.PackFullSTD:
	jumpstd packfullm
	end

Route31MailRecipientScript:
	jumptextfaceplayer Text_Route31SleepyMan

Route31YoungsterScript:
	jumptextfaceplayer Route31YoungsterText

Route31Sign:
	jumptext Route31SignText

DarkCaveSign:
	jumptext DarkCaveSignText

Route31CooltrainerMScript:
	jumptextfaceplayer Route31CooltrainerMText

Route31FruitTree:
	fruittree FRUITTREE_ROUTE_31

Route31Potion:
	itemball FULL_HEAL

Route31PokeBall:
	itemball GREAT_BALL

Route31CooltrainerMText:
	text "¡¿LUCHAR?!"

	para "Ni de broma, ya"
	line "perdí 4 veces"
	cont "hoy."
	
	para "Cuando tienes un"
	line "mal día lo mejor"
	cont "es pensar en"
	cont "otras cosas y"
	cont "y no estresarse."
	
	para "Antes me enojaba"
	line "mucho al luchar"
	cont "pero ahora trato"
	cont "de hacerlo por"
	cont "diversión."
	done

BugCatcherWade1SeenText:
	text "¡Aquí está el"
	line "gran héroe que"
	cont "lucha por la"
	cont "justicia!"
	
	para "¡El poderoso"
	line "BEE-MASK!"
	done

BugCatcherWade1BeatenText:
	text "¡¿Como pudo el"
	line "malvado AidasMan"
	cont "derrotar a nuestro"
	cont "héroe Bee-Mask?!"
	done

BugCatcherWade1AfterText:
	text "Quiero ser tan"
	line "fuerte como el"
	cont "Bee-Mask real."
	done

Text_Route31SleepyMan:
	text "Derrotar a Nate"
	line "es más difícil de"
	cont "lo que pensaba."

	para "Mi Pandree no"
	line "pudo resistir los"
	cont "ataques Voladores"
    cont "de Birnal."
	
	para "Mientras que Rack"
	line "fue destruido por"
	cont "el Agua de Mop."

	para "Voy a intentar"
	line "derrotar a Pluto"
	cont "con mi Bask,"
	
	para "Aunque tal vez"
	line "deba pasar por el"
	cont "bosque y atrapar"
	cont "un Aedes primero."
	done

Route31YoungsterText:
	text "Dicen que un super"
	line "raro #MON"
	cont "vive aquí pero"

	para "llevo mucho tiempo"
	line "buscando y nada."

	para "Es cosa de suerte,"
	line "supongo."
	
	para "Se ve como una"
	line "bola de pelos con"
	cont "hojas sobre su"
	cont "cabeza."
	
	para "¿Atraparlo?"
	
	para "Nah, es para ganar"
	line "EXP rápidamente."
	done

Route31SignText:
	text "Route 3"
	
	para "Uniendo caminos."

	para "E:Grass Town"
	line "O:Cloudy City"
	cont "S:Meteorfall City"
	done

DarkCaveSignText:
	text "Entrada a"
	line "Cloudy City."
	
	para "No busquen"
	line "problemas."
	cont "          -Nate"
	done

Route31_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  6, ROUTE_31_VIOLET_GATE, 3
	warp_event  4,  7, ROUTE_31_VIOLET_GATE, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event 36,  8, BGEVENT_READ, Route31Sign
	bg_event  5,  5, BGEVENT_READ, DarkCaveSign

	db 7 ; object events
	object_event  6,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31MailRecipientScript, -1
	object_event 32,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31YoungsterScript, -1
	object_event 11,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherWade1, -1
	object_event 25, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31CooltrainerMScript, -1
	object_event  0, 13, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31FruitTree, -1
	object_event 31,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31Potion, EVENT_ROUTE_31_POTION
	object_event  4, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31PokeBall, EVENT_ROUTE_31_POKE_BALL
