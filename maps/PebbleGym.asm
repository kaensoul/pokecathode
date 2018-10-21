    const_def 2 ; object constants
	const PEBBLEGYM_YOUNGSTER
	const PEBBLEGYM_BUG_CATCHER
	
PebbleGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerYoungsterMikey:
	trainer YOUNGSTER, MIKEY, EVENT_BEAT_YOUNGSTER_MIKEY, YoungsterMikeySeenText, YoungsterMikeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterMikeyAfterText
	waitbutton
	closetext
	end

TrainerBugCatcherDon:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugCatcherDonSeenText, BugCatcherDonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDonAfterText
	waitbutton
	closetext
	end
	
GirlScript:
    faceplayer
    opentext
    writetext Girltext
    waitbutton
    closetext
    end	
	
GymSign:
    jumptext GymText

WindownSign:
    jumptext WindownText	
	
YoungsterMikeySeenText:
	text "Welcome to the"
	line "best GYM in the"
	cont "whole region."

	para "I'm Jim the big"
	line "bad leader!"
	
	para "Some people say"
	line "than im not good"
	cont "enough to be a"
	
	para "leader, but dont"
	line "let idiots or"
	cont "the #MON"
	
	para "League trick you"
	line "im the stronger"
	cont "trainer in Kita!"
	done

YoungsterMikeyBeatenText:
	text "Don't cheat"
	line "bro, sorry but"
	cont "i wont give a"
	
	para "badge to a"
	line "cheater."
	done

YoungsterMikeyAfterText:
	text "Dont talk to me"
	line "or my mon ever"
	cont "again."
	done

BugCatcherDonSeenText:
	text "Jim pay me"
	line "20 coins for"
	cont "doing this!"
	done

BugCatcherDonBeatenText:
	text "Wait, i lose"
	line "money?!"
	done

BugCatcherDonAfterText:
	text "Jim dont even"
	line "have badges."

	para "The old Leader"
	line "took everything"
	cont "with her."
	done	
	
GymText:
    text "Jim is the best"
    line "and no one can"
    cont "beat him."
    done	
	
WindownText:
    text "Is broken."
	
	para "So Jim used this"
    line "Windown to enter"
    cont "the first time."
    done	
	
Girltext:
    text "Jim told me than"
    line "we will take turns"
    cont "to be the leaders."
	
	para "But that was over"
	line "a month ago."
	done

    	

PebbleGym_MapEvents:   
	db 0, 0 ; filler

	db 2 ; warp events
    warp_event  4, 9, NEW_BARK_TOWN, 6
	warp_event  5, 9, NEW_BARK_TOWN, 6
	db 0 ; coord events
	
	db 3 ; bg events
	bg_event  3,  7, BGEVENT_READ, GymSign
	bg_event  6,  7, BGEVENT_READ, GymSign
	bg_event  5,  0, BGEVENT_READ, WindownSign
	
	db 3 ; object events
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerYoungsterMikey, -1
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDon, -1
	object_event  1,  8, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GirlScript, -1
	
	