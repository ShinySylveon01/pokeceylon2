	object_const_def ; object_event constants
	const SAFARI_ZONE_WEST_REST_HOUSE_1_YOUNGSTER

SafariZoneWestRestHouse1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneWestRestHouse1YoungsterScript:
	jumptextfaceplayer SafariZoneWestRestHouse1YoungsterText

SafariZoneWestRestHouse1YoungsterText:
	text "This is your only"
	line "opportunity to get"
	cont "ZAPDOS!"

	para "Use your chance"
	line "wisely!"
	done

SafariZoneWestRestHouse1_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events	
	object_event  3,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SafariZoneWestRestHouse1YoungsterScript, -1
