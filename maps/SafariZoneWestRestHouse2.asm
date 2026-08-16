	object_const_def ; object_event constants
	const SAFARI_ZONE_WEST_REST_HOUSE_2_LASS

SafariZoneWestRestHouse2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneWestRestHouse2LassScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SAFARI_ZONE_MASTERBALLS
	iftrue .GotMasterballs
	writetext SafariZoneWestRestHouse2LassText
	promptbutton
	verbosegiveitem MASTER_BALL, 15
	iffalse .NoRoom
	setevent EVENT_GOT_SAFARI_ZONE_MASTERBALLS
.GotMasterballs:
	writetext SafariZoneWestRestHouse2Lass_GotMasterballs
	waitbutton
.NoRoom:
	closetext
	end
	
SafariZoneWestRestHouse2LassText:
	text "You are aiming to"
	line "be the champ of"
	cont "catching all of"

	para "the legendary"
	line "#MON!"
	
	para "Here, take these!"
	done

SafariZoneWestRestHouse2Lass_GotMasterballs:
	text "You can use it to"
	line "catch all of the"
	cont "legendary #MON!"
	done

SafariZoneWestRestHouse2_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFARI_ZONE_WEST, 8
	warp_event  3,  7, SAFARI_ZONE_WEST, 8

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  3,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneWestRestHouse2LassScript, -1
