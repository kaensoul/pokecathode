	db MAGNEMITE ; 081

	db  135,  85,  90,  45,  55,  85
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GRASS ; type
	db 90 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magnemite/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, VICEGRIP, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, IRON_TAIL, EARTHQUAKE, RETURN, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, SCREECH, CUT, STRENGTH
	; end
