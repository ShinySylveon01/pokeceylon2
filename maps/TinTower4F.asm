	object_const_def ; object_event constants
	const TINTOWER4F_POKE_BALL1
	const TINTOWER4F_POKE_BALL2
	const TINTOWER4F_POKE_BALL3

TinTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TinTower4FUltraBall:
	itemball ULTRA_BALL

TinTower4FSuperPotion:
	itemball SUPER_POTION

TinTower4FEscapeRope:
	itemball ESCAPE_ROPE

TinTower4FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_TIN_TOWER_4F_HIDDEN_MAX_POTION

TinTower4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  2,  7, TIN_TOWER_5F, 2
	warp_event 18,  1, TIN_TOWER_3F, 2
	warp_event  2, 15, TIN_TOWER_5F, 3
	warp_event 16, 15, TIN_TOWER_5F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 17,  0, BGEVENT_ITEM, TinTower4FHiddenMaxPotion

	db 3 ; object events
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FUltraBall, EVENT_TIN_TOWER_4F_ULTRA_BALL
	object_event 17, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FSuperPotion, EVENT_TIN_TOWER_4F_SUPER_POTION
	object_event 18, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FEscapeRope, EVENT_TIN_TOWER_4F_ESCAPE_ROPE
