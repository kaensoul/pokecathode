	const_def 2 ; object constants
	const SLOWPOKEWELLB2F_GYM_GUY
	const SLOWPOKEWELLB2F_POKE_BALL

SlowpokeWellB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SlowpokeWellB2FGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_KINGS_ROCK_IN_SLOWPOKE_WELL
	iftrue .GotKingsRock
	writetext SlowpokeWellB2FGymGuyText
	buttonsound
	verbosegiveitem SUN_STONE
	iffalse .NoRoom
	setevent EVENT_GOT_KINGS_ROCK_IN_SLOWPOKE_WELL
.NoRoom:
	closetext
	end

.GotKingsRock:
	writetext SlowpokeWellB2FGymGuyText_GotKingsRock
	waitbutton
	closetext
	end

SlowpokeWellB2FTMRainDance:
	itemball LOVE_BALL

SlowpokeWellB2FGymGuyText:
	text "Pensaba buscar"
	line "piedras raras en"
	cont "la mina, pero unos"
    cont "tipos extraños ya"
	cont "recolectaron todo."
	
	para "Aunque encontré"
	line "unas cuantas"
	cont "Piedras Solares."

	para "Mi Kibaion ya"
	line "evoluciono, puedes"
	cont "tener la otra."
	done

SlowpokeWellB2FGymGuyText_GotKingsRock:
	text "Al principio creía"
	line "que esos tipos de"
	cont "abajo usaban arma-"
	cont "duras, pero tal"
	cont "vez no sean real-"
	cont "mente humanos."
	done

SlowpokeWellB2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 15, SLOWPOKE_WELL_B1F, 2
	warp_event 13,  7, UNION_CAVE_1F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 15, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, SlowpokeWellB2FGymGuyScript, -1
	object_event  9,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SlowpokeWellB2FTMRainDance, EVENT_SLOWPOKE_WELL_B2F_TM_RAIN_DANCE
