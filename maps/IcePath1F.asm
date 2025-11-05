	object_const_def ; object_event constants
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_BEAUTY1
	const ICEPATH1F_ROCKER1

IcePath1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP
	
TrainerSkierRidley:
	trainer SKIER, RIDLEY, EVENT_BEAT_SKIER_RIDLEY, SkierRidleySeenText, SkierRidleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierRidleyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBoarderNolan:
	trainer BOARDER, NOLAN, EVENT_BEAT_BOARDER_NOLAN, BoarderNolanSeenText, BoarderNolanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderNolanAfterBattleText
	waitbutton
	closetext
	end

SkierRidleySeenText:
	text "Welcome to ICE"
	line "CAVE!"

	para "My #MON will"
	line "give you a"
	cont "frostbite!"
	done

SkierRidleyBeatenText:
	text "Darn!"
	done

SkierRidleyAfterBattleText:
	text "Watch out for"
	line "ICE type #MON!"

	para "They will freeze"
	line "you!"
	done
	
BoarderNolanSeenText:
	text "I caught some"
	line "ICE type #MON"
	cont "here!"
	done

BoarderNolanBeatenText:
	text "Shoot!"
	done

BoarderNolanAfterBattleText:
	text "Watch out for"
	line "the slippery ICE!"
	done


IcePath1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event  7, 16, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierRidley, -1
	object_event 23, 22, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBoarderNolan, -1
