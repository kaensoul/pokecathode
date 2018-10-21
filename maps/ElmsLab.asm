	const_def 2 ; object constants
	const ELMSLAB_ELM
	const ELMSLAB_SILVER
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_OFFICER

ElmsLab_MapScripts:
	db 6 ; scene scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .MoveElmCallback

.MeetElm:
	priorityjump .WalkUpToElm
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.MoveElmCallback:
	checkscene
	iftrue .Skip ; not SCENE_DEFAULT
	moveobject ELMSLAB_ELM, 3, 4
.Skip:
	return

.WalkUpToElm:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, RIGHT
	opentext
	writetext ElmText_Intro
	verbosegiveitem POKE_BALL, 5
	verbosegiveitem POTION, 2
	setscene SCENE_RIVALBATTLE1_BATTLE
	setflag ENGINE_POKEDEX
	setflag ENGINE_POKEGEAR
	setflag ENGINE_MAP_CARD
	setflag ENGINE_PHONE_CARD
	opentext 
	writetext ReceiveDEXandGear
	playsound SFX_ITEM
	waitsfx
	special SetDayOfWeek
.SetDayOfWeek:
	iffalse .WrongDay
	jump .DayOfWeekDone

.WrongDay:
	iffalse .SetDayOfWeek
.DayOfWeekDone:
    closetext
	setscene SCENE_ELMSLAB_CANT_LEAVE
	end

ProfElmScript:
	jumptextfaceplayer ElmDescribesMrPokemonText

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHARMANDER, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHARMANDER, 5, BERRY
	closetext
	jump ElmDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem SQUIRTLE, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SQUIRTLE, 5, BERRY
	closetext
	jump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem BULBASAUR, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 5, BERRY
	closetext
	jump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	opentext
	writetext ElmDirectionsText2
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, DOWN
	showemote EMOTE_HEART, ELMSLAB_ELM, 15
	opentext
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	writebyte HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_SILVER, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_SILVER, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_SILVER, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_SILVER, AideWalksLeft2
	end

AideScript_GivePotion:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext NewBarkTownRivalText_Seen
	waitbutton
	closetext
	special NameRival
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext SilverNewBarkTownWinText, SilverNewBarkTownLossText
	setlasttalked ELMSLAB_SILVER
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.Totodile:
	winlosstext SilverNewBarkTownWinText, SilverNewBarkTownLossText
	setlasttalked ELMSLAB_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.Chikorita:
	winlosstext SilverNewBarkTownWinText, SilverNewBarkTownLossText
	setlasttalked ELMSLAB_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext NewBarkTownRivalText_YouWon
	waitbutton
	closetext
	jump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext NewBarkTownRivalText_YouLost
	waitbutton
	closetext
.FinishRival:
	applymovement ELMSLAB_SILVER, RivalLeaveLab
	disappear ELMSLAB_SILVER
	special HealParty
	setmapscene NEW_BARK_TOWN, SCENE_FINISHED
	playmapmusic
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

ElmsAideScript:
	end
	
ElmsLabWindow:
    opentext
	writetext ElmsLabWindowText2
	waitbutton
	closetext
	end
	
Book1:
    opentext
	writetext Book1text
	waitbutton
	closetext
	end	

Book2:
    opentext
	writetext Book2text
	waitbutton
	closetext
	end		
	
Book3:
    opentext
	writetext Book3text
	waitbutton
	closetext
	end		
	
Book4:
    opentext
	writetext Book4text
	waitbutton
	closetext
	end		

Book5:
    opentext
	writetext Book5text
	waitbutton
	closetext
	end		
	
Book6:
    opentext
	writetext Book6text
	waitbutton
	closetext
	end		
	
Book7:
    opentext
	writetext Book7text
	waitbutton
	closetext
	end		
	
Book8:
    opentext
	writetext Book8text
	waitbutton
	closetext
	end		
	
SecretaryScript:
    faceplayer
	opentext 
	writetext Secretext
    waitbutton
    closetext
    end	
	
NerdScript:
    faceplayer
    opentext 
	writetext Nerdtext
    waitbutton
    closetext
    end	
	
