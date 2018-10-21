	db POLIWAG ; 060

	db  60,  45,  45,  10,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 255 ; catch rate
	db 77 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/poliwag/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, SCRATCH, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FRUSTRATION, RETURN, DIG, PSYCHIC_M, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, LOVELY_KISS, REST, ATTRACT, THIEF, FLAMETHROWER, CUT, FLASH
	; end
