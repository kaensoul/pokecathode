	db PERSIAN ; 053

	db  94,  56,  74, 100,  113,  84
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 148 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/persian/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, TOXIC, SCRATCH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, THUNDERBOLT, REST, ATTRACT, THIEF, RAZOR_WIND, FLAMETHROWER, FLY, FLASH 
	; end
