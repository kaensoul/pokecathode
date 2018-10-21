	db ABRA ; 063

	db  75,  130,  130,  34, 50,  75
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 100 ; catch rate
	db 173 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/abra/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SHARPEN, THUNDERPUNCH, REST, ATTRACT, THIEF, GUILLOTINE, CUT, STRENGTH, FLASH
	; end
