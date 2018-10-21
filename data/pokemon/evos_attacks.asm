INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, HORN_ATTACK
	db 8, VINE_WHIP
	db 11, MUD_SLAP
	db 15, BITE
	db 20, VICEGRIP
	db 25, SWEET_SCENT
	db 32, HORN_DRILL
	db 39, MEGAHORN
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 36, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, HORN_ATTACK
	db 8, VINE_WHIP
	db 11, MUD_SLAP
	db 15, BITE
	db 17, ROCK_THROW
	db 22, VICEGRIP
	db 26, SWEET_SCENT
	db 32, HORN_DRILL
	db 40, SYNTHESIS
	db 46, MEGAHORN
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, HORN_ATTACK
	db 8, VINE_WHIP
	db 11, MUD_SLAP
	db 15, BITE
	db 17, ROCK_THROW
	db 22, VICEGRIP
	db 26, SWEET_SCENT
	db 32, HORN_DRILL
	db 37, SPIKE_CANNON
	db 41, DOUBLE_EDGE
	db 45, MEGAHORN
	db 49, SWORDS_DANCE
	db 54, SYNTHESIS
	db 59, BIND
	db 64, CRUNCH
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, TAIL_WHIP
	db 6, POISON_STING
	db 8, SMOKESCREEN
	db 10, EMBER
	db 12, WRAP
	db 16, BITE
	db 25, FIRE_SPIN
	db 32, DRAGON_RAGE
	db 36, FLAMETHROWER
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, TAIL_WHIP
	db 6, POISON_STING
	db 8, SMOKESCREEN
	db 10, EMBER
	db 12, WRAP
	db 16, BITE
	db 20, FIRE_SPIN
	db 24, SCARY_FACE
	db 30, DRAGON_RAGE
	db 34, CRUNCH
	db 37, FLAMETHROWER
	db 40, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, TAIL_WHIP
	db 6, POISON_STING
	db 8, SMOKESCREEN
	db 10, EMBER
	db 12, WRAP
	db 16, BITE
	db 20, FIRE_SPIN
	db 24, SCARY_FACE
	db 30, DRAGON_RAGE
	db 34, CRUNCH
	db 37, FLAMETHROWER
	db 40, DRAGONBREATH
	db 44, SUNNY_DAY
	db 50, OUTRAGE
	db 54, FIRE_BLAST
	db 63, SCREECH
	db 70, AEROBLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 6, BUBBLE
	db 9, POWDER_SNOW
	db 12, WATER_GUN
	db 15, LICK
	db 18, MIST
	db 22, ICY_WIND
	db 28, KARATE_CHOP
	db 34, BLIZZARD
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 6, BUBBLE
	db 9, POWDER_SNOW
	db 12, WATER_GUN
	db 15, LICK
	db 17, ICY_WIND
	db 19, ICE_PUNCH
	db 22, MIST
	db 26, BUBBLEBEAM
	db 30, RAGE
	db 40, HYDRO_PUMP
	db 45, BLIZZARD
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 6, BUBBLE
	db 9, POWDER_SNOW
	db 12, WATER_GUN
	db 15, LICK
	db 17, ICY_WIND
	db 19, ICE_PUNCH
	db 22, MIST
	db 26, BUBBLEBEAM
	db 30, RAGE
	db 37, BARRAGE
	db 40, CRUNCH
	db 45, CROSS_CHOP
	db 50, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 64, BLIZZARD
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 12, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 4, ABSORB
	db 8, ACID
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BUTTERFREE
	db 0 ; no more evolutions
    db 1, TACKLE
	db 1, STRING_SHOT
	db 4, ABSORB
	db 8, ACID
	db 12, GUST
	db 18, WHIRLWIND
    db 22, MEGA_DRAIN
    db 29, QUIVER_DANCE
    db 32, PSYWAVE
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 4, ABSORB
	db 8, ACID
	db 12, GUST
	db 18, WHIRLWIND
    db 22, MEGA_DRAIN
	db 26, WING_ATTACK
    db 29, QUIVER_DANCE
    db 32, PSYWAVE
	db 35, LEECH_LIFE
	db 40, MEGA_KICK
	db 44, COMET_PUNCH
	db 50, HI_JUMP_KICK
	db 55, EXTREMESPEED
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 26, KAKUNA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, LICK
	db 7, BUBBLE
	db 12, HEADBUTT
	db 16, BITE
	db 20, BUBBLEBEAM
	db 29, CRUNCH
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, LICK
	db 7, BUBBLE
	db 12, HEADBUTT
	db 16, BITE
	db 20, BUBBLEBEAM
	db 32, CRUNCH
	db 36, RAGE
	db 40, THRASH
	db 54, AEROBLAST
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
    db EVOLVE_LEVEL, 24, PIDGEY
	db 0 ; no more evolutions
	db 1, PECK
	db 2, SCARY_FACE
	db 4, LEER
	db 9, MEAN_LOOK
	db 11, HYPNOSIS
	db 16, PURSUIT
	db 18, WING_ATTACK
	db 20, NIGHTMARE
	db 25, BEAT_UP
	db 29, GLARE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db 0 ; no more evolutions
    db 1, PECK
	db 2, SCARY_FACE
	db 4, LEER
	db 9, MEAN_LOOK
	db 11, HYPNOSIS
	db 16, PURSUIT
	db 18, WING_ATTACK
	db 20, NIGHTMARE
	db 26, BEAT_UP
	db 28, DRILL_PECK
	db 33, JUMP_KICK
	db 37, GLARE
	db 40, NASTY_PLOT
	db 45, RAZOR_WIND
	db 50, DREAM_EATER
	db 65, HI_JUMP_KICK
	db 77, SKULL_BASH
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 21, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, MUD_SLAP
	db 8, EMBER 
	db 13, DEFENSE_CURL
	db 18, FLAME_WHEEL
	db 23, ROLLOUT
	db 33, SANDSTORM
	db 43, DIG
	db 55, FLAMETHROWER
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
    db EVOLVE_LEVEL, 34, RATTATA
	db 0 ; no more evolutions
    db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, MUD_SLAP
	db 8, EMBER 
	db 13, DEFENSE_CURL
	db 18, FLAME_WHEEL
	db 22, DIG
	db 25, ROLLOUT
	db 27, AMNESIA
	db 29, MAGNITUDE
	db 33, FLAMETHROWER
	db 46, CONVERSION
	db 61, MORNING_SUN
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, MUD_SLAP
	db 8, EMBER 
	db 13, DEFENSE_CURL
	db 18, FLAME_WHEEL
	db 22, DIG
	db 25, ROLLOUT
	db 27, AMNESIA
	db 29, MAGNITUDE
	db 33, FLAMETHROWER
	db 40, MORNING_SUN
	db 45, FIRE_SPIN
	db 54, FLARE_BLITZ
	db 60, EARTHQUAKE
	db 74, SPIKES
	db 0 ; no more level-up moves

