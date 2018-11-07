	db HORSEA ; 116

	db  25,  30,  30,  50,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db BUG, ICE ; type
	db 45 ; catch rate
	db 43 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/horsea/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICY_WIND, PROTECT, GIGA_DRAIN, FRUSTRATION, RETURN, REST, ATTRACT, ICE_BEAM 
	; end
