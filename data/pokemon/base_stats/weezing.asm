	db WEEZING ; 110

	db  45,  65, 40,  80,  65,  50
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIRE ; type
	db 180 ; catch rate
	db 73 ; base exp
	db NO_ITEM, BLACKBELT ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/weezing/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, SWAGGER, SLEEP_TALK, FIRE_BLAST, RAGE, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, SCREECH, FLAMETHROWER, STRENGTH
	; end
