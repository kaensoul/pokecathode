	db MACHOP ; 066

	db  50,  55,  30,  65,  55,  25
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 180 ; catch rate
	db 88 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machop/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, RAGE, REST, ATTRACT, THIEF, ICE_BEAM, GUILLOTINE, CUT, STRENGTH, WHIRLPOOL
	; end
