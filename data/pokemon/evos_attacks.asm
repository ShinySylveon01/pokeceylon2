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
	db 4, VINE_WHIP 
	db 7, POISONPOWDER
	db 10, MEGA_DRAIN
	db 16, SLEEP_POWDER
	db 20, DOUBLE_EDGE
	db 21, MAGICAL_LEAF 
	db 30, MAGICAL_LEAF
	db 36, SYNTHESIS
	db 44, SYNTHESIS
	db 50, SYNTHESIS
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, SLEEP_POWDER
	db 1, BODY_SLAM
	db 1, MAGICAL_LEAF
	db 1, SYNTHESIS
	db 7, RAZOR_LEAF
	db 10, RAZOR_LEAF
	db 15, RAZOR_LEAF
	db 15, RAZOR_LEAF
	db 22, RAZOR_LEAF
	db 29, RAZOR_LEAF
	db 38, RAZOR_LEAF
	db 47, SYNTHESIS
	db 56, RAZOR_LEAF
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLEEP_POWDER
	db 1, SLUDGE_BOMB
	db 1, BODY_SLAM
	db 1, MAGICAL_LEAF
	db 4, SLEEP_POWDER
	db 7, SLEEP_POWDER
	db 10, SLEEP_POWDER
	db 15, SLEEP_POWDER
	db 15, SLEEP_POWDER
	db 22, SLEEP_POWDER
	db 29, SLEEP_POWDER
	db 41, SLEEP_POWDER
	db 53, SLEEP_POWDER
	db 65, SLEEP_POWDER
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, EMBER
	db 7, SLASH
	db 13, SMOKESCREEN
	db 19, DOUBLE_EDGE
	db 22, FIRE_PUNCH
	db 23, SEISMIC_TOSS
	db 37, SEISMIC_TOSS
	db 43, SEISMIC_TOSS
	db 49, FLAMETHROWER
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 1, FLAMETHROWER
	db 1, DIG
	db 1, SLASH
	db 13, FLAMETHROWER
	db 20, FLAMETHROWER
	db 27, FLAMETHROWER
	db 34, FLAMETHROWER
	db 41, FLAMETHROWER
	db 48, FLAMETHROWER
	db 55, FLAMETHROWER
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAMETHROWER
	db 1, EARTHQUAKE
	db 1, CRUNCH
	db 1, ANCIENTPOWER
	db 7, FLAMETHROWER
	db 13, FLAMETHROWER
	db 20, FLAMETHROWER
	db 27, FLAMETHROWER
	db 34, FLAMETHROWER
	db 36, FLAMETHROWER
	db 44, FLAMETHROWER
	db 54, FLAMETHROWER
	db 64, FLAMETHROWER
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WATER_GUN
	db 7, BITE
	db 10, HEADBUTT
	db 13, HEADBUTT
	db 18, BUBBLEBEAM
	db 23, ICE_PUNCH
	db 24, SEISMIC_TOSS
	db 26, DOUBLE_EDGE
	db 40, HYDRO_PUMP
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, SURF
	db 1, ICE_BEAM
	db 1, DIG
	db 1, BODY_SLAM
	db 7, BODY_SLAM
	db 10, BODY_SLAM
	db 13, BODY_SLAM
	db 19, BODY_SLAM
	db 25, BODY_SLAM
	db 31, BODY_SLAM
	db 37, BODY_SLAM
	db 45, BODY_SLAM
	db 53, BODY_SLAM
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, BLIZZARD
	db 1, EARTHQUAKE
	db 1, BODY_SLAM
	db 4, BODY_SLAM
	db 7, BODY_SLAM
	db 10, BODY_SLAM
	db 13, BODY_SLAM
	db 19, BODY_SLAM
	db 25, BODY_SLAM
	db 31, BODY_SLAM
	db 42, BODY_SLAM
	db 55, BODY_SLAM
	db 68, BODY_SLAM
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, MEGA_DRAIN
	db 14, POISONPOWDER
	db 15, PSYBEAM
	db 18, SLEEP_POWDER
	db 23, PSYWAVE
	db 23, GIGA_DRAIN
	db 23, PSYCHIC_M
	db 31, STUN_SPORE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, PIN_MISSILE
	db 10, PIN_MISSILE
	db 15, PIN_MISSILE
	db 20, PURSUIT
	db 23, GIGA_DRAIN
	db 24, DRILL_RUN
	db 25, TWINEEDLE
	db 26, SLUDGE_BOMB
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, GUST
	db 1, SAND_ATTACK
	db 1, QUICK_ATTACK
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 29, WING_ATTACK
	db 37, AGILITY
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, RAZOR_WIND
	db 1, WING_ATTACK
	db 5, STEEL_WING
	db 23, SWIFT
	db 23, WING_ATTACK
	db 23, DOUBLE_EDGE
	db 33, WING_ATTACK
	db 43, RETURN
	db 55, RETURN
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, HURRICANE
	db 1, DOUBLE_EDGE
	db 1, HIDDEN_POWER
	db 1, STEEL_WING
	db 5, HURRICANE
	db 9, HURRICANE
	db 15, HURRICANE
	db 23, HURRICANE
	db 33, HURRICANE
	db 46, HURRICANE
	db 61, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 34, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 1, HYPER_FANG
	db 1, SHADOW_BALL
	db 20, THUNDERBOLT
	db 23, BLIZZARD
	db 26, HYPER_FANG
	db 29, SHADOW_BALL
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, PECK
	db 7, MUD_SLAP
	db 9, SWIFT
	db 25, PURSUIT
	db 37, DRILL_PECK
	db 43, AGILITY
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRILL_PECK
	db 1, TRI_ATTACK
	db 1, STEEL_WING
	db 1, DRILL_RUN
	db 7, DRILL_PECK
	db 13, DRILL_PECK
	db 26, DRILL_PECK
	db 32, DRILL_PECK
	db 40, DRILL_PECK
	db 47, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, GLARE
	db 1, HEADBUTT
	db 1, PURSUIT
	db 13, ACID
	db 23, GLARE
	db 29, GLARE
	db 37, GLARE
	db 43, GLARE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, EARTHQUAKE
	db 1, SLUDGE_BOMB
	db 1, GLARE
	db 9, SLUDGE_BOMB
	db 15, SLUDGE_BOMB
	db 25, SLUDGE_BOMB
	db 33, SLUDGE_BOMB
	db 43, SLUDGE_BOMB
	db 51, SLUDGE_BOMB
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, QUICK_ATTACK
	db 6, THUNDER_WAVE
	db 10, SWIFT
	db 11, QUICK_ATTACK
	db 14, SPARK
	db 20, THUNDERBOLT
	db 24, THUNDERBOLT
	db 33, SEISMIC_TOSS
	db 41, SURF
	db 50, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, SUBMISSION
	db 1, SURF
	db 1, MEGA_KICK
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SLASH
	db 6, SAND_ATTACK
	db 11, MAGNITUDE
	db 17, ROCK_SLIDE
	db 23, SAND_ATTACK
	db 30, SAND_ATTACK
	db 37, SAND_ATTACK
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 1, SUBMISSION
	db 1, SLASH
	db 25, EARTHQUAKE
	db 27, ROCK_SLIDE
	db 29, SUBMISSION
	db 31, SLASH
	db 33, SLASH
	db 35, SLASH
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, BITE
	db 8, POISON_STING
	db 10, DOUBLE_KICK
	db 17, DOUBLE_KICK
	db 23, DOUBLE_KICK
	db 30, DOUBLE_KICK
	db 38, DOUBLE_KICK
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, BODY_SLAM
	db 1, BITE
	db 8, DOUBLE_KICK
	db 12, TOXIC
	db 19, BODY_SLAM
	db 27, BODY_SLAM
	db 36, BODY_SLAM
	db 46, BODY_SLAM
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 1, EARTHQUAKE
	db 23, LOVELY_KISS
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, DOUBLE_KICK
	db 8, MUD_SLAP
	db 12, DOUBLE_KICK
	db 17, DOUBLE_KICK
	db 23, DOUBLE_KICK
	db 30, DOUBLE_KICK
	db 38, DOUBLE_KICK
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 1, THRASH
	db 8, TOXIC
	db 10, BITE
	db 19, DOUBLE_KICK
	db 27, DOUBLE_KICK
	db 36, DOUBLE_KICK
	db 46, DOUBLE_KICK
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, BLIZZARD
	db 1, THUNDERBOLT
	db 1, EARTHQUAKE
	db 23, LOVELY_KISS
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, ATTRACT
	db 1, TRI_ATTACK
	db 1, SWIFT
	db 20, MAGICAL_LEAF
	db 22, MEGA_PUNCH
	db 24, SING
	db 34, ICE_PUNCH
	db 43, ICE_PUNCH
	db 53, ICE_PUNCH
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, THUNDERBOLT
	db 1, ICE_BEAM
	db 1, PSYCHIC_M
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, ROAR
	db 13, FLAME_WHEEL
	db 16, SWIFT
	db 17, CONFUSE_RAY
	db 21, FLAMETHROWER
	db 25, DIG
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAMETHROWER
	db 1, IRON_TAIL
	db 1, DIG
	db 1, HYPNOSIS
	db 43, HYPNOSIS
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DIZZY_PUNCH
	db 9, BUBBLEBEAM
	db 14, FAINT_ATTACK
	db 19, DIZZY_PUNCH
	db 24, DIZZY_PUNCH
	db 29, DIZZY_PUNCH
	db 34, DIZZY_PUNCH
	db 39, DIZZY_PUNCH
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 1, PSYCHIC_M
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, BITE
	db 1, MEGA_DRAIN
	db 1, CONFUSE_RAY
	db 1, WING_ATTACK
	db 20, WING_ATTACK
	db 36, WING_ATTACK
	db 46, WING_ATTACK
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, BRAVE_BIRD
	db 1, GIGA_DRAIN
	db 1, POISON_FANG
	db 12, POISON_FANG
	db 19, POISON_FANG
	db 30, POISON_FANG
	db 42, POISON_FANG
	db 55, POISON_FANG
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, ACID
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, SLEEP_POWDER
	db 32, SLEEP_POWDER
	db 39, SLEEP_POWDER
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, MAGICAL_LEAF
	db 1, SLUDGE_BOMB
	db 1, STUN_SPORE
	db 1, SLEEP_POWDER
	db 14, SLEEP_POWDER
	db 16, SLEEP_POWDER
	db 18, SLEEP_POWDER
	db 24, GIGA_DRAIN
	db 35, SLUDGE_BOMB
	db 44, SLEEP_POWDER
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLEEP_POWDER
	db 1, SLUDGE_BOMB
	db 1, MOONLIGHT
	db 1, MAGICAL_LEAF
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, POISONPOWDER
	db 1, BODY_SLAM
	db 1, GIGA_DRAIN
	db 1, STUN_SPORE
	db 25, SPORE
	db 31, GIGA_DRAIN
	db 37, GIGA_DRAIN
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, BODY_SLAM
	db 1, GIGA_DRAIN
	db 1, SPORE
	db 13, SPORE
	db 19, SPORE
	db 28, SPORE
	db 37, SPORE
	db 46, SPORE
	db 55, SPORE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, POISONPOWDER
	db 1, PSYBEAM
	db 1, HIDDEN_POWER
	db 1, STUN_SPORE
	db 12, STUN_SPORE
	db 20, STUN_SPORE
	db 25, STUN_SPORE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, POISON_FANG
	db 1, PSYCHIC_M
	db 1, SLEEP_POWDER
	db 9, SLEEP_POWDER
	db 17, SLEEP_POWDER
	db 20, SLEEP_POWDER
	db 25, SLEEP_POWDER
	db 28, SLEEP_POWDER
	db 31, SLEEP_POWDER
	db 36, SLEEP_POWDER
	db 42, SLEEP_POWDER
	db 52, SLEEP_POWDER
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SLASH
	db 5, MAGNITUDE
	db 9, ROCK_SLIDE
	db 17, ROCK_SLIDE
	db 25, ROCK_SLIDE
	db 33, ROCK_SLIDE
	db 41, ROCK_SLIDE
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, ROCK_SLIDE
	db 1, SLUDGE_BOMB
	db 1, EARTHQUAKE
	db 9, TRI_ATTACK
	db 17, TRI_ATTACK
	db 25, TRI_ATTACK
	db 37, TRI_ATTACK
	db 49, TRI_ATTACK
	db 61, TRI_ATTACK
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 1, FAINT_ATTACK
	db 11, BITE
	db 20, SLASH
	db 31, DOUBLE_EDGE
	db 32, THUNDERBOLT
	db 33, BUBBLEBEAM
	db 34, SHADOW_BALL
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, THUNDERBOLT
	db 1, BUBBLEBEAM
	db 1, SHADOW_BALL
	db 20, THUNDERBOLT
	db 29, THUNDERBOLT
	db 38, THUNDERBOLT
	db 46, THUNDERBOLT
	db 53, THUNDERBOLT
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, DOUBLE_EDGE
	db 1, SHADOW_BALL
	db 1, BUBBLEBEAM
	db 23, BUBBLEBEAM
	db 31, BUBBLEBEAM
	db 40, BUBBLEBEAM
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, PSYCHIC_M
	db 1, BLIZZARD
	db 1, HYDRO_PUMP
	db 5, HYDRO_PUMP
	db 10, HYDRO_PUMP
	db 16, HYDRO_PUMP
	db 23, HYDRO_PUMP
	db 31, HYDRO_PUMP
	db 44, HYDRO_PUMP
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, THRASH
	db 9, SEISMIC_TOSS
	db 14, KARATE_CHOP
	db 24, KARATE_CHOP
	db 27, KARATE_CHOP
	db 33, KARATE_CHOP
	db 39, KARATE_CHOP
	db 45, KARATE_CHOP
	db 51, SUBMISSION
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, ICE_PUNCH
	db 1, DIG
	db 1, SUBMISSION
	db 9, THUNDERPUNCH
	db 15, THUNDERPUNCH
	db 21, ICE_PUNCH
	db 27, ICE_PUNCH
	db 28, THUNDERPUNCH
	db 36, THUNDERPUNCH
	db 45, ICE_PUNCH
	db 54, ICE_PUNCH
	db 63, ICE_PUNCH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, ROAR
	db 1, BITE
	db 9, TAKE_DOWN
	db 14, FLAME_WHEEL
	db 20, COVET
	db 23, FLAMETHROWER
	db 25, DIG
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAMETHROWER
	db 1, CRUNCH
	db 1, EXTREMESPEED
	db 1, IRON_TAIL
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 10, BODY_SLAM
	db 14, BODY_SLAM
	db 23, BODY_SLAM
	db 31, BODY_SLAM
	db 37, BODY_SLAM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, SURF
	db 1, HYPNOSIS
	db 1, ICE_BEAM
	db 1, EARTHQUAKE
	db 13, SURF
	db 19, SURF
	db 27, SURF
	db 35, SURF
	db 43, SURF
	db 51, SURF
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, BLIZZARD
	db 1, EARTHQUAKE
	db 1, LOVELY_KISS
	db 1, SURF
	db 35, SURF
	db 51, SURF
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, KINESIS
	db 1, HIDDEN_POWER
	db 1, BARRIER
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 50, ALAKAZAM
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, THUNDER_WAVE
	db 1, SEISMIC_TOSS
	db 1, RECOVER
	db 18, PSYBEAM
	db 21, PSYBEAM
	db 26, PSYBEAM
	db 31, PSYBEAM
	db 38, PSYBEAM
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, RECOVER
	db 1, ICE_PUNCH
	db 1, THUNDERPUNCH
	db 18, RECOVER
	db 21, RECOVER
	db 26, RECOVER
	db 31, RECOVER
	db 38, RECOVER
	db 45, RECOVER
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, DIZZY_PUNCH
	db 7, SEISMIC_TOSS
	db 13, MUD_SLAP
	db 19, VITAL_THROW
	db 25, SEISMIC_TOSS
	db 31, SEISMIC_TOSS
	db 37, SEISMIC_TOSS
	db 43, SEISMIC_TOSS
	db 49, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 50, MACHAMP
	db 0 ; no more evolutions
	db 1, DYNAMICPUNCH
	db 1, ROCK_SLIDE
	db 1, SEISMIC_TOSS
	db 1, SUBMISSION
	db 15, SUBMISSION
	db 19, SUBMISSION
	db 25, SUBMISSION
	db 34, SUBMISSION
	db 43, SUBMISSION
	db 52, SUBMISSION
	db 61, SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 1, FIRE_BLAST
	db 15, SUBMISSION
	db 19, SUBMISSION
	db 25, SUBMISSION
	db 34, SUBMISSION
	db 43, SUBMISSION
	db 52, SUBMISSION
	db 61, SUBMISSION
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, ACID
	db 1, HIDDEN_POWER
	db 1, RAZOR_LEAF
	db 1, STUN_SPORE
	db 17, SLEEP_POWDER
	db 19, SLEEP_POWDER
	db 23, SLEEP_POWDER
	db 30, SLEEP_POWDER
	db 37, SLEEP_POWDER
	db 45, STUN_SPORE
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, SLUDGE_BOMB
	db 1, STUN_SPORE
	db 1, SLEEP_POWDER
	db 11, GIGA_DRAIN
	db 15, GIGA_DRAIN
	db 17, GIGA_DRAIN
	db 19, GIGA_DRAIN
	db 24, GIGA_DRAIN
	db 33, GIGA_DRAIN
	db 42, GIGA_DRAIN
	db 54, GIGA_DRAIN
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, BODY_SLAM
	db 1, SLUDGE_BOMB
	db 1, MAGICAL_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, TOXIC
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 25, AURORA_BEAM
	db 30, AURORA_BEAM
	db 36, AURORA_BEAM
	db 43, AURORA_BEAM
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, BLIZZARD
	db 1, HYDRO_PUMP
	db 1, SLUDGE_BOMB
	db 12, BLIZZARD
	db 19, BLIZZARD
	db 25, BLIZZARD
	db 30, BLIZZARD
	db 38, BLIZZARD
	db 47, BLIZZARD
	db 55, BLIZZARD
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 16, MAGNITUDE
	db 21, MAGNITUDE
	db 26, MAGNITUDE
	db 31, MAGNITUDE
	db 36, MAGNITUDE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 50, GOLEM
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, SEISMIC_TOSS
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 11, ROCK_SLIDE
	db 21, ROCK_SLIDE
	db 26, ROCK_SLIDE
	db 31, ROCK_SLIDE
	db 36, ROCK_SLIDE
	db 41, ROCK_SLIDE
	db 48, ROCK_SLIDE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 1, BODY_SLAM
	db 6, EARTHQUAKE
	db 11, EARTHQUAKE
	db 16, EARTHQUAKE
	db 21, EARTHQUAKE
	db 27, EARTHQUAKE
	db 34, EARTHQUAKE
	db 41, EARTHQUAKE
	db 48, EARTHQUAKE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, HEADBUTT
	db 1, DOUBLE_KICK
	db 20, FLAMETHROWER
	db 21, HYPNOSIS
	db 26, DOUBLE_EDGE
	db 34, DOUBLE_EDGE
	db 43, DOUBLE_EDGE
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_TAIL
	db 1, BODY_SLAM
	db 1, FIRE_BLAST
	db 1, HYPNOSIS
	db 4, BODY_SLAM
	db 8, BODY_SLAM
	db 13, BODY_SLAM
	db 19, BODY_SLAM
	db 26, BODY_SLAM
	db 34, BODY_SLAM
	db 40, BODY_SLAM
	db 47, BODY_SLAM
	db 61, BODY_SLAM
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, BUBBLEBEAM
	db 1, TRI_ATTACK 
	db 1, PROTECT
	db 17, PSYBEAM
	db 29, PSYBEAM
	db 34, PSYBEAM
	db 43, PSYBEAM
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, BLIZZARD
	db 1, PSYCHIC_M
	db 1, EARTHQUAKE
	db 1, SURF
	db 6, SURF
	db 15, SURF
	db 20, SURF
	db 29, SURF
	db 34, SURF
	db 37, SURF
	db 46, SURF
	db 54, SURF
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, SONICBOOM
	db 1, THUNDER_WAVE
	db 11, THUNDERBOLT
	db 16, TRI_ATTACK
	db 21, HIDDEN_POWER
	db 27, HIDDEN_POWER
	db 33, HIDDEN_POWER
	db 39, HIDDEN_POWER
	db 45, HIDDEN_POWER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, THUNDER_WAVE
	db 1, SIGNAL_BEAM
	db 1, TRI_ATTACK
	db 6, TRI_ATTACK
	db 11, TRI_ATTACK
	db 16, SIGNAL_BEAM
	db 21, SIGNAL_BEAM
	db 27, THUNDER_WAVE
	db 35, THUNDER_WAVE
	db 43, THUNDERBOLT
	db 53, THUNDERBOLT
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, SLASH
	db 1, STEEL_WING
	db 1, MUD_SLAP
	db 22, SLASH
	db 25, SLASH
	db 31, SLASH
	db 34, SLASH
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, QUICK_ATTACK
	db 7, PECK
	db 9, DOUBLE_KICK
	db 21, TRI_ATTACK
	db 25, TRI_ATTACK
	db 33, DRILL_PECK
	db 37, DRILL_PECK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, STEEL_WING
	db 1, BRAVE_BIRD
	db 1, DOUBLE_EDGE
	db 9, BRAVE_BIRD
	db 13, BRAVE_BIRD
	db 21, BRAVE_BIRD
	db 25, BRAVE_BIRD
	db 38, BRAVE_BIRD
	db 47, BRAVE_BIRD
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 1, BUBBLEBEAM
	db 1, HEADBUTT
	db 1, REST
	db 23, ICE_BEAM
	db 29, ICE_BEAM
	db 32, SIGNAL_BEAM
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, SIGNAL_BEAM
	db 1, BODY_SLAM
	db 1, SURF
	db 1, BLIZZARD
	db 16, SURF
	db 21, SURF
	db 32, SURF
	db 43, SURF
	db 60, SURF
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, SLUDGE
	db 1, SELFDESTRUCT
	db 1, POISON_GAS
	db 16, SELFDESTRUCT
	db 23, SELFDESTRUCT
	db 31, SELFDESTRUCT
	db 37, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, EXPLOSION
	db 1, SLUDGE_BOMB
	db 1, GIGA_DRAIN
	db 1, FLAMETHROWER
	db 37, SLUDGE_BOMB
	db 45, SLUDGE_BOMB
	db 23, SLUDGE_BOMB
	db 31, SLUDGE_BOMB
	db 45, SLUDGE_BOMB
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, ICICLE_SPEAR
	db 1, BUBBLEBEAM
	db 1, EXPLOSION
	db 17, PROTECT
	db 25, PROTECT
	db 33, PROTECT
	db 41, PROTECT
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, BLIZZARD
	db 1, SURF
	db 1, TRI_ATTACK
	db 41, SURF
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 1, CONFUSE_RAY
	db 1, NIGHT_SHADE
	db 1, HYPNOSIS
	db 17, CONFUSE_RAY
	db 20, SHADOW_BALL
	db 23, SHADOW_BALL
	db 26, SHADOW_BALL
	db 29, SHADOW_BALL
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 50, GENGAR
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 1, PSYCHIC_M
	db 1, NIGHT_SHADE
	db 1, HYPNOSIS
	db 13, SHADOW_BALL
	db 16, SHADOW_BALL
	db 21, SHADOW_BALL
	db 31, SHADOW_BALL
	db 39, SHADOW_BALL
	db 48, SHADOW_BALL
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, THUNDERBOLT
	db 1, HYPNOSIS
	db 1, SHADOW_BALL
	db 13, THUNDERBOLT
	db 16, THUNDERBOLT
	db 21, THUNDERBOLT
	db 31, THUNDERBOLT
	db 39, THUNDERBOLT
	db 48, THUNDERBOLT
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, MAGNITUDE
	db 1, SELFDESTRUCT
	db 1, ROCK_SLIDE
	db 1, EXPLOSION 
	db 23, EXPLOSION
	db 27, EXPLOSION
	db 36, EXPLOSION
	db 40, EXPLOSION
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, HYPNOSIS
	db 1, SEISMIC_TOSS
	db 1, NIGHT_SHADE
	db 14, NIGHT_SHADE
	db 31, NIGHT_SHADE
	db 36, NIGHT_SHADE
	db 40, NIGHT_SHADE
	db 43, NIGHT_SHADE
	db 45, NIGHT_SHADE
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, PSYCHIC_M
	db 1, ICE_PUNCH
	db 1, THUNDERPUNCH
	db 10, THUNDERPUNCH
	db 18, THUNDERPUNCH
	db 25, THUNDERPUNCH
	db 33, THUNDERPUNCH
	db 40, THUNDERPUNCH
	db 49, THUNDERPUNCH
	db 55, THUNDERPUNCH
	db 60, THUNDERPUNCH
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, STOMP
	db 1, PROTECT
	db 14, PROTECT
	db 20, PROTECT
	db 25, PROTECT
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRABHAMMER
	db 1, ICE_BEAM
	db 1, METAL_CLAW
	db 1, GUILLOTINE
	db 12, GUILLOTINE
	db 16, GUILLOTINE
	db 23, GUILLOTINE
	db 27, GUILLOTINE
	db 38, GUILLOTINE
	db 49, GUILLOTINE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, SONICBOOM
	db 1, THUNDER_WAVE
	db 1, THUNDERBOLT
	db 21, THUNDERBOLT
	db 33, THUNDERBOLT
	db 37, THUNDERBOLT
	db 39, THUNDERBOLT
	db 41, THUNDERBOLT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDER_WAVE
	db 1, THUNDERBOLT
	db 1, EXPLOSION
	db 1, HYPER_BEAM
	db 9, THUNDERBOLT
	db 17, THUNDERBOLT
	db 23, THUNDERBOLT
	db 29, THUNDERBOLT
	db 34, THUNDERBOLT
	db 40, THUNDERBOLT
	db 44, THUNDERBOLT
	db 48, THUNDERBOLT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, GIGA_DRAIN
	db 1, EXPLOSION
	db 1, SLEEP_POWDER
	db 20, PSYBEAM
	db 24, PSYBEAM
	db 31, PSYBEAM
	db 37, SLEEP_POWDER
	db 43, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, EGG_BOMB
	db 1, SLEEP_POWDER
	db 1, PSYCHIC_M
	db 1, MAGICAL_LEAF
	db 31, MAGICAL_LEAF
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 18, BONE_RUSH
	db 20, DOUBLE_EDGE
	db 24, DOUBLE_EDGE
	db 27, SWORDS_DANCE
	db 29, BONEMERANG
	db 31, BONEMERANG
	db 33, BONEMERANG
	db 37, BONEMERANG
	db 41, BONEMERANG
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTHQUAKE
	db 1, ANCIENTPOWER
	db 1, BLIZZARD
	db 1, THUNDERPUNCH
	db 5, ANCIENTPOWER
	db 9, ANCIENTPOWER
	db 13, ANCIENTPOWER
	db 17, ANCIENTPOWER
	db 21, ANCIENTPOWER
	db 25, ANCIENTPOWER
	db 32, ANCIENTPOWER
	db 39, ANCIENTPOWER
	db 46, ANCIENTPOWER
	db 53, ANCIENTPOWER
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_KICK
	db 1, ROCK_SLIDE
	db 1, EARTHQUAKE
	db 1, SUBMISSION
	db 21, EARTHQUAKE
	db 26, EARTHQUAKE
	db 31, EARTHQUAKE
	db 36, EARTHQUAKE
	db 41, EARTHQUAKE
	db 46, EARTHQUAKE
	db 51, EARTHQUAKE
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_PUNCH
	db 1, SUBMISSION
	db 1, ROCK_SLIDE
	db 1, EARTHQUAKE
	db 26, ROCK_SLIDE
	db 26, ROCK_SLIDE
	db 32, ROCK_SLIDE
	db 38, ROCK_SLIDE
	db 44, ROCK_SLIDE
	db 50, ROCK_SLIDE
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, ROLLOUT
	db 1, SUPERSONIC
	db 1, STOMP
	db 25, EARTHQUAKE
	db 27, BODY_SLAM
	db 29, ICE_BEAM
	db 31, AMNESIA
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, POISON_GAS
	db 1, SLUDGE
	db 1, PSYBEAM
	db 21, SELFDESTRUCT
	db 25, SELFDESTRUCT
	db 33, SELFDESTRUCT
	db 41, EXPLOSION
	db 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, FIRE_BLAST
	db 1, THUNDERBOLT
	db 1, SLUDGE_BOMB
	db 9, SLUDGE_BOMB
	db 17, SLUDGE_BOMB
	db 21, SLUDGE_BOMB
	db 25, SLUDGE_BOMB
	db 33, SLUDGE_BOMB
	db 44, SLUDGE_BOMB
	db 51, SLUDGE_BOMB
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, MAGNITUDE
	db 1, DOUBLE_EDGE
	db 18, ROCK_SLIDE
	db 20, ROCK_SLIDE
	db 22, DOUBLE_EDGE
	db 24, DOUBLE_EDGE
	db 26, DOUBLE_EDGE
	db 28, EARTHQUAKE
	db 30, DRILL_RUN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 1, BODY_SLAM
	db 1, FIRE_BLAST
	db 13, EARTHQUAKE
	db 19, EARTHQUAKE
	db 31, EARTHQUAKE
	db 37, EARTHQUAKE
	db 54, EARTHQUAKE
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, ICE_BEAM
	db 1, SOFTBOILED
	db 1, ATTRACT
	db 17, THUNDERBOLT
	db 23, THUNDERBOLT
	db 29, THUNDERBOLT
	db 35, THUNDERBOLT
	db 41, THUNDERBOLT
	db 49, THUNDERBOLT
	db 57, THUNDERBOLT
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, HIDDEN_POWER
	db 1, STUN_SPORE
	db 1, SLEEP_POWDER
	db 19, GIGA_DRAIN
	db 25, GIGA_DRAIN
	db 31, GIGA_DRAIN
	db 34, GIGA_DRAIN
	db 40, GIGA_DRAIN
	db 46, GIGA_DRAIN
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, BLIZZARD
	db 1, THUNDERBOLT
	db 1, BODY_SLAM
	db 1, EARTHQUAKE
	db 25, BODY_SLAM
	db 31, BODY_SLAM
	db 37, BODY_SLAM
	db 43, BODY_SLAM
	db 49, BODY_SLAM
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 1, BUBBLEBEAM
	db 1, DRAGONBREATH
	db 23, DRAGON_RAGE
	db 25, DRAGON_RAGE
	db 36, DRAGON_RAGE
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, BLIZZARD
	db 1, PROTECT
	db 1, DRAGONBREATH
	db 8, HYDRO_PUMP
	db 15, HYDRO_PUMP
	db 22, HYDRO_PUMP
	db 29, HYDRO_PUMP
	db 40, HYDRO_PUMP
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, DOUBLE_EDGE
	db 1, SUPERSONIC
	db 15, PSYBEAM
	db 20, PSYBEAM
	db 25, PSYBEAM
	db 28, PSYBEAM
	db 33, PSYBEAM
	db 38, PSYBEAM
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGAHORN
	db 1, SURF
	db 1, DOUBLE_EDGE
	db 1, BLIZZARD
	db 15, BLIZZARD
	db 24, BLIZZARD
	db 29, BLIZZARD
	db 41, BLIZZARD
	db 49, BLIZZARD
	db 61, BLIZZARD
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, CONFUSE_RAY
	db 1, RECOVER
	db 1, TRI_ATTACK
	db 22, TRI_ATTACK
	db 25, TRI_ATTACK
	db 28, TRI_ATTACK
	db 31, TRI_ATTACK
	db 34, TRI_ATTACK
	db 37, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, HYDRO_PUMP
	db 1, RECOVER
	db 1, BLIZZARD
	db 37, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, ICE_PUNCH
	db 1, PSYCHIC_M
	db 1, SHADOW_BALL
	db 21, PSYCHIC_M
	db 26, PSYCHIC_M
	db 26, PSYCHIC_M
	db 31, PSYCHIC_M
	db 36, PSYCHIC_M
	db 41, PSYCHIC_M
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, LIGHT_SCREEN
	db 1, DOUBLE_EDGE
	db 1, STEEL_WING
	db 1, WING_ATTACK
	db 18, DOUBLE_EDGE
	db 24, DOUBLE_EDGE
	db 30, DOUBLE_EDGE
	db 36, DOUBLE_EDGE
	db 42, DOUBLE_EDGE
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, BLIZZARD
	db 1, PSYCHIC_M
	db 1, SHADOW_BALL
	db 9, BLIZZARD
	db 13, BLIZZARD
	db 21, BLIZZARD
	db 25, BLIZZARD
	db 35, BLIZZARD
	db 41, BLIZZARD
	db 51, BLIZZARD
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, CROSS_CHOP
	db 1, ICE_PUNCH
	db 1, FIRE_PUNCH
	db 17, THUNDERBOLT
	db 25, THUNDERBOLT
	db 36, THUNDERBOLT
	db 47, THUNDERBOLT
	db 58, THUNDERBOLT
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_BLAST
	db 1, THUNDERPUNCH
	db 1, PSYCHIC_M
	db 1, CROSS_CHOP
	db 7, FIRE_BLAST
	db 13, FIRE_BLAST
	db 19, FIRE_BLAST
	db 25, FIRE_BLAST
	db 33, FIRE_BLAST
	db 41, FIRE_BLAST
	db 49, FIRE_BLAST
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, BODY_SLAM
	db 1, SUBMISSION
	db 1, ROCK_SLIDE
	db 1, SEISMIC_TOSS
	db 25, SEISMIC_TOSS
	db 31, SEISMIC_TOSS
	db 37, SEISMIC_TOSS
	db 43, SEISMIC_TOSS
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_TAIL
	db 1, BLIZZARD
	db 1, EARTHQUAKE
	db 1, BODY_SLAM
	db 19, BODY_SLAM
	db 26, BODY_SLAM
	db 34, BODY_SLAM
	db 43, BODY_SLAM
	db 53, BODY_SLAM
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, TACKLE
	db 1, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_BEAM
	db 1, HYDRO_PUMP
	db 1, THUNDERBOLT
	db 1, BODY_SLAM
	db 35, THUNDERBOLT
	db 40, THUNDERBOLT
	db 45, THUNDERBOLT
	db 50, THUNDERBOLT
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, HYDRO_PUMP
	db 1, BLIZZARD
	db 8, THUNDERBOLT
	db 15, HYDRO_PUMP
	db 22, HYDRO_PUMP
	db 29, HYDRO_PUMP
	db 36, HYDRO_PUMP
	db 43, HYDRO_PUMP
	db 50, HYDRO_PUMP
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
	db 1, QUICK_ATTACK
	db 1, SAND_ATTACK
	db 6, BITE
	db 16, TAKE_DOWN
	db 23, TAKE_DOWN
	db 30, TAKE_DOWN
	db 36, TAKE_DOWN
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 1, BODY_SLAM
	db 1, BLIZZARD
	db 1, HYDRO_PUMP
	db 23, HYDRO_PUMP
	db 30, HYDRO_PUMP
	db 36, HYDRO_PUMP
	db 42, HYDRO_PUMP
	db 47, HYDRO_PUMP
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, YAWN
	db 1, DIG
	db 1, SHADOW_BALL 
	db 23, THUNDERBOLT
	db 30, THUNDERBOLT
	db 36, THUNDERBOLT
	db 42, THUNDERBOLT
	db 47, THUNDERBOLT
	db 52, THUNDERBOLT
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_BLAST
	db 1, IRON_TAIL
	db 1, SHADOW_BALL
	db 1, BODY_SLAM
	db 23, FIRE_BLAST
	db 30, FIRE_BLAST
	db 36, FIRE_BLAST
	db 42, FIRE_BLAST
	db 47, FIRE_BLAST
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 1, RECOVER
	db 1, PSYCHIC_M
	db 12, THUNDERBOLT
	db 20, THUNDERBOLT
	db 24, THUNDERBOLT
	db 32, THUNDERBOLT
	db 36, THUNDERBOLT
	db 44, THUNDERBOLT
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, AURORA_BEAM
	db 1, DOUBLE_EDGE
	db 19, SURF
	db 20, ICE_BEAM
	db 21, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, BLIZZARD
	db 1, SUBMISSION
	db 1, ANCIENTPOWER
	db 19, HYDRO_PUMP
	db 31, HYDRO_PUMP
	db 37, HYDRO_PUMP
	db 40, HYDRO_PUMP
	db 54, HYDRO_PUMP
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, BUBBLEBEAM
	db 1, SLASH
	db 19, SUBMISSION
	db 20, ROCK_SLIDE
	db 22, HYDRO_PUMP
	db 24, DOUBLE_EDGE
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, HYDRO_PUMP
	db 1, SUBMISSION
	db 1, BLIZZARD
	db 19, HYDRO_PUMP
	db 20, HYDRO_PUMP
	db 21, HYDRO_PUMP
	db 22, HYDRO_PUMP
	db 40, HYDRO_PUMP
	db 51, HYDRO_PUMP
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, WING_ATTACK
	db 1, SUBSTITUTE
	db 1, TOXIC
	db 18, ANCIENTPOWER
	db 20, EARTHQUAKE
	db 22, HURRICANE
	db 24, FIRE_BLAST
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, BODY_SLAM
	db 1, EARTHQUAKE
	db 1, BLIZZARD
	db 29, BODY_SLAM
	db 36, BODY_SLAM
	db 36, BODY_SLAM
	db 43, BODY_SLAM
	db 50, BODY_SLAM
	db 57, BODY_SLAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, BLIZZARD
	db 1, BRAVE_BIRD
	db 1, STEEL_WING
	db 1, DOUBLE_EDGE
	db 37, BLIZZARD
	db 49, BLIZZARD
	db 61, BLIZZARD
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, BRAVE_BIRD
	db 1, STEEL_WING
	db 1, HIDDEN_POWER
	db 37, THUNDERBOLT
	db 49, THUNDERBOLT
	db 61, THUNDERBOLT
	db 73, THUNDERBOLT
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, STEEL_WING
	db 1, BRAVE_BIRD
	db 1, FIRE_BLAST
	db 1, HIDDEN_POWER
	db 37, FIRE_BLAST
	db 49, FIRE_BLAST
	db 61, FIRE_BLAST
	db 73, FIRE_BLAST
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, THUNDER_WAVE
	db 8, WRAP
	db 13, TOXIC
	db 22, SAFEGUARD
	db 29, RETURN
	db 36, SAFEGUARD
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, OUTRAGE
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, ICE_BEAM
	db 1, OUTRAGE
	db 1, DOUBLE_EDGE
	db 8, THUNDERBOLT
	db 15, THUNDERBOLT
	db 22, THUNDERBOLT
	db 29, THUNDERBOLT
	db 38, THUNDERBOLT
	db 47, THUNDERBOLT
	db 56, THUNDERBOLT
	db 65, THUNDERBOLT
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 1, DOUBLE_EDGE
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 8, THUNDERBOLT
	db 15, THUNDERBOLT
	db 22, THUNDERBOLT
	db 29, THUNDERBOLT
	db 38, THUNDERBOLT
	db 47, THUNDERBOLT
	db 55, THUNDERBOLT
	db 61, THUNDERBOLT
	db 75, THUNDERBOLT
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, RECOVER
	db 1, BLIZZARD
	db 1, THUNDERBOLT
	db 33, PSYCHIC_M
	db 44, PSYCHIC_M
	db 55, PSYCHIC_M
	db 66, PSYCHIC_M
	db 77, PSYCHIC_M
	db 88, PSYCHIC_M
	db 99, PSYCHIC_M
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, BLIZZARD
	db 1, SHADOW_BALL
	db 1, SOFTBOILED
	db 40, SOFTBOILED
	db 50, SOFTBOILED
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, REFLECT
	db 12, RAZOR_LEAF
	db 15, SYNTHESIS
	db 22, GIGA_DRAIN
	db 23, BODY_SLAM
	db 24, LIGHT_SCREEN
	db 43, SAFEGUARD
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, BODY_SLAM
	db 1, SYNTHESIS
	db 1, GIGA_DRAIN
	db 1, LIGHT_SCREEN
	db 8, GIGA_DRAIN
	db 12, GIGA_DRAIN
	db 15, GIGA_DRAIN
	db 23, GIGA_DRAIN
	db 31, GIGA_DRAIN
	db 39, GIGA_DRAIN
	db 47, GIGA_DRAIN
	db 55, GIGA_DRAIN
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, BODY_SLAM
	db 1, EARTHQUAKE
	db 1, MAGICAL_LEAF
	db 1, SYNTHESIS
	db 8, MAGICAL_LEAF
	db 12, MAGICAL_LEAF
	db 15, MAGICAL_LEAF
	db 23, MAGICAL_LEAF
	db 31, MAGICAL_LEAF
	db 41, MAGICAL_LEAF
	db 51, MAGICAL_LEAF
	db 61, MAGICAL_LEAF
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 21, DOUBLE_EDGE
	db 30, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, DOUBLE_EDGE
	db 1, SUBMISSION
	db 1, IRON_TAIL
	db 12, FLAMETHROWER
	db 21, FLAMETHROWER
	db 31, FLAMETHROWER
	db 42, FLAMETHROWER
	db 54, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_BLAST
	db 1, THUNDERPUNCH
	db 1, SUBMISSION
	db 1, EARTHQUAKE
	db 6, FIRE_BLAST
	db 12, FIRE_BLAST
	db 21, FIRE_BLAST
	db 31, FIRE_BLAST
	db 45, FIRE_BLAST
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, BITE
	db 11, SLASH
	db 14, WATER_GUN
	db 23, DOUBLE_EDGE
	db 35, CRUNCH
	db 43, HYDRO_PUMP
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, ICE_BEAM
	db 1, DOUBLE_EDGE
	db 1, SURF
	db 1, CRUNCH
	db 13, SURF
	db 21, SURF
	db 28, SURF
	db 37, SURF
	db 45, SURF
	db 55, SURF
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, EARTHQUAKE
	db 1, BLIZZARD
	db 1, ANCIENTPOWER
	db 7, HYDRO_PUMP
	db 13, HYDRO_PUMP
	db 21, HYDRO_PUMP
	db 28, HYDRO_PUMP
	db 38, HYDRO_PUMP
	db 47, HYDRO_PUMP
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 5, SWIFT
	db 11, QUICK_ATTACK
	db 17, SLASH
	db 25, DIZZY_PUNCH
	db 33, DOUBLE_EDGE
	db 41, PURSUIT
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_PUNCH
	db 1, THUNDERPUNCH
	db 1, SHADOW_BALL
	db 1, SURF
	db 11, SURF
	db 18, SURF
	db 28, SURF
	db 38, SURF
	db 48, SURF
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, WHIRLWIND
	db 1, HYPNOSIS
	db 1, NIGHT_SHADE
	db 1, WING_ATTACK
	db 16, HYPNOSIS
	db 22, HYPNOSIS
	db 28, HYPNOSIS
	db 34, HYPNOSIS
	db 48, HYPNOSIS
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, STEEL_WING
	db 1, PSYCHIC_M
	db 1, HYPNOSIS
	db 1, NIGHT_SHADE
	db 6, PSYCHIC_M
	db 11, PSYCHIC_M
	db 16, PSYCHIC_M
	db 25, PSYCHIC_M
	db 33, PSYCHIC_M
	db 41, PSYCHIC_M
	db 57, PSYCHIC_M
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, TOXIC
	db 1, MACH_PUNCH
	db 1, MEGA_DRAIN
	db 17, REFLECT
	db 19, SAFEGUARD
	db 21, SAFEGUARD
	db 24, DOUBLE_EDGE
	db 43, SWIFT
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, HIDDEN_POWER
	db 1, GIGA_DRAIN
	db 1, ICE_PUNCH
	db 24, GIGA_DRAIN
	db 24, GIGA_DRAIN
	db 24, GIGA_DRAIN
	db 33, GIGA_DRAIN
	db 42, GIGA_DRAIN
	db 51, GIGA_DRAIN
	db 60, GIGA_DRAIN
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, MEGA_DRAIN
	db 1, NIGHT_SHADE
	db 1, TOXIC
	db 17, NIGHT_SHADE
	db 23, NIGHT_SHADE
	db 30, GIGA_DRAIN
	db 37, GIGA_DRAIN
	db 45, SLUDGE_BOMB
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, PSYCHIC_M
	db 1, NIGHT_SHADE
	db 1, SLUDGE_BOMB
	db 6, PSYCHIC_M
	db 11, PSYCHIC_M
	db 17, PSYCHIC_M
	db 25, PSYCHIC_M
	db 34, PSYCHIC_M
	db 43, PSYCHIC_M
	db 53, PSYCHIC_M
	db 63, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, GIGA_DRAIN
	db 1, POISON_FANG
	db 1, SHADOW_BALL
	db 12, GIGA_DRAIN
	db 19, GIGA_DRAIN
	db 30, GIGA_DRAIN
	db 42, GIGA_DRAIN
	db 55, GIGA_DRAIN
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, SPARK
	db 1, BUBBLEBEAM
	db 1, CONFUSE_RAY
	db 1, THUNDER_WAVE
	db 17, SPARK
	db 22, SPARK
	db 25, SIGNAL_BEAM
	db 37, THUNDERBOLT
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_BEAM
	db 1, SIGNAL_BEAM
	db 1, THUNDERBOLT
	db 1, SURF
	db 13, SURF
	db 17, SURF
	db 25, SURF
	db 33, SURF
	db 45, SURF
	db 53, SURF
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, SWEET_KISS
	db 6, THUNDER_WAVE
	db 8, SWIFT
	db 20, THUNDERBOLT
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TOXIC
	db 1, FAINT_ATTACK
	db 1, SWEET_KISS
	db 1, COVET
	db 15, SING
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH
	db 1, FAINT_ATTACK
	db 1, SING
	db 9, SWEET_KISS
	db 14, DIZZY_PUNCH
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, METRONOME
	db 1, ATTRACT
	db 9, SAFEGUARD
	db 18, DOUBLE_EDGE
	db 24, SOFTBOILED
	db 28, SOFTBOILED
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 1, FIRE_BLAST
	db 1, PSYCHIC_M
	db 1, SOFTBOILED
	db 25, PSYCHIC_M
	db 31, PSYCHIC_M
	db 38, PSYCHIC_M
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, CONFUSE_RAY
	db 1, DRILL_PECK
	db 1, NIGHT_SHADE
	db 30, PSYCHIC_M
	db 40, PSYCHIC_M
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, FAINT_ATTACK
	db 1, PSYCHIC_M
	db 1, STEEL_WING
	db 20, PSYCHIC_M
	db 35, PSYCHIC_M
	db 50, PSYCHIC_M
	db 65, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, SWIFT
	db 9, THUNDER_WAVE
	db 11, SPARK
	db 23, SAFEGUARD
	db 30, LIGHT_SCREEN
	db 37, THUNDERBOLT
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, SIGNAL_BEAM
	db 1, BODY_SLAM
	db 1, FIRE_PUNCH
	db 18, THUNDERBOLT
	db 20, THUNDERBOLT
	db 24, SIGNAL_BEAM
	db 28, SIGNAL_BEAM
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_TAIL
	db 1, FIRE_PUNCH
	db 1, DYNAMICPUNCH
	db 1, THUNDERBOLT
	db 9, THUNDERBOLT
	db 18, THUNDER_WAVE
	db 27, SIGNAL_BEAM
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLEEP_POWDER
	db 1, SLUDGE_BOMB
	db 1, MAGICAL_LEAF
	db 1, MOONLIGHT
	db 55, MAGICAL_LEAF
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, ICE_BEAM
	db 6, DOUBLE_EDGE
	db 10, SEISMIC_TOSS
	db 15, WATERFALL
	db 21, DOUBLE_EDGE
	db 28, DOUBLE_EDGE
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, SURF
	db 1, BLIZZARD
	db 1, IRON_TAIL
	db 1, SING
	db 3, SURF
	db 6, SURF
	db 10, SURF
	db 15, SURF
	db 25, SURF
	db 36, SURF
	db 48, SURF
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, LOW_KICK
	db 1, ICE_PUNCH 
	db 19, RETURN
	db 21, ROCK_SLIDE
	db 33, EARTHQUAKE
	db 25, EXPLOSION
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, BLIZZARD
	db 1, EARTHQUAKE
	db 1, HYDRO_PUMP
	db 35, BLIZZARD
	db 51, BLIZZARD
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, CONFUSION
	db 1, TOXIC
	db 1, STUN_SPORE
	db 16, SLEEP_POWDER
	db 18, SLEEP_POWDER
	db 19, SLEEP_POWDER
	db 20, SLEEP_POWDER
	db 25, SLEEP_POWDER
	db 30, SLEEP_POWDER
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, DOUBLE_EDGE
	db 1, GIGA_DRAIN
	db 1, STUN_SPORE
	db 1, SLEEP_POWDER
	db 5, GIGA_DRAIN
	db 10, GIGA_DRAIN
	db 13, GIGA_DRAIN
	db 15, GIGA_DRAIN
	db 17, GIGA_DRAIN
	db 22, GIGA_DRAIN
	db 29, GIGA_DRAIN
	db 36, GIGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SYNTHESIS
	db 1, GIGA_DRAIN
	db 1, DOUBLE_EDGE
	db 1, SLEEP_POWDER
	db 5, SLEEP_POWDER
	db 10, SLEEP_POWDER
	db 13, SLEEP_POWDER
	db 15, SLEEP_POWDER
	db 17, SLEEP_POWDER
	db 22, SLEEP_POWDER
	db 33, SLEEP_POWDER
	db 44, SLEEP_POWDER
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 1, SAND_ATTACK
	db 1, PURSUIT
	db 1, MUD_SLAP
	db 18, ATTRACT
	db 21, ICE_PUNCH
	db 24, THUNDERPUNCH
	db 27, SHADOW_BALL
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, RETURN
	db 1, SYNTHESIS
	db 1, PROTECT
	db 31, PROTECT
	db 46, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE
	db 1, SYNTHESIS
	db 1, SLUDGE_BOMB
	db 1, ATTRACT
	db 19, PETAL_DANCE
	db 31, PETAL_DANCE
	db 46, PETAL_DANCE
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, GIGA_DRAIN
	db 1, WING_ATTACK
	db 1, SIGNAL_BEAM
	db 19, WING_ATTACK
	db 25, WING_ATTACK
	db 31, WING_ATTACK
	db 37, WING_ATTACK
	db 43, WING_ATTACK
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, MAGNITUDE
	db 1, BODY_SLAM
	db 21, BODY_SLAM
	db 31, EARTHQUAKE
	db 41, HYDRO_PUMP
	db 51, HYDRO_PUMP
	db 61, HYDRO_PUMP
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, EARTHQUAKE
	db 1, SLUDGE_BOMB
	db 1, SURF
	db 35, SURF
	db 47, SURF
	db 59, SURF
	db 59, SURF
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, MORNING_SUN
	db 1, PSYCHIC_M
	db 1, SHADOW_BALL
	db 1, YAWN
	db 23, PSYCHIC_M
	db 30, PSYCHIC_M
	db 36, PSYCHIC_M
	db 42, PSYCHIC_M
	db 47, PSYCHIC_M
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 1, BODY_SLAM
	db 1, PSYCHIC_M
	db 1, MOONLIGHT
	db 23, SHADOW_BALL 
	db 30, SHADOW_BALL
	db 36, SHADOW_BALL
	db 42, SHADOW_BALL
	db 47, SHADOW_BALL
	db 52, SHADOW_BALL
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, FAINT_ATTACK
	db 1, NIGHT_SHADE
	db 20, BRAVE_BIRD
	db 22, SHADOW_BALL
	db 24, SHADOW_BALL
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, BLIZZARD
	db 1, SURF
	db 1, PSYCHIC_M
	db 1, EARTHQUAKE
	db 20, SURF
	db 29, SURF
	db 34, SURF
	db 43, SURF
	db 48, SURF
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 1, THUNDERBOLT
	db 1, PSYCHIC_M
	db 1, HYPNOSIS
	db 19, SHADOW_BALL
	db 27, SHADOW_BALL
	db 36, SHADOW_BALL
	db 46, SHADOW_BALL
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
	db 1, CRUNCH
	db 1, EARTHQUAKE
	db 1, PSYCHIC_M
	db 1, THUNDERBOLT
	db 7, PSYCHIC_M
	db 13, PSYCHIC_M
	db 20, PSYCHIC_M
	db 30, PSYCHIC_M
	db 41, PSYCHIC_M
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, PIN_MISSILE
	db 1, HIDDEN_POWER
	db 1, DOUBLE_EDGE
	db 1, SELFDESTRUCT
	db 24, PROTECT
	db 29, DOUBLE_EDGE
	db 36, EXPLOSION
	db 43, EXPLOSION
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 1, GIGA_DRAIN
	db 15, EARTHQUAKE
	db 22, EARTHQUAKE
	db 29, EARTHQUAKE
	db 39, EARTHQUAKE
	db 49, EARTHQUAKE
	db 59, EARTHQUAKE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, DRILL_RUN
	db 1, ROCK_SLIDE
	db 1, GLARE
	db 20, EARTHQUAKE
	db 23, DOUBLE_EDGE
	db 33, TAKE_DOWN
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, SLASH
	db 1, STEEL_WING
	db 1, ROCK_SLIDE
	db 28, WING_ATTACK
	db 36, EARTHQUAKE
	db 44, EARTHQUAKE
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, BODY_SLAM
	db 1, ROCK_SLIDE
	db 1, EARTHQUAKE
	db 23, EARTHQUAKE
	db 27, EARTHQUAKE
	db 36, EARTHQUAKE
	db 40, EARTHQUAKE
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, HEADBUTT
	db 4, BITE
	db 5, ROAR
	db 13, BITE
	db 19, ROAR
	db 26, ROAR
	db 34, ROAR
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOVELY_KISS
	db 1, EARTHQUAKE
	db 1, ICE_PUNCH
	db 1, THUNDERBOLT
	db 13, EARTHQUAKE
	db 19, EARTHQUAKE
	db 28, EARTHQUAKE
	db 38, EARTHQUAKE
	db 51, EARTHQUAKE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_BEAM
	db 1, SLUDGE_BOMB
	db 1, SURF
	db 1, EXPLOSION
	db 19, SURF
	db 28, SURF
	db 37, SURF
	db 46, SURF
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW
	db 1, REVERSAL
	db 1, DOUBLE_EDGE
	db 1, ATTRACT
	db 18, METAL_CLAW
	db 24, METAL_CLAW
	db 30, METAL_CLAW
	db 36, METAL_CLAW
	db 42, METAL_CLAW
	db 48, METAL_CLAW
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SANDSTORM
	db 1, WRAP
	db 1, PROTECT
	db 1, TOXIC
	db 26, ROCK_SLIDE
	db 27, EARTHQUAKE
	db 28, BODY_SLAM
	db 29, SLUDGE_BOMB
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, EARTHQUAKE
	db 1, ROCK_SLIDE
	db 1, MEGAHORN
	db 19, ROCK_SLIDE
	db 27, ROCK_SLIDE
	db 35, ROCK_SLIDE
	db 44, ROCK_SLIDE
	db 54, ROCK_SLIDE
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, FRUSTRATION
	db 1, SURF
	db 1, SHADOW_BALL
	db 1, METAL_CLAW
	db 25, METAL_CLAW
	db 27, METAL_CLAW
	db 29, METAL_CLAW
	db 31, METAL_CLAW
	db 33, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SEISMIC_TOSS
	db 1, FURY_SWIPES
	db 1, FAINT_ATTACK
	db 18, RETURN
	db 20, RETURN
	db 22, RETURN
	db 24, RETURN
	db 26, RETURN
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTHQUAKE
	db 1, ICE_PUNCH
	db 1, THUNDERPUNCH
	db 1, DYNAMICPUNCH
	db 8, EARTHQUAKE
	db 15, EARTHQUAKE
	db 22, EARTHQUAKE
	db 29, EARTHQUAKE
	db 39, EARTHQUAKE
	db 49, EARTHQUAKE
	db 59, EARTHQUAKE
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, FLAME_WHEEL
	db 1, TOXIC
	db 1, PROTECT
	db 20, FLAMETHROWER
	db 21, ROCK_SLIDE
	db 26, ROCK_SLIDE
	db 32, ROCK_SLIDE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, EARTHQUAKE
	db 1, FIRE_BLAST
	db 1, EXPLOSION
	db 15, FIRE_BLAST
	db 22, FIRE_BLAST
	db 29, FIRE_BLAST
	db 36, FIRE_BLAST
	db 48, FIRE_BLAST
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, MAGNITUDE
	db 7, PROTECT
	db 28, ICE_BEAM
	db 37, RETURN
	db 46, RETURN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, BLIZZARD
	db 1, BODY_SLAM
	db 1, EARTHQUAKE
	db 19, BLIZZARD
	db 28, BLIZZARD
	db 33, BLIZZARD
	db 42, BLIZZARD
	db 56, BLIZZARD
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, BLIZZARD
	db 1, SHADOW_BALL
	db 1, EARTHQUAKE
	db 25, BLIZZARD
	db 31, BLIZZARD
	db 37, BLIZZARD
	db 43, BLIZZARD
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, AURORA_BEAM
	db 1, BUBBLEBEAM
	db 1, FLAMETHROWER
	db 22, SIGNAL_BEAM
	db 33, BUBBLEBEAM
	db 44, BUBBLEBEAM
	db 55, ICE_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, BLIZZARD
	db 1, SURF
	db 1, SIGNAL_BEAM
	db 22, SURF
	db 25, SURF
	db 38, SURF
	db 54, SURF
	db 70, SURF
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, BLIZZARD
	db 1, HIDDEN_POWER
	db 1, BRAVE_BIRD
	db 1, ATTRACT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 1, BUBBLEBEAM
	db 1, CONFUSE_RAY
	db 1, TOXIC
	db 22, BLIZZARD
	db 25, SURF
	db 28, PSYBEAM
	db 31, EARTHQUAKE
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_SLIDE
	db 1, BRAVE_BIRD
	db 1, STEEL_WING
	db 1, DRILL_RUN
	db 25, STEEL_WING
	db 37, STEEL_WING
	db 49, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, BITE
	db 1, ROAR
	db 13, PURSUIT
	db 20, FLAME_WHEEL
	db 27, FLAME_WHEEL
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAMETHROWER
	db 1, CRUNCH
	db 1, IRON_TAIL
	db 1, SOLARBEAM
	db 20, FLAMETHROWER
	db 30, FLAMETHROWER
	db 41, FLAMETHROWER
	db 52, FLAMETHROWER
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, BLIZZARD
	db 1, DRAGONBREATH
	db 1, REST
	db 8, HYDRO_PUMP
	db 15, HYDRO_PUMP
	db 22, HYDRO_PUMP
	db 29, HYDRO_PUMP
	db 40, HYDRO_PUMP
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FLAIL
	db 9, ROCK_THROW
	db 17, MAGNITUDE
	db 25, DOUBLE_EDGE
	db 33, ROCK_SLIDE
	db 41, ROCK_SLIDE
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, ATTRACT
	db 1, BODY_SLAM
	db 1, ANCIENTPOWER
	db 1, EARTHQUAKE
	db 25, EARTHQUAKE
	db 33, EARTHQUAKE
	db 41, EARTHQUAKE
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 1, RECOVER
	db 12, PSYCHIC_M
	db 20, PSYCHIC_M
	db 24, PSYCHIC_M
	db 32, PSYCHIC_M
	db 36, PSYCHIC_M
	db 44, PSYCHIC_M
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, EARTHQUAKE
	db 1, THUNDERBOLT
	db 1, PSYCHIC_M
	db 31, PSYCHIC_M
	db 40, PSYCHIC_M
	db 49, PSYCHIC_M
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPORE
	db 1, THUNDERBOLT
	db 1, ICE_BEAM
	db 1, SHADOW_BALL
	db 20, SPORE
	db 26, THUNDERBOLT
	db 32, THUNDERBOLT
	db 38, ICE_BEAM
	db 44, SHADOW_BALL
	db 50, SHADOW_BALL
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 1, PURSUIT
	db 1, SEISMIC_TOSS
	db 1, ENDURE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, HI_JUMP_KICK
	db 1, ROCK_SLIDE
	db 1, EARTHQUAKE
	db 1, TOXIC
	db 25, HI_JUMP_KICK
	db 31, HI_JUMP_KICK
	db 37, HI_JUMP_KICK
	db 43, HI_JUMP_KICK
	db 49, HI_JUMP_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, CONFUSION
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, ICE_PUNCH
	db 37, PSYCHIC_M
	db 45, PSYCHIC_M
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, QUICK_ATTACK
	db 9, KARATE_CHOP
	db 12, DIZZY_PUNCH
	db 15, THUNDER_WAVE
	db 17, THUNDERPUNCH
	db 41, THUNDERBOLT
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, MACH_PUNCH
	db 9, DIZZY_PUNCH
	db 12, CONFUSE_RAY
	db 16, FIRE_PUNCH
	db 31, ICE_PUNCH
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, ATTRACT
	db 1, BODY_SLAM
	db 1, EARTHQUAKE
	db 1, MILK_DRINK
	db 19, BODY_SLAM
	db 26, BODY_SLAM
	db 34, BODY_SLAM
	db 43, BODY_SLAM
	db 53, BODY_SLAM
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, SOFTBOILED
	db 1, THUNDERBOLT
	db 1, BLIZZARD
	db 1, PSYCHIC_M
	db 13, PSYCHIC_M
	db 18, PSYCHIC_M
	db 23, PSYCHIC_M
	db 28, PSYCHIC_M
	db 33, PSYCHIC_M
	db 40, PSYCHIC_M
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, THUNDERBOLT
	db 1, EXTREMESPEED
	db 1, HIDDEN_POWER
	db 31, THUNDERBOLT
	db 41, THUNDERBOLT
	db 51, THUNDERBOLT
	db 61, THUNDERBOLT
	db 71, THUNDERBOLT
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_BLAST
	db 1, HIDDEN_POWER
	db 1, METAL_CLAW
	db 1, EXTREMESPEED
	db 31, FIRE_BLAST
	db 41, FIRE_BLAST
	db 51, FIRE_BLAST
	db 61, FIRE_BLAST
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 1, BLIZZARD
	db 1, SURF
	db 1, EXTREMESPEED
	db 31, SURF
	db 41, SURF
	db 51, SURF
	db 61, SURF
	db 71, SURF
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROCK_THROW
	db 7, MAGNITUDE
	db 15, THRASH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, THRASH
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, THRASH
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, ROCK_SLIDE
	db 1, EARTHQUAKE
	db 1, FRUSTRATION
	db 1, PROTECT
	db 27, EARTHQUAKE
	db 29, EARTHQUAKE
	db 31, EARTHQUAKE
	db 33, EARTHQUAKE
	db 35, EARTHQUAKE
	db 38, EARTHQUAKE
	db 41, EARTHQUAKE
	db 44, EARTHQUAKE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, EARTHQUAKE
	db 1, THUNDERBOLT
	db 1, ICE_BEAM
	db 8, EARTHQUAKE
	db 15, EARTHQUAKE
	db 22, EARTHQUAKE
	db 29, EARTHQUAKE
	db 38, EARTHQUAKE
	db 47, EARTHQUAKE
	db 61, EARTHQUAKE
	db 75, EARTHQUAKE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 1, BLIZZARD
	db 1, THUNDERBOLT
	db 1, PSYCHIC_M
	db 44, AEROBLAST
	db 55, AEROBLAST
	db 66, AEROBLAST
	db 77, AEROBLAST
	db 88, AEROBLAST
	db 99, AEROBLAST
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, SACRED_FIRE
	db 1, EARTHQUAKE
	db 1, THUNDERBOLT
	db 44, SACRED_FIRE
	db 55, SACRED_FIRE
	db 66, SACRED_FIRE
	db 77, SACRED_FIRE
	db 88, SACRED_FIRE
	db 99, SACRED_FIRE
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, PSYCHIC_M
	db 1, RECOVER
	db 1, ANCIENTPOWER
	db 10, PSYCHIC_M
	db 20, PSYCHIC_M
	db 30, PSYCHIC_M
	db 40, PSYCHIC_M
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves
