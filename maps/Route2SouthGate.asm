	object_const_def ; object_event constants
	const ROUTE2SOUTHGATE_OFFICER

Route2SouthGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route2SouthGateOfficerScript:
	jumptextfaceplayer Route2SouthGateOfficerText

Route2SouthGateOfficerText:
	text "VIRIDIAN FOREST is"
	line "like a maze."

	para "Some BUG #MON"
	line "can poison you!"
	done

Route2SouthGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  5,  7, ROUTE_2, 1
	warp_event  4,  7, ROUTE_2, 1
	warp_event  4,  0, VIRIDIAN_FOREST, 1
	warp_event  5,  0, VIRIDIAN_FOREST, 1


	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route2SouthGateOfficerScript, -1
