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
	text "¡Este lugar se"
	line "convirtió en un"
	cont "laberinto!"
	done

HikerRussellBeatenText:
	text "Me pierdo y"
	line "pierdo."
	done

HikerRussellAfterBattleText:
	text "No soy escalador"
	line "por el gusto a"
	cont "escalar,"

	para "simplemente soy"
	line "un hombre de me-"
	cont "diana edad que"
	cont "quiere verse cool."
	done

PokemaniacLarrySeenText:
	text "Este lugar era"
	line "parte de una mina."

	para "¡Si te quitaras"
	line "de mi camino"
	cont "podría encontrar"
    cont "piedras raras!"
	done

PokemaniacLarryBeatenText:
	text "Necesito evolucio-"
	line "nar a mis #-"
	cont "MON…"
	done

PokemaniacLarryAfterBattleText:
	text "Podría comprar"
	line "piedras en Smog"
	cont "City, pero ese"
	cont "lugar apesta."
	done

HikerDanielSeenText:
	text "Oye lindura,"
	line "¿Quieres un"
	cont "abrazo de oso?"
	done

HikerDanielBeatenText:
	text "¡No seas tímido!"
	done

HikerDanielAfterBattleText:
	text "Si alguna vez"
	line "necesitas los"
	cont "fuertes brasos de"
	
	para "un hombre real"
	line "ven a mi."
	done

FirebreatherBillSeenText:
	text "¿También vienes"
	line "por #MON"
	cont "tipo Roca?"
	done

FirebreatherBillBeatenText:
	text "¡¡SMASHED!!"
	done

FirebreatherBillAfterBattleText:
	text "Los tipo Roca y"
	line "Tierra serán de"
	cont "gran ayuda en el"

	para "GYM de Snowy"
	line "City."
	done

FirebreatherRaySeenText:
	text "¿Viste algún"
	line "tipo Hielo en el"
	cont "camino?"
	done

FirebreatherRayBeatenText:
	text "No seas tan frío."
	done

FirebreatherRayAfterBattleText:
	text "El cartel decía"
	line "algo sobre frío"
	cont "extremo, pero no"
	
	para "veo muchos tipo"
	line "Hielo aun."
	
	para "¡Se que soy un"
	line "Escupe Fuego"
	cont "pero igual!"
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
	