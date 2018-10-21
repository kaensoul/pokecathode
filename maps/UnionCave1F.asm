	const_def 2 ; object constants
	const UNIONCAVE1F_POKEFAN_M1
	const UNIONCAVE1F_SUPER_NERD
	const UNIONCAVE1F_POKEFAN_M2
	const UNIONCAVE1F_FISHER1
	const UNIONCAVE1F_FISHER2
	const UNIONCAVE1F_POKE_BALL1
	const UNIONCAVE1F_POKE_BALL2
	const UNIONCAVE1F_POKE_BALL3
	const UNIONCAVE1F_POKE_BALL4
	const UNIONCAVE1F_ROCK1
	const UNIONCAVE1F_ROCK2

UnionCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerPokemaniacLarry:
	trainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacLarryAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerRussell:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerRussellAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerDaniel:
	trainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDanielAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBill:
	trainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBillAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherRay:
	trainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherRayAfterBattleText
	waitbutton
	closetext
	end

UnionCave1FGreatBall:
	itemball TM_FISSURE

UnionCave1FXAttack:
	itemball FIRE_STONE

UnionCave1FPotion:
	itemball SUPER_POTION

UnionCave1FAwakening:
	itemball FULL_HEAL

UnionCaveRock1:
    jumpstd smashrock
	
UnionCaveRock2:
    jumpstd smashrock
	
HikerRussellSeenText:
	text "A rock fell and"
	line "the short way be-"
	cont "come a labyrinth"

	para "Let me kick your"
	line "ass to release"
	cont "this rage."
	done

HikerRussellBeatenText:
	text "Hey man, i told"
	line "you to lose!"
	done

HikerRussellAfterBattleText:
	text "I'm not a hiker"
	line "because i like to"
	cont "walk or climb,"

	para "i'm just a middle"
	line "age man than want"
	cont "to look cool."
	done

PokemaniacLarrySeenText:
	text "This was a popular"
	line "mine years ago,"
	cont "there must be some"

	para "evolution stones"
	line "somewhere, i only"
	cont "need to take you"
    cont "out of my way!"
	done

PokemaniacLarryBeatenText:
	text "If i could evolve"
	line "my #MON…"
	done

PokemaniacLarryAfterBattleText:
	text "I could just go to"
	line "Smog City and buy"
	cont "evolution stones"

	para "there, but i hate"
	line "that place."
	done

HikerDanielSeenText:
	text "Hey kiddo, want a"
	line "bear hug?"
	done

HikerDanielBeatenText:
	text "Don't be so shy!"
	done

HikerDanielAfterBattleText:
	text "If you ever need"
	line "strong arms just"
	cont "come here."
	done

FirebreatherBillSeenText:
	text "Did you come here"
	line "to  catch Rock"
	cont "type #MON too?"
	done

FirebreatherBillBeatenText:
	text "SMASHED!!"
	done

FirebreatherBillAfterBattleText:
	text "There is a Fire"
	line "GYM and a Normal"
	cont "GYM near, Rock"

	para "#MON can be"
	line "usefull."
	done

FirebreatherRaySeenText:
	text "Have you seen an"
	line "Ice-type around"
	cont "here?"
	done

FirebreatherRayBeatenText:
	text "Don't be so cold."
	done

FirebreatherRayAfterBattleText:
	text "I was told Ice"
	line "mons live here"
	cont "i know i'm a fire"
	
	para "breather but still."
	done

UnionCave1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 33,  3, UNION_CAVE_B1F, 1
	warp_event 25, 23, UNION_CAVE_B1F, 2
	warp_event 25,  3, ROUTE_30, 1
	warp_event 29, 27, SLOWPOKE_WELL_B2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 11 ; object events
	object_event 13, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerDaniel, -1
	object_event 18, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacLarry, -1
	object_event  2, 19, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerRussell, -1
	object_event 32, 12, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherRay, -1
	object_event 24, 28, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherBill, -1
	object_event 25, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FGreatBall, EVENT_UNION_CAVE_1F_GREAT_BALL
	object_event 19, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FXAttack, EVENT_UNION_CAVE_1F_X_ATTACK
	object_event 32,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FPotion, EVENT_UNION_CAVE_1F_POTION
	object_event 33, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FAwakening, EVENT_UNION_CAVE_1F_AWAKENING
	object_event 27, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveRock1, -1
    object_event 21, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveRock2, -1
	