	db SEAKING ; 119

	db  60,  24,  55,  38,  75,  55
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, ELECTRIC ; type
	db 200 ; catch rate
	db 70 ; base exp
	db NO_ITEM, STAR_PIECE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seaking/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, CURSE, TOXIC, HIDDEN_POWER, HYPER_BEAM, RAIN_DANCE, PSYWAVE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, THUNDERBOLT, REST, ATTRACT, FLY, SURF, WHIRLPOOL 
	; end
