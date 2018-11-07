	db GOLDEEN ; 118

	db  80,  80,  90,  130, 140,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, ICE ; type
	db 10 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/goldeen/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, GIGA_DRAIN, PSYWAVE, FRUSTRATION, IRON_TAIL, SACRED_FIRE, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, THUNDERBOLT, REST, ATTRACT, THIEF, RAZOR_WIND, SCREECH, ICE_BEAM, CUT, FLY, STRENGTH, FLASH 
	; end
