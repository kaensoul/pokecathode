	db RHYHORN ; 111

	db  60,  90,  60,  129,  100,  60
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIRE ; type
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, SWAGGER, SLEEP_TALK, FIRE_BLAST, RAGE, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, SCREECH, FLAMETHROWER, STRENGTH
	; end
