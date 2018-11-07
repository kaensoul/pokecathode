	const_def 2 ; object constants
	const OLIVINEGOODRODHOUSE_FISHING_GURU

OlivineGoodRodHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GoodRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .AlreadyGotItem
	checkitem OLD_ROD
	iffalse .SinCumplirQuest
	writetext OfferGoodRodText
	yesorno
	iffalse .DontWantIt
	writetext GiveGoodRodText
	buttonsound
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoomOcto
	writetext ReciOcto
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke NIDOKING, 10
	writetext GaveGoodRodText
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.DontWantIt:
	writetext DontWantGoodRodText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext HaveGoodRodText
	waitbutton
	closetext
	end

.SinCumplirQuest:
    writetext Veporoldrod
	waitbutton
	closetext
	end

.NoRoomOcto:
    writetext Sinlugar
	waitbutton
   	closetext
	end
	
Veporoldrod:
    text "¿Un entrenador"
	line "sin una caña de"
	cont "pescar?"
	
	para "¿Que sigue?,"
	line "¿un Octovase sin"
	cont "su vasija?"
	done 

ReciOcto:
    text "¡Recibiste un"
    line "Octovase!"
    done	
	
Sinlugar:
    text "Oh, pero no"
    line "puedes cargar"
    cont "mas #MON,"

    para "vuelve cuando"
    line "tengas espacio."	
	done
	
OfferGoodRodText:
	text "Veo que eres"
	line "amigo del maestro"
	cont "de pesca."

	para "En esta zona no"
	line "puedes pescar,"
	cont "pero no dejes que"
    cont "eso te desanime."
	
	para "Si quieres te"
	line "puedo dar un"
	cont "#MON del"
	cont "mar para que veas"
	cont "lo que puedes"
	cont "conseguir."
	done

GiveGoodRodText:
	text "Ok, cuidalo bien."
	done

GaveGoodRodText:
	text "Octovase es un"
	line "#MON muy"
	cont "resistente."
	done

DontWantGoodRodText:
	text "Bien, pescar tus"
	line "propios #MON"
	cont "es mas divertido."
	done

HaveGoodRodText:
	text "¿Como va la"
	line "pesca?"
	done

OlivineGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, OLIVINE_CITY, 5
	warp_event  3,  7, OLIVINE_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoodRodGuru, -1
