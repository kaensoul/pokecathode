	db STARMIE ; 121

	db  67,  65,  55,  65,  68,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, ICE ; type
	db 200 ; catch rate
	db 50 ; base exp
	db FRESH_WATER, ICE_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SUBMISSION, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, RAGE, THUNDERPUNCH, LOVELY_KISS, REST, ATTRACT, THIEF, FIRE_PUNCH, ICE_BEAM, FLAMETHROWER, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	; end
