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
    text "Thermaque es"
    line "amado aquí, ya que"
	cont "rescatan gente"
	
	para "perdida en las"
	line "montañas y nos"
	cont "mantienen calenti-"
	cont "tos en invierno."
	done
	
THERMAQUEPCText:
    text "¿Que?"
    done	

BlackthornPokecenter1FGentlemanText:
	text "Thermaque es un"
	line "#MON único,"
	cont "dentro de su"
	cont "cuerpo es tan"

	para "caliente como"
	line "cualquier otro"
    cont "tipo Fuego pero"

	para "sobre su pelaje se"
	line "genera Hielo."
	
	para "Como es de esperar"
	line "el hielo se derri-"
	cont "te, creando Agua,"

	para "con la cual luego"
	line "crean baños terma-"
	cont "les donde disfru-"
	cont "tan con personas"
	cont "y otros #MON."
	done

BlackthornPokecenter1FTwinText:
	text "Supongo que ya"
	line "sabes lo mucho"
	cont "que amamos a los" 
	cont "Thermaque aquí."

	para "Pero quien ama más"
	line "a esas lindas"
	cont "bolas de pelo es"
	cont "mi papi."

	para "Me dijo que cuando"
	line "era tan chiquito"
	cont "como yo, el fue"
	
	para "rescatado por un"
	line "Thermaque tras un"
	cont "Terremoto en las"
	cont "montañas."
	
	para "¡Y desde entonces"
	line "son compañeros!"
	
	para "Thermaque ya"
	line "evolucionó y mi"
    cont "papi se hizo"
    cont "viejito y panzón," 
	
	para "pero aun así luchan"
	line "tan bien como"
	cont "cuando eran del"
	cont "Alto Mando."
	
	para "Tal vez algún día"
	line "puedas ver al"
	cont "mejor amigo de papi"
	
	para "sólo necesitas 15"
	line "medallas."
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
    object_event  5,  4, SPRITE_STARMIE, SPRITEMOVEDATA_POKEMON, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FThermaque, -1

	