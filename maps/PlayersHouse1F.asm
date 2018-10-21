	const_def 1 ; object constants
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


MomScript:
	faceplayer
	opentext
	writetext Innwoman
	buttonsound
	closetext
	end

MomScript2:
    faceplayer
    opentext
    writetext Innkitch
    buttonsound
    closetext
    end	
	
MomScript3:
    faceplayer
    opentext
    writetext Guy
    buttonsound
    closetext
    end	
	
MomScript4:
    faceplayer
    opentext
    writetext Bugger
    buttonsound
    closetext
    end
	
NeighborScript:
	faceplayer
	opentext
	writetext Neighbor
	buttonsound
	closetext
	end

TVScript:
	jumptext TVText

RadioScript:
	jumptext RadioText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText
	
FireScript:
    jumptext FireText	
	

Neighbor:
    text "Ese Jim siempre"
	line "haciendo tonterías"
	cont "y arruinando mis"
	cont "cosas."
	done

Innwoman:
    text "¿Viniste solo"
	line "niño?"
	
	para "Todos debemos"
	line "crecer algún día,"
	
	para "a los 10 mis"
	line "hijos dejaron"
	cont "casa para ganarse"
	cont "la vida."
	done	
	
Innkitch:
    text "Odio trabajar en"
    line "esta posada."

	para "Pero como apesto"
	line "en las batallas"
	cont "#MON,"
	
	para "no tengo opción."
	done

Guy:
    text "La profesora me"
	line "dió un #MON"
	cont "y un montón de"
	cont "cosas geniales,"
	
	para "pero…"
	
	para "No creo ser"
	line "capaz de luchar."
	
    para "Tengo miedo de"
	line "perder."
	
	para "No quiero perder"
	line "dinero o que mi"
	cont "compañero me"
	cont "odie…"
	
	para "Volvería a casa,"
	line "pero mi papá se"
	cont "pondría triste…"
	
	para "No quiero decep-"
	line "cionarlo."
	
	para "Me gustaría que"
	line "la vida fuera"
	cont "un videojuego…"
	done

Bugger:
    text "Viejo, ese Jim,"
	line "viejo, tomó"
	cont "control del GYM,"
	
	para "¡Viejo!"
	
	para "Pero viejo, la"
	line "Liga #MON no"
	cont "se interesa en"
	cont "él, viejo."
	
	para "No pierdas"
	line "tiempo con él,"
	cont "viejo."
	done

RadioText:
	text "Alguien escribió"
    line "su nombre con"
	cont "marcadoe rojo."
	
	para "¡JIM!"
	done

SinkText:
	text "Eh visto Trubbish"
	line "más limpios que"
	cont "esto."
	done

FridgeText:
	text "Veamos que hay"
	line "para comer…"

	para "¡Un Biscby se me"
	line "adelantó!"
	
    para "!Está dentro de"
	line "manzana!"
	done

TVText:
	text "Es esa película"
	line "acerca de #-"
    cont "MON antiguos que"
	
	para "fue popular hace"
	line "un año."
	done

FireText:
    text "Aceite por"
    line "todos lados."
	done
	
PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  6,  11, NEW_BARK_TOWN, 2
	warp_event  7,  11, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	db 0 ; coord events

	db 5 ; bg events
	bg_event  6,  1, BGEVENT_READ, RadioScript
	bg_event  1,  1, BGEVENT_READ, SinkScript
	bg_event  2,  1, BGEVENT_READ, FridgeScript
	bg_event  4,  1, BGEVENT_READ, TVScript
    bg_event  0,  1, BGEVENT_READ, FireScript
	
	db 5 ; object events
	object_event  9,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, -1
	object_event  0,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript2, -1
	object_event  3,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript3, -1
	object_event  6,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript4, -1
	object_event  6,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NeighborScript, -1
