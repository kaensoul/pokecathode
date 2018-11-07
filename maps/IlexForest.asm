	const_def 2 ; object constants
	const ILEXFOREST_FARFETCHD
	const ILEXFOREST_YOUNGSTER1
	const ILEXFOREST_BLACK_BELT
	const ILEXFOREST_ROCKER
	const ILEXFOREST_POKE_BALL1
	const ILEXFOREST_KURT
	const ILEXFOREST_LASS
	const ILEXFOREST_YOUNGSTER2
	const ILEXFOREST_POKE_BALL2
	const ILEXFOREST_POKE_BALL3
	const ILEXFOREST_POKE_BALL4

IlexForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IlexForestCharcoalApprenticeScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .AlreadyGotCut
	writetext Text_CharcoalMasterIntro
	buttonsound
	verbosegiveitem BLU_APRICORN
	setevent EVENT_GOT_HM01_CUT
	writetext Text_CharcoalMasterOutro
	waitbutton
	closetext
	end
	
.AlreadyGotCut:
	writetext Text_CharcoalMasterTalkAfter
	waitbutton
	closetext
	end
	
IlexForestCharcoalMasterScript:
	jumptextfaceplayer Someonetextforest

IlexForestHeadbuttGuyScript:
	jumptextfaceplayer Text_HeadbuttIntro

TrainerBugCatcherWayne:
	trainer BUG_CATCHER, WAYNE, EVENT_BEAT_BUG_CATCHER_WAYNE, BugCatcherWayneSeenText, BugCatcherWayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherWayneAfterBattleText
	waitbutton
	closetext
	end

IlexForestLassScript:
    faceplayer
	opentext
	checkevent EVENT_GOT_TM02_HEADBUTT
	iftrue .alreadygotceramelops
	writetext Text_IlexForestLass
	yesorno
	iffalse .RefusedCeramelops
	writetext Giveceramelops
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoomCeramelops
	writetext ReciCeramelops
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke BULBASAUR, 5
	writetext PostgiveCera
	waitbutton
	setevent EVENT_GOT_TM02_HEADBUTT
	closetext
	end

.alreadygotceramelops:
	writetext Postceragive
	waitbutton
	closetext
	end
	
.NoRoomCeramelops:
	writetext NeedspaceCera
	waitbutton
	closetext
	end

.RefusedCeramelops:
	writetext Butwhyno
	waitbutton
	closetext
	end	
	
IlexForestFarfetchdScript:
    jumptext Eyesdrasilltext	

IlexForestRevive:
	itemball REVIVE

IlexForestXAttack:
	itemball LEAF_STONE

IlexForestAntidote:
	itemball BERSERK_GENE

IlexForestEther:
	itemball ETHER

IlexForestHiddenEther:
	hiddenitem ETHER, EVENT_ILEX_FOREST_HIDDEN_ETHER

IlexForestHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ILEX_FOREST_HIDDEN_SUPER_POTION

IlexForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ILEX_FOREST_HIDDEN_FULL_HEAL

IlexForestSignpost:
	jumptext IlexForestSignpostText

IlexForestShrineScript:
	jumptext shrinetext
	
Eyesdrasilltext:
    text "… … …"
	
	para "No hace ruido"
	line "alguno."
	
	para "…"
	
	para "Sientes que te"
	line "observan desde"
	cont "todo lugar."
	done
	
Text_CharcoalMasterIntro:
	text "Hola joven, no"
	line "muchos pasan a"
	cont "ver a este viejo"
	cont "saco de huesos."
	
	para "Te voy a contar"
	line "un secreto,"
	
	para "este Eyesdrasill"
	line "es el bosque,"
	cont "a vivido por más"
	cont "de dos siglos."
	
	para "Fue el compañero"
	line "de mi abuelo,"
	cont "quien lo plantó"
	cont "en este lugar que"
	cont "no era más que un"
	cont "desierto en ese"
	cont "entonces."
	
	para "Los Eyesdrasill"
	line "pueden vivir por"
	cont "milenios, pero"
    cont "después de sus"
	cont "primeros 100 años"
	cont "necesitan esta-"
	cont "blecerse en un"
	cont "único lugar."
	
	para "Pierden la capaci-"
	line "dad de moverse y"
	cont "necesitan la ayuda"
	cont "de otros para"
	cont "sobrevivir."
	
	para "Si todo va bien"
	line "pueden crecer por"
	cont "varios kilómetros"
	cont "en ese estado."
	
	para "Me deje llevar y"
	line "hable sin parar."
	
	para "Ten esta Leña, así"
	line "no sentidas que"
    cont "me escuchaste por"
	cont "nada."
	done

Text_CharcoalMasterOutro:
	text "A Eyesdrasill se"
	line "le caen ramas todo"
	cont "el tiempo,"

	para "las junto y"
	line "se las vendo al"
	cont "instructor de"
	cont "pesca."
	done

Text_CharcoalMasterTalkAfter:
	text "Eyesdrasill estuvo"
	line "muy inquieto la"
	cont "noche que esa"
	cont "cueva mas al sur"
	cont "apareció."

	para "Creo que sus"
	line "raíces sientieron"
	cont "la presencia de"
	cont "un #MON más"
	cont "fuerte que los de"
	cont "esta zona."

	para "Y recuerda que el"
	line "legendario Guerre-"
	cont "ro negro vive muy"
	cont "cerca."
	
	para "El #MON que"
	line "esta bajo tierra"
	cont "en esa cueva debe"
	cont "tener un poder"
	cont "inimaginable."
	done

