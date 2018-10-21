	db CLEFABLE ; 036

	db  79,  65,  54,  70,  35,  64
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ICE ; type
	db 240 ; catch rate
	db 50 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/clefable/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, RAGE, SHARPEN, THUNDERPUNCH, REST, ATTRACT, THIEF, ICE_BEAM, LOVE_CANNON, GUILLOTINE, CUT, STRENGTH  
	; end