RaticateEvosAttacks:
    db EVOLVE_LEVEL, 29, SPEAROW
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, POISON_STING
	db 5, TAIL_WHIP
	db 7, FURY_SWIPES
	db 11, PURSUIT
	db 16, TELEPORT
	db 20, SLUDGE
	db 24, SWEET_KISS
	db 28, TOXIC
	db 30, SCRATCH
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, POISON_STING
	db 5, TAIL_WHIP
	db 7, FURY_SWIPES
	db 11, PURSUIT
	db 16, TELEPORT
	db 20, SLUDGE
	db 24, SWEET_KISS
	db 28, TOXIC
	db 33, SLASH
	db 38, SCRATCH
	db 44, RAGE
	db 55, NASTY_PLOT
	db 64, SLUDGE_BOMB
	db 0 ; no more level-up moves

FearowEvosAttacks:
    db EVOLVE_LEVEL, 30, EKANS
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 5, MUD_SLAP
	db 11, DOUBLESLAP
	db 14, BIDE
	db 19, REST
	db 22, SNORE
	db 27, KARATE_CHOP
	db 31, SLEEP_TALK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 5, MUD_SLAP
	db 11, DOUBLESLAP
	db 14, BIDE
	db 19, REST
	db 22, SNORE
	db 27, KARATE_CHOP
	db 31, MAGNITUDE
	db 39, COMET_PUNCH
	db 46, MACH_PUNCH
	db 57, HI_JUMP_KICK
	db 60, AGILITY
	db 65, BATON_PASS
	db 0 ; no more level-up moves

ArbokEvosAttacks:
    db EVOLVE_LEVEL, 33, PIKACHU
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 3, TAIL_WHIP
	db 6, BITE
	db 9, ROCK_THROW
	db 12, QUICK_ATTACK
	db 16, LOW_KICK
	db 20, CONVERSION
	db 25, DIG
	db 30, ROCK_SLIDE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 3, TAIL_WHIP
	db 6, BITE
	db 9, ROCK_THROW
	db 12, QUICK_ATTACK
	db 16, LOW_KICK
	db 20, CONVERSION
	db 25, DIG
	db 30, ROCK_SLIDE
	db 34, CRUNCH
	db 36, SUPER_FANG
	db 40, ENCORE
	db 42, HYPER_FANG
	db 50, EARTHQUAKE
	db 0 ; no more level-up moves

RaichuEvosAttacks:
    db EVOLVE_ITEM, LEAF_STONE, SANDSHREW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, SAND_ATTACK
	db 6, QUICK_ATTACK
	db 10, DOUBLE_KICK
	db 13, RAZOR_LEAF
	db 16, MAGNITUDE
	db 22, ENCORE
	db 26, SYNTHESIS
	db 30, DIG
	db 34, JUMP_KICK
	db 41, SWORDS_DANCE
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, SAND_ATTACK
	db 6, QUICK_ATTACK
	db 10, DOUBLE_KICK
	db 13, RAZOR_LEAF
	db 16, MAGNITUDE
	db 22, ENCORE
	db 26, SYNTHESIS
	db 30, DIG
	db 34, JUMP_KICK
	db 44, EARTHQUAKE
	db 50, HI_JUMP_KICK
	db 54, GROWTH
	db 61, BATON_PASS
	db 0 ; no more level-up moves

SandslashEvosAttacks:
    db EVOLVE_LEVEL, 24, NIDORAN_F
	db 0 ; no more evolutions
	db 1, POUND
	db 1, TAIL_WHIP
	db 6, BITE
	db 9, DEFENSE_CURL
	db 11, DOUBLESLAP
	db 15, SWIFT
	db 19, THIEF
	db 24, BEAT_UP
	db 30, NASTY_PLOT
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, TAIL_WHIP
	db 6, BITE
	db 9, DEFENSE_CURL
	db 11, DOUBLESLAP
	db 15, SWIFT
	db 19, THIEF
	db 24, BEAT_UP
	db 30, NASTY_PLOT
	db 37, CRUNCH
	db 41, SPIKES
	db 51, AEROBLAST
	db 56, SUPER_FANG
	db 60, SKULL_BASH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, POUND
	db 8, LOW_KICK
	db 10, HORN_ATTACK
	db 12, TELEPORT
	db 15, DOUBLESLAP
	db 18, BITE 
	db 22, DIG
	db 26, METRONOME
	db 30, SUPER_FANG
	db 34, RAGE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, POUND
	db 8, LOW_KICK
	db 10, HORN_ATTACK
	db 12, TELEPORT
	db 15, DOUBLESLAP
	db 18, BITE
    db 20, DOUBLE_KICK	
	db 22, DIG
	db 26, METRONOME
	db 30, SUPER_FANG
	db 34, RAGE
	db 39, HORN_DRILL
	db 44, AGILITY
	db 50, MEGAHORN
	db 66, BATON_PASS
	db 72, DOUBLE_EDGE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, NIDORINO
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, PECK
	db 1, TAIL_WHIP
	db 3, BUBBLE
	db 6, HORN_ATTACK
	db 9, WATER_GUN
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 19, BUBBLEBEAM
	db 26, SWORDS_DANCE
	db 30, SLASH
	db 38, MEGAHORN
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, PECK
	db 1, TAIL_WHIP
	db 3, BUBBLE
	db 6, HORN_ATTACK
	db 9, WATER_GUN
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 19, BUBBLEBEAM
	db 22, AGILITY
	db 26, METAL_CLAW
	db 30, SLASH
	db 32, DETECT
	db 33, SWORDS_DANCE
	db 40, MEGAHORN
	db 46, ENDURE
	db 52, HYDRO_PUMP
	db 60, MIND_READER
	db 0 ; no more level-up moves

