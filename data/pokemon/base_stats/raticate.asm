	db RATICATE ; 020

	db  36,  45,  45,  73,  52,  61
	;   hp  atk  def  spd  sat  sdf

	db POISON, FAIRY ; type
	db 200 ; catch rate
	db 55 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raticate/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, SWEET_SCENT, ICY_WIND, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, SUBMISSION, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, RAGE, THUNDERPUNCH, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, THIEF, FIRE_PUNCH, ICE_BEAM, LOVE_CANNON, GUILLOTINE, CUT, FLASH, WHIRLPOOL
	; end
