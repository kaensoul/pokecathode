	db PORYGON ; 137

	db  25,  80,  30,  50,  35,  25
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ICE ; type
	db 45 ; catch rate
	db 130 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/porygon/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, THIEF, ICE_BEAM, GUILLOTINE, CUT, STRENGTH 
	; end
