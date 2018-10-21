	const_def 2 ; object constants
	const PLAYERSNEIGHBORSHOUSE_COOLTRAINER_F
	const PLAYERSNEIGHBORSHOUSE_POKEFAN_F

PlayersNeighborsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PlayersNeighborsDaughterScript:
	jumptextfaceplayer PlayersNeighborsDaughterText

PlayersNeighborScript:
	jumptextfaceplayer PlayersNeighborText

PlayersNeighborsHouseBookshelfScript:
	jumpstd magazinebookshelf

PlayersNeighborsHouseRadioScript:
	opentext
	writetext PlayerNeighborRadioText1
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	closetext
	end

PlayersNeighborsDaughterText:
	text "Gracias a esos"
	line "nerds que regalan"
	cont "#MON, este"
	cont "pueblo se llenó"

	para "de estupidos"
	line "citadinos como"
	cont "Jim."
	done

PlayersNeighborText:
	text "¿Te gusta la"
	line "música?"

	para "Una cantante y"
	line "guitarrista muy"
	cont "popular vivía"
	cont "aquí."

	para "Era Emma la GYM"
	line "Líder."

	para "Pero era demasiado"
	line "fuerte y la gente"
	cont "ni intentaba"
	cont "luchar."
	
	para "Se fue cuando el"
	line "Alto Mando la"
	cont "invitó a unirse."
	
	para "Creo que unos"
	line "niños viven en"
	cont "el GYM ahora."
	done

PlayerNeighborRadioText1:
	text "Tía: ¡El tema"
	line "D.O.G.A.R.S."
	cont "sigue en lo alto!"
	
	para "Tío:¡¿Es que"
	line "nadie puede contra"
	cont "Hiedra?!"
	
	para "Tía: Al menos en"
	line "Kita, el tema"
	cont "Raikou Relampago"
	cont "promete mucho."
	done 

PlayersNeighborsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NEW_BARK_TOWN, 3
	warp_event  3,  7, NEW_BARK_TOWN, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  7,  1, BGEVENT_READ, PlayersNeighborsHouseRadioScript

	db 2 ; object events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborsDaughterScript, -1
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborScript, -1