Nerd2Script:
    faceplayer
    opentext 
	writetext Nerd2text
    waitbutton
    closetext
    end		
	
ElmsLabPC2:
    jumptext PC2text
	
ElmsLabPC3:
    jumptext PC3text
	
ElmsLabPC4:
    jumptext PC4text

ElmsLabPC5:
    jumptext PC5text

ElmsLabPC6:
    jumptext PC6text

ElmsLabPC7:
    jumptext PC7text	
	
	
ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText


ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

RivalLeaveLab:
    step DOWN
    step DOWN
    step_end	

ElmText_Intro:
	text "Kapok: ¡Viniste,"
	line "<PLAY_G>!"

	para "Se que fue un"
	line "largo viaje pero"
	cont "no te decepciona-"
	cont "das."

	para "Nos encanta que"
	line "tantos entrenado-"
	cont "res empiecen su"
	cont "viaje con nosotros"

	para "y por ello siempre"
	line "estamos preparados"
	cont "con todo lo nece-"
	cont "sario."

	para "Esta #DEX va"
    line "a encender apenas"
	cont "consigas un #-"
	cont "MON."
	
	para "Y este #GEAR"
	line "esta casi listo,"
	cont "solo hace falta"
	cont "que pongas el día"
    cont "de la semana."
	
	para "Finalmente unas"
	line "#BALLS y"
	cont "Pociones."
	
	para "Ahora ve a la mesa"
	line "para que escojas"
	cont "tu compañero."
	done

LabWhereGoingText:
	text "Kapok: ¿A donde"
	line "vas?"
	done

TakeCyndaquilText:
	text "Kapok: Crimske"
	line "es un #MON"
	cont "muy genial,"
	
	para "¡comienza débil"
	line "pero si te esfuer-"
	cont "zas, nada es impo-"
	cont "sible!"
	
	para "Tiene el espíritu"
	line "de un dragón."
	done

TakeTotodileText:
	text "Kapok: Chillma"
	line "es un #MON"
	cont "muy tierno,"
	
	para "al principio será"
	line "fácil, pero si lo"
	cont "descuidas tendrás"
	cont "serios problemas."
	
	para "Tiene brazos tan"
	line "fuertes como un"
	cont "Iceberg."
	done

TakeChikoritaText:
	text "Kapok: Ceramelops"
	line "es un #MON"
	cont "muy amistoso,"
	
	para "nunca te va a"
	line "decepcionar en"
	cont "batalla con unas"
	cont "escamas más duras"
	
	para "que una armadura"
	line "y cuernos más"
	cont "fuertes que una"
	cont "espada."
	done

DidntChooseStarterText:
	text "Kapok: ¿No es tu"
	line "estilo?"
	done

ChoseStarterText:
	text "Kapok: Ese"
	line "#MON se ve"
	cont "muy feliz!"
	done

ReceivedStarterText:
	text "¡<PLAYER> recibió"
	line "@"
	text_from_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "Kapok: Eso es"
	line "todo lo que puedo"
	cont "hacer por tí."

	para "Deberías explorar"
	line "la región, esta"
	cont "llena de miste-"
	cont "rios sin resolver"

	para "y la Liga #MON"
	line "es un reto que"
	cont "todo entrenador"
	cont "debería intentar."

	para "¡Da lo mejor de"
	line "tí!"

	para "Oh, ten mi número"
	line "para que hablemos"
	cont "luego."
	done

ElmDirectionsText2:
	text "Parece que una"
	line "chica te tiene"
	cont "los ojos encima,"

	para "es una entrenado-"
	line "ra, ¡prepárate"
	cont "para luchar!"
	done

ElmDirectionsText3:
	text "¡<PLAY_G>, buena"
	line "suerte!"
	done

GotElmsNumberText:
	text "<PLAYER> registró"
	line "a Kapok."
	done

ElmDescribesMrPokemonText:
	text "Kapok: Me gusta"
	line "trabajar aquí,"
	cont "pero anhelo viajar"
	cont "por el mundo otra"
	cont "vez."

	para "Me pregunto que"
	line "estará haciendo"
	cont "Fred ahora…"
	done

