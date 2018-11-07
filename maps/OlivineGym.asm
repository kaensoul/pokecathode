	const_def 2 ; object constants
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUY
	const OLIVINEGYM_ONEGUY
	const OLIVINEGYM_ANOTHERGUY

OlivineGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OlivineGymJasmineScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	opentext
	setevent EVENT_BEAT_WHITNEY
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	checkcode VAR_BADGES
	writetext Givepsychictm
	buttonsound
	verbosegiveitem TM_PSYCHIC_M
	writetext Explicapsychic
	waitbutton
	closetext
	end
	
.FightDone:
	opentext
	writetext WhitneyYouMeanieText
	waitbutton
	closetext
	end

OlivineGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .OlivineGymGuyWinScript
	opentext
	writetext OlivineGymGuyText
	waitbutton
	closetext
	end

.OlivineGymGuyWinScript:
	opentext
	writetext OlivineGymGuyWinText
	waitbutton
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext WHITNEY, WHITNEY1, MEM_BUFFER_1
	jumpstd gymstatue2
	
TrainerGentlemanAlfred:
	trainer GENTLEMAN, ALFRED, EVENT_BEAT_GENTLEMAN_ALFRED, GentlemanAlfredSeenText, GentlemanAlfredBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanAlfredAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorHuey:
	trainer SAILOR, HUEY1, EVENT_BEAT_SAILOR_HUEY, SailorHueySeenText, SailorHueyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
    writetext Afterheybattletext
	waitbutton
	closetext
	end

SailorHueySeenText:
	text "Pluto me rescató"
	line "de un nauflagio,"
	
	para "¡Supo donde"
	line "fallaría el"
	cont "barco!"
	done

SailorHueyBeatenText:
	text "Nada mal"
	line "grumete."
	done
	
Afterheybattletext:
    text "Pluto parece"
    line "saber todo lo que"
    cont "va a pasar, pero"
    cont "el dice que mas"
    cont "bien lo que podría"
    cont "pasar."
    done	

GentlemanAlfredSeenText:
	text "El mundo no esta"
	line "listo para Pluto."
	done

GentlemanAlfredBeatenText:
	text "No estaba listo"
	line "para esto."
	done

GentlemanAlfredAfterBattleText:
	text "Los estantes no"
	line "son especiales,"
	cont "pero algunos"
	cont "tienen objetos de"
	cont "otro mundo que"
	cont "los hace funcionar"
	cont "de formas que no"
	cont "podemos explicar."
	done	

WhitneyBeforeText:
    text "Hola <PLAYER>,"
	line "supongo que vienes"
	cont "a enfrentar tu"
	cont "destino."
	
	para "Solamente soy un"
	line "paso mas en tu"
	cont "camino a ser"
	cont "campeón."
	
	para "Pero no puedo"
	line "decirte si este"
	cont "es realmente el"
	cont "momento en el cual"
	cont "me derrotas."
	
	para "Conozco tu destino"
	line "pero es mejor que"
	cont "lo descubras con"
	cont "el tiempo."
	
	para "¡Es hora que"
	line "pruebes tu destino"
	cont "contra Pluto!"
	
	para "¡Líder de ciudad"
	line "Meteor Shower y"
	cont "uno de tus desti-"
	cont "dos adversarios."
	done

WhitneyShouldntBeSoSeriousText:	
    text "Fue un places"
	line "ser parte de tu"
	cont "historia."
	
	para "Pero a decir"
	line "verdad, nada esta"
	cont "escrito aun."
	
	para "Hay miles de"
	line "caminos que"
	cont "puedes tomar y"
	cont "espero que tomes"
	cont "el mejor."
	done
	
PlayerReceivedPlainBadgeText:
    text "¡<PLAYER> recibió"
	line "la medalla"
	cont "Andrómeda!"
	done
	
Givepsychictm:
    text "Sin importar el"
    line "camino que tomes,"
    cont "espero que esto"
    cont "te sea útil."	
	done
	
Explicapsychic:
    text "Utilízala para"
	line "que tus #MON"
	cont "puedan liberar"
	cont "todo su poder"
	cont "mental."
	done
	
WhitneyYouMeanieText:
    text "Me gusta ver el"
    line "cielo nocturno y"
    cont "recordar mi"
    cont "antiguo hogar."
    done	
	
OlivineGymGuyText:
	text "¡Futuro campeón!"
	
	para "Este lugar es"
	line "pequeño pero ex-"
	cont "traño, ya veras."

	para "En cuanto a los"
	line "#MON de tipo"
	cont "Psíquico lo mejor"
	cont "es jugar con sus"
	cont "miedos."
	done

OlivineGymGuyWinText:
	text "No tengo ni idea"
	line "de lo que dice"
	cont "Pluto, pero como"
	cont "sea, bien hecho."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	db 4 ; object events
	object_event  5,  1, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, -1
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuyScript, -1
    object_event  2,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorHuey, -1
	object_event  7,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanAlfred, -1
