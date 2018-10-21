	db NIDORINO ; 033

	db  85,  122,  80,  95,  55,  75
	;   hp  atk  def  spd  sat  sdf

	db WATER, STEEL ; type
	db 120 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidorino/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_2, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, SWAGGER, SLEEP_TALK, FIRE_BLAST, SHARPEN, REST, ATTRACT, THIEF, SCREECH, ICE_BEAM, FLAMETHROWER, GUILLOTINE, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	; end
