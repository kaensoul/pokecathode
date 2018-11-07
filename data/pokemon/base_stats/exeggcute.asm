	db EXEGGCUTE ; 102

	db  90,  160, 80,  35,  15,  45
	;   hp  atk  def  spd  sat  sdf

	db STEEL, DARK ; type
	db 90 ; catch rate
	db 98 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/exeggcute/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, PROTECT, FRUSTRATION, IRON_TAIL, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, SWAGGER, SLEEP_TALK, FIRE_BLAST, SHARPEN, REST, ATTRACT, THIEF, FLAMETHROWER, GUILLOTINE, CUT, STRENGTH
	; end
