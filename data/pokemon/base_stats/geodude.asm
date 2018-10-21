	db GEODUDE ; 074

	db  31,  20, 40,  9,  65,  100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 255 ; catch rate
	db 86 ; base exp
	db NO_ITEM, MIRACLE_SEED ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/geodude/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SUBMISSION, FISSURE, SLEEP_TALK, LOVELY_KISS, REST, ATTRACT, LOVE_CANNON, FLASH
	; end
