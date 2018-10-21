	const_def 2 ; object constants
	const UNIONCAVEB2F_ROCKER
	const UNIONCAVEB2F_COOLTRAINER_F1
	const UNIONCAVEB2F_COOLTRAINER_F2
	const UNIONCAVEB2F_POKE_BALL1
	const UNIONCAVEB2F_POKE_BALL2
	const UNIONCAVEB2F_DAISY

UnionCaveB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BadTrainer:
    faceplayer
	opentext
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftrue .NoAppear
	writetext WantChillma
	yesorno
	iffalse .RefusedChillma
	writetext Givechillma
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoomchillma
	writetext Recichillma
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke SQUIRTLE, 5
	setevent EVENT_GOT_EEVEE
	writetext Postgive
	waitbutton
	setflag ENGINE_UNION_CAVE_LAPRAS
	closetext
	end
	
.NoAppear:
	writetext Postgive
	waitbutton
	closetext
	end
	
.NoRoomchillma:
	writetext Needspace
	waitbutton
	closetext
	end

.RefusedChillma:
	writetext Butwhy
	waitbutton
	closetext
	end

TrainerCooltrainermNick:
	trainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainermNickSeenText, CooltrainermNickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermNickAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfGwen:
	trainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerfGwenSeenText, CooltrainerfGwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfGwenAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfEmma:
	trainer COOLTRAINERF, EMMA, EVENT_BEAT_COOLTRAINERF_EMMA, CooltrainerfEmmaSeenText, CooltrainerfEmmaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfEmmaAfterBattleText
	waitbutton
	closetext
	end

UnionCaveB2FElixer:
	itemball NEVERMELTICE

UnionCaveB2FHyperPotion:
	itemball GREAT_BALL

CooltrainermNickSeenText:
	text "A cool trainer"
	line "go where is cool"
	cont "to stay cool."
	done

CooltrainermNickBeatenText:
	text "Not cool."
	done

CooltrainermNickAfterBattleText:
	text "You're cooler"
	line "than me."
	done

CooltrainerfGwenSeenText:
	text "I found rare"
	line "#MON around"
	cont "here."
	done

CooltrainerfGwenBeatenText:
	text "How did you beat"
	line "my rare #MON?"
	done

CooltrainerfGwenAfterBattleText:
	text "I hate Rack, a"
	line "common #MON"
	
	para "shouldn't be so"
	line "strong."
	done

CooltrainerfEmmaSeenText:
	text "If i win you will"
	line "take me to the"
	cont "Cinema!"
	done

CooltrainerfEmmaBeatenText:
	text "You don't like"
	line "cute girls?"
	done

CooltrainerfEmmaAfterBattleText:
	text "Well, is not like"
	line "i like you or"
	cont "anything!"
	done
	
WantChillma:
    text "Man i got this"
    line "weird bear in"
    cont "Pebble Town but"

    para "i can't win a"
    line "single battle, a"
    cont "cute trainer like"
	
    para "me should only"
    line "use strong and"
	cont "cool #MON!"
	
	para "I don't want it,"
	line "could you take it"
	cont "away from me?"
	done
	
Givechillma:
    text "Good, for some"
	line "reason it keep"
	cont "going after me if"
	
	para "i try to release"
	line "it, so annoying."
	done 
	
Butwhy:
    text "Huh? Do you dare"
	line "say no to me?"
	cont "If my father was"
	
	para "here you would be"
	line "dead right now."
	done
	
Recichillma:
    text "<PLAYER> received"
	line "Chillma!"
	done	
    	
Needspace:
    text "Looks like your"
    line "pocket is full"
    cont "of trash already."
	
	para "Please make space"
	line "and take away this"
	cont "useless beast."
    done	
		
Postgive:
    text "I'm going to"
	line "Sinnoh soon, there"
	cont "my father will"
	
	para "give me a real"
	line "#MON like"
	cont "Garchomp."
	done
		
UnionCaveB2F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  3, UNION_CAVE_B1F, 3
	warp_event 11, 27, UNION_CAVE_B1F, 4
	warp_event 16, 27, BLACKTHORN_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  6,  5, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermNick, -1
	object_event  4, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfGwen, -1
	object_event 17, 23, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfEmma, -1
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FElixer, EVENT_UNION_CAVE_B2F_ELIXER
	object_event  2, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FHyperPotion, EVENT_UNION_CAVE_B2F_HYPER_POTION
	object_event  6, 11, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadTrainer, -1
