	db METAPOD ; 011

	db  60,  50,  45,  80,  80,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 120 ; catch rate
	db 72 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/metapod/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, PROTECT, RAIN_DANCE, GIGA_DRAIN, PSYWAVE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, FLY, FLASH 
	; end
