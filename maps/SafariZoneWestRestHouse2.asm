SafariZoneWestRestHouse2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SafariZoneWestRestHouse2_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFARI_ZONE_WEST, 8
	warp_event  3,  7, SAFARI_ZONE_WEST, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
