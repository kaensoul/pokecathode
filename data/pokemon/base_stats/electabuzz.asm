	db ELECTABUZZ ; 125

	db  75,  55,  40, 60,  55,  25
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 225 ; catch rate
	db 56 ; base exp
	db NO_ITEM, SOFT_SAND ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, TOXIC, HYPER_FANG, HIDDEN_POWER, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, FISSURE, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, CUT  
	; end
