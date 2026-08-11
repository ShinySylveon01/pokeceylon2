	object_const_def ; object_event constants
	const SAFARI_ZONE_HUB_YOUNGSTER
	const SAFARI_ZONE_HUB_LASS
	const SAFARI_ZONE_HUB_BUG_CATCHER
	const SAFARI_ZONE_HUB_BEAUTY

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
	
TrainerPicnickerLuna:
	trainer PICNICKER, LUNA, EVENT_BEAT_PICNICKER_LUNA, PicnickerLunaSeenText, PicnickerLunaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerLunaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherWally:
	trainer BUG_CATCHER, WALLY, EVENT_BEAT_BUG_CATCHER_WALLY, BugCatcherWallySeenText, BugCatcherWallyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherWallyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyAurora:
	trainer BEAUTY, AURORA, EVENT_BEAT_BEAUTY_AURORA, BeautyAuroraSeenText, BeautyAuroraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyAuroraAfterBattleText
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
	
PicnickerLunaSeenText:
	text "Do you have the"
	line "skills to take"
	cont "on ZAPDOS!"

	para "You must beat me"
	line "first!"
	done

PicnickerLunaBeatenText:
	text "You're good!"
	done

PicnickerLunaAfterBattleText:
	text "ZAPDOS is near"
	line "the area where"
	cont "former champ RED"
	
	para "got the last HM!"
	done
	
BugCatcherWallySeenText:
	text "My #MON got"
	line "beaten by ZAPDOS!"

	para "I challenge you"
	line "to a battle!"
	done

BugCatcherWallyBeatenText:
	text "Good job!"
	done

BugCatcherWallyAfterBattleText:
	text "Beware of the"
	line "legendary ZAPDOS!"
	
	para "If you have birds"
	line "and WATER types!"
	
	para "You don't stand a"
	line "chance!"
	done
	
BeautyAuroraSeenText:
	text "You got all of"
	line "the GYM badges!"

	para "I want to see how"
	line "good you are!"
	done

BeautyAuroraBeatenText:
	text "Nice!"
	done

BeautyAuroraAfterBattleText:
	text "You have beaten"
	line "me but I will"
	cont "try harder!"
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

	db 4 ; object events
	object_event 26, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperIsaiah, -1
	object_event 20,  6, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerLuna, -1
	object_event  7,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherWally, -1
	object_event  9, 22, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyAurora, -1
	