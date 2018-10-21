	db JIGGLYPUFF ; 039

	db 75,  84,  55,  60,  80,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 140 ; catch rate
	db 106 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, PSYWAVE, FRUSTRATION, SACRED_FIRE, THUNDER, EARTHQUAKE, RETURN, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, THUNDERBOLT, REST, ATTRACT, THIEF, RAZOR_WIND, FIRE_PUNCH, SCREECH, ICE_BEAM, FLAMETHROWER, CUT, STRENGTH, FLASH
	; end
