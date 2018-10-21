	const_def 2 ; object constants
	const ELMSLAB_ELM
	const ELMSLAB_SILVER
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_OFFICER

ElmsLab_MapScripts:
	db 6 ; scene scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .MoveElmCallback

.MeetElm:
	priorityjump .WalkUpToElm
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.MoveElmCallback:
	checkscene
	iftrue .Skip ; not SCENE_DEFAULT
	moveobject ELMSLAB_ELM, 3, 4
.Skip:
	return

.WalkUpToElm:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, RIGHT
	opentext
	writetext ElmText_Intro
	verbosegiveitem POKE_BALL, 5
	verbosegiveitem POTION, 2
	setscene SCENE_RIVALBATTLE1_BATTLE
	setflag ENGINE_POKEDEX
	setflag ENGINE_POKEGEAR
	setflag ENGINE_MAP_CARD
	setflag ENGINE_PHONE_CARD
	opentext 
	writetext ReceiveDEXandGear
	playsound SFX_ITEM
	waitsfx
	special SetDayOfWeek
.SetDayOfWeek:
	iffalse .WrongDay
	jump .DayOfWeekDone

.WrongDay:
	iffalse .SetDayOfWeek
.DayOfWeekDone:
    closetext
	setscene SCENE_ELMSLAB_CANT_LEAVE
	end

ProfElmScript:
	jumptextfaceplayer ElmDescribesMrPokemonText

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHARMANDER, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHARMANDER, 5, BERRY
	closetext
	jump ElmDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem SQUIRTLE, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SQUIRTLE, 5, BERRY
	closetext
	jump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem BULBASAUR, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 5, BERRY
	closetext
	jump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	opentext
	writetext ElmDirectionsText2
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, DOWN
	showemote EMOTE_HEART, ELMSLAB_ELM, 15
	opentext
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	writebyte HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_SILVER, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_SILVER, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_SILVER, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_SILVER, AideWalksLeft2
	end

AideScript_GivePotion:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext NewBarkTownRivalText_Seen
	waitbutton
	closetext
	special NameRival
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext SilverNewBarkTownWinText, SilverNewBarkTownLossText
	setlasttalked ELMSLAB_SILVER
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.Totodile:
	winlosstext SilverNewBarkTownWinText, SilverNewBarkTownLossText
	setlasttalked ELMSLAB_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.Chikorita:
	winlosstext SilverNewBarkTownWinText, SilverNewBarkTownLossText
	setlasttalked ELMSLAB_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext NewBarkTownRivalText_YouWon
	waitbutton
	closetext
	jump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext NewBarkTownRivalText_YouLost
	waitbutton
	closetext
.FinishRival:
	applymovement ELMSLAB_SILVER, RivalLeaveLab
	disappear ELMSLAB_SILVER
	special HealParty
	setmapscene NEW_BARK_TOWN, SCENE_FINISHED
	playmapmusic
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

ElmsAideScript:
	end
	
ElmsLabWindow:
    opentext
	writetext ElmsLabWindowText2
	waitbutton
	closetext
	end
	
Book1:
    opentext
	writetext Book1text
	waitbutton
	closetext
	end	

Book2:
    opentext
	writetext Book2text
	waitbutton
	closetext
	end		
	
Book3:
    opentext
	writetext Book3text
	waitbutton
	closetext
	end		
	
Book4:
    opentext
	writetext Book4text
	waitbutton
	closetext
	end		

Book5:
    opentext
	writetext Book5text
	waitbutton
	closetext
	end		
	
Book6:
    opentext
	writetext Book6text
	waitbutton
	closetext
	end		
	
Book7:
    opentext
	writetext Book7text
	waitbutton
	closetext
	end		
	
Book8:
    opentext
	writetext Book8text
	waitbutton
	closetext
	end		
	
SecretaryScript:
    faceplayer
	opentext 
	writetext Secretext
    waitbutton
    closetext
    end	
	
NerdScript:
    faceplayer
    opentext 
	writetext Nerdtext
    waitbutton
    closetext
    end	
	
Nerd2Script:
    faceplayer
    opentext 
	writetext Nerd2text
    waitbutton
    closetext
    end		
	
ElmsLabPC2:
    jumptext PC2text
	
ElmsLabPC3:
    jumptext PC3text
	
ElmsLabPC4:
    jumptext PC4text

ElmsLabPC5:
    jumptext PC5text

ElmsLabPC6:
    jumptext PC6text

ElmsLabPC7:
    jumptext PC7text	
	
	
ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText


ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

