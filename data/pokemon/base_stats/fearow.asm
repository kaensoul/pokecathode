	db FEAROW ; 022

	db  53,  42,  61, 21,  32,  61
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 42 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 1 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/fearow/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROCK_SMASH, HIDDEN_POWER, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, STRENGTH
	; end
