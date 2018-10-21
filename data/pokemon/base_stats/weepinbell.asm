	db WEEPINBELL ; 070

	db  45,  55,  35,  55,  55,  45
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 220 ; catch rate
	db 51 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/weepinbell/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, TOXIC, SCRATCH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, FISSURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER, CUT, STRENGTH, FLASH
	; end
