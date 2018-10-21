	db EKANS ; 023

	db  83,  110,  61,  110,  52,  61
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FIGHTING ; type
	db 155 ; catch rate
	db 162 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 1 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ekans/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, STRENGTH
	; end
