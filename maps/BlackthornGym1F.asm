	const_def 2 ; object constants
	const BLACKTHORNGYM1F_CLAIR
	const BLACKTHORNGYM1F_COOLTRAINER_M1
	const BLACKTHORNGYM1F_COOLTRAINER_M2
	const BLACKTHORNGYM1F_COOLTRAINER_F
	const BLACKTHORNGYM1F_GYM_GUY

BlackthornGym1F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders

.Boulders:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $3b ; fallen boulder 2
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $3a ; fallen boulder 1
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $3b ; fallen boulder 2
.skip3
	return

BlackthornGymClairScript:
	faceplayer
	opentext
	checkflag ENGINE_RISINGBADGE
	checkevent EVENT_BEAT_CLAIR
	iftrue .FightDone
	writetext ClairIntroText
	waitbutton
	closetext
	winlosstext ClairWinText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	setflag ENGINE_RISINGBADGE
	opentext
	writetext Text_ReceivedThermalBadge
	playsound SFX_GET_BADGE
	waitsfx
	writetext BlackthornGymClairText_YouKeptMeWaiting
	buttonsound
	verbosegiveitem TM_FIRE_PUNCH
	opentext
	writetext BlackthornGymClairText_DescribeTM24
	waitbutton
	closetext
	end

.FightDone:
	writetext ClairText_TooMuchToExpect
	waitbutton
	closetext
	end

TrainerCooltrainermPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainermPaulSeenText, CooltrainermPaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermPaulAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainermMikeSeenText, CooltrainermMikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermMikeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLolaAfterBattleText
	waitbutton
	closetext
	end

BlackthornGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuyWinScript
	writetext BlackthornGymGuyText
	waitbutton
	closetext
	end

.BlackthornGymGuyWinScript:
	writetext BlackthornGymGuyWinText
	waitbutton
	closetext
	end

BlackthornGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext CLAIR, CLAIR1, MEM_BUFFER_1
	jumpstd gymstatue2
	
Text_ReceivedThermalBadge:
    text "<PLAYER> recibió"
	line "la Medalla"
	cont "Thermal."
	done	

ClairIntroText:
	text "¡JYO HO HO!"

	para "¿Qué cuentas"
	line "chaval?"

	para "Te vez como"
	line "alguien que dis-"
	cont "fruta de batallas"

	para "intensas y no"
	line "sabe cuando tirar"
	cont "la toalla."
	
	para "¡Este lugar es"
	line "Perfecto pa' tí!"

	para "¡El GYM de Snowy"
	line "City es el lugar"
	cont "y Francis el"
    cont "hombre!"
	
	para "Lucha hasta des-"
	line "fallecer y bebe"
	cont "hasta atragantar."
	
	para "¡Luchemos chaval!"
	done

ClairWinText:
	text "HYA HA HAHA"
    line "Bien hecho chaval."
	done

ClairText_TooMuchToExpect:
	text "Me hubiera gustado"
	line "luchar contra ti"
	cont "cuando era joven."

	para "Mi 'mana Irene"
	line "no tendría oportu-"
	cont "nidad contra tí."
	
	para "Serás una estralla"
	line "chaval."
	done

BlackthornGymClairText_YouKeptMeWaiting:
	text "¡YO HO HO HO!"
	line "Ten esto campeón."
	done

BlackthornGymText_ReceivedTM24:
	text "<PLAYER> recibió"
	line "TM48 Fire Punch."
	done

BlackthornGymClairText_DescribeTM24:
	text "Un Puño Fuego es"
	line "un Puño con Fuego,"
	cont "¿Qué más?"

	para "A de quemar, pos"
	line "es con fuego,"
	cont "¡HYA HA HAHA!"
	done
	
CooltrainermPaulSeenText:
	text "¡No somos Cool"
	line "trainers, somos"
	cont "Hot Trainers!"
	done

CooltrainermPaulBeatenText:
	text "Que calor, bro."
	done

CooltrainermPaulAfterBattleText:
	text "No me importa"
	line "perder, luego nos"
	cont "anima Francis con"
	cont "unos tragos."

	para "Nos da también"
	line "al ganar, por lo"
	cont "que da igual."
	done

CooltrainermMikeSeenText:
	text "¡No toques el"
	line "agua, esta muy"
	cont "caliente!"
	done

CooltrainermMikeBeatenText:
	text "¡Ahhhhh!"
	line "¡Caigo al agua!"
	done

CooltrainermMikeAfterBattleText:
	text "La verdad, el agua"
	line "caliente es"
	cont "relajante."
	done

CooltrainerfLolaSeenText:
	text "Se supone que nos"
	line "deberiamos llamar"
    cont "Hot-trainers,"
	
	para "pero como que"
	line "suena sucio,"
	cont "¿No?"
	done

CooltrainerfLolaBeatenText:
	text "Creo que eres"
	line "caliente."
	done

CooltrainerfLolaAfterBattleText:
	text "Algo de lava"
	line "tal vez sería"
	cont "mejor para un GYM"
	cont "tipo fuego."
	
	para "Pero Francis deja"
	line "a su hija jugar"
	cont "aquí."
	done

BlackthornGymGuyText:
	text "Oye, futuro cam-"
	line "peón, este GYM"
	cont "no podrá contra"
    cont "usted."
	
	para "Todo mundo sabe"
	line "que el Agua y la"
	cont "Tierra pueden"
    cont "apagar el fuego,"
	
	para "las Rocas son"
	line "otra opción."

	para "Pero recuerda que"
	line "Thermaque puede"
	cont "usar Agua para"
	cont "defenderse."

	para "Eso les ayuda a"
	line "sobrevivir en"
	cont "las montañas."

	para "Pero no tienen"
	line "idea de como"
	cont "luchar contra las"
	cont "criaturas marinas."
	done

BlackthornGymGuyWinText:
	text "Te dije que"
	line "Francis no sería"
    cont "rival para usted,"
	cont "campeón."
	
	para "Me recuerdas a"
	line "ese otro chico"
	cont "de Johto que se"

	para "hizo campeón de"
	line "Kita."
	done

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	db 5 ; object events
	object_event  0,  0, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymClairScript, -1
	object_event  0,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermMike, -1
	object_event  4,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermPaul, -1
	object_event  9,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLola, -1
	object_event  3, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuyScript, -1