ElmPokeBallText:
	text "Se ve triste…"
	done

ElmsLabHealingMachineText1:
	text "¿Qué hará?"
	done

ElmsLabHealingMachineText2:
	text "¿Debería curar a"
	line "mis amigos?"
	done

ElmsLabWindowText1:
	text "Se ven huevos"
	line "#MON del otro"
	cont "lado."
	done

ElmsLabWindowText2:
	text "Se ven huevos"
	line "#MON del otro"
	cont "lado."
	done

ElmsLabTravelTip1Text:
	text "Un dibujo antiguo"
	line "de un #MON"
	cont "llamado Cathode…"

	para "Viaja a gran velo-"
	line "cidad a través"
	cont "del hemisferio"
	cont "sur."
	
	para "Genera energía con"
	line "la cúal carga el"
	cont "polo sur magnéti-"
	cont "co."
	
	para "Me gustaría verlo"
	line "algún día."
	done

ElmsLabTravelTip2Text:
	text "Un dibujo antiguo"
	line "de un #MON"
	cont "llamado Anode…"

	para "Viaja a gran velo-"
	line "cidad a través"
	cont "del hemisferio"
	cont "norte."
	
	para "Genera energía con"
	line "la cúal carga el"
	cont "polo norte" 
	cont "magnético."
	
	para "¿Será real?"
	done

ElmsLabTravelTip3Text:
	text "Un libro acerca"
	line "de la preserva-"
	cont "ción #MON,"
	cont "escrito por Ann"
	cont "Kapok."

	para "Aun cuando es"
	line "posible traer"
	cont "#MON extintos a"
	cont "la vida con"

	para "nuestra tecnología"
	line "es muy importante"
	cont "preservar la vida"
	cont "#MON."
	
	para "Al recrear un"
	line "#MON a partir"
	cont "de un fósil, no"
	cont "revivimos mágica-"
	cont "mente a nadie,"
	
	para "Sino que nosotros"
	line "simplemente hace-"
	cont "mos un bebé sin"
	cont "una madre."
	
	para "Además se a descu-"
	line "bierto que ni"
	cont "siquiera se ven"
	cont "como deberían."
	
	para "Tyramtrum debería"
	line "estar cubierto"
    cont "por plumas y por"
	cont "otro lado tenemos"

    para "a Aerodactyl quien"
    line "podemos ver con"
	cont "su forma real con"
	cont "la ayuda de las"
	cont "megapiedras."
	
	para "…"
	
	para "No creo poder en-"
	line "tender el resto,"
  
	para "muchas palabras"
	line "raras como esta"
	cont "fundación Aeter"
	cont "o como se diga."
	done
	

ElmsLabTravelTip4Text:
	text "Unas cuantas"
	line "fotos, esta tiene"
	cont "personas etique-"
	cont "tadas."

	para "Fue tomada el 4"
	line "de Octubre de"
	cont "2004."

	para "Ann Kapok sostiene"
	line "un diploma univer-"
	cont "sitario."

	para "La acompaña un"
	line "joven adulto con"
	cont "un uniforme de la"
	cont "fuerza aérea lla-"
	cont "mado Fred."
	
	para "Un anciano llamado"
	line "Mark Kapok esta"
	cont "del otro lado,"
	
	para "y en frente un"
	line "profesor de la"
	cont "universidad…"
	
	para "Profesor de"
    line "biología #MON,"
	cont "Prof. Yggdrasil."
	done

ElmsLabTrashcanText:
	text "A la profesora le"
	line "gustán MUCHO los"
	cont "dulces."
	done

ElmsLabPCText:
	text "Sobre la preser-"
	line "vación #MON."

	para "Al dar #MON"
	line "raros a gente"
	cont "buena aumentamos"
	
	para "la población de"
	line "estos #MON"
	cont "sin perturbar el"
	cont "habitat de otros."
	done
	
Dayofweek:
    text "Escoge el día"
    line "de la semana:"
    done	
	
