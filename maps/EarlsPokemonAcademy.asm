	const_def 2 ; object constants
	const EARLSPOKEMONACADEMY_EARL
	const EARLSPOKEMONACADEMY_YOUNGSTER1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID2
	const EARLSPOKEMONACADEMY_YOUNGSTER2
	const EARLSPOKEMONACADEMY_POKEDEX

EarlsPokemonAcademy_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AcademyEarl:
	faceplayer
	opentext
	checkitem OLD_ROD
	iftrue .gotfirstrod
	checkitem BLU_APRICORN
	iftrue .gotwood
	writetext UnknownText_0x68bbd
	waitbutton
	closetext
	end
	
.gotwood:
    showemote EMOTE_SHOCK, EARLSPOKEMONACADEMY_EARL, 15
	writetext UnknownText_0x68c51
	takeitem BLU_APRICORN
	verbosegiveitem OLD_ROD
	writetext UnknownText_0x68c7b
	waitbutton
	closetext
	end

.gotfirstrod:
	writetext UnknownText_0x68d31
	waitbutton
	closetext
	end

EarlsPokemonAcademyYoungster1Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster1Text

EarlsPokemonAcademyGameboyKid1Script:
	jumptextfaceplayer EarlsPokemonAcademyGameboyKid1Text

EarlsPokemonAcademyGameboyKid2Script:
	jumptextfaceplayer EarlsPokemonAcademyGameboyKid2Text

EarlsPokemonAcademyYoungster2Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster2Text

	
AcademyBlackboard:
    jumptext zeroavistado

AcademyBookshelf:
	jumpstd difficultbookshelf
	
zeroavistado:
    text "Una revista."
	
    para "Vida en Kita"
    line "29 de Octubre de"
    cont "2018."

    para "Una extraña cria-"
    line "tura con forma de"
    cont "Toro mecánico"

    para "fue derrotada por"
    line "Bee-Mask durante"
    cont "una celebración"
    cont "en Cloudy City."

    para "La criatura no"
	line "parece ser un"
	cont "#MON."
	
	para "Por otra parte"
	line "Nate, Líder de"
    cont "Cloudy City se"
    cont "enfrentó cara a"
    cont "cara con quien"
     
    para "parecía ser el"
    line "entrenador de la"
    cont "criatura."

    para "según el Líder,"
    line "no parecía una"
    cont "persona normal."

    para "Carecía de un"
    line "alma."	
 	done

UnknownText_0x68bbd:
	text "Si quieres una"
	line "caña de pescar"
	cont "vienes en muy mal"
	cont "momento."

	para "Muchos entrenado-"
	line "res vienen estos"
	cont "días y no tengo"
	cont "suficientes mate-"
	cont "riales para mas."

	para "Pero si pudieras"
	line "conseguir algo"
	cont "de leña podría"
	cont "hacer unas"
	cont "cuantas."
	done

UnknownText_0x68c51:
	text "¡Tienes leña!"
	
	para "Parese suficiente"
	line "para una docena,"
	cont "dame un poco de"
	cont "tiempo y…"
	
	para "………"
	line "…"
	
	para "Ajusto el hilo de"
	line "Tamantula y…"
	
	para "…………"
	line "…"
	
	para "¡Listo!"
	done

UnknownText_0x68c7b:
	text "Espero que te sea"
	line "útil."
	done

UnknownText_0x68d31:
	text "Es una caña de"
	line "pescar muy buena,"
	cont "con ella puedes"
	cont "pescar cualquier"
	cont "#MON joven en"
	cont "el mundo."
	done

EarlsPokemonAcademyYoungster1Text:
	text "Los #MON"
	line "acuáticos son muy"
	cont "fuertes, pero los"
	cont "#MON que"

	para "viven en nuestro"
	line "bosque son igual"
	cont "de geniales."
	
	para "Pandree es mi"
	line "favorito, es muy"
	cont "fuerte, entrena"
	cont "cargando leña"
	cont "todos los días."
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "Al norte del bos-"
	line "que vive el #-"
	cont "MON acuático más"
	cont "fuerte de Kita."
	
	para "El Guerrero Negro"
	line "Zhi Ming, también"
	cont "conocido como La"
	cont "gran tortuga del"
	cont "norte."
	
	para "Quiero atraparlo"
	line "algún día."
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "¿Te gusta la"
	line "estatua de Levia-"
	cont "trion?"
	
	para "Es en realidad de"
	line "Charizard, pero"
	cont "con pintura azul."
	done

EarlsPokemonAcademyYoungster2Text:
	text "Orvenom es muy"
	line "lindo, pero sus"
	cont "manos tienen"

	para "pequeñas agujas"
	line "venenosas que lo"
	cont "hacen difícil de"
	cont "abrasar."
	done
	
EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 15, VIOLET_CITY, 3
	warp_event  3, 15, VIOLET_CITY, 3

	db 0 ; coord events

	db 7 ; bg events
	bg_event  0,  5, BGEVENT_READ, AcademyBookshelf
	bg_event  6,  5, BGEVENT_READ, AcademyBookshelf
	bg_event  7,  5, BGEVENT_READ, AcademyBookshelf
	bg_event  0, 11, BGEVENT_READ, AcademyBookshelf
	bg_event  1, 11, BGEVENT_READ, AcademyBookshelf
	bg_event  6, 11, BGEVENT_READ, AcademyBookshelf
	bg_event  7, 11, BGEVENT_READ, AcademyBlackboard

	db 5 ; object events
	object_event  4,  2, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AcademyEarl, -1
	object_event  1,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster1Script, -1
	object_event  5, 11, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  1,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1
	object_event  4,  7, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster2Script, -1
	