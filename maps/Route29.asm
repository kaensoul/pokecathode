	const_def 2 ; object constants
	const ROUTE29_COOLTRAINER_M1
	const ROUTE29_YOUNGSTER
	const ROUTE29_TEACHER1
	const ROUTE29_FRUIT_TREE
	const ROUTE29_FISHER
	const ROUTE29_COOLTRAINER_M2
	const ROUTE29_TUSCANY
	const ROUTE29_POKE_BALL

Route29_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

CatchingTutorialDudeScript
    jumptextfaceplayer Jaklopetext	
	
Route29YoungsterScript:
	jumptextfaceplayer Route29YoungsterText

Route29TeacherScript:
	jumptextfaceplayer Route29TeacherText

Route29FisherScript:
	jumptextfaceplayer Route29FisherText

Route29CooltrainerMScript:
	jumptextfaceplayer LeavingText

TuscanyScript:
	jumptextfaceplayer Lasttext

Route29Sign2:
	jumptext Route29Sign2Text

Route29FruitTree:
	fruittree FRUITTREE_ROUTE_29

Route29Potion:
	itemball TM_RAGE

Jaklopetext:
    text "Quiero atrapar"
	line "un Jaklope para"
	cont "mi hija y un Bask"
	cont "para mi hijo,"
	
	para "pero uno sale de"
	line "noche y el otro"
	cont "por la mañana."
	
	para "Será un largo"
	line "día…"
	done
	
	
Route29YoungsterText:
	text "Trato de evitar"
	line "la hierba alta,"
	
	para "pero aveces no"
    line "hay otra opción,"
	
	para "Un hombre debe"
	line "saber enfrentar"
	cont "sus miedos."

	para "Gracias a dios"
	line "soy solo un"
	cont "niño."
	done

Route29TeacherText:
	text "Deberías visitar"
	line "el #MON"
	cont "fan club,"

	para "esos nerds"
	line "siempre tienen"
	cont "cosas de interes"
	cont "para decir."
	done

Route29FisherText:
	text "Muchas cosas"
	line "locas pasan"
    cont "últimamente."
	
	para "Un monstruo de"
	line "película es real,"
	
	para "un ave destruyó"
	line "una ciudad entera,"
	
	para "una cueva que sale"
	line "de la nada."
	
	para "Mejor ignorar"
	line "todo y pescar"
	cont "todo el día."
	done

LeavingText:
    text "Pebble esta"
	line "llena de vida"
	cont "gracias al labo-"
	cont "torio."
	
	para "Aunque la gente"
	line "solo viene una"
	cont "vez y no vuelve"
	cont "jamás."
	done

Lasttext:
    text "Amo a mi Chillma,"
	line "¡Es muy lindo!"
	
	para "Me gustaría ir a"
	line "Orre para casarme"
	cont "con él."
	done


Route29Sign2Text:
	text "Route 1"
    line "Con ese aroma"
	cont "a montaña."
	
	para "O:Grass Town"
	line "E:Pebble Town"
	done

Route29_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 1 ; bg events
	bg_event  51,  11, BGEVENT_READ, Route29Sign2

	db 8 ; object events
	object_event 20, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CatchingTutorialDudeScript, -1
	object_event 43,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29YoungsterScript, -1
	object_event  9,  6, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29TeacherScript, -1
	object_event 26,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route29FruitTree, -1
	object_event 33,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route29FisherScript, -1
	object_event 54, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29CooltrainerMScript, -1
	object_event 47, 13, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TuscanyScript, -1
	object_event 49,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route29Potion, EVENT_ROUTE_29_POTION
