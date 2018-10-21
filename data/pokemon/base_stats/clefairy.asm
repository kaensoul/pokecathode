	db CLEFAIRY ; 035

	db  115,  65,  128,  41,  76,  75
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 150 ; catch rate
	db 168 ; base exp
	db WATER_STONE, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_3, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, CURSE, TOXIC, HYPER_FANG, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, REST, ATTRACT, THIEF, ICE_BEAM, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	; end
