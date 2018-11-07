	db SHELLDER ; 090

	db  100,  115, 80,  34,  115,  80
	;   hp  atk  def  spd  sat  sdf

	db POISON, WATER ; type
	db 10 ; catch rate
	db 227 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/shellder/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, IRON_TAIL, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, THUNDERBOLT, REST, ATTRACT, SCREECH, ICE_BEAM, FLAMETHROWER, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	; end
