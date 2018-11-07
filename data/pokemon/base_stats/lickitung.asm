	db LICKITUNG ; 108

	db  60,  85,  55,  50,  45,  50
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, DRAGON ; type
	db 25 ; catch rate
	db 127 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lickitung/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, VICEGRIP, HYPER_BEAM, PROTECT, FRUSTRATION, IRON_TAIL, SACRED_FIRE, THUNDER, EARTHQUAKE, RETURN, DIG, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, THUNDERBOLT, REST, ATTRACT, THIEF, FIRE_PUNCH, SCREECH, FLAMETHROWER, CUT, STRENGTH, FLASH
	; end
