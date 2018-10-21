	db ALAKAZAM ; 065

	db  45,  150,  55, 85, 75,  45
	;   hp  atk  def  spd  sat  sdf

	db BUG, DARK ; type
	db 50 ; catch rate
	db 186 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/alakazam/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm CURSE, MEGA_PUNCH, TOXIC, SCRATCH, HIDDEN_POWER, VICEGRIP, PROTECT, GIGA_DRAIN, PSYWAVE, FRUSTRATION, RETURN, DIG, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, LOVELY_KISS, REST, ATTRACT, THIEF, GUILLOTINE, CUT, STRENGTH
	; end
