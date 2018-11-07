	const_def 2 ; object constants
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	buttonsound
	verbosegiveitem TM_SWEET_SCENT
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeSailorScript:
	jumptextfaceplayer OlivineCafeSailorText

OlivineCafeStrengthSailorText:
	text "La comida de este"
	line "lugar huele deli-"
	cont "ciosa."

	para "Los buenos olores"
	line "atraen gente y"
	cont "#MON ya sea"
	cont "para comer o para"
	cont "abrir corazones."

	para "Si usas esto"
	line "muchos #MON"
	cont "van a ir por ti."
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "Dicen que la miel"
	line "de Combee es uno"
	cont "de los mejores"
	cont "olores del mundo"
	cont "#MON."
	
	para "¿Será cierto?"
	done

OlivineCafeFishingGuruText:
	text "¿Quieres comer"
	line "algo?"
	done

OlivineCafeSailorText:
	text "Conozco a Pluto"
	line "desde hace muchos"
	cont "años."

	para "Llegó la mañana"
	line "siguiente a la"
	cont "caida del meteoro"
    cont "actuando como si"
	cont "nada."
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, OLIVINE_CITY, 6
	warp_event  3,  7, OLIVINE_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  4,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_DAISY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
