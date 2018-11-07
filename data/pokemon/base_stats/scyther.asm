	db SCYTHER ; 123

	db  60, 45,  55, 67,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, FAIRY ; type
	db 145 ; catch rate
	db 87 ; base exp
	db NO_ITEM, BIG_PEARL ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/scyther/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, PSYCHIC_M, SHADOW_BALL, SLEEP_TALK, SHARPEN, THUNDERBOLT, REST, ATTRACT, SCREECH, ICE_BEAM, LOVE_CANNON, SURF, FLASH, WHIRLPOOL, WATERFALL
	; end
