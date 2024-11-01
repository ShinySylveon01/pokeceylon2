	object_const_def
	const CERULEAN_CAVE_B1F_POKE_BALL1
	const CERULEAN_CAVE_B1F_POKE_BALL2
	const CERULEAN_CAVE_B1F_POKE_BALL3
	const CERULEAN_CAVE_B1F_POKE_BALL4
	const CERULEAN_CAVE_B1F_POKE_BALL5
	const CERULEAN_CAVE_B1F_ROCK1
	const CERULEAN_CAVE_B1F_ROCK2
	const CERULEAN_CAVE_B1F_ROCK3
	const CERULEAN_CAVE_B1F_ROCK4
	const CERULEAN_CAVE_B1F_ROCK5
	const CERULEAN_CAVE_B1F_ROCK6
	const CERULEAN_CAVE_B1F_ROCK7
	const CERULEAN_CAVE_B1F_ROCK8
	const CERULEAN_CAVE_B1F_MEWTWO

CeruleanCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, CeruleanCaveB1FMewtwo
	
CeruleanCaveB1FMewtwo:
	checkevent EVENT_CERULEAN_CAVE_B1F_MEWTWO
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear CERULEAN_CAVE_B1F_MEWTWO
	return

.NoAppear:
	disappear CERULEAN_CAVE_B1F_MEWTWO
	return
	
Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_CERULEAN_CAVE_B1F_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 85
	startbattle
	disappear CERULEAN_CAVE_B1F_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "…!"
	done

CeruleanCaveB1FHiddenNugget:
	hiddenitem NUGGET, EVENT_CERULEAN_CAVE_B1F_HIDDEN_NUGGET

CeruleanCaveB1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL

CeruleanCaveB1FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_CERULEAN_CAVE_B1F_HIDDEN_MAX_REVIVE

CeruleanCaveB1FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB1FMoonStone:
	itemball MOON_STONE

CeruleanCaveB1FMagnet:
	itemball MAGNET

CeruleanCaveB1FLeftovers:
	itemball LEFTOVERS

CeruleanCaveB1FRock:
	jumpstd SmashRockScript

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 11, CERULEAN_CAVE_1F, 11
	warp_event 35, 15, CERULEAN_CAVE_1F, 12

	db 0 ; coord events

	db 3 ; bg events
	bg_event 27, 11, BGEVENT_ITEM, CeruleanCaveB1FHiddenNugget
	bg_event 19, 13, BGEVENT_ITEM, CeruleanCaveB1FHiddenUltraBall
	bg_event  9,  9, BGEVENT_ITEM, CeruleanCaveB1FHiddenMaxRevive

	db 14 ; object events
	object_event  5, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FUltraBall, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL
	object_event 22,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxRevive, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE
	object_event 19, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMoonStone, EVENT_CERULEAN_CAVE_B1F_MOON_STONE
	object_event 37, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMagnet, EVENT_CERULEAN_CAVE_B1F_MAGNET
	object_event 37, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FLeftovers, EVENT_CERULEAN_CAVE_B1F_LEFTOVERS
	object_event 28, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event 22, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event  9, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event  6, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event  9, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event  8,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event 25, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event 24, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event 34, 17, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0,  CeruleanCaveB1FMewtwo, EVENT_CERULEAN_CAVE_B1F_MEWTWO
