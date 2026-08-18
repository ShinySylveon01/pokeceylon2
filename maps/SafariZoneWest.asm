	object_const_def ; object_event constants
	const SAFARI_ZONE_WEST_YOUNGSTER
	const SAFARI_ZONE_WEST_LASS
	const SAFARI_ZONE_WEST_BUG_CATCHER
	const SAFARI_ZONE_WEST_BEAUTY
	const SAFARI_ZONE_WEST_ZAPDOS
	const SAFARI_ZONE_WEST_POKE_BALL1
	const SAFARI_ZONE_WEST_POKE_BALL2
	const SAFARI_ZONE_WEST_POKE_BALL3
	const SAFARI_ZONE_WEST_POKE_BALL4

SafariZoneWest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerCamperJoseph:
	trainer CAMPER, JOSEPH, EVENT_BEAT_CAMPER_JOSEPH, CamperJosephSeenText, CamperJosephBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJosephAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPicnickerIvy:
	trainer PICNICKER, IVY, EVENT_BEAT_PICNICKER_IVY, PicnickerIvySeenText, PicnickerIvyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerIvyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherDylan:
	trainer BUG_CATCHER, DYLAN, EVENT_BEAT_BUG_CATCHER_DYLAN, BugCatcherDylanSeenText, BugCatcherDylanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDylanAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyRose:
	trainer BEAUTY, ROSE, EVENT_BEAT_BEAUTY_ROSE, BeautyRoseSeenText, BeautyRoseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyRoseAfterBattleText
	waitbutton
	closetext
	end
	
SafariZoneWestZapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	loadwildmon ZAPDOS, 85
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	startbattle
	disappear SAFARI_ZONE_WEST_ZAPDOS
	setevent EVENT_SAFARI_ZONE_WEST_ZAPDOS
	reloadmapafterbattle
	end
	
SafariZoneWestIron:
	itemball IRON
	
SafariZoneWestMaxPotion:
	itemball MAX_POTION
	
SafariZoneWestEther:
	itemball ETHER
	
SafariZoneWestMaxRepel:
	itemball MAX_REPEL
	
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
	
CamperJosephSeenText:
	text "Ah so you were"
	line "able to find the"
	cont "legendary ZAPDOS!"

	para "I want to fight"
	line "you now!"
	done

CamperJosephBeatenText:
	text "You are strong!"
	done

CamperJosephAfterBattleText:
	text "Be sure to use a"
	line "MASTER BALL!"
	done
	
PicnickerIvySeenText:
	text "You beat other"
	line "trainers here?"

	para "You won't get past"
	line "me!"
	done

PicnickerIvyBeatenText:
	text "Why!"
	done

PicnickerIvyAfterBattleText:
	text "I will catch more"
	line "#MON someday!"
	
	para "Maybe I will beat"
	line "LANCE!"
	done

BugCatcherDylanSeenText:
	text "Hello, my friend!"

	para "Prepare to feel"
	line "the poison from"
	cont "my bugs!"
	done

BugCatcherDylanBeatenText:
	text "Oh no!"
	done

BugCatcherDylanAfterBattleText:
	text "You have won this"
	line "time!"
	
	para "I may fight you"
	line "again in the"
	cont "future!"
	done
	
BeautyRoseSeenText:
	text "You may have"
	line "beaten people but"
	cont "not me yet!"

	para "Let's battle to"
	line "see who is better!"
	done

BeautyRoseBeatenText:
	text "Bravo!"
	done

BeautyRoseAfterBattleText:
	text "I promise you but"
	line "next time I will"
	cont "give my #MON"
	
	para "better moves!"
	done
	
ZapdosText:
	text "Gyaoo!"
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

	db 9 ; object events
	object_event 27, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJoseph, -1
	object_event 15,  5, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerIvy, -1
	object_event 13, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDylan, -1
	object_event 17, 18, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyRose, -1
	object_event  6,  8, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0,  SafariZoneWestZapdos, EVENT_SAFARI_ZONE_WEST_ZAPDOS
	object_event 29, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestIron, EVENT_SAFARI_ZONE_WEST_IRON
	object_event  4, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestMaxPotion, EVENT_SAFARI_ZONE_WEST_MAX_POTION
	object_event 22, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestEther, EVENT_SAFARI_ZONE_WEST_ETHER
	object_event 11, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestMaxRepel, EVENT_SAFARI_ZONE_WEST_MAX_REPEL
