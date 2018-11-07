	db CLOYSTER ; 091

	db  44,  25, 11,  66,  74,  52
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 220 ; catch rate
	db 63 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cloyster/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SWEET_SCENT, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, THUNDER, PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, RAGE, SHARPEN, LOVELY_KISS, THUNDERBOLT, REST, ATTRACT, THIEF, ICE_BEAM, LOVE_CANNON, FLASH
	; end
