	db PIKACHU ; 025

	db  90, 125, 85, 102,  20,  20
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 50 ; catch rate
	db 182 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pikachu/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, ICY_WIND, PROTECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, RAGE, SHARPEN, THUNDERPUNCH, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, THIEF, FIRE_PUNCH, ICE_BEAM, FLAMETHROWER, CUT, STRENGTH
	; end
