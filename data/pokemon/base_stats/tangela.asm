	db TANGELA ; 114

	db  35,  55, 45,  60, 55,  45
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FLYING ; type
	db 225 ; catch rate
	db 66 ; base exp
	db NO_ITEM, POLKADOT_BOW ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tangela/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, SHARPEN, LOVELY_KISS, REST, ATTRACT, THIEF, RAZOR_WIND, LOVE_CANNON, GUILLOTINE, FLY, SURF, FLASH
	; end