NidokingEvosAttacks:
    db EVOLVE_LEVEL, 26, CLEFAIRY
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WITHDRAW
	db 4, SMOG
	db 8, SMOKESCREEN
	db 12, WATER_GUN
	db 15, ROCK_THROW
	db 19, MIST
	db 22, ROLLOUT
	db 24, HAZE
	db 27, RECOVER
	db 31, OCTAZOOKA
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db 0 ; no more evolutions
    db 1, BUBBLE
	db 1, WITHDRAW
	db 4, SMOG
	db 8, SMOKESCREEN
	db 12, WATER_GUN
	db 15, ROCK_THROW
	db 19, MIST
	db 22, ROLLOUT
	db 24, HAZE
	db 27, REFLECT
	db 28, LIGHT_SCREEN
	db 34, BUBBLEBEAM
	db 43, RECOVER
	db 46, OCTAZOOKA
	db 50, CONVERSION
	db 54, SLUDGE_BOMB
	db 59, TOXIC
	db 0 ; no more level-up moves

ClefableEvosAttacks:
    db EVOLVE_LEVEL, 29, VULPIX
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, TACKLE
	db 4, MUD_SLAP
	db 6, GROWL
	db 8, ICY_WIND
	db 12, ROCK_THROW
	db 15, DEFENSE_CURL
	db 17, RAPID_SPIN
	db 19, FURY_SWIPES
	db 22, POWDER_SNOW
	db 26, DIG
	db 29, ICE_PUNCH
	db 33, SPIKES
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, TACKLE
	db 4, MUD_SLAP
	db 6, GROWL
	db 8, ICY_WIND
	db 12, ROCK_THROW
	db 15, DEFENSE_CURL
	db 17, RAPID_SPIN
	db 19, FURY_SWIPES
	db 22, POWDER_SNOW
	db 26, DIG
	db 29, ICE_PUNCH
	db 31, SLASH
	db 40, SPIKES
	db 45, SWORDS_DANCE
	db 56, EARTHQUAKE
	db 60, CROSS_CHOP
	db 70, BARRAGE
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
    db EVOLVE_LEVEL, 19, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, FURY_SWIPES
	db 15, DRAGONBREATH
	db 19, THUNDER_WAVE
	db 22, THUNDERPUNCH
	db 30, SPARK
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_LEVEL, 38, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, FURY_SWIPES
	db 15, DRAGONBREATH
	db 19, THUNDER_WAVE
	db 25, THUNDERPUNCH
	db 28, SUPERSONIC
	db 34, VITAL_THROW
	db 42, SPARK
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, FURY_SWIPES
	db 15, DRAGONBREATH
	db 25, THUNDERPUNCH
	db 28, SUPERSONIC
	db 34, VITAL_THROW
    db 48, MACH_PUNCH 	
	db 52, SPARK
	db 59, CRUNCH
	db 78, BELLY_DRUM
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 32, GOLBAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 6, ICY_WIND
	db 13, TWISTER
	db 15, HORN_ATTACK
	db 18, MIST
	db 20, HAZE
    db 23, DRAGONBREATH
    db 27, POWDER_SNOW
	db 32, AURORA_BEAM
    db 39, MEGAHORN
    db 43, OUTRAGE
    db 45, BARRAGE	
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 6, ICY_WIND
	db 13, TWISTER
	db 15, HORN_ATTACK
	db 18, MIST
	db 20, HAZE
    db 23, DRAGONBREATH
    db 27, POWDER_SNOW
	db 31, AURORA_BEAM
	db 33, STOMP
	db 36, CRUNCH
	db 44, SACRED_FIRE
	db 54, ICE_BEAM
    db 59, MEGAHORN
    db 63, OUTRAGE
    db 68, BARRAGE
    db 74, BLIZZARD	
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 38, GLOOM
	db 0 ; no more evolutions
	db 1, PECK
	db 3, TAIL_WHIP
	db 7, EMBER
	db 9, FURY_ATTACK
	db 14, FIRE_SPIN
	db 16, GUST
	db 20, FOCUS_ENERGY
	db 24, SWIFT
	db 28, DRILL_PECK
	db 32, SOFTBOILED
	db 35, FLAMETHROWER
	db 42, SKY_ATTACK
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 3, TAIL_WHIP
	db 7, EMBER
	db 9, FURY_ATTACK
	db 14, FIRE_SPIN
	db 16, GUST
	db 20, FOCUS_ENERGY
	db 24, SWIFT
	db 28, DRILL_PECK
	db 32, SOFTBOILED
	db 34, FLAMETHROWER
	db 42, EXTREMESPEED
	db 46, AGILITY
	db 50, HI_JUMP_KICK
	db 54, PERISH_SONG
	db 60, SKY_ATTACK
	db 65, FLARE_BLITZ
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db EVOLVE_LEVEL, 38, PARAS
	db 0 ; no more evolutions
	db 1, PECK
	db 3, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 9, DOUBLE_KICK
	db 14, SING
	db 16, GUST
	db 20, THUNDER_WAVE
	db 24, SWIFT
	db 28, SONICBOOM
	db 32, MORNING_SUN
	db 35, THUNDERBOLT
	db 42, SKY_ATTACK
	db 45, SPARK
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 3, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 9, DOUBLE_KICK
	db 14, SING
	db 16, GUST
	db 20, THUNDER_WAVE
	db 24, SWIFT
	db 28, SONICBOOM
	db 32, MORNING_SUN
	db 35, THUNDERBOLT
	db 42, CONFUSE_RAY
	db 46, AMNESIA
	db 50, ROLLING_KICK
	db 54, PERISH_SONG
	db 60, RAZOR_WIND
	db 65, THUNDER
	db 0 ; no more level-up moves

