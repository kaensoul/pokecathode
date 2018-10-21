	const_def 2 ; object constants
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER

NewBarkTown_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	return

NewBarkTown_TeacherStopsYouScene1:
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	applymovement PLAYER, Movement_TeacherRunsToYou1_NBT
	end

NewBarkTown_TeacherStopsYouScene2:
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	applymovement PLAYER, Movement_TeacherRunsToYou1_NBT
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end
	
COOLTRAINER_FScript:
    faceplayer
    opentext
	writetext Text_CTF
    waitbutton
	closetext
	end
	
COOLTRAINER_MScript:
    faceplayer
    opentext
	writetext Text_CTM
    waitbutton
	closetext
	end	
	
FatguyScript:
    faceplayer
    opentext
	writetext Fattext
    waitbutton
	closetext
	end		
	
NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText

Movement_TeacherRunsToYou1_NBT:
	step UP
	step_end

Movement_TeacherRunsToYou2_NBT:
    step UP
	step_end

Text_GearIsImpressive:
	text "Where are you"
	line "from, kid?"

	para "Johto?,"
	line "where in the world"
	cont "is that?"
	done

Text_WaitPlayer:
	text "I shouldn't leave"
	line "without a #MON."
	done

NewBarkTownSignText:
	text "Pebble Town"

	para "Some softness in"
	line "a rocky mountain."
	done

NewBarkTownPlayersHouseSignText:
	text "Pebble INN"
	done

NewBarkTownElmsLabSignText:
	text "Kapok's #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "Jim's GYM"
	next "A real GYM!"
	done
	
Text_CTF:
    text "New trainer," 
	next "right? Well you"

	para "should know than"
	line "the south path"
	cont "is long and dan-"
	
	para "gerous, meanwhile"
	line "the west path is"
	cont "kid friendly."
	done
	
Text_CTM:
    text "Dont take Jim"
    next "seriously, the"

    para "#MON league"
	line "know he is too"
	cont "weak to be a"
	
	para "Leader like Nate"
	line "or Francis."
	done

Fattext:
   text "Technology is ok"
   next "i guess, nothing"
   cont "impressive."
   done   
	
NewBarkTown_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  6,   5, ELMS_LAB, 1
	warp_event 21,  11, PLAYERS_HOUSE_1F, 1
	warp_event  5,  17, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 15,   7, ELMS_HOUSE, 1
	warp_event  3,  23, PEBBLEMART, 1
	warp_event 12,  19, PEBBLEGYM, 1

	db 2 ; coord events
	coord_event  18,  16, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene1
	coord_event  19,  16, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene2

	db 4 ; bg events
	bg_event  0,  14, BGEVENT_READ, NewBarkTownSign
	bg_event 22,  12, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  8,   6, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event 10,  20, BGEVENT_READ, NewBarkTownElmsHouseSign

	db 4 ; object events
	object_event 11,  6, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event  1, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, COOLTRAINER_FScript, -1
	object_event  8, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, COOLTRAINER_MScript, -1
    object_event 20, 14, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FatguyScript, -1
	