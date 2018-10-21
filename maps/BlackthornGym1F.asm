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
    text "<PLAYER> received"
	line "Thermal Badge."
	done	

ClairIntroText:
	text "JYO HO HO!"

	para "How ya're doin"
	line "brat?"

	para "Ya look like"
	line "someone who love"
	cont "fun battles and"

	para "don't know when"
	line "to give up, if"
	cont "so this place"
	cont "suit ya."

	para "Zhis Snowy Town's"
	line "GYM and im zhe"
	cont "leader here!"
    cont "Francis!"
	
	para "Here we all love"
	line "to battle until"
	cont "we only want to"
	
	para "drink and rest"
    line "in the thermal"
	cont "water with our"
	cont "friends!"
	done

ClairWinText:
	text "Nice done brat,"
    line "ya lucky ima not"
	cont "as young."
	done

ClairText_TooMuchToExpect:
	text "If ya could beat"
	line "me, then sis Irene"
	cont "got no chance."

	para "Yo're a star"
	line "kiddo."
	done

BlackthornGymClairText_YouKeptMeWaiting:
	text "YO HO HO HO!"
	line "You won this too."
	done

BlackthornGymText_ReceivedTM24:
	text "<PLAYER> received"
	line "TM48 Fire Punch."
	done

BlackthornGymClairText_DescribeTM24:
	text "Fire Punch is"
	line "what it say, a"
	cont "punch with fire,"

	para "most #MON with"
	line "arms can learn it,"
	cont "and it got a"
	cont "chance to burn."
	
	para "Cool, i mean Hot,"
	line "right?"
	done
	
CooltrainermPaulSeenText:
	text "We aren't cool"
	line "trainers, we're"
	cont "Hot Trainers!"
	done

CooltrainermPaulBeatenText:
	text "I feel so hot"
	line "right now!"
	done

CooltrainermPaulAfterBattleText:
	text "Losing isn't that"
	line "bad, Francis give"
	cont "us drinks to cheer"
	cont "up every time we"

	para "lose a battle,"
	line "but when we win"
	cont "too, so whatever."
	done

CooltrainermMikeSeenText:
	text "Don't touch the"
	line "water, is too"
	cont "hot!"
	done

CooltrainermMikeBeatenText:
	text "I'm going to fall"
	line "in the pool!"
	done

CooltrainermMikeAfterBattleText:
	text "That was fun, you"
	line "may be better than"
	cont "the last trainer."
	done

CooltrainerfLolaSeenText:
	text "I'm not sure i"
	line "should call myself"
    cont "a hot trainer, it"
	cont "sound dirty."
	done

CooltrainerfLolaBeatenText:
	text "I think you're"
	line "hot."
	done

CooltrainerfLolaAfterBattleText:
	text "I think lava would"
	line "fit better a Fire"
	cont "GYM, but Francis"
	
	para "let his daughter"
	line "play here."
	done

BlackthornGymGuyText:
	text "Hey future champ,"
	line "you look like"
	cont "someone than will"
    cont "win easly."
	
	para "Everyone know how"
	line "to beat a Fire"
	cont "#MON, you"

	para "only need to throw"
	line "some ground or"
	cont "rocks at them,"

	para "but you must be"
	line "carefull with the"
	cont "Thermaque line,"
	cont "they know many"

	para "different moves"
	line "than let them beat"
	cont "most #MON from"
	cont "the mountine, but"

	para "they don't know"
	line "how to beat Water"
	cont "types, they just"
	cont "chill with them."
	done

BlackthornGymGuyWinText:
	text "So you did beat"
	line "Francis, good job,"
    cont "for someone from"
	
	para "a region so far"
	line "away you know how"
	cont "to fight with and"

	para "against Kita's"
	line "#MON!"
	
	para "But is not like"
	line "you will be our"
    cont "first champion"
    cont "from Johto."	
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
