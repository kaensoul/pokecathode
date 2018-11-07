	const_def 2 ; object constants

OlivineLighthouse2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


OlivineLighthouse2F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_1F, 3
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_3F, 2
	warp_event 16, 13, OLIVINE_LIGHTHOUSE_1F, 4
	warp_event 17, 13, OLIVINE_LIGHTHOUSE_1F, 5
	warp_event 16, 11, OLIVINE_LIGHTHOUSE_3F, 4
	warp_event 17, 11, OLIVINE_LIGHTHOUSE_3F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	