NewBarkTownRivalText_Seen:
	text "¡¡OYE!!"

	para "Tienes pinta de"
	line "no tener la mas"
	cont "mínima idea de lo"
    cont "que sucede aquí,"
	
	para "pues dejame mos-"
	line "trarte como una"
	cont "batalla #MON"
	cont "se lleva a cabo."

	para "Tienes suerte de"
	line "que no cargo mi"
	cont "#MON mas podero-"
	cont "so conmigo,"

	para "¡tal vez un bueno"
	line "para nada tenga "
	cont "oportunidad!"

	para "¿Mi nombre?"
	line "es …"
	done

SilverNewBarkTownWinText:
	text "¿Como perdí contra"
	line "un cara de bebé?"
	done

NewBarkTownRivalText_YouLost:
    text "Imposible…"

	para "Tengo que mejorar"
    line "y dejar de perder"
	cont "tiempo, tienes"
	cont "suerte que no use"
	cont "objetos."
	
	para "Me largo, tengo"
	line "que romper una"
	cont "lata-humana."
	
	para "Nos volveremos"
	cont "a ver."
	done		

SilverNewBarkTownLossText:
	text "Wow, se que eres"
	line "nuevo, pero me"
	cont "siento mal por"
	cont "tú #MON."
	done

NewBarkTownRivalText_YouWon:
	text "EXP fácil, mi"
	line "nuevo compañero"
	cont "podrá vencer a"
	cont "ese cara de"
	cont "hojalata."
	done

ReceiveDEXandGear:
    text "<PLAYER> consiguió"
	line "un #DEX y"
	cont "un #GEAR."
	done
	
Book1text:
	text "Una gran colección"
	line "sobre la distribu-"
	cont "ción y biología"
	
	para "#MON escritos"
	line "por Cedric Juniper."
	done
	
Book2text:
    text "Una gran colección"
	line "sobre los habitats"
	cont "#MON, escrito"
	
	para "por el Profesor"
	line "Birch."
    done

Book3text:
    text "Un libro escrito"
	line "por Mark Kapok."
	
    para "El 2 de julio de"
    line "1913 mi padre"
	cont "descubrió el"
	cont "fósil de un raro"
	cont "#MON."

    para "A primeras fue"
    line "considerado como" 
	cont "una sub-especie"
	
	para "de Bastiodon pero"
    line "con la nueva"
	cont "tecnología de"

    para "restauración de"
	line "fósiles pude"
	cont "finalmente probar"
	
	para "que los hallazgos"
	line "de mi padre eran"
	cont "de una única es-"
	cont "pecie de #MON"
	
	para "que habitó Kita"
	line "en la antigüedad,"
	cont "llamé a este"
	cont "#MON Ceraroks."
	
	para "Mi hija Ann a"
	line "estado a cargo de"
	cont "cuidar ya gene-"
	cont "raciones de estos"
	cont "#MON y"
	
	para "descubrió algo"
	line "muy interesante."
	cont "Los Ceraroks die-"
	cont "ron a luz a una"
	
	para "especie, "
	line "Ceramelops." 
	
	para "Parece ser"
	line "más apto para la"
	cont "vida moderna."
	
	para "Estoy muy seguro"
	line "que Ceramelops"
	cont "seguirá sorpren-"
	cont "diéndonos."
	done
	
Book4text:
    text "21 de Junio del"
    line "2011, un entrena-"
    cont "dor de 10 años de"
	cont "edad atrapó"

    para "a Zhulong, un"
    line "#MON que se"
    cont "creía legendario,"
	
	para "pero despúes de"
	line "dejarlo en la"
	cont "guardería en" 
	
	para "ruta 34 se encon-"
	line "tró un huevo."
	
	para "Llamó al bebé"
	line "Cimske y se hizo"
	cont "muy popular en"
	cont "Kita."
	done
	
