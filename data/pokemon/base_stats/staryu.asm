	db STARYU ; 120

	db  75,  45,  65,  106,  115,  85
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, ELECTRIC ; type
	db 125 ; catch rate
	db 206 ; base exp
	db NO_ITEM, STAR_PIECE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/staryu/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_WATER_3  ; egg groups

	; tm/hm learnset
	tmhm 
	; end
