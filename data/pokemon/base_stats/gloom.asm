	db GLOOM ; 044

	db  64,  105,  62,  140,  94,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 50 ; catch rate
	db 162 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gloom/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm HEADBUTT, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, SUBMISSION, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, THUNDERPUNCH, THUNDERBOLT, REST, ATTRACT, THIEF, RAZOR_WIND, FIRE_PUNCH, SCREECH, FLAMETHROWER, GUILLOTINE, CUT, FLY, STRENGTH, FLASH 
	; end
