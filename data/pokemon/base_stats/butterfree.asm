	db BUTTERFREE ; 012

	db  73,  122,  50,  103,  80,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 160 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, MEGA_PUNCH, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, PROTECT, RAIN_DANCE, GIGA_DRAIN, PSYWAVE, FRUSTRATION, SACRED_FIRE, RETURN, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, SUBMISSION, ICE_PUNCH, SLEEP_TALK, SLUDGE_BOMB, THUNDERPUNCH, REST, ATTRACT, THIEF, RAZOR_WIND, FIRE_PUNCH, GUILLOTINE, CUT, FLY, STRENGTH, FLASH 
	; end
