	db HYPNO ; 097

	db  59,  70,  31,  70,  70, 31
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 190 ; catch rate
	db 70 ; base exp
	db NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hypno/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, ICE_PUNCH, SWAGGER, SLEEP_TALK, THUNDERPUNCH, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, THIEF, ICE_BEAM, GUILLOTINE, CUT, STRENGTH
	; end
