	const_def 2 ; object constants
	const VIOLETPOKECENTER1F_NURSE
	const VIOLETPOKECENTER1F_GAMEBOY_KID
	const VIOLETPOKECENTER1F_GENTLEMAN
	const VIOLETPOKECENTER1F_YOUNGSTER
	const VIOLETPOKECENTER1F_SCIENTIST

VioletPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletPokecenterNurse:
	jumpstd pokecenternurse

VioletPokecenter1FGameboyKidScript:
	jumptextfaceplayer VioletPokecenter1FGameboyKidText

VioletPokecenter1FGentlemanScript:
	jumptextfaceplayer VioletPokecenter1FGentlemanText

VioletPokecenter1FYoungsterScript:
	jumptextfaceplayer VioletPokecenter1FYoungsterText

VioletPokecenter1FGameboyKidText:
	text "Nate es mi hermano"
	line "mayor, no hablamos"
	cont "mucho pero siempre"
	cont "me defiende."
	
	para "Una vez derrotó a"
	line "5 matones a la vez"
	cont "usando nada mas"
	cont "que sus manos."
	done

VioletPokecenter1FGentlemanText:
	text "El papá de Nate"
	line "era un polícia de"
	cont "transito hasta un"
	cont "par de años atrás."

	para "Usaba a Yeagle"
	line "para alertar a los"
	cont "automóviles."

	para "Pero no se usan"
	line "muchos vehiculos"
	cont "en Kita por lo que"
	cont "ahora pasa más"
	cont "tiempo resolviendo"
	cont "misterios."
	done

VioletPokecenter1FYoungsterText:
	text "Trato de visitar a"
	line "mi difunta abuela"
	cont "todos los días."

	para "Los Shamlur van a"
	line "las tumbas descui-"
	cont "dadas y roban los"
	cont "huesos."
	done

VioletPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, VIOLET_CITY, 5
	warp_event  4,  7, VIOLET_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenterNurse, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_BILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FYoungsterScript, -1
	