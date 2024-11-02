; Kanto Pokémon in grass

KantoGrassWildMons:

	map_id DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	db 72, DUGTRIO
	db 72, MAGNETON
	db 72, SANDSLASH
	db 73, DONPHAN
	db 75, DUNSPARCE
	db 75, MAROWAK
	db 80, DIGLETT
	; day
	db 72, DUGTRIO
	db 72, MAGNETON
	db 72, SANDSLASH
	db 73, DONPHAN
	db 75, DUNSPARCE
	db 75, MAROWAK
	db 80, DIGLETT
	; nite
	db 72, DUGTRIO
	db 72, DUNSPARCE
	db 72, MAGNETON
	db 73, DONPHAN
	db 75, MAROWAK
	db 75, SANDSLASH
	db 80, DIGLETT

	map_id MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 68, CLEFABLE
	db 69, GOLEM
	db 67, KABUTOPS
	db 68, SUDOWOODO
	db 68, OMASTAR
	db 70, RHYDON
	db 70, WIGGLYTUFF
	; day
	db 68, CLEFABLE
	db 69, GOLEM
	db 67, KABUTOPS
	db 68, SUDOWOODO
	db 68, OMASTAR
	db 70, RHYDON
	db 70, WIGGLYTUFF
	; nite
	db 68, CLEFABLE
	db 69, GOLEM
	db 67, KABUTOPS
	db 68, SUDOWOODO
	db 68, OMASTAR
	db 70, RHYDON
	db 70, WIGGLYTUFF

	ELIF DEF(_SILVER)
	; morn
	db 68, CLEFABLE
	db 69, GOLEM
	db 67, KABUTOPS
	db 68, SUDOWOODO
	db 68, OMASTAR
	db 70, RHYDON
	db 70, WIGGLYTUFF
	; day
	db 68, CLEFABLE
	db 69, GOLEM
	db 67, KABUTOPS
	db 68, SUDOWOODO
	db 68, OMASTAR
	db 70, RHYDON
	db 70, WIGGLYTUFF
	; nite
	db 68, CLEFABLE
	db 69, GOLEM
	db 67, KABUTOPS
	db 68, SUDOWOODO
	db 68, OMASTAR
	db 70, RHYDON
	db 70, WIGGLYTUFF
	ENDC

	map_id ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 70, MACHOKE
	db 70, HAUNTER
	db 68, NIDOQUEEN
	db 71, RAICHU
	db 72, JYNX
	db 71, MACHAMP
	db 72, STEELIX
	; day
	db 70, MACHOKE
	db 70, HAUNTER
	db 68, JYNX
	db 71, NIDOQUEEN
	db 72, HITMONCHAN
	db 71, URSARING
	db 72, MAROWAK
	; nite
	db 70, MACHOKE
	db 70, HAUNTER
	db 68, JYNX
	db 71, HITMONTOP
	db 72, MR__MIME
	db 71, DONPHAN
	db 72, WOBBUFFET

	map_id ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 71, VENOMOTH
	db 70, DONPHAN
	db 72, PORYGON
	db 72, URSARING
	db 69, PILOSWINE
	db 71, KANGASKHAN
	db 70, WOBBUFFET
	; day
	db 71, VENOMOTH
	db 70, DONPHAN
	db 72, PORYGON
	db 72, URSARING
	db 69, PILOSWINE
	db 71, KANGASKHAN
	db 70, WOBBUFFET
	; nite
	db 71, VENOMOTH
	db 70, DONPHAN
	db 72, PORYGON
	db 72, URSARING
	db 69, PILOSWINE
	db 71, KANGASKHAN
	db 70, WOBBUFFET

	map_id VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 62, DUGTRIO
	db 62, MUK
	db 63, URSARING
	db 64, ELECTRODE
	db 66, QUAGSIRE
	db 65, WEEZING
	db 65, RHYDON
	; day
	db 62, DUGTRIO
	db 62, MUK
	db 63, URSARING
	db 64, ELECTRODE
	db 66, KABUTOPS
	db 65, WEEZING
	db 65, GOLEM
	; nite
	db 62, DUGTRIO
	db 62, WEEZING
	db 63, URSARING
	db 64, ELECTRODE
	db 66, OMASTAR
	db 65, MUK
	db 65, GOLEM

	ELIF DEF(_SILVER)
	; morn
	db 62, DUGTRIO
	db 62, MUK
	db 63, URSARING
	db 64, ELECTRODE
	db 66, QUAGSIRE
	db 65, WEEZING
	db 65, RHYDON
	; day
	db 62, DUGTRIO
	db 62, MUK
	db 63, URSARING
	db 64, ELECTRODE
	db 66, KABUTOPS
	db 65, WEEZING
	db 65, GOLEM
	; nite
	db 62, DUGTRIO
	db 62, WEEZING
	db 63, URSARING
	db 64, ELECTRODE
	db 66, OMASTAR
	db 65, MUK
	db 65, GOLEM
	ENDC

	map_id TOHJO_FALLS
	IF DEF(_GOLD)
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	ELIF DEF(_SILVER)
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	ENDC
	; morn
	db 32, CLEFAIRY
	db 32, PHANPY
	db 32, MACHOKE
	db 31, SLOWPOKE
	db 30, DROWZEE
	db 33, MANKEY
	db 33, ONIX
	; day
	db 32, TEDDIURSA
	db 32, PHANPY
	db 32, SWINUB
	db 31, CLEFAIRY
	db 30, DELIBIRD
	db 33, DROWZEE
	db 33, SLOWPOKE
	; nite
	db 32, PHANPY
	db 32, TEDDIURSA
	db 32, CLEFAIRY
	db 31, SLOWPOKE
	db 30, WOBBUFFET
	db 33, SWINUB
	db 33, SNUBBULL

	map_id ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 65, PIDGEOT
	db 66, FURRET
	db 67, RAICHU
	db 65, ARBOK
	db 67, SANDSLASH
	db 66, SMEARGLE
	db 66, WIGGLYTUFF
	; day
	db 65, PIDGEOT
	db 66, FURRET
	db 67, RAICHU
	db 65, ARBOK
	db 67, SANDSLASH
	db 66, SMEARGLE
	db 66, WIGGLYTUFF
	; nite
	db 65, NOCTOWL
	db 66, RATICATE
	db 67, RAICHU
	db 65, PIDGEOT
	db 67, ARBOK
	db 66, SANDSLASH
	db 66, WIGGLYTUFF

	map_id ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 66, PIKACHU
	db 67, LEDIAN
	db 65, BEEDRILL
	db 67, PINSIR
	db 67, PARASECT
	db 66, VENOMOTH
	db 66, SCYTHER
	; day
	db 66, PIKACHU
	db 67, BUTTERFREE
	db 65, VENOMOTH
	db 67, SCYTHER
	db 67, PINSIR
	db 66, BEEDRILL
	db 66, SCIZOR
	; nite
	db 66, PIKACHU
	db 67, ARIADOS
	db 65, PINSIR
	db 67, SCYTHER
	db 67, VENOMOTH
	db 66, PARASECT
	db 66, SCIZOR

	ELIF DEF(_SILVER)
	; morn
	db 66, PIKACHU
	db 67, LEDIAN
	db 65, BEEDRILL
	db 67, PINSIR
	db 67, PARASECT
	db 66, VENOMOTH
	db 66, SCYTHER
	; day
	db 66, PIKACHU
	db 67, BUTTERFREE
	db 65, VENOMOTH
	db 67, SCYTHER
	db 67, PINSIR
	db 66, BEEDRILL
	db 66, SCIZOR
	; nite
	db 66, PIKACHU
	db 67, ARIADOS
	db 65, PINSIR
	db 67, SCYTHER
	db 67, VENOMOTH
	db 66, PARASECT
	db 66, SCIZOR
	ENDC

	map_id VIRIDIAN_FOREST
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 66, PIKACHU
	db 67, LEDIAN
	db 65, BEEDRILL
	db 67, PINSIR
	db 67, PARASECT
	db 66, VENOMOTH
	db 66, SCYTHER
	; day
	db 66, PIKACHU
	db 67, BUTTERFREE
	db 65, VENOMOTH
	db 67, SCYTHER
	db 67, PINSIR
	db 66, BEEDRILL
	db 66, SCIZOR
	; nite
	db 66, PIKACHU
	db 67, ARIADOS
	db 65, PINSIR
	db 67, SCYTHER
	db 67, VENOMOTH
	db 66, PARASECT
	db 66, SCIZOR

	map_id ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 67, FEAROW
	db 68, ARBOK
	db 67, SANDSLASH
	db 68, WIGGLYTUFF
	db 69, AMPHAROS
	db 70, MAGCARGO
	db 70, TANGELA
	; day
	db 67, FEAROW
	db 68, ARBOK
	db 67, SANDSLASH
	db 68, WIGGLYTUFF
	db 69, AMPHAROS
	db 70, MAGCARGO
	db 70, TANGELA
	; nite
	db 67, GOLBAT
	db 68, GRANBULL
	db 67, WIGGLYTUFF
	db 68, GLIGAR
	db 69, AMPHAROS
	db 70, MAGCARGO
	db 70, TANGELA

	ELIF DEF(_SILVER)
	; morn
	db 67, FEAROW
	db 68, ARBOK
	db 67, SANDSLASH
	db 68, WIGGLYTUFF
	db 69, AMPHAROS
	db 70, MAGCARGO
	db 70, TANGELA
	; day
	db 67, FEAROW
	db 68, ARBOK
	db 67, SANDSLASH
	db 68, WIGGLYTUFF
	db 69, AMPHAROS
	db 70, MAGCARGO
	db 70, TANGELA
	; nite
	db 67, GOLBAT
	db 68, GRANBULL
	db 67, WIGGLYTUFF
	db 68, GLIGAR
	db 69, AMPHAROS
	db 70, MAGCARGO
	db 70, TANGELA
	ENDC

	map_id ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn

	IF DEF(_GOLD)
	; morn
	db 68, NINETALES
	db 68, MR__MIME
	db 69, XATU
	db 68, TOGETIC
	db 70, HITMONTOP
	db 70, VILEPLUME
	db 70, VILEPLUME
	; day
	db 68, ARCANINE
	db 68, HITMONLEE
	db 69, TOGETIC
	db 68, XATU
	db 70, MR__MIME
	db 70, BELLOSSOM
	db 70, BELLOSSOM
	; nite
	db 68, HOUNDOOM
	db 68, FLAREON
	db 69, MAGMAR
	db 68, DUNSPARCE
	db 70, CLEFABLE
	db 70, VICTREEBEL
	db 70, HAUNTER

	ELIF DEF(_SILVER)
	; morn
	db 68, NINETALES
	db 68, MR__MIME
	db 69, XATU
	db 68, TOGETIC
	db 70, HITMONTOP
	db 70, VILEPLUME
	db 70, VILEPLUME
	; day
	db 68, ARCANINE
	db 68, HITMONLEE
	db 69, TOGETIC
	db 68, XATU
	db 70, MR__MIME
	db 70, BELLOSSOM
	db 70, BELLOSSOM
	; nite
	db 68, HOUNDOOM
	db 68, FLAREON
	db 69, MAGMAR
	db 68, DUNSPARCE
	db 70, CLEFABLE
	db 70, VICTREEBEL
	db 70, HAUNTER
	ENDC

	map_id ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 68, NIDOQUEEN
	db 69, NIDOKING
	db 68, DODRIO
	db 70, KADABRA
	db 68, GRANBULL
	db 70, KADABRA
	db 70, KADABRA
	; day
	db 68, NIDOQUEEN
	db 69, GRANBULL
	db 68, NIDOKING
	db 70, KADABRA
	db 68, DODRIO
	db 70, KADABRA
	db 70, KADABRA
	; nite
	db 68, NIDOQUEEN
	db 69, HOUNDOOM
	db 68, EXEGGCUTE
	db 70, KADABRA
	db 68, NIDOKING
	db 70, ALAKAZAM
	db 70, ALAKAZAM

	ELIF DEF(_SILVER)
	; morn
	db 68, NIDOQUEEN
	db 69, NIDOKING
	db 68, DODRIO
	db 70, KADABRA
	db 68, GRANBULL
	db 70, KADABRA
	db 70, KADABRA
	; day
	db 68, NIDOQUEEN
	db 69, GRANBULL
	db 68, NIDOKING
	db 70, KADABRA
	db 68, DODRIO
	db 70, KADABRA
	db 70, KADABRA
	; nite
	db 68, NIDOQUEEN
	db 69, HOUNDOOM
	db 68, EXEGGCUTE
	db 70, KADABRA
	db 68, NIDOKING
	db 70, ALAKAZAM
	db 70, ALAKAZAM
	ENDC

	map_id ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 73, MAGNETON
	db 73, LICKITUNG
	db 74, MAGNETON
	db 75, FURRET
	db 72, RATICATE
	db 74, GRANBULL
	db 74, SMEARGLE
	; day
	db 73, LICKITUNG
	db 73, WIGGLYTUFF
	db 74, MAGNETON
	db 75, FURRET
	db 72, RATICATE
	db 74, GRANBULL
	db 74, GRANBULL
	; nite
	db 73, SNEASEL
	db 73, DROWZEE
	db 74, MAGNETON
	db 75, GOLDUCK
	db 72, WIGGLYTUFF
	db 74, PERSIAN
	db 74, PERSIAN

	ELIF DEF(_SILVER)
	; morn
	db 73, MAGNETON
	db 73, LICKITUNG
	db 74, MAGNETON
	db 75, FURRET
	db 72, RATICATE
	db 74, GRANBULL
	db 74, SMEARGLE
	; day
	db 73, LICKITUNG
	db 73, WIGGLYTUFF
	db 74, MAGNETON
	db 75, FURRET
	db 72, RATICATE
	db 74, GRANBULL
	db 74, GRANBULL
	; nite
	db 73, SNEASEL
	db 73, DROWZEE
	db 74, MAGNETON
	db 75, GOLDUCK
	db 72, WIGGLYTUFF
	db 74, PERSIAN
	db 74, PERSIAN
	ENDC

	map_id ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 76, CHARIZARD
	db 76, VENUSAUR
	db 75, BLASTOISE
	db 77, TYPHLOSION
	db 78, FERALIGATR
	db 79, MEGANIUM
	db 80, ALAKAZAM
	; day
	db 76, CHARIZARD
	db 76, VENUSAUR
	db 75, BLASTOISE
	db 77, TYPHLOSION
	db 78, FERALIGATR
	db 79, MEGANIUM
	db 80, ALAKAZAM
	; nite
	db 76, TYPHLOSION
	db 76, MEGANIUM
	db 75, FERALIGATR
	db 77, CHARIZARD
	db 78, VENUSAUR
	db 79, BLASTOISE
	db 80, ALAKAZAM

	ELIF DEF(_SILVER)
	; morn
	db 76, CHARIZARD
	db 76, VENUSAUR
	db 75, BLASTOISE
	db 77, TYPHLOSION
	db 78, FERALIGATR
	db 79, MEGANIUM
	db 80, ALAKAZAM
	; day
	db 76, CHARIZARD
	db 76, VENUSAUR
	db 75, BLASTOISE
	db 77, TYPHLOSION
	db 78, FERALIGATR
	db 79, MEGANIUM
	db 80, ALAKAZAM
	; nite
	db 76, TYPHLOSION
	db 76, MEGANIUM
	db 75, FERALIGATR
	db 77, CHARIZARD
	db 78, VENUSAUR
	db 79, BLASTOISE
	db 80, ALAKAZAM
	ENDC

	map_id ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 71, HITMONLEE
	db 72, HITMONTOP
	db 72, ALAKAZAM
	db 70, FLAREON
	db 72, HITMONCHAN
	db 73, SHUCKLE
	db 73, JOLTEON
	; day
	db 71, HITMONCHAN
	db 72, HITMONTOP
	db 72, ALAKAZAM
	db 70, FLAREON
	db 72, HITMONLEE
	db 73, SHUCKLE
	db 73, JOLTEON
	; nite
	db 71, HYPNO
	db 72, NOCTOWL
	db 72, MURKROW
	db 70, GENGAR
	db 72, FLAREON
	db 73, MISDREAVUS
	db 73, ARBOK

	ELIF DEF(_SILVER)
	; morn
	db 71, HITMONLEE
	db 72, HITMONTOP
	db 72, ALAKAZAM
	db 70, FLAREON
	db 72, HITMONCHAN
	db 73, SHUCKLE
	db 73, JOLTEON
	; day
	db 71, HITMONCHAN
	db 72, HITMONTOP
	db 72, ALAKAZAM
	db 70, FLAREON
	db 72, HITMONLEE
	db 73, SHUCKLE
	db 73, JOLTEON
	; nite
	db 71, HYPNO
	db 72, NOCTOWL
	db 72, MURKROW
	db 70, GENGAR
	db 72, FLAREON
	db 73, MISDREAVUS
	db 73, ARBOK
	ENDC

	map_id ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 68, GIRAFARIG
	db 69, VICTREEBEL
	db 69, MR__MIME
	db 69, VENOMOTH
	db 69, AIPOM
	db 68, MAROWAK
	db 70, PRIMEAPE
	; day
	db 68, GIRAFARIG
	db 69, VICTREEBEL
	db 69, MR__MIME
	db 69, VENOMOTH
	db 69, AIPOM
	db 68, MAROWAK
	db 70, PRIMEAPE
	; nite
	db 68, GIRAFARIG
	db 69, VICTREEBEL
	db 69, MR__MIME
	db 69, VENOMOTH
	db 69, AIPOM
	db 68, MAROWAK
	db 70, PRIMEAPE

	ELIF DEF(_SILVER)
	; morn
	db 68, GIRAFARIG
	db 69, VICTREEBEL
	db 69, MR__MIME
	db 69, VENOMOTH
	db 69, AIPOM
	db 68, MAROWAK
	db 70, PRIMEAPE
	; day
	db 68, GIRAFARIG
	db 69, VICTREEBEL
	db 69, MR__MIME
	db 69, VENOMOTH
	db 69, AIPOM
	db 68, MAROWAK
	db 70, PRIMEAPE
	; nite
	db 68, GIRAFARIG
	db 69, VICTREEBEL
	db 69, MR__MIME
	db 69, VENOMOTH
	db 69, AIPOM
	db 68, MAROWAK
	db 70, PRIMEAPE
	ENDC

	map_id ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 70, PORYGON
	db 68, ELECTABUZZ
	db 70, MAGNETON
	db 70, AMPHAROS
	db 72, RAICHU
	db 72, ELECTRODE
	db 70, PORYGON2
	; day
	db 70, PORYGON
	db 68, ELECTABUZZ
	db 70, MAGNETON
	db 70, AMPHAROS
	db 72, RAICHU
	db 72, ELECTRODE
	db 70, PORYGON2
	; nite
	db 70, PORYGON
	db 68, ELECTABUZZ
	db 70, MAGNETON
	db 70, AMPHAROS
	db 72, RAICHU
	db 72, ELECTRODE
	db 70, PORYGON2

	map_id ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 71, JUMPLUFF
	db 72, FLAREON
	db 72, MAGNETON
	db 73, XATU
	db 73, MR__MIME
	db 71, HYPNO
	db 71, SLOWBRO
	; day
	db 71, JUMPLUFF
	db 72, FLAREON
	db 72, MAGNETON
	db 73, XATU
	db 73, MR__MIME
	db 71, HYPNO
	db 71, SLOWBRO
	; nite
	db 71, ALAKAZAM
	db 72, PERSIAN
	db 72, MAGNETON
	db 73, NOCTOWL
	db 73, HOUNDOOM
	db 71, HYPNO
	db 71, SLOWKING

	map_id ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 74, ARCANINE
	db 75, MAGMAR
	db 75, NINETALES
	db 76, RAPIDASH
	db 75, CHARIZARD
	db 75, TYPHLOSION
	db 75, HOUNDOOM
	; day
	db 74, ARCANINE
	db 75, MAGMAR
	db 75, NINETALES
	db 76, RAPIDASH
	db 75, CHARIZARD
	db 75, TYPHLOSION
	db 75, HOUNDOOM
	; nite
	db 74, ARCANINE
	db 75, MAGMAR
	db 75, NINETALES
	db 76, RAPIDASH
	db 75, CHARIZARD
	db 75, TYPHLOSION
	db 75, HOUNDOOM

	ELIF DEF(_SILVER)
	; morn
	db 74, ARCANINE
	db 75, MAGMAR
	db 75, NINETALES
	db 76, RAPIDASH
	db 75, CHARIZARD
	db 75, TYPHLOSION
	db 75, HOUNDOOM
	; day
	db 74, ARCANINE
	db 75, MAGMAR
	db 75, NINETALES
	db 76, RAPIDASH
	db 75, CHARIZARD
	db 75, TYPHLOSION
	db 75, HOUNDOOM
	; nite
	db 74, ARCANINE
	db 75, MAGMAR
	db 75, NINETALES
	db 76, RAPIDASH
	db 75, CHARIZARD
	db 75, TYPHLOSION
	db 75, HOUNDOOM
	ENDC

	map_id ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 74, JUMPLUFF
	db 75, SUNFLORA
	db 75, BELLOSSOM
	db 76, TANGELA
	db 77, EXEGGCUTE
	db 75, MEGANIUM
	db 77, VENUSAUR
	; day
	db 74, VICTREEBEL
	db 75, JUMPLUFF
	db 75, EXEGGCUTE
	db 76, BELLOSSOM
	db 77, VILEPLUME
	db 75, MEGANIUM
	db 77, VENUSAUR
	; nite
	db 74, VILEPLUME
	db 75, VICTREEBEL
	db 75, TANGELA
	db 76, PARASECT
	db 77, BELLOSSOM
	db 75, VENUSAUR
	db 77, MEGANIUM

	ELIF DEF(_SILVER)
	; morn
	db 74, JUMPLUFF
	db 75, SUNFLORA
	db 75, BELLOSSOM
	db 76, TANGELA
	db 77, EXEGGCUTE
	db 75, MEGANIUM
	db 77, VENUSAUR
	; day
	db 74, VICTREEBEL
	db 75, JUMPLUFF
	db 75, EXEGGCUTE
	db 76, BELLOSSOM
	db 77, VILEPLUME
	db 75, MEGANIUM
	db 77, VENUSAUR
	; nite
	db 74, VILEPLUME
	db 75, VICTREEBEL
	db 75, TANGELA
	db 76, PARASECT
	db 77, BELLOSSOM
	db 75, VENUSAUR
	db 77, MEGANIUM
	ENDC

	map_id ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 76, JUMPLUFF
	db 75, POLITOED
	db 76, POLIWRATH
	db 78, AZUMARILL
	db 75, SUDOWOODO
	db 78, STANTLER
	db 81, SLOWKING
	; day
	db 76, FLAREON
	db 75, POLITOED
	db 76, POLIWRATH
	db 78, AZUMARILL
	db 75, SUDOWOODO
	db 78, STANTLER
	db 81, PILOSWINE
	; nite
	db 76, FLAREON
	db 75, QUAGSIRE
	db 76, SANDSLASH
	db 78, MURKROW
	db 75, STANTLER
	db 78, SUDOWOODO
	db 81, SLOWBRO

	ELIF DEF(_SILVER)
	; morn
	db 76, JUMPLUFF
	db 75, POLITOED
	db 76, POLIWRATH
	db 78, AZUMARILL
	db 75, SUDOWOODO
	db 78, STANTLER
	db 81, SLOWKING
	; day
	db 76, FLAREON
	db 75, POLITOED
	db 76, POLIWRATH
	db 78, AZUMARILL
	db 75, SUDOWOODO
	db 78, STANTLER
	db 81, PILOSWINE
	; nite
	db 76, FLAREON
	db 75, QUAGSIRE
	db 76, SANDSLASH
	db 78, MURKROW
	db 75, STANTLER
	db 78, SUDOWOODO
	db 81, SLOWBRO
	ENDC

	map_id ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 75, WEEZING
	db 74, MUK
	db 74, ARBOK
	db 76, NIDOQUEEN
	db 76, NIDOKING
	db 76, VENOMOTH
	db 75, ARIADOS
	; day
	db 75, ARBOK
	db 74, WEEZING
	db 74, MUK
	db 76, VENOMOTH
	db 76, NIDOQUEEN
	db 76, NIDOKING
	db 75, BEEDRILL
	; nite
	db 75, ARBOK
	db 74, WEEZING
	db 74, MUK
	db 76, VENOMOTH
	db 76, NIDOQUEEN
	db 76, HAUNTER
	db 75, NIDOKING

	map_id ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 76, GIRAFARIG
	db 75, MAGCARGO
	db 76, DONPHAN
	db 78, DODRIO
	db 75, MUK
	db 78, WEEZING
	db 81, GOLEM
	; day
	db 76, DODRIO
	db 75, MAGCARGO
	db 76, MUK
	db 78, GIRAFARIG
	db 75, WEEZING
	db 78, DONPHAN
	db 81, GOLEM
	; nite
	db 76, MUK
	db 75, DONPHAN
	db 76, DODRIO
	db 78, WEEZING
	db 75, RAPIDASH
	db 78, GIRAFARIG
	db 81, MAGCARGO

	map_id ROUTE_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 76, XATU
	db 77, TOGETIC
	db 78, FEAROW
	db 79, PIDGEOT
	db 77, DODRIO
	db 75, MURKROW
	db 75, DELIBIRD
	; day
	db 76, XATU
	db 77, TOGETIC
	db 78, PIDGEOT
	db 79, FEAROW
	db 77, FARFETCH_D
	db 75, DODRIO
	db 75, MURKROW
	; nite
	db 76, MURKROW
	db 77, NOCTOWL
	db 78, FEAROW
	db 79, PIDGEOT
	db 77, XATU
	db 75, TOGETIC
	db 75, DODRIO

	map_id ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 66, TANGELA
	db 67, GIRAFARIG
	db 66, RAICHU
	db 66, MR__MIME
	db 68, PILOSWINE
	db 66, JYNX
	db 66, EXEGGUTOR
	; day
	db 66, TANGELA
	db 67, GIRAFARIG
	db 66, RAICHU
	db 66, MR__MIME
	db 68, PILOSWINE
	db 66, JYNX
	db 66, EXEGGUTOR
	; nite
	db 66, TANGELA
	db 67, GIRAFARIG
	db 66, RAICHU
	db 66, MR__MIME
	db 68, PILOSWINE
	db 66, JYNX
	db 66, EXEGGUTOR

	map_id ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 66, EEVEE
	db 66, DITTO
	db 65, SMEARGLE
	db 64, WOBBUFFET
	db 66, BLASTOISE
	db 67, CHARIZARD
	db 67, VENUSAUR
	; day
	db 66, EEVEE
	db 66, DITTO
	db 65, SMEARGLE
	db 64, WOBBUFFET
	db 66, CHARIZARD
	db 67, BLASTOISE
	db 67, VENUSAUR
	; nite
	db 66, EEVEE
	db 66, DITTO
	db 65, SMEARGLE
	db 64, WOBBUFFET
	db 66, FERALIGATR
	db 67, TYPHLOSION
	db 67, MEGANIUM

	map_id ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 70, DITTO
	db 71, PRIMEAPE
	db 69, GLIGAR
	db 72, ABRA
	db 73, PUPITAR
	db 71, DRAGONAIR
	db 71, KANGASKHAN
	; day
	db 70, DITTO
	db 71, PRIMEAPE
	db 69, GLIGAR
	db 72, ABRA
	db 73, PUPITAR
	db 71, DRAGONAIR
	db 71, KANGASKHAN
	; nite
	db 70, DITTO
	db 71, PRIMEAPE
	db 69, GLIGAR
	db 72, ABRA
	db 73, PUPITAR
	db 71, DRAGONAIR
	db 71, KANGASKHAN

	map_id ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 69, AMPHAROS
	db 68, KADABRA
	db 70, CLEFABLE
	db 69, MACHOKE
	db 71, DRAGONAIR
	db 71, PUPITAR
	db 71, KANGASKHAN
	; day
	db 69, AMPHAROS
	db 68, KADABRA
	db 70, CLEFABLE
	db 69, MACHOKE
	db 71, DRAGONAIR
	db 71, PUPITAR
	db 71, KANGASKHAN
	; nite
	db 69, AMPHAROS
	db 68, KADABRA
	db 70, HOUNDOOM
	db 69, CLEFABLE
	db 71, DRAGONAIR
	db 71, PUPITAR
	db 71, KANGASKHAN

	map_id ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 62, JUMPLUFF
	db 60, FLAREON
	db 62, POLITOED
	db 60, RAICHU
	db 62, ARBOK
	db 60, BLASTOISE
	db 60, NIDOQUEEN
	; day
	db 62, XATU
	db 60, RAICHU
	db 62, POLIWRATH
	db 60, SCYTHER
	db 62, DUNSPARCE
	db 60, TYPHLOSION
	db 60, NIDOKING
	; nite
	db 62, DODRIO
	db 60, VENOMOTH
	db 62, ELECTABUZZ
	db 60, GRANBULL
	db 62, PINSIR
	db 60, SANDSLASH
	db 60, HOUNDOOM

	ELIF DEF(_SILVER)
	; morn
	db 62, JUMPLUFF
	db 60, FLAREON
	db 62, POLITOED
	db 60, RAICHU
	db 62, ARBOK
	db 60, BLASTOISE
	db 60, NIDOQUEEN
	; day
	db 62, XATU
	db 60, RAICHU
	db 62, POLIWRATH
	db 60, SCYTHER
	db 62, DUNSPARCE
	db 60, TYPHLOSION
	db 60, NIDOKING
	; nite
	db 62, DODRIO
	db 60, VENOMOTH
	db 62, ELECTABUZZ
	db 60, GRANBULL
	db 62, PINSIR
	db 60, SANDSLASH
	db 60, HOUNDOOM
	ENDC

	map_id ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 60, AMPHAROS
	db 60, TOGETIC
	db 58, BELLOSSOM
	db 60, ARCANINE
	db 62, HITMONLEE
	db 62, DUNSPARCE
	db 62, DODRIO
	; day
	db 60, RAICHU
	db 60, DODRIO
	db 58, VICTREEBEL
	db 60, RAPIDASH
	db 62, WIGGLYTUFF
	db 62, ARBOK
	db 62, SCIZOR
	; nite
	db 60, MAGNETON
	db 60, XATU
	db 58, VILEPLUME
	db 60, PERSIAN
	db 62, SANDSLASH
	db 62, STANTLER
	db 62, HOUNDOOM

	ELIF DEF(_SILVER)
	; morn
	db 60, AMPHAROS
	db 60, TOGETIC
	db 58, BELLOSSOM
	db 60, ARCANINE
	db 62, HITMONLEE
	db 62, DUNSPARCE
	db 62, DODRIO
	; day
	db 60, RAICHU
	db 60, DODRIO
	db 58, VICTREEBEL
	db 60, RAPIDASH
	db 62, WIGGLYTUFF
	db 62, ARBOK
	db 62, SCIZOR
	; nite
	db 60, MAGNETON
	db 60, XATU
	db 58, VILEPLUME
	db 60, PERSIAN
	db 62, SANDSLASH
	db 62, STANTLER
	db 62, HOUNDOOM
	ENDC

	map_id SEAFOAM_ISLANDS_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; day
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; nite
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 72, PILOSWINE
	db 73, LAPRAS
	
	map_id SEAFOAM_ISLANDS_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; day
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; nite
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 72, PILOSWINE
	db 73, LAPRAS
	
	map_id SEAFOAM_ISLANDS_B2F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; day
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; nite
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 72, PILOSWINE
	db 73, LAPRAS
	
	map_id SEAFOAM_ISLANDS_B3F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; day
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; nite
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 72, PILOSWINE
	db 73, LAPRAS
	
	map_id SEAFOAM_ISLANDS_B4F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; day
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 71, CORSOLA
	db 73, LAPRAS
	; nite
	db 69, SEEL
	db 70, GOLBAT
	db 70, CLOYSTER
	db 71, JYNX
	db 72, DEWGONG
	db 72, PILOSWINE
	db 73, LAPRAS

	map_id ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite

	IF DEF(_GOLD)
	; morn
	db 82, HERACROSS
	db 82, VAPOREON
	db 83, JOLTEON
	db 83, EXEGGUTOR
	db 83, SKARMORY
	db 84, MILTANK
	db 84, ESPEON
	; day
	db 82, EXEGGUTOR
	db 82, NIDOKING
	db 83, JOLTEON
	db 83, SKARMORY
	db 83, CHANSEY
	db 84, VAPOREON
	db 84, TAUROS
	; nite
	db 82, FORRETRESS
	db 82, CROBAT
	db 83, UMBREON
	db 83, HYPNO
	db 83, HOUNDOOM
	db 84, JOLTEON
	db 84, ESPEON

	ELIF DEF(_SILVER)
	; morn
	db 82, HERACROSS
	db 82, VAPOREON
	db 83, JOLTEON
	db 83, EXEGGUTOR
	db 83, SKARMORY
	db 84, MILTANK
	db 84, ESPEON
	; day
	db 82, EXEGGUTOR
	db 82, NIDOKING
	db 83, JOLTEON
	db 83, SKARMORY
	db 83, CHANSEY
	db 84, VAPOREON
	db 84, TAUROS
	; nite
	db 82, FORRETRESS
	db 82, CROBAT
	db 83, UMBREON
	db 83, HYPNO
	db 83, HOUNDOOM
	db 84, JOLTEON
	db 84, ESPEON
	ENDC

	map_id CERULEAN_CAVE_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	; day
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	; nite
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	
	map_id CERULEAN_CAVE_2F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	; day
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	; nite
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	
	map_id CERULEAN_CAVE_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	; day
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO
	; nite
	db 82, CROBAT
	db 82, PARASECT
	db 83, PRIMEAPE
	db 83, TANGELA
	db 83, MACHAMP
	db 84, ELECTRODE
	db 84, DITTO

	db -1 ; end
