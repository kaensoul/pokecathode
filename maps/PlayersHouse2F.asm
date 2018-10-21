	const_def 2 ; object constants
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL

PlayersHouse2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom
	callback MAPCALLBACK_TILES, .SetSpawn

; unused
.Null:
	end

.InitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd initializeevents
	return

.SkipInitialization:
	return

.SetSpawn:
	special ToggleMaptileDecorations
	return

	db 0, 0, 0 ; filler

Doll1Script:
	describedecoration DECODESC_LEFT_DOLL

Doll2Script:
	describedecoration DECODESC_RIGHT_DOLL

BigDollScript:
	describedecoration DECODESC_BIG_DOLL

GameConsoleScript:
	describedecoration DECODESC_CONSOLE

PlayersHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseRadioScript:
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayersRadioText1
	pause 35
	writetext PlayersRadioText2
	pause 30
	writetext PlayersRadioText3
	pause 35
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayersRadioText4
	pause 35
	closetext
	end

PlayersHouseBookshelfScript:
	jumpstd picturebookshelf

PlayersHousePCScript:
	opentext
	writetext PHPC
	closetext
	closetext
	end

.Warp:
	warp NONE, 0, 0
	end	
	
PlayerHousePosterPikachuSign:
    opentext
    writetext PikachuPoster
    closetext
    end
	
PlayerHouse2FGirl1Text:
    jumptextfaceplayer PH2Girll

PlayerHouse2FGirl1smallText:
    jumptextfaceplayer PH2Girllsmall	
	
PlayerHouse2FKidText:
    jumptextfaceplayer PH2Kid	
	
PikachuPoster:
    text "Parece un"	
	line "#MON de un"
	cont "país lejano."
	done
	
PlayersRadioText1:
	text "Tío: ¡HEY HEY"
	line "HE HEY!"
	cont "Tía: Hombre..."
	done

PlayersRadioText2:
	text "No sabes cantar,"
	done

PlayersRadioText3:
	text "deja de hacer"
	line "el bobo."
	done

PlayersRadioText4:
	text "Tío: ¡HEY HEY"
	line "HE HEY!"
	done
	
	
PH2Girll:
    text "¿Esos son las"	
    line "deportivas tan"
	cont "populares en"
	cont "Hoenn?"
	
	para "Dicen que si"
	line "pulsas el Botón"
	cont "B puedes ir a"
	cont "gran velocidad."
	
	para "Pero a de ser"
	line "incomodo patear"
	cont "para usarlo."
	done
	
PH2Girllsmall:
    text "En clases aprendí"
    line "que los ataques"
	cont "#MON se pueden"
	
	para "dividir en tres"
	line "categorías."
	
	para "No recuerdo sus"
	line "nombres, pero"
	cont "se que hacen."
	
	para "Una para los"
	line "golpes directos."
	
	para "Otra para los"
	line "ataques mágicos,"
	
	para "y otra para los"
	line "los movimientos"
	cont "de soporte."
    done
		
PH2Kid:
   text "No me creo que"
   line "chicos y chicas"
   cont "¡usen el mismo"
   cont "cuarto!"
   
   para "¡Que nervios!"
   done
   
PHPC:
   text "Este modelo"
   line "dejó de ser útil"
   cont "cuando nací."
   done
	
PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	db 0 ; coord events

	db 7 ; bg events
	bg_event  0,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadioScript
	bg_event  6,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  7,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  4,  0, BGEVENT_IFSET, PlayersHousePosterScript
	bg_event  8,  0, BGEVENT_IFSET, PlayersHousePosterScript
	bg_event  2,  0, BGEVENT_READ, PlayerHousePosterPikachuSign

	db 7 ; object events
	object_event  1,  1, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
    object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayerHouse2FGirl1Text, -1 
    object_event  7,  7, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayerHouse2FGirl1smallText, -1 
    object_event  3,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayerHouse2FKidText, -1 
