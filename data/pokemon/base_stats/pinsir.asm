	db PINSIR ; 127

	db  65, 50, 45,  45,  60,  45
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 245 ; catch rate
	db 80 ; base exp
	db NO_ITEM, LEFTOVERS ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, SHADOW_BALL, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, RAGE, THUNDERPUNCH, LOVELY_KISS, REST, ATTRACT, THIEF, FIRE_PUNCH, ICE_BEAM, GUILLOTINE, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
