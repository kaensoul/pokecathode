	db NIDOQUEEN ; 031

	db  70,  100,  70,  106,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 45 ; catch rate
	db 194 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidoqueen/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, TOXIC, HYPER_FANG, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, VICEGRIP, ICY_WIND, PROTECT, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, SUBMISSION, FISSURE, SWAGGER, SLEEP_TALK, RAGE, SHARPEN, THUNDERBOLT, REST, ATTRACT, THIEF, ICE_BEAM, FLAMETHROWER, LOVE_CANNON, CUT, SURF, STRENGTH, FLASH, WHIRLPOOL
	; end
