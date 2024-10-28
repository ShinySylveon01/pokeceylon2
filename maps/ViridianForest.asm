	object_const_def ; object_event constants
	const VIRIDIANFOREST_BUG_CATCHER1
	const VIRIDIANFOREST_BUG_CATCHER2
	const VIRIDIANFOREST_BUG_CATCHER3
	const VIRIDIANFOREST_LASS1

ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerBugCatcherRandy:
	trainer BUG_CATCHER, RANDY, EVENT_BEAT_BUG_CATCHER_RANDY, BugCatcherRandySeenText, BugCatcherRandyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherRandyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherVince:
	trainer BUG_CATCHER, VINCE, EVENT_BEAT_BUG_CATCHER_VINCE, BugCatcherVinceSeenText, BugCatcherVinceBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherVinceAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherNoah:
	trainer BUG_CATCHER, NOAH, EVENT_BEAT_BUG_CATCHER_NOAH, BugCatcherNoahSeenText, BugCatcherNoahBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherNoahAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLassCarlie:
	trainer LASS, CARLIE, EVENT_BEAT_LASS_CARLIE, LassCarlieSeenText, LassCarlieBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext LassCarlieAfterBattleText
	waitbutton
	closetext
	end
	
BugCatcherRandySeenText:
	text "Hello there new"
	line "person from JOHTO!"

	para "Ready to fight!"
	done

BugCatcherRandyBeatenText:
	text "Damn you beat me!"
	done

BugCatcherRandyAfterBattleText:
	text "You have proven to"
	line "be a good trainer"

	para "GYM LEADER BROCK"
	line "was a tough match"
	done
	
BugCatcherVinceSeenText:
	text "Some Red Haired"
	line "man beat me!"
	done

BugCatcherVinceBeatenText:
	text "GGWP dude!"
	done

BugCatcherVinceAfterBattleText:
	text "That guy was rude"
	line "towards me and my"
	cont "#MON!"
	done
	
BugCatcherNoahSeenText:
	text "Welcome friend to"
	line "VIRIDIAN FOREST!"

	para "I'll show you how"
	line "good I've trained"
	cont "my bug #MON!"
	done

BugCatcherNoahBeatenText:
	text "You seem to show"
	line "true #MON bond!"
	done

BugCatcherNoahAfterBattleText:
	text "Good luck on your"
	line "trip my friend!"
	done
	
LassCarlieSeenText:
	text "Oh you came for"
	line "a battle here!"

	para "Let me to"
	line "introduce myself!"
	
	para "My name is"
	line "CARLIE HART!"

	para "Prepare to lose"
	line "this battle my"
	cont "friend!"
	done

LassCarlieBeatenText:
	text "Oh no!"
	done

LassCarlieAfterBattleText:
	text "You have beaten"
	line "me but I will"
	cont "train harder!"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 14, 43, ROUTE_2_SOUTH_GATE, 4
	warp_event 15, 43, ROUTE_2_SOUTH_GATE, 4
	warp_event  1,  0, ROUTE_2, 6
	warp_event  1,  1, ROUTE_2, 7


	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 19, 16, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherRandy, -1
	object_event 11,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherVince, -1
	object_event  6, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherNoah, -1
	object_event 28, 33, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarlie, -1
