	db TENTACRUEL ; 073

	db  84,  72,  105, 50,  110, 74
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, PSYCHIC ; type
	db 60 ; catch rate
	db 205 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tentacruel/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, FRUSTRATION, IRON_TAIL, SACRED_FIRE, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, SUBMISSION, SLEEP_TALK, THUNDERBOLT, REST, ATTRACT, SCREECH, FLAMETHROWER, FLASH  
	; end