RivalLeaveLab:
    step DOWN
    step DOWN
    step_end	

ElmText_Intro:
	text "Kapok: You come"
	line "<PLAY_G>!"

	para "I know it was a"
	line "long travel but"

	para "you wont be disa-"
	line "pointed."

	para "We love to see new"
	line "trainers start"
	cont "they travel with"

	para "us, so we prepared"
	line "everything you"
	cont "need."

	para "This #DEX will"
    line "turn on as soon as"
	cont "you get a #MON."
	
	para "The #GEAR is"
	line "ready to work, you"
	cont "only need to set"

	para "the day of the"
	line "week."
	
	para "And finally, some"
	line "#BALLS and"
	cont "POTIONS."
	
	para "Now go the table,"
	line "i want to show you"
	cont "our rare #MON."
	done

ElmText_ChooseAPokemon:
	text "Now than that is"
	line "done, choose your"

	para "partner, take a"
	line "#MON from"

	para "the table and"
	line "start your travel."
	done

ElmText_LetYourMonBattleIt:
	text "Only take one,"
	line "if you want ano-"
	cont "ther, catch it!"
	done

LabWhereGoingText:
	text "Kapok: Where you"
	line "go?"
	done

TakeCyndaquilText:
	text "Kapok: Crimske"
	line "is a cool #MON,"
	cont "it start weak,"
	
	para "but with enough"
	line "training, nothing"
	cont "is impossible!"
	
	para "It got a dragon's"
	line "spirit."
	done

TakeTotodileText:
	text "Kapok: Chillma"
	line "is a cute #MON,"
	cont "it look easy to"
	
	para "train, but a"
	line "bad trainer will"
	cont "have issues."
	
	para "It got arms"
	line "stronger than an"
	cont "Iceberg."
	done

TakeChikoritaText:
	text "Kapok: Ceramelops"
	line "is a friendly"
	cont "#MON, it will"
	
	para "never disappoint"
	line "you in battle with"
	cont "scales harder than"
	
	para "an armor and horns"
	line "stronger than a"
	cont "sword."
	done

DidntChooseStarterText:
	text "Kapok: Is not"
	line "your style?"
	done

ChoseStarterText:
	text "Kapok: That"
	line "#MON look"
	cont "very happy!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_from_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "Kapok: That's"
	line "everything i can"
	cont "do for you."

	para "You should go"
	line "and explore the"

	para "region, you and"
	line "your partner will"

	para "have many adventu-"
	line "res, be carefull"
	cont "and try your best."

	para "Oh, you can have"
	line "my phone number,"

	para "if you need some-"
	line "one to chat with."
	done

ElmDirectionsText2:
	text "I think a girl"
	line "is watching you"
	cont "right now, she"

	para "is also a new"
	line "trainer, so be"
	cont "ready to battle!"
	done

ElmDirectionsText3:
	text "<PLAY_G>, Good"
	line "Luck!"
	done

GotElmsNumberText:
	text "<PLAYER> got Kapok's"
	line "phone number."
	done

ElmDescribesMrPokemonText:
	text "Kapok: This is a"
	line "good job, but i"
	cont "would like to"

	para "travel the world"
	line "again, i wonder"
	
	para "what is Fred doing"
	line "right now…"
	done

ElmPokeBallText:
	text "It look a bit"
	line "sad…"
	done

ElmsLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

ElmsLabHealingMachineText2:
	text "Use the healing"
	line "machine?"
	done

ElmsLabWindowText1:
	text "The window's open."

	para "A pleasant breeze"
	line "is blowing in."
	done

ElmsLabWindowText2:
	text "I can see many"
	line "#MON eggs!"
	done

ElmsLabTravelTip1Text:
	text "A blue horse"
	line "#MON, called"
	cont "Cathode…"

	para "What does it say"
	line "about it?"

	para "Travel at high"
	line "speed around the"
	cont "world."
	
	para "Legends say than"
	line "the south magnetic"
	cont "pole use the"
	
	para "energy Cathode"
	line "generate while"
	cont "running…"
	
	para "South? then it may"
	line "appear here."
	done

ElmsLabTravelTip2Text:
	text "A red horse"
	line "#MON, called"
	cont "Anode…"

	para "What does it say"
	line "about it?"

	para "Travel at high"
	line "speed around the"
	cont "world."
	
	para "Legends say than"
	line "the north magnetic"
	cont "pole use the"
	
	para "energy Anode "
	line "generate while "
	cont "running…"
	
	para "North? thats too"
	line "far from here."
	done

