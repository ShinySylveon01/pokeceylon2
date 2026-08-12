	object_const_def ; object_event constants
	const SAFARI_ZONE_EAST_YOUNGSTER
	const SAFARI_ZONE_EAST_LASS
	const SAFARI_ZONE_EAST_BUG_CATCHER
	const SAFARI_ZONE_EAST_BEAUTY

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
	
TrainerPicnickerAbigail:
	trainer PICNICKER, ABIGAIL, EVENT_BEAT_PICNICKER_ABIGAIL, PicnickerAbigailSeenText, PicnickerAbigailBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerAbigailAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherGus:
	trainer BUG_CATCHER, GUS, EVENT_BEAT_BUG_CATCHER_GUS, BugCatcherGusSeenText, BugCatcherGusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherGusAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyWillow:
	trainer BEAUTY, WILLOW, EVENT_BEAT_BEAUTY_WILLOW, BeautyWillowSeenText, BeautyWillowBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyWillowAfterBattleText
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
	
PicnickerAbigailSeenText:
	text "You managed to"
	line "defeat CHAMPION"
	cont "RED!"

	para "Try beating me"
	line "next!"
	done

PicnickerAbigailBeatenText:
	text "Unbelievable!"
	done

PicnickerAbigailAfterBattleText:
	text "A word of advice"
	line "for you!"
	
	para "Use ULTRA BALLS"
	line "to boost your"
	cont "odds of getting"
	
	para "wild #MON"
	line "caught!"
	done
	
BugCatcherGusSeenText:
	text "Hey, a new person"
	line "I see!"

	para "I have trained my"
	line "bugs very well!"
	
	para "Prepare to fight!"
	done

BugCatcherGusBeatenText:
	text "No, no, no!"
	done

BugCatcherGusAfterBattleText:
	text "Watch out for"
	line "legendaries!"
	
	para "Some of them are"
	line "wary of humans!"
	
	para "A powerful move"
	line "like MEAN LOOK can"
	cont "trap them!"
	done
	
BeautyWillowSeenText:
	text "I caught some"
	line "#MON here!"

	para "Let's test them"
	line "out!"
	done

BeautyWillowBeatenText:
	text "Good job!"
	done

BeautyWillowAfterBattleText:
	text "Next time I won't"
	line "take it easy on"
	cont "you!"
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

	db 4 ; object events
	object_event 28, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperOliver, -1
	object_event  7, 13, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerAbigail, -1
	object_event 26,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherGus, -1
	object_event 10,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyWillow, -1
