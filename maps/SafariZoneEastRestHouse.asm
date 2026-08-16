	object_const_def ; object_event constants
	const SAFARI_ZONE_EAST_REST_HOUSE_LASS


SafariZoneEastRestHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneEastRestHouseLassScript:
	jumptextfaceplayer SafariZoneEastRestHouseLassText

SafariZoneEastRestHouseLassText:
	text "Watch out for BUG"
	line "type #MON!"

	para "Some of them may"
	line "have venom!"
	done

SafariZoneEastRestHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  3,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneEastRestHouseLassScript, -1
