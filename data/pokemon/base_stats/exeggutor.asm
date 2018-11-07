	db EXEGGUTOR ; 103

	db  100,  85,  80, 05, 40,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 85 ; catch rate
	db 200 ; base exp
	db NO_ITEM, DRAGON_FANG ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/exeggutor/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, SACRED_FIRE, EARTHQUAKE, RETURN, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, SCREECH, ICE_BEAM, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
