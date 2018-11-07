    const_def 2 ; object constants
	const PEBBLEGYM_YOUNGSTER
	const PEBBLEGYM_BUG_CATCHER
	
PebbleGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerYoungsterMikey:
	trainer YOUNGSTER, JIML, EVENT_BEAT_YOUNGSTER_MIKEY, YoungsterMikeySeenText, YoungsterMikeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterMikeyAfterText
	waitbutton
	closetext
	end

TrainerBugCatcherDon:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugCatcherDonSeenText, BugCatcherDonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDonAfterText
	waitbutton
	closetext
	end
	
GirlScript:
    faceplayer
    opentext
    writetext Girltext
    waitbutton
    closetext
    end	
	
GymSign:
    jumptext GymText

WindownSign:
    jumptext WindownText	
	
YoungsterMikeySeenText:
	text "¡Bienvenido al"
	line "mejor GYM en la"
	cont "región!"

	para "¡Soy Jim el"
	line "Líder de verdad!"
	
	para "No creas a esos"
	line "tontos que dicen"
	cont "que no soy mas"
	cont "que un hablador,"
	
	para "¡Ni la Liga"
	line "#MON puede"
	cont "frenar al gran"
	cont "JIM!"
	done

YoungsterMikeyBeatenText:
	text "Wow viejo, eso"
	line "es jugar sucio,"
	
	para "No doy medallas"
	line "a tramposos."
	done

YoungsterMikeyAfterText:
	text "Lo siento,"
	line "pero como líder"
	cont "no apruebo las"
	cont "trampas."
	done

BugCatcherDonSeenText:
	text "¡Jim me pagó"
	line "20 monedas por"
	cont "pelear!"
	done

BugCatcherDonBeatenText:
	text "Espera,"
	line "¿Perdí dinero?"
	done

BugCatcherDonAfterText:
	text "Jim ni medallas"
	line "tiene."

	para "La lider anterior"
	line "se llevó todo."
	done	
	
GymText:
    text "¡Nadie puede"
    line "vencer justamente"
    cont "a Jim!"
    done	
	
WindownText:
    text "Esta roto."
	
	para "Jim debió usar"
    line "esta ventana"
    cont "para entrar."
    done	
	
Girltext:
    text "Jim tomó prestado"
    line "a mi Crimske,"
	
    para "Prestado hace un"
	line "mes."
	done

    	

PebbleGym_MapEvents:   
	db 0, 0 ; filler

	db 2 ; warp events
    warp_event  4, 9, NEW_BARK_TOWN, 6
	warp_event  5, 9, NEW_BARK_TOWN, 6
	db 0 ; coord events
	
	db 3 ; bg events
	bg_event  3,  7, BGEVENT_READ, GymSign
	bg_event  6,  7, BGEVENT_READ, GymSign
	bg_event  5,  0, BGEVENT_READ, WindownSign
	
	db 3 ; object events
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerYoungsterMikey, -1
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDon, -1
	object_event  1,  8, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GirlScript, -1
	
	