ParasectEvosAttacks:
    db EVOLVE_LEVEL, 30, VENONAT
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, PECK
	db 7, TAIL_WHIP
	db 10, GUST
	db 14, TWISTER
	db 22, GLARE
	db 28, DRAGONBREATH
	db 30, DRILL_PECK
	db 32, TAKE_DOWN
	db 35, ENCORE
	db 37, JUMP_KICK
	db 38, SONICBOOM
	db 40, SACRED_FIRE
	db 42, HI_JUMP_KICK
	db 45, SKY_ATTACK
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 55, VENOMOTH
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, PECK
	db 7, TAIL_WHIP
	db 10, GUST
	db 14, TWISTER
	db 22, GLARE
	db 28, DRAGONBREATH
	db 33, REST
	db 35, SNORE
	db 38, SLEEP_TALK
	db 40, DRILL_PECK
	db 42, TAKE_DOWN
	db 47, JUMP_KICK
	db 58, SONICBOOM
	db 60, SACRED_FIRE
	db 62, HI_JUMP_KICK
	db 65, SKY_ATTACK
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, PECK
	db 7, TAIL_WHIP
	db 10, GUST
	db 14, TWISTER
	db 22, GLARE
	db 28, DRAGONBREATH
	db 33, REST
	db 35, SNORE
	db 38, SLEEP_TALK
	db 40, DRILL_PECK
	db 42, TAKE_DOWN
	db 47, JUMP_KICK
	db 55, SCARY_FACE
	db 58, SONICBOOM
	db 65, SACRED_FIRE
	db 68, HI_JUMP_KICK
	db 70, SKY_ATTACK
	db 76, OUTRAGE
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 34, DUGTRIO
	db 0 ; no more evolutions
	db 1, SPLASH
	db 3, BUBBLE
    db 4, TAIL_WHIP	
	db 6, SPITE
	db 8, NIGHT_SHADE
	db 10, HAZE
	db 13, BONE_CLUB
	db 16, CURSE
	db 23, BONE_RUSH
	db 26, MIST
	db 31, ANCIENTPOWER
	db 34, SHADOW_BALL
	db 37, DESTINY_BOND
	db 40, PERISH_SONG
	db 43, BONEMERANG
	db 45, HYDRO_PUMP
	db 50, GUILLOTINE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 3, BUBBLE
    db 4, TAIL_WHIP	
	db 6, SPITE
	db 8, NIGHT_SHADE
	db 10, HAZE
	db 13, BONE_CLUB
	db 16, CURSE
	db 23, BONE_RUSH
	db 26, MIST
	db 31, ANCIENTPOWER
	db 34, SHADOW_BALL
	db 40, DESTINY_BOND
	db 46, PERISH_SONG
	db 50, BONEMERANG
	db 56, HYDRO_PUMP
	db 60, GUILLOTINE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 30, PERSIAN
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 8, QUICK_ATTACK
	db 12, GUST
	db 14, PURSUIT
	db 17, CONFUSE_RAY
	db 19, PSYBEAM
	db 22, SING
	db 25, WHIRLWIND
	db 27, SONICBOOM
	db 30, TRI_ATTACK
	db 36, NASTY_PLOT
	db 40, AEROBLAST
	db 44, THUNDER_WAVE
	db 46, RAZOR_WIND
	db 50, ZAP_CANNON
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 8, QUICK_ATTACK
	db 12, GUST
	db 14, PURSUIT
	db 17, CONFUSE_RAY
	db 19, PSYBEAM
	db 22, SING
	db 25, WHIRLWIND
	db 27, SONICBOOM
	db 30, TRI_ATTACK
	db 38, MEAN_LOOK
	db 45, NASTY_PLOT
	db 50, AEROBLAST
	db 54, THUNDER_WAVE
	db 60, RAZOR_WIND
	db 65, ZAP_CANNON
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, GOLDUCK
	db 0 ; no more evolutions
	db 5, CHARM
	db 8, SWEET_SCENT
	db 11, GUST
	db 13, TELEPORT
	db 16, PIN_MISSILE
	db 26, SWEET_KISS
	db 28, HEAL_BELL
	db 30, STUN_SPORE
	db 35, QUIVER_DANCE
	db 40, PSYWAVE
	db 52, LOVE_CANNON
	db 56, PETAL_DANCE
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 5, CHARM
	db 8, SWEET_SCENT
	db 11, GUST
	db 13, TELEPORT
	db 16, PIN_MISSILE
	db 22, MORNING_SUN
	db 26, SWEET_KISS
	db 28, HEAL_BELL
	db 30, STUN_SPORE
	db 35, QUIVER_DANCE
	db 40, PSYWAVE
	db 52, LOVE_CANNON
	db 56, PETAL_DANCE
	db 60, SOLARBEAM
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 39, PRIMEAPE
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, LEER
	db 1, VINE_WHIP
	db 5, LEECH_SEED
	db 7, ABSORB
	db 10, POISONPOWDER
	db 13, COTTON_SPORE
	db 17, RAZOR_LEAF
	db 25, PSYBEAM
	db 30, SYNTHESIS
	db 40, MEGA_DRAIN
	db 43, PSYCHIC_M
	db 47, GIGA_DRAIN
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, LEER
	db 1, VINE_WHIP
	db 5, LEECH_SEED
	db 7, ABSORB
	db 10, POISONPOWDER
	db 13, COTTON_SPORE
	db 17, RAZOR_LEAF
	db 25, PSYBEAM
	db 30, SYNTHESIS
	db 38, MEAN_LOOK
	db 44, MEGA_DRAIN
	db 53, DREAM_EATER
	db 58, BIND
	db 63, PSYCHIC_M
	db 77, GIGA_DRAIN
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, LICK
	db 1, POISON_STING
	db 6, LOW_KICK
	db 9, SING
	db 11, LEER
	db 13, BUBBLE
	db 16, BEAT_UP
	db 24, SLUDGE
	db 27, PURSUIT
	db 29, TOXIC
	db 32, NASTY_PLOT
	db 36, ACID_ARMOR
	db 40, SLUDGE_BOMB
	db 46, HI_JUMP_KICK
	db 50, SKULL_BASH
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, POISON_STING
	db 6, LOW_KICK
	db 9, SING
	db 11, LEER
	db 13, BUBBLE
	db 16, BEAT_UP
	db 24, SLUDGE
	db 27, PURSUIT
	db 29, TOXIC
	db 33, JUMP_KICK
	db 36, BUBBLEBEAM
	db 42, NASTY_PLOT
	db 46, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 56, HI_JUMP_KICK
	db 60, SKULL_BASH
	db 70, PERISH_SONG
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, POLIWHIRL
	db 0 ; no more evolutions
	db 1, ABSORB
	db 3, STRING_SHOT
	db 5, EMBER
	db 7, SMOKESCREEN
	db 9, BITE
	db 12, FURY_CUTTER
	db 17, SELFDESTRUCT
	db 22, POISON_GAS
	db 26, FLAME_WHEEL
	db 30, EXPLOSION
	db 35, LEECH_LIFE
	db 42, FLAMETHROWER
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 3, STRING_SHOT
	db 5, EMBER
	db 7, SMOKESCREEN
	db 9, BITE
	db 12, FURY_CUTTER
	db 17, SELFDESTRUCT
	db 22, POISON_GAS
	db 26, FLAME_WHEEL
	db 30, EXPLOSION
	db 35, LEECH_LIFE
	db 42, FLAMETHROWER
	db 47, SPIDER_WEB
	db 55, FIRE_SPIN
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
    db EVOLVE_LEVEL, 35, ABRA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TAIL_WHIP
	db 6, FURY_ATTACK
	db 8, FURY_CUTTER
	db 12, METAL_CLAW
	db 16, BITE
	db 20, SPIKES
	db 24, REFLECT
	db 30, IRON_TAIL
	db 37, CROSS_CHOP
	db 40, SWORDS_DANCE
	db 46, SPIKE_CANNON
	db 50, LEECH_LIFE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TAIL_WHIP
	db 6, FURY_ATTACK
	db 8, FURY_CUTTER
	db 12, METAL_CLAW
	db 16, BITE
	db 20, SPIKES
	db 24, REFLECT
	db 30, IRON_TAIL
	db 35, ENDURE
	db 40, LIGHT_SCREEN
	db 47, CROSS_CHOP
	db 50, SWORDS_DANCE
	db 56, SPIKE_CANNON
	db 60, LEECH_LIFE
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 33, ALAKAZAM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, POISON_STING
	db 10, PURSUIT
	db 14, FURY_ATTACK
	db 19, FURY_CUTTER
	db 23, MEGA_DRAIN
	db 26, FALSE_SWIPE
	db 30, LOVELY_KISS
	db 33, FAINT_ATTACK
	db 36, LEECH_LIFE
	db 40, MEGAHORN
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, POISON_STING
	db 10, PURSUIT
	db 14, FURY_ATTACK
	db 19, FURY_CUTTER
	db 23, MEGA_DRAIN
	db 26, FALSE_SWIPE
	db 30, LOVELY_KISS
	db 32, FAINT_ATTACK
	db 33, SLASH
	db 38, SCRATCH
	db 42, LEECH_LIFE
	db 48, AGILITY
	db 50, NASTY_PLOT
	db 53, SWORDS_DANCE
	db 60, MEGAHORN
	db 64, CROSS_CHOP
	db 72, EXTREMESPEED
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MACHOKE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 6, LICK
	db 10, BITE
	db 14, FURY_SWIPES
	db 17, DETECT
	db 22, PURSUIT
	db 27, MIMIC
	db 33, DIG
	db 36, ENCORE
	db 40, CRUNCH
	db 45, MOONLIGHT
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 6, LICK
	db 10, BITE
	db 14, FURY_SWIPES
	db 17, DETECT
	db 22, PURSUIT
	db 27, MIMIC
	db 33, DIG
	db 36, ENCORE
	db 40, CRUNCH
	db 45, MOONLIGHT
	db 52, COMET_PUNCH
	db 58, SKULL_BASH
	db 64, NASTY_PLOT
	db 0 ; no more level-up moves

