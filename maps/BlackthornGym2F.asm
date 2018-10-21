	const_def 2 ; object constants
	const BLACKTHORNGYM2F_COOLTRAINER_M
	const BLACKTHORNGYM2F_COOLTRAINER_F
	const BLACKTHORNGYM2F_BOULDER1
	const BLACKTHORNGYM2F_BOULDER2
	const BLACKTHORNGYM2F_BOULDER3
	const BLACKTHORNGYM2F_BOULDER4
	const BLACKTHORNGYM2F_BOULDER5
	const BLACKTHORNGYM2F_BOULDER6

BlackthornGym2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerCooltrainermCody:
	trainer COOLTRAINERM, CODY, EVENT_BEAT_COOLTRAINERM_CODY, CooltrainermCodySeenText, CooltrainermCodyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermCodyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfFran:
	trainer COOLTRAINERF, FRAN, EVENT_BEAT_COOLTRAINERF_FRAN, CooltrainerfFranSeenText, CooltrainerfFranBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfFranAfterBattleText
	waitbutton
	closetext
	end

ThermaqueBar:
    jumptextfaceplayer Thertext

ManBar:
    jumptextfaceplayer Manbartext

BlackBeltbar:
    jumptextfaceplayer BBtext

FrancisWife:
    faceplayer
    opentext
    checkitem HM_FLY
	iftrue .Alreadygotfly
    checkflag ENGINE_RISINGBADGE
	iftrue .GiveFly
    writetext FWifetext
	waitbutton
	closetext
	end
	
.Alreadygotfly:
    writetext FWifetext2
    waitbutton
    closetext
    end

.GiveFly
    writetext FWifetextgivefly
    waitbutton
    verbosegiveitem HM_FLY
    writetext ExplainFly	
	waitbutton
	closetext
	end
	
FisherBar:	
	jumptextfaceplayer Fishetext

NurseBar:
    jumptextfaceplayer Nursebartext	
	
BarBook:
    jumptext BarBookText	
	
BarBookText:
    text "El Informador de"
    line "Kita."
     
    para "29 de Abril del"
    line "2018."

    para "La Interpol cree"
    line "el misterioso"
    cont "grupo de hackers"
    cont "Team Cyber,"	
	
	para "podría tener su"
	line "centro de opera-"
	cont "ciones en nuestra"
	cont "región."
	
	para "Team Cyber no es"
	line "un peligro para"
	cont "la gente común,"
	
	para "Por el momento"
	line "han robado única-"
	cont "mente información"
	
	para "de las base de"
	line "datos de empresas"
	cont "y organizaciones."
	
	para "En el 2013 ellos"
	line "atacaron Silph"
	cont "S.A."
	
	para "Y el año pasado"
	line "aprovecharon toda"
	cont "la confusión que"
	
    para "se generó en"
	line "Alola para robar"
	cont "información con-"
	cont "fidencial de la"
	cont "Organización"
	cont "Aeter."
	done
	
Thertext:
    text "Mama…"
	done
	
FWifetext:
    text "Soy la dueña y no"
    line "dejaré que un"
    cont "peque beba aquí,"

    para "no me mientas, no"
    line "pasas de los 16."

    para "Mira, si derrotas"
    line "a mi esposo te" 
    cont "dare un premio"
	
	para "para que no digas"
	line "que soy una veija"
	cont "desagradable."
	done
	
FWifetext2:
    text "Francis e Irene"
	line "son muy diferentes"
	cont "ahora, pero cuando"
	
	para "éramos jovenes"
	line "esos 2 eran igual"
	cont "de locos."
	
	para "Irene una vez"
	line "robó el huevo de" 
	cont "un Eagatrice y"
	cont "casi morimos."
	
	para "Pero ahora actua"
	line "como una clase"
	cont "de santa de las"
	cont "nieves o algo."
	done
	
FWifetextgivefly:
    text "Veo que derrotas-"
    line "te a mi amor, ten"
    cont "un premio."
    done

ExplainFly:
    text "Enseñale el camino"
    line "a cualquier ciudad"
    cont "que conozcas a tus"
    	
	para "#MON y ellos"
	line "te llevarán"
	cont "volando."
	done
	
Manbartext:
    text "Beber alcohol no"
    line "es algo malo si"
    cont "bebes responsable-"
    cont "mente."
    done

Fishetext:
    text "No me mires, no"
	line "vendo a menores."
	done
  	
	
CooltrainermCodySeenText:
	text "Hey ya, ¿keres"
	line "peleaaa?"
	done

CooltrainermCodyBeatenText:
	text "Estoy muy mal."
	done
	

CooltrainermCodyAfterBattleText:
	text "Vine por una"
	line "Maquina Oculta"
	cont "que permite Volar"
	
	para "pero me dicen"
	line "que necesito una"
	cont "medalla para que"
	cont "me la den."
	
	para "Y no soy bueno"
	line "luchando."
	done
	

CooltrainerfFranSeenText:
	text "¡Oye, cosa linda"
	line "ven a mí!"
	done

CooltrainerfFranBeatenText:
	text "Quiero besarte."
	done

CooltrainerfFranAfterBattleText:
	text "Estos lugares son"
	line "buenos para cono-"
	cont "cer gente."
	done
	
BBtext:
    text "Un niñato de pelo"
    line "azul vino y trató"
    cont "de comprar una"

    para "cerveza y fingió"
    line "ser adulto para"
	cont "conseguirla."

    para "Fue sencillo"
    line "sacarlo de aquí."	
    done
	
Nursebartext: 
    text "Odio mi trabajo,"
	line "no quiero volver"
	cont "al centro."

    para "No es que no me"
    line "guste ayudar a"
    cont "los #MON,"
	
	para "pero tener que"
	line "sonreir todo el"
	cont "día es difícil."
	
	para "Hoy una niña con"
	line "bufanda de Scarf-"
	cont "fere me trató muy"
	
	para "mal y no me gustó"
	line "como trataba a"
	cont "sus #MON."
	done
	
BlackthornGym2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 17, BLACKTHORN_CITY, 8
	warp_event  5, 17, BLACKTHORN_CITY, 8

	db 0 ; coord events

	db 1 ; bg events
	bg_event  8,  3, BGEVENT_READ, BarBook

	db 8 ; object events
	object_event  3, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermCody, -1
	object_event  6, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfFran, -1
	object_event  8, 16, SPRITE_STARMIE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThermaqueBar, -1
	object_event  2, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FrancisWife, -1
	object_event  7,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackBeltbar, -1
	object_event  0,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ManBar, -1
	object_event  9,  4, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NurseBar, -1
	object_event  1,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FisherBar, -1
