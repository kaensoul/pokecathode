	db KAKUNA ; 014

    db  94,  100,  84,  87,  69,  74
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, WATER ; type
	db 120 ; catch rate
	db 150 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kakuna/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, SHADOW_BALL, SWAGGER, SLEEP_TALK, RAGE, LOVELY_KISS, REST, ATTRACT, THIEF, ICE_BEAM, LOVE_CANNON, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