Text_HeadbuttIntro:
    text "Quiero ver que hay"
	line "arriba, pero no"
	cont "quiero tener que"
	cont "devolverme todo el"
	cont "camino."
	done

Text_HeadbuttOutro:
	text "Rattle trees with"
	line "HEADBUTT. Some-"
	cont "times, sleeping"
	cont "#MON fall out."
	done

Text_IlexForestLass:
	text "Ayudo a mi abuelo"
	line "a cuidar del"
	cont "bosque,"
	
	para "mis #MON son"
	line "de gran ayuda,"
	cont "Cabbit, Cubblebee"
    cont "y Ceramelops"
    cont "hacen un gran"
    cont "trabajo."

    para "Cabbit viaja bajo"
    line "tierra plantando"
    cont "semillas,"

    para "Cubblebee polini-"
    line "za las flores,"

    para "y Ceramelops crea"
    line "un abono que"
    cont "mejora la calidad"
	cont "de cualquier baya"
	cont "o fruta más que"
	cont "cualquier otro."
	
	para "Pero creo que"
	line "Ceramelops se"
	cont "aburre mucho con"
	cont "este estilo de"
	cont "vida tan calmo."
	
	para "Aunque aprecio"
	line "mucho el trabajo"
	cont "de Ceramelops,"
	cont "su felicidad"
	cont "debería ser"
	cont "prioridad."
	
	para "Tu pareces un"
	line "buen entrenador,"
	
	para "¿Podrías llevar"
	line "de aventuras a"
	cont "Ceramelops?"
	done
	
Giveceramelops:
    text "¡Muchas gracias!"
	line "Ceramelops esta"
	cont "muy contento."
	done

NeedspaceCera:
    text "Pero, no puedes"
    line "llevar mas #-"
    cont "MON,"
    
    para "¿Podrías volver"
    line "por él luego?"
    done   	
	
Butwhyno:
    text "Bueno, sino"
	line "quieres, tampoco"
	cont "te voy a obligar,"
	
	para "no puedo forzar"
	line "una amistad."
	done
	
ReciCeramelops:
	text "¡<PLAYER> y"
	line "Ceramelops ahora"
	cont "son amigos!"
	done
	
PostgiveCera:
    text "Los #MON aman"
    line "luchar pero ese"
    cont "Ceramelops nació"
    cont "para combatir."
    done

Postceragive:
    text "Pienso cuidar del"
    line "bosque cuando el"
    cont "abuelo nos deje."	
	done
	
IlexForestSignpostText:
	text "El puesto de"
	line "guardia esta en"
	cont "reparaciones."
	
	para "Puede tomar unos"
	line "6 meses."
	done

Text_IlexForestShrine:
	text "There is a weid"
	line "Picture."

	para "Looks like a"
	line "Turtle with a"
	cont "Snake on his back."
	done
	
shrinetext:
    text "Dentro se pueden"
    line "ver fotos en"
	cont "blanco y negro."
	
	para "Son de un hombre"
	line "y un enorme"
	cont "#MON Planta"
	cont "en medio del"
	cont "desierto."
	done
	

BugCatcherWayneSeenText:
	text "¡Mis #MON"
	line "bicho te van a"
	cont "picar!"
	done

BugCatcherWayneBeatenText:
	text "Debería ser"
	line "entrenador tipo"
	cont "Dragón."
	done

BugCatcherWayneAfterBattleText:
	text "Los #MON bicho"
	line "no son fáciles"
	cont "de usar."
	done
	
Someonetextforest:
    text "Este bosque es"
    line "una reserva"
    cont "nacional."

    para "Muchos #MON"
    line "que vivian en lo"
    cont "que ahora son"
    cont "ciudades,"
    
	para "tuvieron que"
	line "venir a vivir"
	cont "aquí."
	done

IlexForest_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 25,  5, ILEX_FOREST_AZALEA_GATE, 1

	db 0 ; coord events

	db 5 ; bg events
	bg_event  7, 51, BGEVENT_READ, IlexForestSignpost
	bg_event  4, 23, BGEVENT_ITEM, IlexForestHiddenEther
	bg_event 22,  3, BGEVENT_ITEM, IlexForestHiddenSuperPotion
	bg_event 17,  7, BGEVENT_ITEM, IlexForestHiddenFullHeal
	bg_event 22,  4, BGEVENT_UP, IlexForestShrineScript

	db 10 ; object events
	object_event 17, 42, SPRITE_PRIMEAPE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IlexForestFarfetchdScript, -1
	object_event 16, 43, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IlexForestCharcoalApprenticeScript, -1
	object_event  0,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestCharcoalMasterScript, -1
	object_event 10, 49, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestHeadbuttGuyScript, -1
	object_event 17, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestRevive, EVENT_ILEX_FOREST_REVIVE
	object_event  8, 44, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IlexForestLassScript, -1
	object_event  7, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherWayne, -1
	object_event 26, 44, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestXAttack, EVENT_ILEX_FOREST_X_ATTACK
	object_event 19,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestAntidote, EVENT_ILEX_FOREST_ANTIDOTE
	object_event  2, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestEther, EVENT_ILEX_FOREST_ETHER
