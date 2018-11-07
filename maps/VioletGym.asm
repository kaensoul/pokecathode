	const_def 2 ; object constants
	const VIOLETGYM_FALKNER
	const VIOLETGYM_YOUNGSTER1
	const VIOLETGYM_YOUNGSTER2
	const VIOLETGYM_GYM_GUY

VioletGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletGymFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .FightDone
	writetext UnknownText_0x68473
	waitbutton
	closetext
	winlosstext UnknownText_0x6854a, 0
	loadtrainer FALKNER, FALKNER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER
	opentext
	writetext UnknownText_0x685af
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	checkcode VAR_BADGES
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	writetext UnknownText_0x685c8
	buttonsound
	verbosegiveitem TM_HIDDEN_POWER
	iffalse .NoRoomForMudSlap
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext UnknownText_0x68648
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext UnknownText_0x68735
	waitbutton
.NoRoomForMudSlap:
	closetext
	end

TrainerBirdKeeperRod:
	trainer YOUNGSTER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRodAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperAbe:
	trainer GUITARIST, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperAbeAfterBattleText
	waitbutton
	closetext
	end

VioletGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .VioletGymGuyWinScript
	writetext VioletGymGuyText
	waitbutton
	closetext
	end

.VioletGymGuyWinScript:
	writetext VioletGymGuyWinText
	waitbutton
	closetext
	end

VioletGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext FALKNER, FALKNER1, MEM_BUFFER_1
	jumpstd gymstatue2

UnknownText_0x68473:
	text "¿Otro retador?"

	para "El abuelo me dijo"
	line "que pocos tienen"
	cont "el valor de luchar"

	para "contra los líderes"
	line "de Kita, pero eres"
	cont "el tercer retador"
    cont "esta semana."
	
    para "Que molesto."

	para "Como sea, soy Nate"
	line "líder de Cloudy"
	cont "City."

	para "¡Espero que no me"
	line "hagas perder el"
	cont "tiempo!"
	done

UnknownText_0x6854a:
	text "Denme un respiro…"
	done

UnknownText_0x685af:
	text "¡<PLAYER> recibió"
	line "la medalla"
	cont "Vigilante!"
	done

UnknownText_0x685c8:
	text "Estoy en muy mala"
	line "racha, algún día"
	cont "conseguiré mi"
	cont "revancha."

	para "Ten esto como"
	line "muestra de amis-"
	cont "tad."
	done

UnknownText_0x68648:
	text "Tus #MON"
	line "tienen un gran"
	cont "potencial, espero"
	cont "que esta TM ayude"

	para "a liberar ese"
	line "poder antes de"
	cont "nuestro próximo"
	cont "encuentro."
	done

UnknownText_0x68735:
	text "Escuché de un"
	line "torneo donde los"
	cont "mejores del país"

	para "lucharan el"
	line "próximo año."

	para "¿O debería decir"
	line "lucharemos?"

	para "Creo que extraño"
	line "luchar libremente"
	cont "como en la secun-"
	cont "daria."
	done

BirdKeeperRodSeenText:
	text "¿Crees poder"
	line "contra los más"
	cont "rudos de la acade-"
	cont "mia #MON?"
	done

BirdKeeperRodBeatenText:
	text "Espero que Nate no"
	line "se enoje conmigo."
	done

BirdKeeperRodAfterBattleText:
	text "Nosotros éramos"
	line "los héroes en la"
	cont "academia, aunque"

	para "pásabamos todo el"
	line "tiempo en deten-"
	cont "ción."
	done

BirdKeeperAbeSeenText:
	text "¡Oye escoria,"
	line "ven y pelea"
	cont "maldito!"
	done

BirdKeeperAbeBeatenText:
	text "¡¿Pe-pero"
	line "qué?!"
	done

BirdKeeperAbeAfterBattleText:
	text "Diablos, tendré"
	line "que entrenar"
	cont "más."
	done

VioletGymGuyText:
	text "¡Hey futuro"
	line "campeón!"

	para "Todos aquí usan"
	line "#MON tipo"
	cont "Normal,"

	para "la neutralidad de"
	line "estos #MON"
	cont "puede ser un pro-"
	cont "blema,"

	para "Los Tipo Lucha son"
	line "los únicos que"
	cont "causan buen daño a"
	cont "los Normales."

	para "Pero claro, no es"
	line "como que usen"
	cont "únicamente tipos"
	cont "puros."
	done

VioletGymGuyWinText:
	text "No es normal ver"
	line "a alguien ganar"
    cont "como tu lo haces."
	
	para "Serás una estrella"
	line "muy pronto."
	done

VioletGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 13, BGEVENT_READ, VioletGymStatue
	bg_event  6, 13, BGEVENT_READ, VioletGymStatue

	db 4 ; object events
	object_event  5,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletGymFalknerScript, -1
	object_event  1,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRod, -1
	object_event  8,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperAbe, -1
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymGuyScript, -1
