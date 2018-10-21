	db ZUBAT ; 041

	db  73,  54,  54,  50,  54,  54
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, ICE ; type
	db 200 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zubat/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DRAGON, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, VICEGRIP, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, SACRED_FIRE, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, SHARPEN, THUNDERPUNCH, THUNDERBOLT, REST, ATTRACT, RAZOR_WIND, FIRE_PUNCH, SCREECH, ICE_BEAM, GUILLOTINE, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	; end
