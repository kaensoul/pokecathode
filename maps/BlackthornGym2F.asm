	const_def 2 ; object constants
	const BLACKTHORNGYM2F_COOLTRAINER_M
	const BLACKTHORNGYM2F_COOLTRAINER_F
	const BLACKTHORNGYM2F_BOULDER1
	const BLACKTHORNGYM2F_BOULDER2
	const BLACKTHORNGYM2F_BOULDER3
	const BLACKTHORNGYM2F_BOULDER4
	const BLACKTHORNGYM2F_BOULDER5
	const BLACKTHORNGYM2F_BOULDER6

BlackthornGym2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerCooltrainermCody:
	trainer COOLTRAINERM, CODY, EVENT_BEAT_COOLTRAINERM_CODY, CooltrainermCodySeenText, CooltrainermCodyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermCodyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfFran:
	trainer COOLTRAINERF, FRAN, EVENT_BEAT_COOLTRAINERF_FRAN, CooltrainerfFranSeenText, CooltrainerfFranBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfFranAfterBattleText
	waitbutton
	closetext
	end

ThermaqueBar:
    jumptextfaceplayer Thertext

ManBar:
    jumptextfaceplayer Manbartext

BlackBeltbar:
    jumptextfaceplayer BBtext

FrancisWife:
    faceplayer
    opentext
    checkitem HM_FLY
	iftrue .Alreadygotfly
    checkflag ENGINE_RISINGBADGE
	iftrue .GiveFly
    writetext FWifetext
	waitbutton
	closetext
	end
	
.Alreadygotfly:
    writetext FWifetext2
    waitbutton
    closetext
    end

.GiveFly
    writetext FWifetextgivefly
    waitbutton
    closetext
    verbosegiveitem HM_FLY
    opentext
    writetext ExplainFly	
	waitbutton
	closetext
	end
	
FisherBar:	
	jumptextfaceplayer Fishetext

NurseBar:
    jumptextfaceplayer Nursebartext	
	
Thertext:
    text "Mama…"
	done
	
FWifetext:
    text "I'm the owner,"
    line "i would say have"
    cont "fun, but a young"

    para "kid shouldn't go"
    line "to these kind of"
    cont "places, and with"

    para "that face is "
    line "obvious you're" 
    cont "only 16yo."
	done
	
FWifetext2:
    text "Irene and Francis"
	line "are too different"
	cont "now, but when the"
	
	para "3 of us where kids"
	line "we all had crazy"
	cont "adventures, like"
	
	para "the time Irene"
	line "stole an Eagatrice"
	cont "egg and we had to"
	cont "run for our lives!"
	
	para "Now she act like"
	line "some kind of snow"
	cont "saint."
	done
	
FWifetextgivefly:
    text "So you defeated"
    line "Francis, i know"
    cont "he already give"
    cont "you a reward but"

    para "i want to show"
    line "you something"
    cont "even cooler."
    done

ExplainFly:
    text "With the HM Fly"
    line "you can go to"
    cont "every place you"
	cont "know."
    	
	para "Is also a strong"
	line "move in battle."
	done
	
Manbartext:
    text "If you're going"
    line "to drink then"
    cont "do it like a"
    cont "gentleman."
    done

Fishetext:
    text "What are you doing"
	line "here kid? sorry,"
	cont "but i wont sell"
	cont "drinks to you."
	done
  	
	
CooltrainermCodySeenText:
	text "Wha ya zhink ya"
	line "doin brah?"
	done

CooltrainermCodyBeatenText:
	text "Man im so drunk."
	done
	

CooltrainermCodyAfterBattleText:
	text "Don't do what i"
	line "did, drinking"
	cont "zhis much aint"
    cont "good…"
	
	para "I only come here"
	line "for the HM Fly,"
	cont "but they wont"
	
	para "give it to me"
	line "without Thermal"
	cont "Badge."
	done
	

CooltrainerfFranSeenText:
	text "Hey cute one,"
	line "come here!"
	done

CooltrainerfFranBeatenText:
	text "I wanna kiss"
	line "you."
	done

CooltrainerfFranAfterBattleText:
	text "I don't remember"
	line "where i'am."
	
	para "Wanna drink"
	line "something, cutie?"
	done
	
BBtext:
    text "A blue haired brat"
    line "come and tried to"
    cont "buy a beer, he"

    para "even tried to act"
    line "like an old man."

    para "I had to take him"
    line "out."	
    done
	
Nursebartext: 
    text "I hate my job,"
	line "i don't want to"
	cont "go to the Center."

    para "Helping #MON is"
    line "nice and all but"
    cont "i cant smile the"
	cont "whole day."
	
	para "And sometimes the"
	line "trainers act like"
	cont "idiots…"
	
	para "There was a girl"
	line "with a Scarffere"
	cont "scarf than was"
	
	para "so rude with me"
	line "and her own"
	cont "#MON…"
	done
	
BlackthornGym2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 17, BLACKTHORN_CITY, 8
	warp_event  5, 17, BLACKTHORN_CITY, 8

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event  3, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermCody, -1
	object_event  6, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfFran, -1
	object_event  8, 16, SPRITE_STARMIE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThermaqueBar, -1
	object_event  2, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FrancisWife, -1
	object_event  7,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackBeltbar, -1
	object_event  0,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ManBar, -1
	object_event  9,  4, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NurseBar, -1
	object_event  1,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FisherBar, -1
