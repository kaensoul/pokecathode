	db GOLDUCK ; 055

	db  60,  44,  52,  117,  115,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, FAIRY ; type
	db 75 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golduck/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, PROTECT, GIGA_DRAIN, PSYWAVE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, FISSURE, SLEEP_TALK, RAGE, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, RAZOR_WIND, FLAMETHROWER, LOVE_CANNON, FLY, FLASH, WHIRLPOOL
	; end
