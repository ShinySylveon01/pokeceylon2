SafariZoneWest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneWestSign:
	jumptext SafariZoneWestSignText
	
SafariZoneWestSign1:
	jumptext SafariZoneWestSignText1
	
SafariZoneWestSign2:
	jumptext SafariZoneWestSignText2
	
SafariZoneWestSign3:
	jumptext SafariZoneWestSignText3
	
SafariZoneWestSignText:
	text "SAFARI ZONE"
	line "WEST AREA"
	done
	
SafariZoneWestSignText1:
	text "REST HOUSE"
	done
	
SafariZoneWestSignText2:
	text "TRAINER TIPS"

	para "Fire-type #MON"
	line "cannot be burnt,"

	para "Electric types"
	line "can't be paralyzed,"

	para "and Ice types can't"
	line "be frozen solid."
	done
	
SafariZoneWestSignText3:
	text "TRAINER TIPS"

	para "In a sandstorm,"
	line "Rock-type #MON"

	para "get a boost to"
	line "their Sp.Def."
	done

SafariZoneWest_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 22,  2, SAFARI_ZONE_NORTH, 8
	warp_event 23,  2, SAFARI_ZONE_NORTH, 9
	warp_event 28,  2, SAFARI_ZONE_NORTH, 3
	warp_event 29,  2, SAFARI_ZONE_NORTH, 4
	warp_event 31, 24, SAFARI_ZONE_HUB, 5
	warp_event 31, 25, SAFARI_ZONE_HUB, 6
	warp_event 13, 13, SAFARI_ZONE_WEST_REST_HOUSE_1, 1
	warp_event  5,  5, SAFARI_ZONE_WEST_REST_HOUSE_2, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 26, 24, BGEVENT_READ, SafariZoneWestSign
	bg_event 14, 14, BGEVENT_READ, SafariZoneWestSign1
	bg_event 28,  6, BGEVENT_READ, SafariZoneWestSign2
	bg_event 19,  5, BGEVENT_READ, SafariZoneWestSign3

	db 0 ; object events
