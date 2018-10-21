	const_def 2 ; object constants
	const BLACKTHORNPOKECENTER1F_NURSE
	const BLACKTHORNPOKECENTER1F_GENTLEMAN
	const BLACKTHORNPOKECENTER1F_TWIN
	const BLACKTHORNPOKECENTER1F_COOLTRAINER_M
	const BLACKTHORNPOKECENTER1F_THERMAQUE

BlackthornPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BlackthornPokecenter1FNurseScript:
	jumpstd pokecenternurse

BlackthornPokecenter1FGentlemanScript:
	jumptextfaceplayer BlackthornPokecenter1FGentlemanText

BlackthornPokecenter1FTwinScript:
	jumptextfaceplayer BlackthornPokecenter1FTwinText

BlackthornPokecenter1FCooltrainerMScript:
	jumptextfaceplayer BlackthornPokecenter1FCooltrainerMText
	
BlackthornPokecenter1FThermaque:
    opentext
	writetext THERMAQUEPCText
	cry STARMIE
	waitbutton
	closetext
	end	
	
BlackthornPokecenter1FCooltrainerMText
    text "Thermaque is"
    line "loved here, they"
	cont "rescue lost people"
	
	para "in the mountine"
	line "and keep everyone"
	cont "here warm during"
	cont "winter."
	done
	
THERMAQUEPCText:
    text "Que?"
    done	

BlackthornPokecenter1FGentlemanText:
	text "Thermaque is an"
	line "unique #MON,"
	cont "inside its body"

	para "is as hot as any"
	line "other Fire-Type"
    cont "but its fur can"

	para "generate snow,"
	line "the snow melt"
	cont "fast, this make"

	para "water appear over"
	line "its head and when"
	cont "many Thermaque get"
	
	para "close they make"
	line "pools with rocks"
	cont "and fill it with"
	
	para "that water, and"
	line "finally bath there"
	cont "with humans and"
	cont "other #MON."
	done

BlackthornPokecenter1FTwinText:
	text "You must know how"
	line "much people here"
	cont "love Thermaque."

	para "But the one than"
	line "love them the most"
	cont "is papa Francis,"

	para "he told me than"
	line "when he was as"
	cont "small as me a"
	
	para "Thermaque recued"
	line "him after an"
	cont "Earthqauke in the"
	cont "mountine."
	
	para "That Thermaque is"
	line "his partner now!"
	
	para "Thermaque evolved"
	line "and papa got old"
    cont "but they're still"
    cont "together." 
	
	para "If you had 15"
	line "badges you would"
	cont "be able to fight"
	cont "papa's best friend!"
	done

BlackthornPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, BLACKTHORN_CITY, 5
	warp_event  4,  7, BLACKTHORN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FNurseScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FGentlemanScript, -1
	object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FTwinScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FCooltrainerMScript, -1
    object_event  5,  4, SPRITE_STARMIE, SPRITEMOVEDATA_POKEMON, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FThermaque, -1

	