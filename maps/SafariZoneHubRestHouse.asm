	object_const_def ; object_event constants
	const SAFARI_ZONE_HUB_REST_HOUSE_YOUNGSTER

SafariZoneHubRestHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneHubRestHouseYoungsterScript:
	jumptextfaceplayer SafariZoneHubRestHouseYoungsterText

SafariZoneHubRestHouseYoungsterText:
	text "I took a break"
	line "from catching"
	cont "#MON!"

	para "It's nice to relax"
	line "and take it easy"
	cont "on yourself!"
	done

SafariZoneHubRestHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFARI_ZONE_HUB, 9
	warp_event  3,  7, SAFARI_ZONE_HUB, 9

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  3,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SafariZoneHubRestHouseYoungsterScript, -1
