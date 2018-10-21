	const_def 2 ; object constants
	const BLACKTHORNEMYSHOUSE_EMY
	const BLACKTHORNEMYSHOUSE_THERMAQUE

BlackthornEmysHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Emy:
	faceplayer
	opentext
	trade NPC_TRADE_EMY
	waitbutton
	closetext
	end

EmysHouseBookshelf:
	jumpstd magazinebookshelf
	
BlackthornHouseThermaque:
    opentext
	writetext Thermaquehousetext
	cry STARMIE
	waitbutton
	closetext
	end	
	
Thermaquehousetext:
    text "¿Maque ma?"
    done	

BlackthornEmysHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, BLACKTHORN_CITY, 3
	warp_event  3,  7, BLACKTHORN_CITY, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, EmysHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, EmysHouseBookshelf

	db 2 ; object events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Emy, -1
    object_event  5,  4, SPRITE_STARMIE, SPRITEMOVEDATA_POKEMON, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornHouseThermaque, -1
	