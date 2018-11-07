	db GRIMER ; 088

	db  80,  100, 140,  97,  60,  73
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 40 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/grimer/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DRAGON, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, SUNNY_DAY, VICEGRIP, HYPER_BEAM, PROTECT, FRUSTRATION, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SANDSTORM, FIRE_BLAST, REST, ATTRACT, THIEF, RAZOR_WIND, SCREECH, FLAMETHROWER, FLY, STRENGTH
	; end