Book5text:
    text "El 11 de Mayo 11"
    line "se 1997 se "
    cont "descubrió que"
 
    para "Chillma ya no"
    line "nacía con el tipo"
	cont "Hielo, se cree que"
	
	para "es debido al"
	line "cambio climático"
	cont "que hace más"
	
	para "complicada la vida" 
	line "de los tipo"
	cont "Hielo jovenes."
	
	para "El Prof. Samson"
	line "Oak da sus acerta-"
	cont "dos comentarios:"
	
	para "Chillma cambia y"
	line "adapta como un"
    cont "¡CASTFORM! para"

    para "vivir en nuevas"
    line "áreas y tener la"
    cont "fuerza de un"
	cont "¡MACHAMP!"
	done
	
Book6text:
    text "Nada interesante,"
	line "solo habla de"
	cont "#MON únicos del"
	cont "país."
	done
	
Book7text:
    text "Dice algo acerca"
	line "de las cuatro"
	cont "bestias cardinales"
	
	para "provienen de un"
	line "país lejano y"
	cont "se desconoce que"
	cont "las trae a Kita."
	done
	
Book8text:
    text "Un libro acerca de"
	line "#MON creados"
	cont "por humanos."
	
	para "Fue escrito por el"
	line "Prof. Yggdrasil."
	done
	
Secretext:
    text "¿Necesitas ayuda?"
	
	para "Somos como el"
	line "centro #MON o"
	cont "algo así."
	
	para "¿Curar a tus #-"
	line "MON?"
	cont "Hazlo tu mismo."
	done
	
Nerdtext:
    text "Entregamos #MON"
    line "a 30 personas"
    cont "cada día."	
	done
	
PC2text:
    text "Prof. Kapok y una"
	line "chica rubia, están"
	cont "junto al Gimnasio"
	cont "en esta foro."
	
	para "Debe ser la"
	line "antigua lider."
	done

PC3text:
    text "Apagado."

    para "Una taza con"
    line "varias fotografías"
    cont "de #MON pájaro."	
	done
	
Nerd2text:
    text "Nosotros estudia-"
	line "mos preservación"
	cont "#MON, y claro,"
	
	para "nos dedicamos a"
	line "más que solamente"
	cont "estudiar."
	done

PC4text:
    text "La foto de un"
    line "#MON antiguo."

    para "Tiene púas en la"
    line "cola."
	cont "¿O será en su"
	cont "cabeza?"
    done

PC5text:
    text "La foto de un"
    line "#MON antiguo."

	para "Con su cola puede"
	line "cargar rocas."
	done
	
PC6text:
    text "La foto de un"
    line "#MON antiguo."
	
	para "Tiene alas y una"
	line "larga cara."
	done
	
PC7text:
    text "La foto de un"
    line "#MON antiguo."
	
	para "Tiene grandes"
    line "colmillos."
    done	
	
ElmsLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	db 4 ; coord events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2

	db 22 ; bg events
	bg_event  8,  7, BGEVENT_READ, ElmsLabHealingMachine
	bg_event 10,  1, BGEVENT_READ, Book1
	bg_event 11,  1, BGEVENT_READ, Book2
	bg_event 11,  7, BGEVENT_READ, Book3
	bg_event 12,  7, BGEVENT_READ, Book4
	bg_event  5,  0, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  4,  0, BGEVENT_READ, ElmsLabTravelTip2
	bg_event 15, 11, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event 13,  7, BGEVENT_READ, Book5
	bg_event 14,  7, BGEVENT_READ, Book6
	bg_event 15,  7, BGEVENT_READ, Book7
	bg_event 10,  7, BGEVENT_READ, Book8
	bg_event  3,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  7,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  0,  7, BGEVENT_READ, ElmsLabPC
	bg_event 12,  1, BGEVENT_READ, ElmsLabPC2
	bg_event 14,  1, BGEVENT_READ, ElmsLabPC3
	bg_event  7,  3, BGEVENT_READ, ElmsLabPC4
	bg_event  9,  3, BGEVENT_READ, ElmsLabPC5
	bg_event  9,  5, BGEVENT_READ, ElmsLabPC6
	bg_event  7,  5, BGEVENT_READ, ElmsLabPC7

	db 8 ; object events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  2,  9, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  0,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  1,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event  9,  8, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SecretaryScript, -1
    object_event 11,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NerdScript, -1
    object_event 13,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Nerd2Script, -1

	