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
	text "This place was"
	line "quiet until that"

	para "woman come here"
	line "and started to"
	cont "give rare 'mons"

	para "and free stuff to"
	line "freaking everyone."

	para "Now we have idiots"
	line "like Jim ruining"
    cont "the city."
	done

PlayersNeighborText:
	text "Do you like music?"
	line "There is a popular"

	para "guitarist and"
	line "singer know as"
	cont "Emma, she used to"

	para "live here and was"
	line "the GYM Leader but"
	cont "she left to join"

	para "the Elite Four."
	line "The GYM should be"
	cont "closed now but a"
	
	para "bunch of kids took"
	line "over the building"
	cont "and play there."
	done

PlayerNeighborRadioText1:
	text "Garl:The theme"
	line "D.O.G.A.R.S. is"
	cont "still on top!"
	
	para "Dude: Is there no"
	line "one than can beat"
	cont "Roxie?!"
	
	para "Garl: Well, Emma's"
	line "theme, Lighting"
	cont "Raikou is popular"
	
	para "around here, but"
	line "cant catch aten-"
	cont "tion worldwide…"
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
