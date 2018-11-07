	db DRAGONAIR ; 148

	db  25,  52,  34,  60,  56,  49
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 205 ; catch rate
	db 44 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonair/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, SHADOW_BALL, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, ICE_BEAM, SURF, WHIRLPOOL, WATERFALL
	; end