MachampEvosAttacks:
    db EVOLVE_ITEM, LEAF_STONE, BELLSPROUT
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 7, FOCUS_ENERGY
	db 12, RAZOR_LEAF
	db 17, KARATE_CHOP
	db 19, LEECH_SEED
	db 24, VITAL_THROW
	db 28, SYNTHESIS
	db 34, SUBSTITUTE
	db 40, BIND
	db 46, CRUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 7, FOCUS_ENERGY
	db 12, RAZOR_LEAF
	db 17, KARATE_CHOP
	db 19, LEECH_SEED
	db 24, VITAL_THROW
	db 28, SYNTHESIS
	db 35, MEGA_PUNCH
	db 44, SUBSTITUTE
	db 50, BIND
	db 56, CRUNCH
	db 63, LEECH_SEED
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 14, COTTON_SPORE
	db 18, BITE
	db 24, EMBER
	db 29, SUNNY_DAY
	db 38, ROAR
	db 43, PETAL_DANCE
	db 48, SLEEP_POWDER
	db 54, SYNTHESIS
	db 60, CRUNCH
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 14, COTTON_SPORE
	db 18, BITE
	db 24, FLAME_WHEEL
	db 29, SUNNY_DAY
	db 32, SOLARBEAM
	db 38, ROAR
	db 43, PETAL_DANCE
	db 48, SLEEP_POWDER
	db 54, SYNTHESIS
	db 60, CRUNCH
	db 65, FLARE_BLITZ
	db 73, BIND
	db 80, GROWTH
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 27, TENTACRUEL
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 4, POUND
	db 6, CONFUSION
	db 10, REST
	db 15, DOUBLESLAP
	db 19, DRAGONBREATH
	db 25, PSYBEAM
	db 30, CONFUSE_RAY
	db 32, AMNESIA
	db 34, HYPNOSIS
	db 38, FUTURE_SIGHT
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 4, POUND
	db 6, CONFUSION
	db 10, REST
	db 15, DOUBLESLAP
	db 19, DRAGONBREATH
	db 25, PSYBEAM
	db 27, FUTURE_SIGHT
	db 34, PSYCH_UP
	db 39, AMNESIA
	db 44, HYPNOSIS
	db 50, PSYCHIC_M
	db 56, CONFUSE_RAY
	db 60, SACRED_FIRE
	db 66, HEAL_BELL
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, GRAVELER
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 3, CHARM
	db 6, ABSORB
	db 11, MOONLIGHT
	db 14, LIGHT_SCREEN
	db 17, REFLECT
	db 22, SWEET_KISS
	db 35, DIG
	db 40, LOVE_CANNON
	db 47, MEGA_DRAIN
	db 53, SPIKES
	db 58, GIGA_DRAIN
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 3, CHARM
	db 6, ABSORB
	db 9, VINE_WHIP
	db 11, MOONLIGHT
	db 14, LIGHT_SCREEN
	db 17, REFLECT
	db 22, SWEET_KISS
	db 30, RAZOR_LEAF
	db 35, DIG
	db 43, LOVE_CANNON
	db 47, MEGA_DRAIN
	db 55, SPIKES
	db 60, GIGA_DRAIN
	db 68, PETAL_DANCE
	db 75, GROWTH
	db 80, BIND
	db 0 ; no more level-up moves

