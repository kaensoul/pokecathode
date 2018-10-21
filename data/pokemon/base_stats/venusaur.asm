	db VENUSAUR ; 003

	db  120,  122,  95,  55, 68, 76
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/venusaur/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, VICEGRIP, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, FISSURE, SWAGGER, SLEEP_TALK, SANDSTORM, SHARPEN, REST, ATTRACT, CUT, STRENGTH
	; end
	