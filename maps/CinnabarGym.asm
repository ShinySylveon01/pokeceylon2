	object_const_def ; object_event constants
	const CINNABARGYM_BLAINE
	const CINNABARGYM_GYM_GUY
	const CINNABARGYM_YOUNGSTER1
	const CINNABARGYM_YOUNGSTER2

CinnabarGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CinnabarGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
	appear CINNABARGYM_GYM_GUY
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_VIRIDIAN_CITY_YOUNGSTER_BLOCKS_GYM
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	disappear VIRIDIANCITY_YOUNGSTER1
	end

.FightDone:
	writetext BlaineFightDoneText
	waitbutton
	closetext
	end

CinnabarGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_CINNABAR_GYM_GUY_ONCE
	iftrue .TalkedToCinnabarGymGuyScript
	writetext CinnabarGymGuyWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_CINNABAR_GYM_GUY_ONCE
	end

.TalkedToCinnabarGymGuyScript:
	writetext CinnabarGymGuyWinText2
	waitbutton
	closetext
	end
	
TrainerYoungsterMason:
	trainer YOUNGSTER, MASON, EVENT_BEAT_YOUNGSTER_MASON, YoungsterMasonSeenText, YoungsterMasonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterMasonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerYoungsterLevi:
	trainer YOUNGSTER, LEVI, EVENT_BEAT_YOUNGSTER_LEVI, YoungsterLeviSeenText, YoungsterLeviBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterLeviAfterBattleText
	waitbutton
	closetext
	end

BlaineIntroText:
	text "BLAINE: Waaah!"

	para "My GYM in CINNABAR"
	line "burned down."

	para "My fire-breathing"
	line "#MON and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "But I'm back in"
	line "business as a GYM"

	para "LEADER here in"
	line "this cave."

	para "If you can beat"
	line "me, I'll give you"
	cont "a BADGE."

	para "Ha! You'd better"
	line "have BURN HEAL!"
	done

BlaineWinLossText:
	text "BLAINE: Awesome."
	line "I've burned out…"

	para "You've earned"
	line "VOLCANOBADGE!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineAfterBattleText:
	text "BLAINE: I did lose"
	line "this time, but I'm"

	para "going to win the"
	line "next time."

	para "When I rebuild my"
	line "CINNABAR GYM,"

	para "we'll have to have"
	line "a rematch."
	done

BlaineFightDoneText:
	text "BLAINE: My fire"
	line "#MON will be"

	para "even stronger."
	line "Just you watch!"
	done

CinnabarGymGuyWinText:
	text "Yo!"

	para "… Huh? It's over"
	line "already?"

	para "Sorry, dude!"

	para "CINNABAR GYM was"
	line "gone, so I didn't"

	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done

CinnabarGymGuyWinText2:
	text "A #MON GYM can"
	line "be anywhere as"

	para "long as the GYM"
	line "LEADER is there."

	para "There's no need"
	line "for a building."
	done
	
YoungsterMasonSeenText:
	text "Bonjour monsieur!"

	para "Vouloir se battre!"
	done

YoungsterMasonBeatenText:
	text "I was beaten!"
	done

YoungsterMasonAfterBattleText:
	text "I'm trying to be"
	line "better at FRENCH"
	cont "language!"
	done
	
YoungsterLeviSeenText:
	text "BLAINE isn't as"
	line "easy as he was"
	cont "back in RBY!"

	para "I want to first"
	line "see how good you"
	cont "really are!"
	done

YoungsterLeviBeatenText:
	text "Damn!"
	done

YoungsterLeviAfterBattleText:
	text "The next leader"
	line "BLUE can be a"
	cont "bit greedy!"
	done

CinnabarGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  5, 17, CINNABAR_ISLAND, 2
	warp_event  4, 17, CINNABAR_ISLAND, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  5,  3, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarGymBlaineScript, -1
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CinnabarGymGuyScript, -1
	object_event  4,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterMason, -1
	object_event  5,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterLevi, -1
	