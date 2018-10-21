	db KABUTOPS ; 141

	db  60, 55, 75,  32,  21,  33
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 220 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kabutops/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, SWAGGER, SLEEP_TALK, RAGE, REST, ATTRACT, RAZOR_WIND, CUT, STRENGTH
	; end
