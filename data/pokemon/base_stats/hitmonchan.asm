	db HITMONCHAN ; 107

	db  40, 65,  45,  46,  35, 30
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, DRAGON ; type
	db 45 ; catch rate
	db 50 ; base exp
	db NO_ITEM, MAGNET  ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hitmonchan/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, VICEGRIP, HYPER_BEAM, PROTECT, FRUSTRATION, IRON_TAIL, SACRED_FIRE, THUNDER, EARTHQUAKE, RETURN, DIG, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, THUNDERBOLT, REST, ATTRACT, THIEF, FIRE_PUNCH, SCREECH, FLAMETHROWER, CUT, STRENGTH, FLASH
	; end
