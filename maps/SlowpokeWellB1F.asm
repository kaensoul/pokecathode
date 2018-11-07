	const_def 2 ; object constants
	const SLOWPOKEWELLB1F_ROCK1
	const SLOWPOKEWELLB1F_ROCK2
	const SLOWPOKEWELLB1F_ROCKET1
	const SLOWPOKEWELLB1F_ROCKET2
	const SLOWPOKEWELLB1F_ROCKET3
	const SLOWPOKEWELLB1F_ROCKET_GIRL
	const SLOWPOKEWELLB1F_KURT
	const SLOWPOKEWELLB1F_POKE_BALL
	const SLOWPOKEWELLB1F_CHARMANDER

SlowpokeWellB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SlowpokeWellB1FKurtScript:
	opentext
	faceplayer
	checkitem MYSTERY_EGG
	iftrue .AlreadygotWingFossil
	writetext cybergruntseverywhere
	verbosegiveitem MYSTERY_EGG
	closetext
	end
	
.AlreadygotWingFossil:
    writetext fossiltext
    closetext
    end	

TrainerGruntM29:
	trainer GRUNTM, GRUNTM_29, EVENT_BEAT_ROCKET_GRUNTM_29, GruntM29SeenText, GruntM29BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM29AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM1:
	trainer EXECUTIVEM, GRUNTM_1, EVENT_BEAT_ROCKET_GRUNTM_1, GruntM1SeenText, GruntM1BeatenText, 0, .Script

.Script:
	opentext
	writetext TrainerGruntM1WhenTalkText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SLOWPOKEWELLB1F_ROCKET1
	disappear SLOWPOKEWELLB1F_ROCKET2
	disappear SLOWPOKEWELLB1F_ROCKET3
	disappear SLOWPOKEWELLB1F_ROCKET_GIRL
	setevent EVENT_CLEARED_SLOWPOKE_WELL
	pause 15
	special FadeInQuickly
	end

TrainerGruntM2:
	trainer GRUNTM, GRUNTM_2, EVENT_BEAT_ROCKET_GRUNTM_2, GruntM2SeenText, GruntM2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM2AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF1:
	trainer GRUNTM, GRUNTF_1, EVENT_BEAT_ROCKET_GRUNTF_1, GruntF1SeenText, GruntF1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF1AfterBattleText
	waitbutton
	closetext
	end

WildCrimske:
    opentext
	writetext CrimskeAttackyou
	pause 15
	cry CHARMANDER
	closetext
	loadwildmon CHARMANDER, 5
	startbattle
	disappear SLOWPOKEWELLB1F_CHARMANDER
	reloadmapafterbattle
	end	
	
SlowpokeWellB1FSuperPotion:
	itemball MOON_STONE

Carro1:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro1yes
	closetext
	warp SLOWPOKE_WELL_B1F, 4, 31
	end

.carro1yes:
    closetext
	end	

Carro2:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro2yes
	closetext
	warp SLOWPOKE_WELL_B1F, 4, 23 
	end

.carro2yes:
    closetext
	end	
	
Carro3:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro3yes
	closetext
	warp SLOWPOKE_WELL_B1F, 4, 31 
	end

.carro3yes:
    closetext
	end	
	
Carro4:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro4yes
	closetext
	warp SLOWPOKE_WELL_B1F, 5, 20 
	end

.carro4yes:
    closetext
	end	

Carro5:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro5yes
	closetext
	warp SLOWPOKE_WELL_B1F, 23, 21 
	end

.carro5yes:
    closetext
    
	end		

Carro6:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro6yes
	closetext
	warp SLOWPOKE_WELL_B1F, 15, 21
	end

.carro6yes:
    closetext
	end	

Carro7:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro7yes
	closetext
	warp SLOWPOKE_WELL_B1F, 17, 6
	end

.carro7yes:
    closetext
	end		

Carro8:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro8yes
	closetext
	warp SLOWPOKE_WELL_B1F, 16, 15 
	end

.carro8yes:
    closetext
	end	
	
Carro9:
    opentext
	writetext Carro1header
    yesorno
	iffalse .carro9yes
	closetext
	warp SLOWPOKE_WELL_B1F, 16, 15 
	end

.carro9yes:
    closetext
	end		
	
CrimskeAttackyou:
    text "¡CRIIIIMS!"	
	done
	
