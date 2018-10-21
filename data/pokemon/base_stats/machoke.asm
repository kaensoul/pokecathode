	db MACHOKE ; 067

	db  80, 110,  70,  115,  100,  60
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 90 ; catch rate
	db 146 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machoke/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, CURSE, ROAR, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, ICE_PUNCH, SWAGGER, SLEEP_TALK, RAGE, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, ICE_BEAM, GUILLOTINE, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
