	object_const_def ; object_event constants
	const SAFARI_ZONE_NORTH_YOUNGSTER
	const SAFARI_ZONE_NORTH_LASS
	const SAFARI_ZONE_NORTH_BUG_CATCHER
	const SAFARI_ZONE_NORTH_BEAUTY

SafariZoneNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerCamperLogan:
	trainer CAMPER, LOGAN, EVENT_BEAT_CAMPER_LOGAN, CamperLoganSeenText, CamperLoganBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperLoganAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPicnickerAddison:
	trainer PICNICKER, ADDISON, EVENT_BEAT_PICNICKER_ADDISON, PicnickerAddisonSeenText, PicnickerAddisonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerAddisonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherMiles:
	trainer BUG_CATCHER, MILES, EVENT_BEAT_BUG_CATCHER_MILES, BugCatcherMilesSeenText, BugCatcherMilesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherMilesAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyMaya:
	trainer BEAUTY, MAYA, EVENT_BEAT_BEAUTY_MAYA, BeautyMayaSeenText, BeautyMayaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyMayaAfterBattleText
	waitbutton
	closetext
	end
	
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
	
CamperLoganSeenText:
	text "A new challenger"
	line "I see!"

	para "Let's see who is"
	line "tougher!"
	done

CamperLoganBeatenText:
	text "You are tough!"
	done

CamperLoganAfterBattleText:
	text "I will try to"
	line "catch more #MON"
	cont "eventually!"
	done
	
PicnickerAddisonSeenText:
	text "A new trainer I"
	line "shall win with"
	cont "a battle!"

	para "If you really"
	line "want to prove"
	cont "you are tougher"
	
	para "than me!"
	
	para "We will see who"
	line "is better!"
	done

PicnickerAddisonBeatenText:
	text "Yikes!"
	done

PicnickerAddisonAfterBattleText:
	text "I promise that"
	line "I will be named"
	cont "the new CHAMPION!"
	done
	
BugCatcherMilesSeenText:
	text "Ow, I got stung"
	line "by a BEEDRILL!"

	para "That does not"
	line "mean that I am"
	cont "unable to fight!"
	
	para "I challenge you!"
	done

BugCatcherMilesBeatenText:
	text "Excellent fight!"
	done

BugCatcherMilesAfterBattleText:
	text "BEEDRILL is a"
	line "very strong and"
	cont "agile #MON!"
	
	para "Be careful as it"
	line "can poison you or"
	cont "your #MON with"
	
	para "POISON STING or"
	line "TWINEEDLE!"
	done
	
BeautyMayaSeenText:
	text "Some arrogant man"
	line "with red hair had"
	cont "defeated me!"

	para "I did indeed lose"
	line "to him but I will"
	cont "not lose to you!"
	done

BeautyMayaBeatenText:
	text "Aw shoot!"
	done

BeautyMayaAfterBattleText:
	text "I will get my"
	line "revenge on him"
	cont "someday!"
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

	db 4 ; object events
	object_event 24,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperLogan, -1
	object_event  7,  7, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerAddison, -1
	object_event 25, 30, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherMiles, -1
	object_event 14, 19, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyMaya, -1
