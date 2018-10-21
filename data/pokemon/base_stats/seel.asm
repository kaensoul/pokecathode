	db SEEL ; 086

	db  35,  50,  60,  65,  40,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 200 ; catch rate
	db 50 ; base exp
	db EVERSTONE, HARD_STONE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seel/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DRAGON, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, SUNNY_DAY, VICEGRIP, HYPER_BEAM, PROTECT, FRUSTRATION, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SANDSTORM, FIRE_BLAST, REST, ATTRACT, THIEF, RAZOR_WIND, SCREECH, FLAMETHROWER, FLY, STRENGTH
	; end
