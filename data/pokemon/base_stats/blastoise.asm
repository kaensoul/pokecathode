	db BLASTOISE ; 009

	db  120,  125, 80,  80,  65, 70
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/blastoise/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, ICE_PUNCH, SWAGGER, SLEEP_TALK, RAGE, SHARPEN, THUNDERPUNCH, REST, ATTRACT, THIEF, ICE_BEAM, LOVE_CANNON, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