GolemEvosAttacks:
    db EVOLVE_LEVEL, 50, PONYTA
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, DEFENSE_CURL
	db 8, HARDEN
	db 14, BITE
	db 19, FURY_CUTTER
	db 25, TAKE_DOWN
	db 29, ROLLOUT
	db 34, PROTECT
	db 40, LEECH_LIFE
	db 45, REVERSAL
	db 50, MEGAHORN
	db 0 ; no more level-up moves

PonytaEvosAttacks:	
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, DEFENSE_CURL
	db 8, HARDEN
	db 14, BITE
	db 19, FURY_CUTTER
	db 25, TAKE_DOWN
	db 29, ROLLOUT
	db 34, PROTECT
	db 40, LEECH_LIFE
	db 45, REVERSAL
	db 50, MEGAHORN
	db 52, EXTREMESPEED
	db 58, OUTRAGE
	db 63, FLARE_BLITZ
	db 67, PIN_MISSILE
	db 75, SPIKE_CANNON
	db 0 ; no more level-up moves

RapidashEvosAttacks:
    db EVOLVE_ITEM, THUNDERSTONE, SLOWPOKE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 3, POUND
	db 6, THUNDERSHOCK
	db 10, SING
	db 15, FLASH
	db 19, ROLLOUT
	db 25, THUNDER_WAVE
	db 31, HEAL_BELL
	db 36, THUNDERBOLT
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 3, POUND
	db 6, THUNDERSHOCK
	db 10, SING
	db 15, FLASH
	db 19, WING_ATTACK
	db 25, THUNDER_WAVE
	db 31, HEAL_BELL
	db 36, THUNDERBOLT
	db 40, PSYWAVE
	db 46, QUIVER_DANCE
	db 52, SONICBOOM
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
    db EVOLVE_LEVEL, 30, MAGNEMITE
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 8, RAZOR_LEAF
	db 13, ROCK_THROW
	db 16, LEECH_SEED
	db 19, SPIKES
	db 25, STOMP
	db 30, PIN_MISSILE
	db 34, ANCIENTPOWER
	db 37, SPIKE_CANNON
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db 0 ; no more evolutions
    db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 13, ROCK_THROW
	db 16, LEECH_SEED
	db 19, SPIKES
	db 25, STOMP
	db 29, PIN_MISSILE
	db 34, ANCIENTPOWER
	db 38, SLEEP_POWDER
	db 38, STUN_SPORE
	db 47, SPIKE_CANNON
	db 56, BIND
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
    db EVOLVE_LEVEL, 30, FARFETCH_D
	db 0 ; no more evolutions
    db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, WITHDRAW
	db 8, COUNTER
	db 13, ROLLOUT
	db 16, ENDURE
	db 19, SUBSTITUTE
	db 25, STOMP
	db 30, REVERSAL
	db 34, ANCIENTPOWER
	db 37, IRON_TAIL
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 20, DEWGONG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 8, ROCK_THROW
	db 13, TWISTER
	db 15, TAKE_DOWN
	db 19, WING_ATTACK
	db 25, MAGNITUDE
	db 31, SKY_ATTACK
	db 36, HYPER_FANG
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 33, HARDEN
	db 37, DISABLE
	db 45, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 45, ACID_ARMOR
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
if _CRYSTAL
	db 33, SPIKES
