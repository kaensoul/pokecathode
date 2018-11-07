    db MAROWAK ; 105

	db  64,  15, 80,  10,  53,  72
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS ; type
	db 205 ; catch rate
	db 44 ; base exp
	db NO_ITEM, MIRACLE_SEED ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/marowak/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SWEET_SCENT, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, FISSURE, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, ICE_BEAM, SURF, WHIRLPOOL, WATERFALL
	; end