ElmsLabTravelTip3Text:
	text "Is about #MON"
	line "preservation,"
	cont "what does it say?"

	para "Even when is"
	line "possible to bring"
	cont "old #MON back"

	para "to life with our"
	line "technology, pre-"
	cont "servation is very"
	
	para "important, when we"
	line "try to recreate a"
	cont "#MON with a"
	
	para "fossil we don't"
	line "resurrect someone"
	cont "we just make a"
	
	para "baby without a"
	line "mother."
	
	para "But not just that,"
	line "fossil #MON"
	cont "don't even look"
	
	para "like they did,"
	line "Tyramtrum used to"
    cont "be covered with"

    para "feathers and Aero-"
    line "dactyl need a"
	cont "megastone to look"
	
	para "like a real Aero-"
	line "dactyl. If we let"
	cont "our #MON"
	
	para "die, then we will"
	line "lose them forever." 
	done
	

ElmsLabTravelTip4Text:
	text "A folder with many"
	line "photographs, oh"
	cont "and i can read"

	para "peoples names on"
	line "this one."

	para "October 4, 2004"
	line "Ann Kapok got her"
	cont "University Degree."

	para "With her is a"
	line "young man with an"
	cont "Air Force uniform"
	
	para "named Fred."
	line "An old man called"
	cont "Mark Kapok and"
	
	para "Ann's teacher…"
	line "Prof. Yggdrasil."
	done

ElmsLabTrashcanText:
	text "It look like prof."
	line "really like to"
	cont "eat sweets."
	done

ElmsLabPCText:
	text "Is about #MON"
	line "preservation."

	para "By giving rare"
	line "#MON to good "
	cont "people we can "
	
	para "increase their"
	line "pobulation without"
	cont "the need to"
	
	para "disturb other's"
	line "habitat."
	done
	
Dayofweek:
    text "Now set the day"
    line "of the week"
    done	
	
NewBarkTownRivalText_Seen:
	text "Hey!!"

	para "You look like"
	line "someone with no"
	cont "idea of whats"

	para "going on, so let"
	line "me show you how"
	cont "to battle, i dont"

	para "have my strong"
	line "#MON with"
	cont "me for now so a"

	para "good for nothing"
	line "like you may have"
	cont "a chance!"

	para "My name?"
	line "is …"
	done

SilverNewBarkTownWinText:
	text "I cant believe"
	line "i lose against"
	cont "a baby face."
	done

NewBarkTownRivalText_YouLost:
    text "This can't be…"

	para "I need to be"
    line "strong, i can't"
	cont "lose more time."
	
	para "You are lucky"
	line "that metal face"
	cont "took my partner."
	done		

SilverNewBarkTownLossText:
	text "I know you are"
	line "new, but i feel"
	cont "bad for your"
	
	para "#MON."
	done

NewBarkTownRivalText_YouWon:
	text "Some easy EXP for"
	line "my new partner,"
	cont "now that metal"

	para "face will have no"
	line "chance."
	
	para "See ya baby face."
	done

ReceiveDEXandGear:
    text "<PLAYER> got a"
	line "#DEX and"
	cont "#GEAR."
	done
	
Book1text:
	text "A big collection"
	line "of books about"
	cont "#MON distri-"
	
	para "bution and biology"
	line "they all have"
	cont "the same author"
	
	para "Prof. Cedric"
    line "Juniper."	
	done
	
Book2text:
    text "A big collection"
	line "of books about"
	cont "#MON habitats,"
	
	para "they all have"
	line "the same author"
	cont "Prof. Birch."
    done

Book3text:
    text "July 2, 1913"
    line "A new fossil was"
    cont "discovered, the"

    para "#MON was called"
    line "a weird Bastiodon"
    cont "sub-species at"

    para "first, but this"
	line "was because small"
	cont "amount of bones"
	
	para "people could find."
	line "Many years later"
	cont "was decided to"
	
	para "use the new resto-"
	line "ration technology"
	cont "on one of the"
	
	para "few fossils. The"
	line "new #MON was"
	cont "called Ceraroks"
	
	para "and we tried to"
	line "breed it with"
	cont "Ditto to make"
	
	para "more, this worked"
	line "for some time but"
	cont "Ceraroks got a"
	
	para "natural evolution"
	line "to adapt to"
	cont "the modern world."
	
	para "We call the"
	line "modern species"
	cont "Ceramelops."
	done
	
