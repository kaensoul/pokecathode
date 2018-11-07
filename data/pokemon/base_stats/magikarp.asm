	db MAGIKARP ; 129

	db  50,  44,  55,  65,  80,  40
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, DARK ; type
	db 195 ; catch rate
	db 90 ; base exp
	db NO_ITEM, TWISTEDSPOON ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magikarp/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, PSYWAVE, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, LOVELY_KISS, THUNDERBOLT, REST, THIEF, ICE_BEAM, FLASH  
	; end
