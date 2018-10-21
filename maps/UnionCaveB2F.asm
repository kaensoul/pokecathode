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
	text "Un entrenador"
	line "cool va donde"
	cont "es cool para"
	
	para "seguir siendo"
	line "cool."
	done

CooltrainermNickBeatenText:
	text "No cool, viejo."
	done

CooltrainermNickAfterBattleText:
	text "Eres más cool"
	line "que yo."
	done

CooltrainerfGwenSeenText:
	text "Ni te imaginas"
	line "los #MON"
	cont "raros que atrapé"
	cont "aquí."
	done

CooltrainerfGwenBeatenText:
	text "¿Como derrotaste"
	line "a mi #MON"
	cont "raro?"
	done

CooltrainerfGwenAfterBattleText:
	text "Odio a Rack,"
	line "un #MON"
	cont "común no debería"
	
	para "ser tan fuerte"
	line "o genial."
	done

CooltrainerfEmmaSeenText:
	text "¡Si gano tendre-"
	line "mos una cita!"
	done

CooltrainerfEmmaBeatenText:
	text "¿No te gustan"
	line "las chicas lindas?"
	done

CooltrainerfEmmaAfterBattleText:
	text "¡Bu-bueno, no"
	line "es como si me"
	cont "gustaras ni nada!"
	done
	
WantChillma:
    text "En Pebble Town"
    line "me dieron este"
    cont "feo oso,"

    para "¡que ni ganar"
    line "puede!"
	
    para "Una hermosa dama"
    line "como yo debería"
	cont "utilizar única-"
	cont "mente los mejores"
	
	para "#MON, no"
	line "perder tiempo"
	cont "con esto."
	
	para "¿Me harías el"
	line "favor de des-"
	cont "hacerte de él"
	cont "por mí?"
	done
	
Givechillma:
    text "Bien, por alguna"
	line "razón si intento"
	cont "soltarlo trata"
	
	para "de seguirme, que"
	line "fastidioso."
	done 
	
Butwhy:
    text "¿Qué?"
	line "¿Osás decirme que"
	cont "no?"
	
	para "Mi padre te"
	line "mataría de estar"
	cont "aquí."
	done
	
Recichillma:
    text "¡<PLAYER> recibió"
	line "Chillma!"
	done	
    	
Needspace:
    text "Parece ser que"
    line "no tienes espacio"
    cont "para mas basura."
	
	para "Vuelve luego para"
	line "llevarte esta"
	cont "bestia inútil."
    done	
		
Postgive:
    text "Pronto iré a"
	line "Sinnoh, ahí mi"
	cont "padre me dará un"
	
	para "#MON real como"
	line "Garchomp."
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
