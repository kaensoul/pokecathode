	db SQUIRTLE ; 007

	db  55,  60,  55,  45,  48,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/squirtle/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, ICE_PUNCH, SLEEP_TALK, RAGE, REST, ATTRACT, ICE_BEAM, LOVE_CANNON, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
