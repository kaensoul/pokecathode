	db ODDISH ; 043

	db  35,  65,  28,  70,  65,  30
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 180 ; catch rate
	db 48 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/oddish/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, SUBMISSION, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, THUNDERPUNCH, THUNDERBOLT, REST, ATTRACT, THIEF, RAZOR_WIND, FIRE_PUNCH, SCREECH, FLAMETHROWER, GUILLOTINE, CUT, STRENGTH, FLASH 
	; end
