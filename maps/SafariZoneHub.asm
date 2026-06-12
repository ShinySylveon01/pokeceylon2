SafariZoneHub_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneHubSign:
	jumptext SafariZoneHubSignText
	
SafariZoneHubSign1:
	jumptext SafariZoneHubSignText1
	
SafariZoneHubSignText:
	text "Safari Zone"
	line "Center Area"
	done
	
SafariZoneHubSignText1:
	text "Rest House"
	done

SafariZoneHub_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event 16, 27, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 17, 27, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 31, 12, SAFARI_ZONE_EAST, 1
	warp_event 31, 13, SAFARI_ZONE_EAST, 2
	warp_event  2, 12, SAFARI_ZONE_WEST, 5
	warp_event  2, 13, SAFARI_ZONE_WEST, 6
	warp_event 16,  2, SAFARI_ZONE_NORTH, 5
	warp_event 17,  2, SAFARI_ZONE_NORTH, 6
	warp_event 19, 21, SAFARI_ZONE_HUB_REST_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 16, 24, BGEVENT_READ, SafariZoneHubSign
	bg_event 20, 22, BGEVENT_READ, SafariZoneHubSign1

	db 0 ; object events
	