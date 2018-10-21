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
	
PikachuPoster:
    text "It look like a"	
	line "#MON from a far"
	cont "away country."
	done
	
PlayersRadioText1:
	text "Dude: Yo! yo!"
	line "YO! YO!"
	cont "Garl: Man..."
	done

PlayersRadioText2:
	text "if you dont know"
	done

PlayersRadioText3:
	text "how to rap,"
	line "just say it."
	done

PlayersRadioText4:
	text "YO!"
	line "YO! YO YO YO!"
	done
	
PlayerHouse2FGirl1Text:
    jumptextfaceplayer PH2Girll
    end	
	
PH2Girll:
    text "So you have the"	
    line "new shoes than"
	cont "let you move fast"
	
	para "when you press B."
	line "But where is the"
	cont "B button?"
	done

PlayerHouse2FGirl1smallText:
    jumptextfaceplayer PH2Girllsmall
    end	
	
PH2Girllsmall:
    text "Do you know than"
    line "#MON attacks"
	cont "can be divided in"
	
	para "3 categories?"
	line "Moves than dont"
	cont "deal damage," 
	
	para "moves than use"
	line "beams and magic"
	
	para "and finally the"
	line "direct attacks,"
	
	para "my teacher told"
	line "me that."
    done
	
PlayerHouse2FKidText:
    jumptextfaceplayer PH2Kid
    end	
	
PH2Kid:
   text "I can't believe"
   line "guys and girls use"
   cont "the same room."
   
   para "Thats lewd!"
   done
   
PHPC:
   text "This thing can't"
   line "even run mine-"
   cont "sweeper right."
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
