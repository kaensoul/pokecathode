	db LAPRAS ; 131

	db 90,  24,  24,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GRASS ; type
	db 90 ; catch rate
	db 240 ; base exp
	db NUGGET, RARE_CANDY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lapras/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, FISSURE, ICE_PUNCH, SLEEP_TALK, RAGE, SHARPEN, THUNDERPUNCH, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, THIEF, LOVE_CANNON, FLASH
	; end
