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
	text "¿De donde vienes?"

	para "¿Johto?,"
	line "¿Donde es eso?"
	done

Text_WaitPlayer:
	text "No me debería ir"
	line "sin #MON."
	done

NewBarkTownSignText:
	text "Pebble Town"

	para "Algo de suavidad"
	line "en una montaña"
	cont "rocosa."
	done

NewBarkTownPlayersHouseSignText:
	text "Posada Pebble."
	done

NewBarkTownElmsLabSignText:
	text "Laboratorio"
	line "#MON."
	done

NewBarkTownElmsHouseSignText:
	text "GYM de JIM"
	next "¡Un GYM real!"
	done
	
Text_CTF:
    text "¿Entrenador" 
	next "novato?"

	para "Si no quieres"
	line "pasar peligro"
	cont "ve por el oeste."
	
	para "Al sur de aquí"
	line "muchos novatos"
	cont "se rinden."
	done
	
Text_CTM:
    text "No tomes a Jim"
    line "enserio, la Liga"
	cont "sabe que es"

    para "muy débil para"
	line "ser un Líder"
	cont "como Nate o"
	cont "Francis."
	done

Fattext:
   text "La tecnología es"
   next "decente supongo,"
   cont "no la gran cosa."
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
	