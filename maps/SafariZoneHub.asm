	object_const_def ; object_event constants
	const SAFARI_ZONE_YOUNGSTER

SafariZoneHub_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerCamperIsaiah:
	trainer CAMPER, ISAIAH, EVENT_BEAT_CAMPER_ISAIAH, CamperIsaiahSeenText, CamperIsaiahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperIsaiahAfterBattleText
	waitbutton
	closetext
	end

SafariZoneHubSign:
	jumptext SafariZoneHubSignText
	
SafariZoneHubSign1:
	jumptext SafariZoneHubSignText1
	
SafariZoneHubSignText:
	text "SAFARI ZONE"
	line "CENTER AREA"
	done
	
SafariZoneHubSignText1:
	text "REST HOUSE"
	done
	
CamperIsaiahSeenText:
	text "This place is"
	line "now testing"
	cont "people if they"

	para "are proven to be"
	line "good trainers!"
	
	para "Let's fight!"
	done

CamperIsaiahBeatenText:
	text "Why!"
	done

CamperIsaiahAfterBattleText:
	text "I heard ZAPDOS"
	line "flew over here!"
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

	db 1 ; object events
	object_event 29, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperIsaiah, -1
	