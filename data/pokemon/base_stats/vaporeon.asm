	db VAPOREON ; 134

	db 70,  135,  60,  135, 60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vaporeon/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, RETURN, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, RAZOR_WIND, CUT, FLY
	; end
