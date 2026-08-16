	object_const_def ; object_event constants
	const SAFARI_ZONE_NORTH_REST_HOUSE_LASS

SafariZoneNorthRestHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneNorthRestHouseLassScript:
	jumptextfaceplayer SafariZoneNorthRestHouseLassText

SafariZoneNorthRestHouseLassText:
	text "You should go to"
	line "the west rest"
	cont "house!"

	para "I heard you can"
	line "get a MASTER BALL"
	cont "there!"
	done

SafariZoneNorthRestHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFARI_ZONE_NORTH, 7
	warp_event  3,  7, SAFARI_ZONE_NORTH, 7

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  3,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneNorthRestHouseLassScript, -1
