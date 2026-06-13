	object_const_def ; object_event constants
	const FUCHSIA_CITY_GATE_OFFICER

SafariZoneFuchsiaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SafariZoneFuchsiaGateOfficerScript:
	jumptextfaceplayer SafariZoneFuchsiaGateOfficerText

SafariZoneFuchsiaGateOfficerText:
	text "Hi there!"

	para "The Warden is"
	line "gone, so we're not"
	cont "running the Safari"
	cont "Game right now."

	para "You'll have to"
	line "bring your own"
	cont "Balls if you want"

	para "to catch any"
	line "#MON."
	done

SafariZoneFuchsiaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, SAFARI_ZONE_HUB, 1
	warp_event  5,  0, SAFARI_ZONE_HUB, 2
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneFuchsiaGateOfficerScript, -1
