ViridianMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x9b5e7:
	loadfont
	pokemart $0, $0012
	loadmovesprites
	end

LassScript_0x9b5ee:
	jumptextfaceplayer UnknownText_0x9b5f4

CooltrainerMScript_0x9b5f1:
	jumptextfaceplayer UnknownText_0x9b61a

UnknownText_0x9b5f4:
	text "The GYM LEADER"
	line "here is totally"
	cont "cool."
	done

UnknownText_0x9b61a:
	text "Have you been to"
	line "CINNABAR?"

	para "It's an island way"
	line "south of here."
	done

ViridianMart_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 4, VIRIDIAN_CITY
	warp_def $7, $3, 4, VIRIDIAN_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_CLERK, 3 + 4, 1 + 4, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x9b5e7, -1
	person_event SPRITE_LASS, 2 + 4, 7 + 4, $5, 0, 2, -1, -1, 0, 0, 0, LassScript_0x9b5ee, -1
	person_event SPRITE_COOLTRAINER_M, 6 + 4, 1 + 4, $7, 0, 0, -1, -1, 0, 0, 0, CooltrainerMScript_0x9b5f1, -1
