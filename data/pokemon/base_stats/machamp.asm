	db MACHAMP ; 068

	db  80, 55,  40,  35,  45,  40
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIGHTING ; type
	db 205 ; catch rate
	db 53 ; base exp
	db PRZCUREBERRY, MIRACLE_SEED ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machamp/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, RAGE, THUNDERPUNCH, REST, ATTRACT, LOVE_CANNON, CUT, STRENGTH
	; end
