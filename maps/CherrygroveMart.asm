	const_def 2 ; object constants
	const CHERRYGROVEMART_CLERK
	const CHERRYGROVEMART_COOLTRAINER_M
	const CHERRYGROVEMART_YOUNGSTER

CherrygroveMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

CherrygroveMartCooltrainerMScript:
	jumptextfaceplayer CherrygroveMartCooltrainerMText
	

CherrygroveMartYoungsterScript:
	jumptextfaceplayer CherrygroveMartYoungsterText

CherrygroveMartCooltrainerMText:
	text "Atrapé un Bask"
	line "la otra noche,"
	
	para "Debería probar"
	line "suerte luchando"
	cont "contra Pluto y sus"

	para "#MON tipo"
	line "Psíquico."
	done

CherrygroveMartYoungsterText:
	text "Estoy de vacacio-"
	line "nes en Kita."
	
	para "Esta lleno de"
    line "raros #MON"
	cont "que no se ven"
	cont "en Unova,"
	
	para "o como ustedes la"
    line "conocen, Teselia."

	para "Mi favorito es sin"
	line "dudas Exsealibur."
	
	para "Ya pesque un"
	line "Herrpier y cuando"
	cont "visite Smog City"
	
    para "comprare una"
	line "Piedra Agua para"
	cont "evolucionarlo."
	done

CherrygroveMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 1
	warp_event  3,  7, CHERRYGROVE_CITY, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveMartCooltrainerMScript, -1
	object_event  2,  5, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveMartYoungsterScript, -1
