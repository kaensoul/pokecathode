	db VULPIX ; 037

	db  110,  115,  101,  75,  50,  86
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ICE ; type
	db 150 ; catch rate
	db 163 ; base exp
	db NUGGET, STARDUST ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CONVERSION, HEADBUTT, CURSE, MEGA_PUNCH, ROAR, TOXIC, HYPER_FANG, ROCK_SMASH, SCRATCH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, FISSURE, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, RAGE, SHARPEN, THUNDERPUNCH, REST, ATTRACT, THIEF, ICE_BEAM, LOVE_CANNON, GUILLOTINE, CUT, STRENGTH
	; end
