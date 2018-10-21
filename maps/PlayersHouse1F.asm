	const_def 1 ; object constants
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


MomScript:
	faceplayer
	opentext
	writetext Innwoman
	buttonsound
	closetext
	end

MomScript2:
    faceplayer
    opentext
    writetext Innkitch
    buttonsound
    closetext
    end	
	
MomScript3:
    faceplayer
    opentext
    writetext Guy
    buttonsound
    closetext
    end	
	
MomScript4:
    faceplayer
    opentext
    writetext Bugger
    buttonsound
    closetext
    end
	
NeighborScript:
	faceplayer
	opentext
	writetext Neighbor
	buttonsound
	closetext
	end

TVScript:
	jumptext TVText

RadioScript:
	jumptext RadioText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText
	
FireScript:
    jumptext FireText	
	

Neighbor:
    text "It was Jim again,"
	line "kids nowdays think"
	cont "they can do"
	
	para "whatever they"
	line "want."
	done

Innwoman:
    text "You come alone,"
	line "kid?"
	
	para "Is fine, all kids"
	line "need to grouw up,"
	cont "10yo can't stay"
	
	para "inside home and"
	line "do nothing the"
	cont "whole day."
	done	
	
Innkitch:
    text "I dont like my"
    line "job, but i sucks"

	para "at #MON battles"
	line "so i dont have a"
	cont "choice."
	done

Guy:
    text "I got all that"
	line "stuff from the"
	
	para "Lab next door, a"
	line "#DEX, #GEAR"
	cont "and a #MON"
	
	para "but i dont know"
	line "what to do…"
	
    para "Battles aren't"
	line "easy and i dont"
	cont "have much money,"
	
	para "if i lose, i lose"
	line "money and my new"
	cont "#MON would"
	
	para "hate me…"
	line "I would go back"
	cont "home, but my"
	
	para "dad would be so"
	line "sad and i don't"
	cont "want to disappoint"
	
	para "him again…"
	line "Why life can't"
	cont "be a game?"
	done

Bugger:
    text "Dude, Jim the"
	line "dude than live"
	
	para "next door was"
	line "trying to open"
	
	para "his own GYM, but"
	line "he is so bad than"
	
	para "the #MON"
	line "league told him"
	
	para "to fuck off!!"
	line "duuuude."
	done

RadioText:
	text "Something is write"
    line "here, for some"
	cont "reason."
	
	para "Jim was here!"
	done

SinkText:
	text "Man, i have seen"
	line "Trubbish more"
	cont "clean than this."
	done

FridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "There is a Biscby"
	line "coming out of that"
	cont "apple!"
	done

TVText:
	text "Is that movie"
	line "about ancient"
    cont "#MON that was"
	
	para "popular last year."
	done

FireText:
    text "There is oil"
    line "everywhere."
	done
	
PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  6,  11, NEW_BARK_TOWN, 2
	warp_event  7,  11, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	db 0 ; coord events

	db 5 ; bg events
	bg_event  6,  1, BGEVENT_READ, RadioScript
	bg_event  1,  1, BGEVENT_READ, SinkScript
	bg_event  2,  1, BGEVENT_READ, FridgeScript
	bg_event  4,  1, BGEVENT_READ, TVScript
    bg_event  0,  1, BGEVENT_READ, FireScript
	
	db 5 ; object events
	object_event  9,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, -1
	object_event  0,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript2, -1
	object_event  3,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript3, -1
	object_event  6,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript4, -1
	object_event  6,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NeighborScript, -1
