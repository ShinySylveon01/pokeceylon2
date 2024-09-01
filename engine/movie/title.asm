TitleScreen:
	call ClearBGPalettes
	xor a
	ld [wTimeOfDayPal], a
	ld de, MUSIC_NONE
	call PlayMusic
	call ClearTilemap
	call DisableLCD
	call ClearSprites

	ld hl, wLYOverrides
	ld bc, wLYOverridesEnd - wLYOverrides
	xor a
	call ByteFill

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a

	ldh [hMapAnims], a
	ldh [hSCY], a
	ldh [hSCX], a

	ld hl, vTiles0
	ld bc, $200 tiles
	xor a
	call ByteFill
	farcall ClearSpriteAnims

; Decompress lower part of title screen
	ld hl, TitleScreenGFX1
	ld de, vTiles2
	ld a, BANK(TitleScreenGFX1)
	call FarDecompress

; Decompress upper part of title screen
	ld hl, TitleScreenGFX2
	ld de, vTiles1
	ld a, BANK(TitleScreenGFX2)
	call FarDecompress

; Decompress middle part
	ld hl, TitleScreenGFX3
	ld de, vTiles0 tile $BC
	ld a, BANK(TitleScreenGFX3)
	call FarDecompress
; Decompress middle part
	ld hl, TitleScreenGFX4
	ld de, vTiles2 tile $60
	ld a, BANK(TitleScreenGFX4)
	call FarDecompress

	call FillTitleScreenPals
	call LoadTitleScreenTilemap
	call EnableLCD

; Reset timing variables
	xor a
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wIntroSceneFrameCounter
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer + 1

	ld b, SCGB_GS_TITLE_SCREEN
	call GetSGBLayout
	call LoadTitleScreenPals
	ld de, MUSIC_TITLE
	call PlayMusic
	ret

LoadTitleScreenPals:
	ldh a, [hCGB]
	and a
	jr nz, .cgb
	ldh a, [hSGB]
	and a
	jr nz, .sgb
	ld a, %11100100
	ldh [rBGP], a
	ret

.sgb
	ld a, %11100100
	ldh [rBGP], a
	ret

.cgb
	ld a, %11100100
	jp DmgToCgbBGPals

FillTitleScreenPals:
	ldh a, [hCGB]
	and a
	ret z
	ld a, 1
	ldh [rVBK], a
	hlbgcoord 0, 0
	ld bc, 18 * BG_MAP_WIDTH
	xor a
	call ByteFill
	hlbgcoord 0, 0, vBGMap2
	lb bc, 7, SCREEN_WIDTH
	ld a, 1
	call DrawTitleGraphic
	hlbgcoord 5, 6, vBGMap2
	lb bc, 1, 10
	ld a, 3
	call DrawTitleGraphic
	hlbgcoord 0, 10, vBGMap2
	lb bc, 7, 8
	ld a, 4
	call DrawTitleGraphic
	hlbgcoord 12, 10, vBGMap2
	lb bc, 7, 8
	ld a, 5
	call DrawTitleGraphic
	ld a, 0
	ldh [rVBK], a
	ret

DrawTitleGraphic:
.bgrows
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, BG_MAP_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .bgrows
	ret

LoadTitleScreenTilemap:
	ld hl, TitleScreenTilemap
	debgcoord 0, 0
.loop
	ld a, BANK(TitleScreenTilemap)
	call GetFarByte
	cp -1
	jr z, .done
	inc hl
	ld [de], a
	inc de
	jr .loop

.done
	ret
