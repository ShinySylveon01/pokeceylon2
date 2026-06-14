SafariZoneNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneNorthSign:
	jumptext SafariZoneNorthSignText
	
SafariZoneNorthSign1:
	jumptext SafariZoneNorthSignText1
	
SafariZoneNorthSign2:
	jumptext SafariZoneNorthSignText2
	
SafariZoneNorthSign3:
	jumptext SafariZoneNorthSignText3

SafariZoneNorthSign4:
	jumptext SafariZoneNorthSignText4	
	
SafariZoneNorthSignText:
	text "SAFARI ZONE"
	line "NORTH AREA"
	done
	
SafariZoneNorthSignText1:
	text "REST HOUSE"
	done
	
SafariZoneNorthSignText2:
	text "TRAINER TIPS"

	para "Moves of the same"
	line "type can be"
	cont "physical, special,"
	cont "or status-based."
	done
	
SafariZoneNorthSignText3:
	text "TRAINER TIPS"

	para "#MON hide in"
	line "tall grass!"

	para "Zigzag through"
	line "grassy areas to"
	cont "flush them out."
	done
	
SafariZoneNorthSignText4:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

SafariZoneNorth_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event 41, 32, SAFARI_ZONE_EAST, 3
	warp_event 41, 33, SAFARI_ZONE_EAST, 4
	warp_event 10, 37, SAFARI_ZONE_WEST, 3
	warp_event 11, 37, SAFARI_ZONE_WEST, 4
	warp_event 22, 37, SAFARI_ZONE_HUB, 7
	warp_event 23, 37, SAFARI_ZONE_HUB, 8
	warp_event 37,  5, SAFARI_ZONE_NORTH_REST_HOUSE, 1
	warp_event  4, 37, SAFARI_ZONE_WEST, 1
	warp_event  5, 37, SAFARI_ZONE_WEST, 2

	db 0 ; coord events

	db 5 ; bg events
	bg_event 20, 34, BGEVENT_READ, SafariZoneNorthSign
	bg_event 38,  6, BGEVENT_READ, SafariZoneNorthSign1
	bg_event  5, 27, BGEVENT_READ, SafariZoneNorthSign2
	bg_event 15, 33, BGEVENT_READ, SafariZoneNorthSign3
	bg_event 28, 30, BGEVENT_READ, SafariZoneNorthSign4

	db 0 ; object events
