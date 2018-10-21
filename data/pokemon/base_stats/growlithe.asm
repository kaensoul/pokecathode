	db GROWLITHE ; 058

	db  22,  50,  25,  80,  60,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 190 ; catch rate
	db 91 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/growlithe/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, LOVELY_KISS, REST, ATTRACT, THIEF, SURF, WHIRLPOOL, WATERFALL  
	; end
