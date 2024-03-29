; ************************************************************************
;
;	General equates and macros
;
; ************************************************************************
; Hardware
Kempston_Mouse_Buttons	equ	$fadf
Kempston_Mouse_X	equ	$fddf
Kempston_Mouse_Y	equ	$ffdf
Mouse_LB		equ	1			; 0 = pressed
Mouse_RB		equ	2
Mouse_MB		equ	4
Mouse_Wheel		equ	$f0

SpriteReg		equ	$57
SpriteShape		equ	$5b



; memory locations
SpriteData	equ	$7800
Sprites		equ	$7800
MapData		equ	$c000
CharData:	equ	$8000



LoadFile	macro
		ld	hl,\0
		ld	ix,\1
		call	Load
		endm
		
File		macro
		dw	Filesize(\0)
		db	\0
		db	0
		Message "file='",\0,"'  size=",Filesize(\0)
		endm




		// copper WAIT  VPOS,HPOS
WAIT		macro
		db	HI($8000+(\0&$1ff)+((\1&$3f)<<9))
		db	LO($8000+(\0&$1ff)+(( (\1>>3) &$3f)<<9))
		endm
		// copper MOVE reg,val
MOVE		macro
		db	HI($0000+((\0&$ff)<<8)+(\1&$ff))
		db	LO($0000+((\0&$ff)<<8)+(\1&$ff))
		endm
CNOP		macro
		db	0,0
		endm



