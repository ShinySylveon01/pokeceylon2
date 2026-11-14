MountMoonB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MountMoonB1F_MapEvents:
	db 0, 0 ; filler

	db 10 ; warp events
	warp_event  5,  5, MOUNT_MOON_1F, 2
	warp_event 17,  9, MOUNT_MOON_B2F, 1
	warp_event 15,  3, MOUNT_MOON_B2F, 2
	warp_event  7, 21, MOUNT_MOON_SQUARE, 1
	warp_event 19, 21, MOUNT_MOON_SQUARE, 2
	warp_event 19,  3, ROUTE_4, 1
	warp_event  7, 19, MOUNT_MOON_1F, 3
	warp_event 19, 19, MOUNT_MOON_B1F, 9
	warp_event 27,  9, MOUNT_MOON_B1F, 8
	warp_event 27,  3, MOUNT_MOON_B2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
