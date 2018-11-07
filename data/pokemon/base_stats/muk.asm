	db MUK ; 089

	db 33, 64,  36,  44,  64, 45
	;   hp  atk  def  spd  sat  sdf

	db POISON, WATER ; type
	db 80 ; catch rate
	db 83 ; base exp
	db PEARL, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/muk/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, IRON_TAIL, RETURN, DIG, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, THUNDERBOLT, REST, ATTRACT, SCREECH, ICE_BEAM, FLAMETHROWER, SURF, WHIRLPOOL, WATERFALL 
	; end
