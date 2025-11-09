	object_const_def ; object_event constants
	const ICEPATHB3F_POKE_BALL
	const ICEPATHB3F_ROCK
	const ICEPATHB3F_BEAUTY1
	const ICEPATHB3F_ROCKER1
	const ICEPATHB3F_BEAUTY2

IcePathB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcePathB3FNevermeltice:
	itemball NEVERMELTICE

IcePathB3FRock:
	jumpstd SmashRockScript
	
TrainerSkierAva:
	trainer SKIER, AVA, EVENT_BEAT_SKIER_AVA, SkierAvaSeenText, SkierAvaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierAvaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBoarderElijah:
	trainer BOARDER, ELIJAH, EVENT_BEAT_BOARDER_ELIJAH, BoarderElijahSeenText, BoarderElijahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderElijahAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSkierSadie:
	trainer SKIER, SADIE, EVENT_BEAT_SKIER_SADIE, SkierSadieSeenText, SkierSadieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierSadieAfterBattleText
	waitbutton
	closetext
	end
	
SkierAvaSeenText:
	text "You will not be"
	line "able to pass me"
	cont "until the battle"

	para "is over!"
	done

SkierAvaBeatenText:
	text "Wow!"
	done

SkierAvaAfterBattleText:
	text "I would be very"
	line "cautious about the"
	cont "BLACKTHORN GYM!"

	para "Dragon types are"
	line "very powerful!"
	done
	
BoarderElijahSeenText:
	text "I got almost all"
	line "of the badges but"
	cont "lost to CLAIR!"
	done

BoarderElijahBeatenText:
	text "You've put a lot"
	line "of effort!"
	done

BoarderElijahAfterBattleText:
	text "That was a good"
	line "battle!"
	
	para "Next time I'll beat"
	line "you!"
	done
	
SkierSadieSeenText:
	text "So a new trainer"
	line "wants to battle"
	cont "me!"
	done

SkierSadieBeatenText:
	text "Unbelievable!"
	done

SkierSadieAfterBattleText:
	text "Trainers in the"
	line "route close to"
	cont "BLACKTHORN are"
	
	para "very tough!"
	done

IcePathB3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  5, ICE_PATH_B2F_MAHOGANY_SIDE, 2
	warp_event 15,  5, ICE_PATH_B2F_BLACKTHORN_SIDE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  5,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB3FNevermeltice, EVENT_ICE_PATH_B3F_NEVERMELTICE
	object_event  6,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB3FRock, -1
	object_event  3, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierAva, -1
	object_event  6, 14, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBoarderElijah, -1
	object_event 13, 15, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierSadie, -1
