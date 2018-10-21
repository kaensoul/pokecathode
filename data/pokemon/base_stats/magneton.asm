	db MAGNETON ; 082

	db  45, 65,  75,  25, 30,  60
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 205; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magneton/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, HIDDEN_POWER, VICEGRIP, HYPER_BEAM, PROTECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, FLAMETHROWER, CUT, STRENGTH
	; end
