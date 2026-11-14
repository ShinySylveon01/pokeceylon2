	object_const_def ; object_event constants
	const MOUNTMOON1F_SILVER
	const MOUNTMOON1F_MEW

MountMoon1F_MapScripts:
	db 2 ; scene scripts
	scene_script .RivalEncounter ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.RivalEncounter:
	prioritysjump .RivalBattle
	end

.DummyScene:
	end

.RivalBattle:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement MOUNTMOON1F_SILVER, MountMoonSilverMovementBefore
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MountMoonSilverTextBefore
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext MountMoonSilverTextWin, MountMoonSilverTextLoss
	setlasttalked MOUNTMOON1F_SILVER
	loadtrainer RIVAL2, RIVAL2_1_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.Totodile:
	winlosstext MountMoonSilverTextWin, MountMoonSilverTextLoss
	setlasttalked MOUNTMOON1F_SILVER
	loadtrainer RIVAL2, RIVAL2_1_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.Chikorita:
	winlosstext MountMoonSilverTextWin, MountMoonSilverTextLoss
	setlasttalked MOUNTMOON1F_SILVER
	loadtrainer RIVAL2, RIVAL2_1_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.FinishBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MountMoonSilverTextAfter
	waitbutton
	closetext
	turnobject PLAYER, UP
	turnobject PLAYER, RIGHT
	applymovement MOUNTMOON1F_SILVER, MountMoonSilverMovementAfter
	disappear MOUNTMOON1F_SILVER
	disappear PEWTERCITY_YOUNGSTER
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_RIVAL_IN_MT_MOON
	setevent EVENT_PEWTER_CITY_YOUNGSTER_BLOCKS_GYM
	playmapmusic
	end

MountMoonSilverMovementBefore:
	step DOWN
	step DOWN
	step_end

MountMoonSilverMovementAfter:
	step UP
	step UP
	step UP
	step LEFT
	step UP
	step_end

MountMoonMew:
	faceplayer
	opentext
	writetext MewText
	cry MEW
	pause 15
	closetext
	loadwildmon MEW, 85
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	startbattle
	disappear MOUNTMOON1F_MEW
	setevent EVENT_MOUNT_MOON_MEW
	reloadmapafterbattle
	end

MountMoonSilverTextBefore:
	text "<……> <……> <……>"

	para "It's been a while,"
	line "<PLAYER>."

	para "…Since I lost to"
	line "you, I thought"

	para "about what I was"
	line "lacking with my"
	cont "#MON…"

	para "And we came up"
	line "with an answer."

	para "<PLAYER>, now we'll"
	line "show you!"
	done

MountMoonSilverTextWin:
	text "<……> <……> <……>"

	para "I thought I raised"
	line "my #MON to be"

	para "the best they"
	line "could be…"

	para "…But it still "
	line "wasn't enough…"
	done

MountMoonSilverTextAfter:
	text "<……> <……> <……>"

	para "…You won, fair"
	line "and square."

	para "I admit it. But"
	line "this isn't the"
	cont "end."

	para "I'm going to be"
	line "the greatest #-"
	cont "MON trainer ever."

	para "Because these guys"
	line "are behind me."

	para "…Listen, <PLAYER>."

	para "One of these days"
	line "I'm going to prove"

	para "how good I am by"
	line "beating you."
	done

MountMoonSilverTextLoss:
	text "<……> <……> <……>"

	para "I've repaid my"
	line "debt to you."

	para "With my #MON,"
	line "I'm going to beat"

	para "the CHAMPION and"
	line "become the world's"
	cont "greatest trainer."
	done
	
MewText:
	text "Myuu!"
	done

MountMoon1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 13, 27, ROUTE_3, 1
	warp_event  7,  5, MOUNT_MOON_B1F, 1
	warp_event 15, 11, MOUNT_MOON_B1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 13, 24, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_RIVAL
	object_event 12, 11, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0,  MountMoonMew, EVENT_MOUNT_MOON_MEW