endc
	db 41, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
    db EVOLVE_LEVEL, 27, KRABBY
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND
	db 5, PURSUIT
	db 9, POWDER_SNOW
	db 14, QUICK_ATTACK
	db 18, HYPNOSIS
	db 22, ICY_WIND
	db 27, BEAT_UP
	db 34, NASTY_PLOT
	db 40, SKULL_BASH
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, VICEGRIP
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 38, PROTECT
	db 49, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SELFDESTRUCT
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, ROLLING_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, HI_JUMP_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 41, ENDURE
	db 46, MEGA_KICK
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MACH_PUNCH
	db 38, MEGA_PUNCH
	db 44, DETECT
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, SLAM
	db 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
    db EVOLVE_ITEM, FIRE_STONE, RHYHORN
	db 0 ; no more evolutions
	db 1, LICK
	db 4, TAIL_WHIP
	db 8, EMBER
	db 13, KARATE_CHOP
	db 18, FOCUS_ENERGY
	db 23, DOUBLE_KICK
	db 27, FIRE_PUNCH
	db 33, AGILITY
	db 37, COMET_PUNCH
	db 44, FLARE_BLITZ
	db 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 54, TAKE_DOWN
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, BIND
	db 31, MEGA_DRAIN
	db 34, STUN_SPORE
	db 40, SLAM
	db 46, GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 30, SEADRA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, STRING_SHOT
	db 9, ICY_WIND
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_LEVEL, 50, GOLDEEN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, HORN_DRILL
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, HORN_DRILL
	db 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
    db EVOLVE_LEVEL, 28, MR__MIME
	db 0 ; no more evolutions
	db 1, POUND
	db 1, MIST
	db 4, POWDER_SNOW
	db 7, EMBER
	db 11, WATER_GUN
	db 14, DOUBLESLAP
	db 19, DOUBLE_TEAM
	db 23, ICY_WIND
	db 28, ICE_PUNCH
	db 28, FIRE_PUNCH
	db 37, BELLY_DRUM
	db 45, ENCORE
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, MIST
	db 4, POWDER_SNOW
	db 7, EMBER
	db 11, HAZE
	db 14, KARATE_CHOP
	db 19, DOUBLE_TEAM
	db 23, ICY_WIND
	db 27, ICE_PUNCH
	db 27, FIRE_PUNCH
	db 40, BELLY_DRUM
	db 45, ENCORE
	db 59, CROSS_CHOP
	db 64, FLARE_BLITZ
	db 78, BARRAGE
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
    db EVOLVE_ITEM, MOON_STONE, MAGMAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 6, MUD_SLAP
	db 9, QUICK_ATTACK
	db 13, PECK
	db 16, SWIFT
	db 20, DIG
	db 24, DRILL_PECK
	db 28, ROCK_SLIDE
	db 36, PERISH_SONG
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 7, FOCUS_ENERGY
	db 13, BIND
	db 19, SEISMIC_TOSS
	db 25, HARDEN
	db 31, GUILLOTINE
	db 37, SUBMISSION
	db 43, SWORDS_DANCE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, PURSUIT
	db 34, REST
	db 43, THRASH
	db 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
if _CRYSTAL
	db 36, BATON_PASS
else
	db 36, FOCUS_ENERGY
endc
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_LEVEL, 30, OMANYTE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 6, BITE
	db 9, ROCK_THROW
	db 12, ICY_WIND
	db 18, FURY_SWIPES
	db 24, ROCK_SLIDE
	db 32, MAGNITUDE
	db 36, SWORDS_DANCE
	db 44, AGILITY
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BITE
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 51, MEGA_DRAIN
	db 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, ENDURE
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 30, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, EMBER
	db 8, QUICK_ATTACK
	db 13, BITE
	db 17, FLAME_WHEEL
	db 20, DOUBLE_KICK
	db 24, DRAGON_RAGE
	db 29, ROAR
	db 34, FLARE_BLITZ
	db 40, EXTREMESPEED
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 39, LIGHT_SCREEN
	db 47, SAFEGUARD
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 41, LIGHT_SCREEN
	db 51, SAFEGUARD
	db 61, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 19, QUICK_ATTACK
	db 27, FLAME_WHEEL
	db 36, SWIFT
	db 46, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 42, SWIFT
	db 54, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 45, SWIFT
	db 60, FLAMETHROWER
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 20, BITE
	db 27, SCARY_FACE
	db 35, SLASH
	db 43, SCREECH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 28, SCARY_FACE
	db 37, SLASH
	db 45, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 28, SCARY_FACE
	db 38, SLASH
	db 47, SCREECH
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, CONFUSION
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, PECK
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 41, CONFUSION
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, BITE
	db 1, FLAME_WHEEL
	db 10, QUICK_ATTACK
	db 15, TAKE_DOWN
	db 20, ROAR
	db 25, SWIFT
	db 30, SUPERSONIC
	db 35, THUNDERBOLT
	db 40, NASTY_PLOT
	db 45, EXTREMESPEED
	db 50, AGILITY
	db 55, FLAMETHROWER
	db 60, CRUNCH
	db 65, MEGAHORN
	db 70, SPARK
	db 75, THUNDER_WAVE
	db 80, RAZOR_WIND
	db 85, FLARE_BLITZ
	db 90, HI_JUMP_KICK
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 24, LIGHT_SCREEN
	db 24, REFLECT
	db 24, SAFEGUARD
	db 33, BATON_PASS
	db 42, SWIFT
	db 51, AGILITY
	db 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 23, LEECH_LIFE
	db 30, FURY_SWIPES
	db 37, SPIDER_WEB
