	db POLIWHIRL ; 061

	db  90,  85,  95,  10,  95,  120
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 120 ; catch rate
	db 131 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/poliwhirl/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, SCRATCH, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FRUSTRATION, RETURN, DIG, PSYCHIC_M, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, LOVELY_KISS, REST, ATTRACT, THIEF, FLAMETHROWER, CUT, FLASH
	; end