cybergruntseverywhere:
    text "Soy Arquelogo de"
	line "una región muy"
	cont "cercana."
	
	para "Vine buscando"
	line "fósiles de un"
	cont "#MON alado,"
	
	para "y parece ser que"
	line "no soy el único."
	
	para "Esos extraños"
	line "sujetos no hacen"
	cont "mas que destruir"
	cont "el lugar."
	
	para "Tu pareces un"
	line "buen tipo, te"
	cont "voy a dar algo"
	cont "bien chulo."
	
	para "Es un parte del"
	line "fósil que estoy"
	cont "extrayendo."
    done

fossiltext:
    text "¿Aun tienes el"
    line "fósil?"

    para "No lo pierdas,"
    line "con la tecnología"
    cont "actual, con esa"
    cont "pieza puedes"
	cont "clonar millones"
	cont "de #MON."
	done
	
Carro1header:
    text "¿Debería subir?"
	done

GruntM29SeenText:
	text "ACTIVANDO MODELO"
	line "000 SLASH"
	done

GruntM29BeatenText:
	text "ALERTANDO A"
	line "SEÑOR ADAM"
	done

GruntM29AfterBattleText:
	text "…"
	done

GruntM1SeenText:
	text "¿Huh?"

	para "Si llegaste hasta"
	line "aquí significa"
	cont "que rompiste mis"
	cont "juguetes."
	
	para "Supongo que ahora"
	line "me toca romperte."
	
	para "Ya conseguí lo"
	line "que buscaba, el"
	cont "modelo 007 SPIRIT"
	cont "no solo me ayudó"
	cont "a encontrar un"
	cont "fósil raro sino"
	cont "que lo revitalizo"
	cont "a niveles nunca"
	cont "antes vistos."
	
	para "Es como si nunca"
	line "hubiera muerto."
	
	para "Tienes suerte que"
	line "mi jefe lo necesi-"
	cont "ta en perfecto"
	cont "estado o lo usaría"
	cont "ahora."
	
	para "Pero con el modelo"
	line "007 SPIRIT en mi"
	cont "poder, ningún"
	cont "#MON me podrá"
    cont "vencer."

    para "¡Preparate para"
    line "enfrentar un poder"
    cont "futurista en manos"
    cont "del Team Cyber!"	
	done

GruntM1BeatenText:
	text "009 se esta"
	line "descontrolando."
	
	para "Nuestro combate"
	line "seguirá otro día."
	done


TrainerGruntM1WhenTalkText:
	text "No sabia que aun"
	line "existían entrena-"
	cont "dores capaces de"
	cont "sacar todo el"
    cont "potencial de sus"
	cont "#MON."
	
	para "Me recuerdas a"
	line "Gunther."
	
	para "Nos vemos."
	done

GruntM2SeenText:
	text "INICIANDO MODO"
	line "DE COMBATE"
	done

GruntM2BeatenText:
	text "BATERÍA"
	line "BAJA…"
	done

GruntM2AfterBattleText:
	text "…"
	done

GruntF1SeenText:
    text "ELIMINAR INTRUSO"
	done
	
GruntF1BeatenText:
    text "DAÑO MASIVO"
    done
	
GruntF1AfterBattleText:
    text "…"
	done
	
	
SlowpokeWellB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 35, ROUTE_32, 2
	warp_event 29, 13, SLOWPOKE_WELL_B2F, 1

	db 0 ; coord events

	db 9 ; bg events
	bg_event 27, 30, BGEVENT_READ, Carro1
	bg_event  4, 30, BGEVENT_READ, Carro2
	bg_event  4, 24, BGEVENT_READ, Carro3
	bg_event 15, 20, BGEVENT_READ, Carro4
	bg_event  6, 20, BGEVENT_READ, Carro5
	bg_event 23, 20, BGEVENT_READ, Carro6
	bg_event 16, 14, BGEVENT_READ, Carro7
	bg_event 16,  6, BGEVENT_READ, Carro8
	bg_event 21, 14, BGEVENT_READ, Carro9

	db 9 ; object events
	object_event 10,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
    object_event  8,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
    object_event 11, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM29, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event 30,  4, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerGruntM1, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  4, 18, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM2, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event 16, 17, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerGruntF1, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event 20,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FKurtScript, -1
	object_event 27, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SlowpokeWellB1FSuperPotion, EVENT_SLOWPOKE_WELL_B1F_SUPER_POTION
    object_event 33, 10, SPRITE_CHARMANDER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WildCrimske, -1