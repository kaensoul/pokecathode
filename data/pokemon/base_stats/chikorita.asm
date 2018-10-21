	db CHIKORITA ; 152

	db  35,  50,  24,  102,  34,  27
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FIRE ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, DRAGON_FANG ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chikorita/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, HYPER_FANG, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, SACRED_FIRE, EARTHQUAKE, RETURN, DIG, SWAGGER, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, THIEF, FIRE_PUNCH, FLAMETHROWER, CUT, STRENGTH, FLASH
	; end
