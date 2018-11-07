	db ONIX ; 095

	db  80,  45, 60,  20,  48,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 185 ; catch rate
	db 100 ; base exp
	db NO_ITEM, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/onix/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, PSYWAVE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SHARPEN, THUNDERBOLT, REST, ATTRACT, RAZOR_WIND, ICE_BEAM, SURF, FLASH, WHIRLPOOL, WATERFALL
	; end
