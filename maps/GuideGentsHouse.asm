	const_def 2 ; object constants
	const GUIDEGENTSHOUSE_GRAMPS
	const FANCLUB_TMGUY

GuideGentsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GuideGentsHouseGuideGent:
	jumptextfaceplayer GuideGentsHouseGuideGentText

GuideGentsHouseBookshelf:
	jumpstd magazinebookshelf
	
TimkFanClub:
    opentext
	writetext TimkFanClubText
	cry POLIWAG
	waitbutton
	closetext
	end		
	
DaGolpeCabeza:
    faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	iftrue .After
	writetext GolpeCabezaTextBefore
	buttonsound
	verbosegiveitem TM_HEADBUTT
	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
.After:
	writetext GolpeCabezaTextAfter
	waitbutton
	closetext
	end	
	
HombreFanClub:
    jumptextfaceplayer HombreFanClubtext	

GrichickFanClub:
    opentext
	writetext GrichickFanClubText
	cry ODDISH
	waitbutton
	closetext
	end		
	
GrichickFanClubText:
    text "¡CHICKI-CHI!"
    done	
	
HombreFanClubtext:
    text "Me gustan mucho"
    line "los #MON"
    cont "tipo Volador."

    para "Si tan solo"
	line "tuviera la HM"
	cont "que permite volar"
	cont "sobre ellos,"
	
	para "podría viajar a"
	line "todos lados en"
	cont "un parpadeo."
	
	para "Un amigo me dijo"
	line "que la esposa"
	cont "del Líder de"
	cont "Ciudad Snowy"
	
	para "se la da como"
	line "premio a todos"
	cont "los que derrotan"
	
	para "a su esposo."
	done

	
	
TimkFanClubText:
    text "¡Ti ti!"
    done	
	
GolpeCabezaTextBefore:
    text "Cuando la gente"
    line "habla de #MON"
	cont "raros me emociono"
	cont "un montón."
	
	para "Tanto que doy"
	line "cabezazos a las"
	cont "paredes."
	
	para "Una vez me paso"
	line "mientras andaba"
	cont "por el bosque."
	
	para "¡Y un #MON"
	line "aun más raro"
	cont "apareció!"
	
	para "¿Ver para cree,"
	line "no?"
    done

GolpeCabezaTextAfter:
    text "Me duele mucho"
    line "la cabeza."
    
    para "¿Será por ver"
    line "mucha TV?"
    done	

GuideGentsHouseGuideGentText:
	text "Amar a los #MON"
	line "es muy simple,"
	cont "¡Lo difícil es que"
	cont "ellos te quieran!"

	para "Un buen entrenador"
	line "no debería tener"
	cont "problema, con tal"
	cont "que no pierdas."

	para "Los #MON aman"
	line "combatir como ya"
	cont "sabras."
	
	para "Por ello algunos"
	line "como Lilfly y"
	cont "Jaklope evolucio-"
	cont "nan al quererte."
	done

GuideGentsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 4
	warp_event  3,  7, CHERRYGROVE_CITY, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, GuideGentsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, GuideGentsHouseBookshelf

	db 5 ; object events
	object_event  2,  4, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GuideGentsHouseGuideGent, -1
	object_event  2,  2, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaGolpeCabeza, -1
    object_event  1,  2, SPRITE_POLIWAG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TimkFanClub, -1 
	object_event  5,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HombreFanClub, -1
	object_event  5,  5, SPRITE_ODDISH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrichickFanClub, -1 
	