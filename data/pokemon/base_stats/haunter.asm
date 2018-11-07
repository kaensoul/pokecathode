	db HAUNTER ; 093

	db  65,  70,  35,  85, 55,  35
	;   hp  atk  def  spd  sat  sdf

	db GHOST, PSYCHIC ; type
	db 150 ; catch rate
	db 86 ; base exp
	db NO_ITEM, TWISTEDSPOON ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/haunter/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, RAGE, SHARPEN, THUNDERPUNCH, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, THIEF, FIRE_PUNCH, ICE_BEAM, GUILLOTINE, CUT, STRENGTH, FLASH 
	; end
