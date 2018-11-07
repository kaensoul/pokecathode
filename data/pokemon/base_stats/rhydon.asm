	db RHYDON ; 112

	db 32, 12, 36,  65,  95,  56
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FIRE ; type
	db 100 ; catch rate
	db 104 ; base exp
	db NO_ITEM, UP_GRADE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhydon/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, CURSE, TOXIC, HIDDEN_POWER, PROTECT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, SHARPEN, THUNDERBOLT, REST, ATTRACT, THIEF, FLAMETHROWER, GUILLOTINE, FLASH
	; end