if _CRYSTAL
	db 45, AGILITY
else
	db 45, SCREECH
endc
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 1, CONSTRICT
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 25, LEECH_LIFE
	db 34, FURY_SWIPES
	db 43, SPIDER_WEB
if _CRYSTAL
	db 53, AGILITY
else
	db 53, SCREECH
endc
	db 63, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 30, FUTURE_SIGHT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 35, FUTURE_SIGHT
	db 50, CONFUSE_RAY
	db 65, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 16, THUNDER_WAVE
	db 23, COTTON_SPORE
	db 30, LIGHT_SCREEN
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 36, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 48, RAIN_DANCE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 28, ROCK_SLIDE
	db 37, FAINT_ATTACK
	db 46, SLAM
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
if _CRYSTAL
	db 5, SYNTHESIS
else
	db 1, SYNTHESIS
endc
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 30, MEGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
if _CRYSTAL
	db 5, SYNTHESIS
endc
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 29, COTTON_SPORE
	db 36, MEGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
if _CRYSTAL
	db 5, SYNTHESIS
endc
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 33, COTTON_SPORE
	db 44, MEGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 6, SAND_ATTACK
	db 12, BATON_PASS
	db 19, FURY_SWIPES
	db 27, SWIFT
	db 36, SCREECH
	db 46, AGILITY
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 19, SUNNY_DAY
	db 31, SYNTHESIS
	db 46, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, POUND
	db 4, GROWTH
	db 10, RAZOR_LEAF
	db 19, SUNNY_DAY
	db 31, PETAL_DANCE
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 19, SONICBOOM
	db 25, DETECT
	db 31, SUPERSONIC
if _CRYSTAL
	db 37, WING_ATTACK
else
	db 37, SWIFT
endc
	db 43, SCREECH
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 11, SLAM
	db 21, AMNESIA
	db 31, EARTHQUAKE
	db 41, RAIN_DANCE
	db 51, MIST
	db 51, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 11, SLAM
	db 23, AMNESIA
	db 35, EARTHQUAKE
	db 47, RAIN_DANCE
	db 59, MIST
	db 59, HAZE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, PSYCH_UP
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, SCREECH
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 26, NIGHT_SHADE
	db 31, FAINT_ATTACK
	db 41, MEAN_LOOK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, SWAGGER
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 1, STOMP
	db 7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 30, BATON_PASS
	db 41, PSYBEAM
	db 54, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 36, EXPLOSION
	db 43, SPIKES
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 39, EXPLOSION
	db 49, SPIKES
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 18, SPITE
	db 26, PURSUIT
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SAND_ATTACK
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, FAINT_ATTACK
	db 36, SLASH
	db 44, SCREECH
	db 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 49, CRUNCH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 26, ROAR
	db 34, RAGE
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 28, ROAR
	db 38, RAGE
	db 51, TAKE_DOWN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
if _CRYSTAL
	db 1, SPIKES
endc
	db 1, TACKLE
	db 1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 19, WATER_GUN
	db 28, PIN_MISSILE
	db 37, TAKE_DOWN
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 9, WRAP
	db 14, ENCORE
	db 23, SAFEGUARD
	db 28, BIDE
	db 37, REST
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, FURY_ATTACK
	db 27, COUNTER
	db 35, TAKE_DOWN
	db 44, REVERSAL
	db 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, FAINT_ATTACK
	db 33, FURY_SWIPES
	db 41, AGILITY
	db 49, SLASH
	db 57, BEAT_UP
if _CRYSTAL
	db 65, METAL_CLAW
endc
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 29, REST
	db 36, SLASH
	db 43, SNORE
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 29, REST
	db 39, SLASH
	db 49, SNORE
	db 59, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, BODY_SLAM
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ROCK_SLIDE
	db 60, BODY_SLAM
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 37, MIST
	db 46, BLIZZARD
if _CRYSTAL
	db 55, AMNESIA
endc
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, ENDURE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 42, MIST
	db 56, BLIZZARD
if _CRYSTAL
	db 70, AMNESIA
endc
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 7, HARDEN
	db 13, BUBBLE
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, SPIKE_CANNON
	db 37, MIRROR_COAT
	db 43, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 33, FOCUS_ENERGY
	db 44, ICE_BEAM
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 38, FOCUS_ENERGY
	db 54, ICE_BEAM
	db 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 32, AGILITY
	db 40, WING_ATTACK
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 37, FURY_ATTACK
	db 49, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 27, FAINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 30, FAINT_ATTACK
	db 41, FLAMETHROWER
	db 52, CRUNCH
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, TAKE_DOWN
	db 33, ROLLOUT
	db 41, ENDURE
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, FURY_ATTACK
	db 33, ROLLOUT
	db 41, RAPID_SPIN
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, QUIVER_DANCE
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, LEER
	db 15, HYPNOSIS
	db 23, STOMP
	db 31, SAND_ATTACK
	db 40, TAKE_DOWN
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLING_KICK
	db 7, FOCUS_ENERGY
	db 13, PURSUIT
	db 19, QUICK_ATTACK
	db 25, RAPID_SPIN
	db 31, COUNTER
	db 37, AGILITY
	db 43, DETECT
	db 49, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BIDE
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 53, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
if _CRYSTAL
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
else
	db 11, WATER_GUN
	db 21, ROAR
	db 31, GUST
	db 41, BUBBLEBEAM
endc
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 0 ; no more level-up moves
