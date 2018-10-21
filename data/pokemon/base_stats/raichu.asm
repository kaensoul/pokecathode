	db RAICHU ; 026

	db  70,  54,  43, 57,  31,  43
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GROUND ; type
	db 200 ; catch rate
	db 52 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raichu/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SLEEP_TALK, RAGE, THUNDERPUNCH, REST, ATTRACT, THIEF, LOVE_CANNON, CUT, STRENGTH
	; end
