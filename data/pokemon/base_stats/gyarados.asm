	db GYARADOS ; 130

	db  75, 60,  65,  103,  120, 80
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, DARK ; type
	db 45 ; catch rate
	db 214 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gyarados/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, PSYWAVE, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, SWAGGER, ICE_PUNCH, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, THUNDERPUNCH, LOVELY_KISS, THUNDERBOLT, REST, THIEF, FIRE_PUNCH, ICE_BEAM, FLASH 
	; end
