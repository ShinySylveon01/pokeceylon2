	object_const_def ; object_event constants
	const SAFARI_ZONE_EAST_YOUNGSTER

SafariZoneEast_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerCamperOliver:
	trainer CAMPER, OLIVER, EVENT_BEAT_CAMPER_OLIVER, CamperOliverSeenText, CamperOliverBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperOliverAfterBattleText
	waitbutton
	closetext
	end
	
SafariZoneEastSign:
	jumptext SafariZoneEastSignText
	
SafariZoneEastSign1:
	jumptext SafariZoneEastSignText1
	
SafariZoneEastSign2:
	jumptext SafariZoneEastSignText2
	
SafariZoneEastSignText:
	text "SAFARI ZONE"
	line "EAST AREA"
	done
	
SafariZoneEastSignText1:
	text "REST HOUSE"
	done
	
SafariZoneEastSignText2:
	text "TRAINER TIPS"

	para "Search for rare"
	line "#MON at night"
	cont "or in the morning!"
	done
	
CamperOliverSeenText:
	text "Welcome to the"
	line "rebuilt SAFARI"
	cont "ZONE!"

	para "Let's battle!"
	done

CamperOliverBeatenText:
	text "How!"
	done

CamperOliverAfterBattleText:
	text "Your #MON are"
	line "very powerful!"
	done

SafariZoneEast_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  2, 24, SAFARI_ZONE_HUB, 3
	warp_event  2, 25, SAFARI_ZONE_HUB, 4
	warp_event  2,  6, SAFARI_ZONE_NORTH, 1
	warp_event  2,  7, SAFARI_ZONE_NORTH, 2
	warp_event 27, 11, SAFARI_ZONE_EAST_REST_HOUSE, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event  6, 24, BGEVENT_READ, SafariZoneEastSign
	bg_event 28, 12, BGEVENT_READ, SafariZoneEastSign1
	bg_event  8,  6, BGEVENT_READ, SafariZoneEastSign2

	db 1 ; object events
	object_event 28, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperOliver, -1
