MountMoonB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 21, 17, MOUNT_MOON_B1F, 2
	warp_event  5,  7, MOUNT_MOON_B1F, 3
	warp_event 21, 13, MOUNT_MOON_B1F, 10

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
