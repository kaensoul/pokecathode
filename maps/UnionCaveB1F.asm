	const_def 2 ; object constants
	const UNIONCAVEB1F_POKEFAN_M1
	const UNIONCAVEB1F_POKEFAN_M2
	const UNIONCAVEB1F_SUPER_NERD1
	const UNIONCAVEB1F_SUPER_NERD2
	const UNIONCAVEB1F_POKE_BALL1
	const UNIONCAVEB1F_BOULDER
	const UNIONCAVEB1F_POKE_BALL2
	const UNIONCAVEB1F_ROCK1
	const UNIONCAVEB1F_RECEPTIONIST

UnionCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerPokemaniacAndrew:
	trainer POKEMANIAC, ANDREW, EVENT_BEAT_POKEMANIAC_ANDREW, PokemaniacAndrewSeenText, PokemaniacAndrewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacAndrewAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacCalvin:
	trainer POKEMANIAC, CALVIN, EVENT_BEAT_POKEMANIAC_CALVIN, PokemaniacCalvinSeenText, PokemaniacCalvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacCalvinAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerPhillip:
	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerPhillipAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerLeonard:
	trainer HIKER, LEONARD, EVENT_BEAT_HIKER_LEONARD, HikerLeonardSeenText, HikerLeonardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerLeonardAfterBattleText
	waitbutton
	closetext
	end
	
SecretarySaltyScript:
    faceplayer
    opentext
    writetext Healingtext
	special HealParty
    playsound SFX_POTION
	waitsfx
	closetext
	end

UnionCaveB1FRock1:
    jumpstd smashrock	

UnionCaveB1FTMSwift:
	itemball TM_CONVERSION

UnionCaveB1FXDefend:
	itemball THUNDERSTONE

UnionCaveB1FBoulder:
	jumpstd strengthboulder

HikerPhillipSeenText:
	text "I have been lose"
	line "here since i was"
	cont "ten."
	done

HikerPhillipBeatenText:
	text "I miss mom."
	done

HikerPhillipAfterBattleText:
	text "I just wanted some"
	line "adventures, now"
	cont "i don't remember"

	para "what sunlight is."
	done

HikerLeonardSeenText:
	text "I'm training to"
	line "beat Francis!"
	done

HikerLeonardBeatenText:
	text "I just wanted"
	line "EXP. points."
	done

HikerLeonardAfterBattleText:
	text "Francis ace is a"
	line "weird monkey"
	cont "#MON than not"

	para "only use Fire and"
	line "Ice moves, it can"
	cont "also use Water."

	para "I mean, it kinda"
	line "make sence, i"
	cont "guess."
	done

PokemaniacAndrewSeenText:
	text "WHERE THE HECK"
	line "IS THE EXIT?!"
	done

PokemaniacAndrewBeatenText:
	text "AAAAAAAAHH!"
	done

PokemaniacAndrewAfterBattleText:
	text "IF I DON'T LEAVE"
	line "THIS PLACE SOON!"
	
	para "I GOING TO KILL"
	line "MYSELF!"
	done

PokemaniacCalvinSeenText:
	text "Oe, batoru?"
	done

PokemaniacCalvinBeatenText:
	text "N-Nani?!"
	done

PokemaniacCalvinAfterBattleText:
	text "Kisama, orewa no"
	line "krosearu se."
	done

Healingtext:
    text "Need help?"
    line "I work for the"
    cont "#MON League."

    para "Let me use some"
    line "potions and elixir"
    cont "on your friends."	
	done

UnionCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 17,  5, UNION_CAVE_1F, 1
	warp_event 15, 31, UNION_CAVE_1F, 2
	warp_event 13, 19, UNION_CAVE_B2F, 1
	warp_event 15, 27, UNION_CAVE_B2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	object_event 13, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerPhillip, -1
	object_event  6, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerLeonard, -1
	object_event  8, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacAndrew, -1
	object_event 14, 29, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacCalvin, -1
	object_event 17, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB1FTMSwift, EVENT_UNION_CAVE_B1F_TM_SWIFT
	object_event 15, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveB1FBoulder, -1
	object_event 15, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB1FXDefend, EVENT_UNION_CAVE_B1F_X_DEFEND
    object_event 12, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveB1FRock1, -1
	object_event 16,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SecretarySaltyScript, -1