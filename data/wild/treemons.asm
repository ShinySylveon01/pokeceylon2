TreeMons:
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_None
	dw TreeMonSet_Forest
	dw TreeMonSet_Canyon
	dw TreeMonSet_Rock
	dw TreeMonSet_Unused
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_None:
TreeMonSet_Unused:
TreeMonSet_City:
; common
	db 50, SHUCKLE,    15
	db 30, LEDYBA,     15
	db 10, ABRA,       15
	db  5, KADABRA,    16
	db  5, LEDIAN,     15
	db -1
; rare
	db 50, SHUCKLE,    15
	db 30, LEDYBA,     15
	db 10, ABRA,       15
	db  5, KADABRA,    16
	db  5, LEDIAN,     15
	db -1

TreeMonSet_Forest:

IF DEF(_GOLD)
; common
	db 50, PINSIR,     10
	db 15, WEEDLE,     10
	db 15, YANMA,      10
	db 10, EXEGGCUTE,  10
	db  5, BEEDRILL,   10
	db  5, SHUCKLE,    10
	db -1
; rare
	db 50, PINSIR,     10
	db 15, WEEDLE,     10
	db 15, YANMA,      10
	db 10, EXEGGCUTE,  10
	db  5, BEEDRILL,   10
	db  5, SHUCKLE,    10
	db -1

ELIF DEF(_SILVER)
; common
	db 50, PINSIR,     10
	db 15, WEEDLE,     10
	db 15, YANMA,      10
	db 10, EXEGGCUTE,  10
	db  5, BEEDRILL,   10
	db  5, SHUCKLE,    10
	db -1
; rare
	db 50, PINSIR,     10
	db 15, WEEDLE,     10
	db 15, YANMA,      10
	db 10, EXEGGCUTE,  10
	db  5, BEEDRILL,   10
	db  5, SHUCKLE,    10
	db -1
ENDC

TreeMonSet_Canyon:
; common
	db 50, NATU,       10
	db 15, PIDGEY,     10
	db 15, TOGEPI,     10
	db 10, SPEAROW,    10
	db  5, PINECO,     10
	db  5, SPINARAK,   10
	db -1
; rare
	db 50, NATU,       10
	db 15, PIDGEY,     10
	db 15, TOGEPI,     10
	db 10, SPEAROW,    10
	db  5, PINECO,     10
	db  5, SPINARAK,   10
	db -1

TreeMonSet_Rock:
	db 90, SCYTHER,    15
	db 10, HERACROSS,  15
	db -1