Book4text:
    text "June 21, 2011"
    line "A 10yo kid found"
    cont "the legendary"

    para "#MON Zhulong,"
    line "but after he left"
    cont "it on the "
	
	para "Day-care somewhere"
	line "on route 34, an "
	cont "egg come out."
	
	para "The baby was named"
	line "Cimske, and it was"
	cont "discovered than"
	
	para "Zhulong wasnt a"
	line "legendary #MON"
	cont "just a rare one."
	done
	
Book5text:
    text "May 11, 1997"
    line "Our technology is"
    cont "supposed to help"
 
    para "people and #MON"
    line "but this isnt"
	cont "always true."
	
	para "Chillma's popula-"
	line "tion is in danger"
	cont "because some"
	
	para "industries"
	line "destroyed their"
	cont "habitat."
	
	para "But at the same"
	line "time some Chillma"
    cont "without the Ice"

    para "Typing have been"
    line "discovered, the"
    cont "Prof. Samson Oak"

    para "expert on regional"
    line "variants say:"
	cont "Chillma's form"

    para "change like a"
    line "CASTFORM!! to"
    cont "live on new areas"

    para "and fight like a"
    line "MACHAMP!!"	
	done
	
Book6text:
    text "Nothing good, just"
	line "some weird books"
	cont "about #MON"
	
	para "discoverd on the"
	line "country."
	done
	
Book7text:
    text "The four cardinal"
	line "beast, this book"
	cont "say they come"
	
	para "from a far "
	line "country in the"
	cont "east, now they "
	
	para "live on 4 diffe-"
	line "rent shrines here"
	cont "in Kita."
	done
	
Book8text:
    text "A book write by"
	line "Prof. Yggdrasil."
	
	para "Artificial #MON"
	line "was Porygon a "
	cont "good idea?"
	done
	
Secretext:
    text "We act like the"
	line "#MON Center"
	cont "here, but you"
	
	para "must use the"
	line "machine yourself."
	done
	
Nerdtext:
    text "We have prepared"
    line "#MON for"
    cont "20 people today."	
	done
	
PC2text:
    text "Prof. Kapok with"
	line "a blonde girl"
	cont "next to the GYM"
	
	para "must be the old"
	line "GYM leader."
	done

PC3text:
    text "Is off."

    para "A cup with a"
    line "bird theme is"
    cont "next to the PC."	
	done
	
Nerd2text:
    text "Here we study"
	line "#MON preserva-"
	cont "tion."
	
	para "Our country have"
	line "many unique"
	cont "species than"
    
    para "can't live in"
    line "other places."	
	done

PC4text:
    text "An ancient #-"
    line "MON with spikes"
    cont "and plates."

    para "No wait, i think"
    line "they are leafs."
    done

PC5text:
    text "An ancient #-"
    line "MON with a big"
    cont "armor and strong"

	para "tail than can"
	line "carry rocks."
	done
	
PC6text:
    text "An ancient #-"
    line "MON with wings, it"
    cont "got a long face."
	done
	
PC7text:
    text "An ancient #-"
    line "MON with big fangs"
    cont "and fluffy hair."
    done	
	
ElmsLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	db 4 ; coord events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2

	db 22 ; bg events
	bg_event  8,  7, BGEVENT_READ, ElmsLabHealingMachine
	bg_event 10,  1, BGEVENT_READ, Book1
	bg_event 11,  1, BGEVENT_READ, Book2
	bg_event 11,  7, BGEVENT_READ, Book3
	bg_event 12,  7, BGEVENT_READ, Book4
	bg_event  5,  0, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  4,  0, BGEVENT_READ, ElmsLabTravelTip2
	bg_event 15, 11, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event 13,  7, BGEVENT_READ, Book5
	bg_event 14,  7, BGEVENT_READ, Book6
	bg_event 15,  7, BGEVENT_READ, Book7
	bg_event 10,  7, BGEVENT_READ, Book8
	bg_event  3,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  7,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  0,  7, BGEVENT_READ, ElmsLabPC
	bg_event 12,  1, BGEVENT_READ, ElmsLabPC2
	bg_event 14,  1, BGEVENT_READ, ElmsLabPC3
	bg_event  7,  3, BGEVENT_READ, ElmsLabPC4
	bg_event  9,  3, BGEVENT_READ, ElmsLabPC5
	bg_event  9,  5, BGEVENT_READ, ElmsLabPC6
	bg_event  7,  5, BGEVENT_READ, ElmsLabPC7

	db 8 ; object events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  2,  9, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  0,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  1,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event  9,  8, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SecretaryScript, -1
    object_event 11,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NerdScript, -1
    object_event 13,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Nerd2Script, -1

	