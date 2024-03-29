; Star Rider Images (Fonts and Extra Images)
; Rewritten by SynaMax, started March 6th, 2024

;
; To build rom_25.u46, type in the following:
;
;	asl starrider_image_font.asm -o sr_img_font.p
;
;	p2bin sr_img_font.p rom_25.u46 -r $C000-$DFFF
;

	CPU	6809

	RADIX	16
	
	ORG 	C000

;	
; High Score Font
;

HS_0
	FCB	04,40,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	44,44,00
	FCB	04,40,00
	
HS_1
	FCB	04,00
	FCB	44,00
	FCB	04,00
	FCB	04,00
	FCB	04,00
	FCB	04,00
	FCB	04,00
	
HS_2
	FCB	04,44,00
	FCB	40,00,40
	FCB	00,00,40
	FCB	04,44,00
	FCB	40,00,00
	FCB	44,44,40
	FCB	44,44,40

HS_3
	FCB	44,44,00
	FCB	40,04,00
	FCB	00,40,00
	FCB	04,44,00
	FCB	00,04,00
	FCB	44,44,00
	FCB	44,40,00

HS_4
	FCB	00,04,00
	FCB	00,44,00
	FCB	04,04,00
	FCB	44,04,40
	FCB	44,44,40
	FCB	00,04,00
	FCB	00,04,00

HS_5
	FCB	44,40
	FCB	40,00
	FCB	44,40
	FCB	00,40
	FCB	00,40
	FCB	44,40
	FCB	44,00
	
HS_6
	FCB	04,44,00
	FCB	40,00,00
	FCB	44,40,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	44,44,00
	FCB	04,40,00
	
HS_7
	FCB	44,40
	FCB	44,40
	FCB	00,40
	FCB	04,40
	FCB	04,00
	FCB	04,00
	FCB	04,00
	
HS_8
	FCB	04,40,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	04,40,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	44,44,00

HS_9
	FCB	04,40,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	04,44,00
	FCB	00,40,00
	FCB	04,00,00
	FCB	40,00,00
	
HS_SPC
	FCB	00,00,00

HS_A
	FCB	44,40,00
	FCB	04,44,00
	FCB	04,04,00
	FCB	44,44,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	40,04,40

HS_B
	FCB	04,44,00
	FCB	44,00,40
	FCB	04,44,00
	FCB	04,00,40
	FCB	04,00,40
	FCB	44,44,40
	FCB	04,44,00

HS_C
	FCB	04,44,00
	FCB	44,44,40
	FCB	44,00,40
	FCB	40,00,00
	FCB	40,00,40
	FCB	44,04,40
	FCB	04,44,00

HS_D
	FCB	44,44,00
	FCB	04,00,40
	FCB	04,00,40
	FCB	04,00,40
	FCB	04,04,40
	FCB	44,44,00
	FCB	44,40,00

HS_E
	FCB	44,44,00
	FCB	40,00,00
	FCB	44,40,00
	FCB	40,00,00
	FCB	40,04,00
	FCB	44,44,00
	FCB	44,44,00

HS_F
	FCB	44,44,40
	FCB	04,00,00
	FCB	04,44,00
	FCB	04,00,00
	FCB	44,00,00
	FCB	44,00,00
	FCB	44,00,00

HS_G
	FCB	04,44,40
	FCB	40,00,40
	FCB	40,00,00
	FCB	40,04,40
	FCB	44,00,40
	FCB	44,44,40
	FCB	04,44,00

HS_H
	FCB	44,00,40
	FCB	04,00,40
	FCB	04,44,40
	FCB	04,00,40
	FCB	44,00,40
	FCB	44,00,40
	FCB	44,00,40

HS_I
	FCB	44,00
	FCB	04,00
	FCB	04,00
	FCB	04,00
	FCB	44,00
	FCB	44,00
	FCB	44,00

HS_J
	FCB	00,44,40
	FCB	00,04,00
	FCB	00,04,00
	FCB	00,04,00
	FCB	40,04,00
	FCB	44,44,00
	FCB	04,40,00
	
HS_K
	FCB	44,00,40
	FCB	04,04,00
	FCB	04,40,00
	FCB	44,04,00
	FCB	04,00,40
	FCB	04,00,40
	FCB	04,00,40

HS_L	
	FCB	44,00,00
	FCB	44,00,00
	FCB	04,00,00
	FCB	04,00,00
	FCB	04,00,40
	FCB	44,44,40
	FCB	44,44,40
	
HS_M
	FCB	44,00,04,00
	FCB	04,40,44,00
	FCB	04,44,44,00
	FCB	04,04,04,00
	FCB	44,00,04,00
	FCB	44,00,04,00
	FCB	44,00,04,00

HS_N
	FCB	40,04,00
	FCB	44,04,00
	FCB	44,44,00
	FCB	40,44,00
	FCB	40,04,00
	FCB	40,04,00
	FCB	40,04,00

HS_O
	FCB	00,44,00,00
	FCB	04,00,40,00
	FCB	40,00,04,00
	FCB	40,00,04,00
	FCB	44,00,44,00
	FCB	44,44,44,00
	FCB	04,44,40,00

HS_P
	FCB	04,44,00,00
	FCB	44,44,40,00
	FCB	40,40,04,00
	FCB	00,40,04,00
	FCB	04,44,40,00
	FCB	00,40,00,00
	FCB	00,40,00,00

HS_Q
	FCB	00,44,00,00
	FCB	04,00,40,00
	FCB	40,00,04,00
	FCB	40,00,04,00
	FCB	44,00,44,00
	FCB	04,44,40,00
	FCB	00,44,44,00

HS_R
	FCB	44,44,00
	FCB	04,44,40
	FCB	04,00,40
	FCB	04,00,40
	FCB	04,44,00
	FCB	04,00,40
	FCB	04,00,40

HS_S	
	FCB	04,44,00
	FCB	40,00,00
	FCB	04,44,00
	FCB	00,00,40
	FCB	40,00,40
	FCB	44,44,40
	FCB	04,44,00

HS_T	
	FCB	44,44,40
	FCB	44,44,40
	FCB	00,40,00
	FCB	00,40,00
	FCB	04,40,00
	FCB	04,40,00
	FCB	04,40,00

HS_U	
	FCB	04,00,40
	FCB	40,00,40
	FCB	40,00,40
	FCB	40,00,40
	FCB	40,00,40
	FCB	44,44,40
	FCB	04,44,00

HS_V
	FCB	44,00,04,00
	FCB	04,00,04,00
	FCB	04,00,04,00
	FCB	04,00,04,00
	FCB	04,40,40,00
	FCB	00,44,40,00
	FCB	00,04,00,00
	
HS_W
	FCB	40,00,00,40
	FCB	40,04,00,40
	FCB	44,04,04,40
	FCB	44,44,44,40
	FCB	04,44,44,00
	FCB	04,40,44,00
	FCB	04,00,04,00

HS_X
	FCB	40,00,40
	FCB	44,04,40
	FCB	04,44,00
	FCB	00,40,00
	FCB	04,04,00
	FCB	44,04,40
	FCB	40,00,40

HS_Y	
	FCB	00,44,00
	FCB	40,04,00
	FCB	44,04,00
	FCB	04,44,00
	FCB	00,40,00
	FCB	00,40,00
	FCB	00,40,00

HS_Z	
	FCB	04,44,40
	FCB	44,44,00
	FCB	00,04,00
	FCB	00,40,00
	FCB	04,00,40
	FCB	44,44,40
	FCB	44,44,40

HS_QUE
	FCB	44,40
	FCB	40,40
	FCB	00,40
	FCB	04,40
	FCB	04,00
	FCB	00,00
	FCB	04,00

HS_EXC
	FCB	40
	FCB	40
	FCB	40
	FCB	40
	FCB	40
	FCB	00
	FCB	40

HS_BRKL
	FCB	00,40
	FCB	04,00
	FCB	40,00
	FCB	40,00
	FCB	40,00
	FCB	04,00
	FCB	00,40

HS_BRKR
	FCB	40,00
	FCB	04,00
	FCB	00,40
	FCB	00,40
	FCB	00,40
	FCB	04,00
	FCB	40,00

HS_CMMA
	FCB	40,00
	FCB	44,00
	FCB	04,00
	FCB	40,00

HS_LEFT_ARROW
	FCB	00,0A,00
	FCB	00,A0,00
	FCB	0A,00,00
	FCB	AA,AA,A0
	FCB	0A,00,00
	FCB	00,A0,00
	FCB	00,0A,00

HS_EQU
	FCB	00,00
	FCB	00,00
	FCB	AA,B0
	FCB	00,00
	FCB	AA,B0

HS_DASH	
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	AA,B0

HS_SQOT
	FCB	AA,B0
	FCB	AB,00

HS_PER
	FCB	00
	FCB	00
	FCB	00
	FCB	00
	FCB	00
	FCB	00
	FCB	A0
	
HS_SLASH	; There's something weird going on here.  I think this one might be misaligned.
		; It's starts at $C370 but I think it should start at $C373.  There's some junk pixels
		; between this symbol and the amperstand (&) symbol below it. 
		;
		; Was this supposed to be 4x7 instead of 3x7?
		;
	FCB	00,00,AA	; Junk pixels
	FCB	00,00,00	; This is where it should start
	FCB	AB,00,00
	FCB	0A,B0,00
	FCB	00,AB,00
	FCB	00,0A,B0
	FCB	00,00,AB
	
	FCB	00,00,00 	; This should be where it ends.
	FCB	A0,00,00,00	; More Junk pixels

HS_AMP
	FCB	0A,00,00
	FCB	A0,A0,00
	FCB	A0,A0,00
	FCB	0A,00,00
	FCB	A0,A0,A0
	FCB	A0,0A,00
	FCB	0A,A0,A0

HS_DQOT
	FCB	AA,0A,A0
	FCB	AB,0A,B0

HS_COLN
	FCB	00
	FCB	00
	FCB	A0
	FCB	00
	FCB	A0

HS_UNDERSCORE
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	AA,AA,A0

HS_UP_ARROW
	FCB	00,A0,00
	FCB	0A,AA,00
	FCB	A0,A0,A0
	FCB	00,A0,00
	FCB	00,A0,00
	FCB	00,A0,00
	FCB	00,A0,00

;
; Classic Williams Small Font
;

S0	; also used for "O"
	FCB	AA,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,A0

S1
	FCB	0A,00
	FCB	AA,00
	FCB	0A,00
	FCB	0A,00
	FCB	AA,A0

S2
	FCB	AA,A0
	FCB	00,A0
	FCB	AA,A0
	FCB	A0,00
	FCB	AA,A0

S3
	FCB	AA,A0
	FCB	00,A0
	FCB	AA,A0
	FCB	00,A0
	FCB	AA,A0

S4
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	00,A0
	FCB	00,A0

S5	; also used for "S"
	FCB	AA,A0
	FCB	A0,00
	FCB	AA,A0
	FCB	00,A0
	FCB	AA,A0

S6
	FCB	AA,A0
	FCB	A0,00
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,A0

S7
	FCB	AA,A0
	FCB	00,A0
	FCB	0A,00
	FCB	0A,00
	FCB	0A,00

S8
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,A0

S9
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	00,A0
	FCB	00,A0

SSPC
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00

SA
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	A0,A0
	FCB	A0,A0

SB
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,00
	FCB	A0,A0
	FCB	AA,A0

SC
	FCB	AA,A0
	FCB	A0,00
	FCB	A0,00
	FCB	A0,00
	FCB	AA,A0

SD
	FCB	AA,00
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,00

SE
	FCB	AA,A0
	FCB	A0,00
	FCB	AA,00
	FCB	A0,00
	FCB	AA,A0

SF
	FCB	AA,A0
	FCB	A0,00
	FCB	AA,00
	FCB	A0,00
	FCB	A0,00

SG
	FCB	AA,A0
	FCB	A0,00
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,A0

SH
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	A0,A0
	FCB	A0,A0

SI
	FCB	AA,A0
	FCB	0A,00
	FCB	0A,00
	FCB	0A,00
	FCB	AA,A0

SJ
	FCB	00,A0
	FCB	00,A0
	FCB	00,A0
	FCB	A0,A0
	FCB	AA,A0

SK
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,00
	FCB	A0,A0
	FCB	A0,A0

SL
	FCB	A0,00
	FCB	A0,00
	FCB	A0,00
	FCB	A0,00
	FCB	AA,A0

SM
	FCB	AA,AA,A0
	FCB	A0,A0,A0
	FCB	A0,A0,A0
	FCB	A0,00,A0
	FCB	A0,00,A0

SN
	FCB	AA,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0

SP
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	A0,00
	FCB	A0,00

SQ
	FCB	AA,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	0A,00
	FCB	00,A0

SR
	FCB	AA,A0
	FCB	A0,A0
	FCB	AA,00
	FCB	A0,A0
	FCB	A0,A0

ST
	FCB	AA,A0
	FCB	0A,00
	FCB	0A,00
	FCB	0A,00
	FCB	0A,00

SU
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,A0

SV
	FCB	A0,A0
	FCB	A0,A0
	FCB	A0,A0
	FCB	0A,00
	FCB	0A,00

SW
	FCB	A0,00,A0
	FCB	A0,00,A0
	FCB	A0,A0,A0
	FCB	A0,A0,A0
	FCB	AA,AA,A0

SX
	FCB	A0,A0
	FCB	A0,A0
	FCB	0A,00
	FCB	A0,A0
	FCB	A0,A0

SY
	FCB	A0,A0
	FCB	A0,A0
	FCB	AA,A0
	FCB	0A,00
	FCB	0A,00

SZ
	FCB	AA,A0
	FCB	00,A0
	FCB	0A,00
	FCB	A0,00
	FCB	AA,A0

S_LEFT_ARROW
	FCB	00,A0
	FCB	0A,00
	FCB	AA,A0
	FCB	0A,00
	FCB	00,A0

SEQU
	FCB	00,00
	FCB	AA,A0
	FCB	00,00
	FCB	AA,A0

SDSH
	FCB	00,00
	FCB	00,00
	FCB	AA,A0

SQUE
	FCB	AA,A0
	FCB	00,A0
	FCB	0A,A0
	FCB	00,00
	FCB	0A,00

SEXC
	FCB	A0
	FCB	A0
	FCB	A0
	FCB	00
	FCB	A0

SBRKL
	FCB	00,A0
	FCB	0A,00
	FCB	A0,00
	FCB	0A,00
	FCB	00,A0

SBRKR
	FCB	A0,00
	FCB	0A,00 
	FCB	00,A0
	FCB	0A,00
	FCB	A0,00

SSQOT
	FCB	A0
	FCB	A0

SCMMA
	FCB	00
	FCB	00
	FCB	00
	FCB	A0
	FCB	A0

SPER
	FCB	00
	FCB	00
	FCB	00
	FCB	00
	FCB	A0

SSLSH
	FCB	00,00,A0
	FCB	00,0A,00
	FCB	00,A0,00
	FCB	0A,00,00
	FCB	A0,00,00

S_RIGHT_ARROW
	FCB	00,A0,00
	FCB	00,0A,00
	FCB	AA,AA,A0
	FCB	00,0A,00
	FCB	00,A0,00

SCOLON
	FCB	00
	FCB	A0
	FCB	00
	FCB	A0
	FCB	00

;
; HUD "LCD" Font
;

LCD_0
	FCB	0D,DD,D0,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	00,00,00,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	0D,DD,D0,00

LCD_1
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,00,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00
	FCB	00,D0,00,00

LCD_2
	FCB	DD,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	0D,DD,D0,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	0D,DD,DD,00

LCD_3
	FCB	DD,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	0D,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	DD,DD,D0,00

LCD_4
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	0D,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00

LCD_5
	FCB	0D,DD,D0,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	0D,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	DD,DD,D0,00

LCD_6
	FCB	0D,DD,D0,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	D0,00,00,00
	FCB	0D,DD,D0,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	0D,DD,D0,00

LCD_7
	FCB	DD,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,00,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00

LCD_8
	FCB	0D,DD,D0,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	0D,DD,D0,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	0D,DD,D0,00

LCD_9
	FCB	0D,DD,D0,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	D0,00,0D,00
	FCB	0D,DD,D0,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	00,00,0D,00
	FCB	0D,DD,D0,00

LCD_SPC
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00

LCD_UNDERSCORE
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,FF,FF,00

;
; Star Rider Main Font
;

L0
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

L1
	FCB	00,00,08,00
	FCB	00,00,08,00
	FCB	00,00,08,00
	FCB	00,00,08,00
	FCB	00,00,88,00
	FCB	00,00,88,00
	FCB	00,00,88,00
	FCB	00,00,88,00

L2
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	00,00,00,80
	FCB	00,00,00,80
	FCB	88,88,88,80
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,88,88,80

L3
	FCB	88,88,88,00
	FCB	80,00,08,00
	FCB	00,00,08,00
	FCB	00,88,88,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

L4
	FCB	88,88,88,00
	FCB	80,00,08,00
	FCB	80,00,08,00
	FCB	80,00,08,00
	FCB	80,00,08,00
	FCB	88,88,88,80
	FCB	00,00,88,00
	FCB	00,00,88,00

L5
	FCB	88,88,88,80
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	88,88,88,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

L6
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,00
	FCB	88,88,88,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

L7
	FCB	88,88,88,80
	FCB	00,00,00,80
	FCB	00,00,00,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	00,00,08,80

L8
	FCB	08,88,88,00
	FCB	08,00,08,00
	FCB	08,00,08,00
	FCB	88,88,88,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

L9
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,88,88,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	00,00,08,80

LSPC
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00
	FCB	00,00,00,00

LA
	FCB	08,88,88,00
	FCB	08,00,08,00
	FCB	08,00,08,00
	FCB	08,00,08,00
	FCB	88,88,88,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80

LB
	FCB	88,88,88,00
	FCB	80,00,08,00
	FCB	80,00,08,00
	FCB	80,00,08,00
	FCB	88,88,88,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,88,88,80

LC
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,88,88,80

LD
	FCB	88,88,88,00
	FCB	80,00,08,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,08,80
	FCB	88,88,88,00

LE
	FCB	88,88,88,80
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	88,88,88,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,88,88,80

LF
	FCB	88,88,88,80
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	88,88,88,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00

LG
	FCB	88,88,88,80
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	88,00,08,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,88,88,80

LH
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,88,88,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80

LI
	FCB	80,00
	FCB	80,00
	FCB	80,00
	FCB	88,00
	FCB	88,00
	FCB	88,00
	FCB	88,00
	FCB	88,00

LJ
	FCB	00,00,08,00
	FCB	00,00,08,00
	FCB	00,00,08,00
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

LK
	FCB	80,00,80,00
	FCB	80,00,80,00
	FCB	80,00,80,00
	FCB	88,88,88,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80

LL
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	80,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,88,88,80

LM
	FCB	88,88,88,88,00
	FCB	80,00,80,08,00
	FCB	80,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00

LN
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80

LO	
	FCB	88,88,88,80
	FCB	80,00,08,80
	FCB	80,00,08,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,88,88,80

LP	
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,88,88,80
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00
	FCB	88,00,00,00

LQ	
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,80,80
	FCB	80,00,88,80
	FCB	88,88,88,80
	
	FCB	00,00,80,00	; This Q tail gets cut off and is never seen because the font dimensions are 4x8 not 4x9
	
LR
	FCB	88,88,88,00
	FCB	80,00,08,00
	FCB	80,00,08,00
	FCB	88,88,88,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80
	FCB	88,00,00,80

LS	
	FCB	88,88,88,80
	FCB	80,00,00,80
	FCB	80,00,00,00
	FCB	88,88,88,80
	FCB	00,00,08,80
	FCB	00,00,08,80
	FCB	80,00,08,80
	FCB	88,88,88,80

LT	
	FCB	88,88,88,80
	FCB	00,08,00,00
	FCB	00,08,00,00
	FCB	00,08,80,00
	FCB	00,08,80,00
	FCB	00,08,80,00
	FCB	00,08,80,00
	FCB	00,08,80,00
	
LU
	FCB	80,00,00,80 
	FCB	80,00,00,80 
	FCB	80,00,00,80 
	FCB	88,00,00,80 
	FCB	88,00,00,80 
	FCB	88,00,00,80 
	FCB	88,00,00,80 
	FCB	88,88,88,80 

LV
	FCB	88,00,00,80 
	FCB	88,00,00,80 
	FCB	88,00,00,80 
	FCB	08,00,08,80 
	FCB	08,00,08,00 
	FCB	08,00,08,00 
	FCB	08,00,08,00 
	FCB	08,88,88,00

LW
	FCB	80,00,80,08,00
	FCB	80,00,80,08,00
	FCB	80,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,00,80,08,00
	FCB	88,88,88,88,00

LX
	FCB	80,00,00,80
	FCB	88,00,08,80
	FCB	08,80,88,00
	FCB	00,88,80,00
	FCB	00,88,80,00
	FCB	08,80,88,00
	FCB	88,00,08,80
	FCB	88,00,08,80

LY
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	80,00,00,80
	FCB	88,88,88,80
	FCB	00,08,80,00
	FCB	00,08,80,00
	FCB	00,08,80,00
	FCB	00,08,80,00

LZ
	FCB	88,88,88,80
	FCB	80,00,08,80
	FCB	00,00,88,00
	FCB	00,08,80,00
	FCB	00,88,00,00
	FCB	08,80,00,00
	FCB	88,00,00,80
	FCB	88,88,88,80

LQUE
	FCB	44,40
	FCB	40,40
	FCB	00,40
	FCB	04,40
	FCB	04,00
	FCB	00,00
	FCB	00,00
	FCB	04,00

LEXC
	FCB	00,44
	FCB	00,44
	FCB	00,44
	FCB	00,44
	FCB	00,00
	FCB	00,00
	FCB	00,44
	FCB	00,44

LBRKL
	FCB	00,40
	FCB	04,00
	FCB	40,00
	FCB	40,00
	FCB	40,00
	FCB	04,00
	FCB	00,40

LBRKR
	FCB	40,00
	FCB	04,00
	FCB	00,40
	FCB	00,40
	FCB	00,40
	FCB	04,00
	FCB	40,00

LCMMA
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,44
	FCB	00,44
	FCB	00,40
	FCB	04,00
	FCB	40,00

L_LEFT_ARROW
	FCB	00,0A,00
	FCB	00,A0,00
	FCB	0A,00,00
	FCB	AA,AA,A0
	FCB	0A,00,00
	FCB	00,A0,00
	FCB	00,0A,00

LEQU
	FCB	00,00
	FCB	00,00
	FCB	AA,B0
	FCB	00,00
	FCB	AA,B0

LDSH
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	AA,B0

LSQOT
	FCB	AA,B0
	FCB	AB,00

LPER
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	00,00
	FCB	0A,A0
	FCB	0A,A0

LSLSH
	FCB	00,00,AA,00
	FCB	00,00,AB,00
	FCB	00,0A,B0,00
	FCB	00,AB,00,00
	FCB	0A,B0,00,00
	FCB	AB,00,00,00
	FCB	A0,00,00,00

LAMP
	FCB	0A,00,00
	FCB	A0,A0,00
	FCB	A0,A0,00
	FCB	0A,00,00
	FCB	A0,A0,A0
	FCB	A0,0A,00
	FCB	0A,A0,A0

LDQOT
	FCB	AA,0A,A0
	FCB	AB,0A,B0

LCOLN
	FCB	00,00
	FCB	00,00
	FCB	0A,A0
	FCB	00,00
	FCB	0A,A0

L_UNDERSCORE
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	00,00,00
	FCB	AA,AA,A0

L_UP_ARROW
	FCB	00,A0,00
	FCB	0A,AA,00
	FCB	A0,A0,A0
	FCB	00,A0,00
	FCB	00,A0,00
	FCB	00,A0,00
	FCB	00,A0,00

	FCC	"STAR RIDER (C) 1983 WILLIAMS ELECTRONICS INC.  "

BONUS_1ST_PLACE
	FCB	66,66,66,66,66,66,66,66,66,66,66,66,66,66,66,60
	FCB	BB,66,BB,B6,BB,B6,6B,BB,6B,66,BB,B6,BB,B6,BB,B0
	FCB	6B,66,B6,66,6B,66,6B,6B,6B,66,B6,B6,B6,66,B6,60
	FCB	6B,66,BB,B6,6B,66,6B,BB,6B,66,BB,B6,B6,66,BB,60
	FCB	6B,66,66,B6,6B,66,6B,66,6B,66,B6,B6,B6,66,B6,60
	FCB	BB,B6,BB,B6,6B,66,6B,66,6B,B6,B6,B6,BB,B6,BB,B0
	FCB	66,66,66,66,66,66,66,66,66,66,66,66,66,66,66,60

BIKE_FRONT_CP	;Does this get used?  I don't recall seeing this during gameplay
	FCB	00,00,00,00,00,00,00,00,00,02,11,11,11,11,12,00,00,00,00,00,00,00,00,00,00
	FCB	00,00,00,00,00,00,00,00,32,11,11,11,21,11,11,12,30,00,00,00,00,00,00,00,00
	FCB	00,00,00,00,00,00,00,32,21,11,11,12,82,11,11,11,22,30,00,00,00,00,00,00,00
	FCB	00,00,00,00,00,00,32,22,11,11,11,28,88,21,11,11,12,22,30,00,00,00,00,00,00
	FCB	00,00,00,00,00,42,22,21,11,11,12,88,88,82,11,11,11,22,22,40,00,00,00,00,00
	FCB	00,00,00,00,42,22,22,11,11,11,28,88,88,88,21,11,11,12,22,22,40,00,00,00,00
	FCB	00,00,00,03,22,22,21,11,11,12,88,88,88,88,82,11,11,11,22,22,23,00,00,00,00
	FCB	00,00,00,22,22,22,11,11,11,28,88,88,88,88,88,21,11,11,12,22,22,20,00,00,00
	FCB	00,00,52,22,22,21,11,11,12,22,22,22,22,22,22,22,11,11,11,22,22,22,50,00,00
	FCB	00,04,22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,24,00,00
	FCB	00,42,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,40,00
	FCB	04,22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,24,00
	FCB	42,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,40
	FCB	22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,20

BIKE_FRONT_L1
	FCB	00,00,00,00,00,00,00,00,00,00,00,00,03,21,11,11,11,11,13,00,00,00,00,00,00
	FCB	00,00,00,00,00,00,00,00,00,00,53,21,11,11,11,21,11,11,12,23,50,00,00,00,00
	FCB	00,00,00,00,00,00,00,00,04,32,22,11,11,11,28,82,11,11,11,22,23,00,00,00,00
	FCB	00,00,00,00,00,00,00,53,32,22,11,11,11,12,88,82,11,11,11,22,22,20,00,00,00
	FCB	00,00,00,00,00,00,43,22,22,11,11,11,12,88,88,88,21,11,11,12,22,22,00,00,00
	FCB	00,00,00,00,00,43,22,22,21,11,11,11,28,88,88,88,21,11,11,12,22,22,20,00,00
	FCB	00,00,00,00,43,22,22,21,11,11,11,12,88,88,88,88,82,11,11,11,22,22,23,00,00
	FCB	00,00,00,53,22,22,22,11,11,11,11,28,88,88,88,88,82,11,11,11,22,22,22,30,00
	FCB	00,00,04,32,22,22,11,11,11,11,12,22,22,22,22,22,22,21,11,11,22,22,22,20,00
	FCB	00,05,33,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,23,00
	FCB	00,53,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,22,00
	FCB	04,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,22,40
	FCB	42,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,30
	FCB	32,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,20

BIKE_FRONT_L2
	FCB	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,43,21,11,11,11,13,00,00,00,00,00
	FCB	00,00,00,00,00,00,00,00,00,00,00,00,05,42,21,11,11,11,11,11,11,23,00,00,00,00
	FCB	00,00,00,00,00,00,00,00,00,00,05,43,22,11,11,11,12,81,11,11,12,22,30,00,00,00
	FCB	00,00,00,00,00,00,00,00,00,53,22,11,11,11,11,12,88,81,11,11,12,22,23,00,00,00
	FCB	00,00,00,00,00,00,00,05,42,21,11,11,11,11,12,88,88,81,11,11,12,22,22,30,00,00
	FCB	00,00,00,00,00,00,54,22,22,11,11,11,11,12,88,88,88,21,11,11,12,22,22,24,00,00
	FCB	00,00,00,00,00,54,22,22,11,11,11,11,12,88,88,88,88,21,11,11,12,22,22,22,00,00
	FCB	00,00,00,00,54,22,22,11,11,11,11,12,88,88,88,88,82,11,11,11,12,22,22,22,40,00
	FCB	00,00,00,54,22,22,11,11,11,11,11,22,22,22,22,22,22,11,11,11,22,22,22,22,20,00
	FCB	00,00,54,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,22,24,00
	FCB	00,54,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,22,23,00
	FCB	04,32,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,22,23,50
	FCB	32,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,22,22,23,60
	FCB	22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,22,22,23,60

BIKE_FRONT_R1
	FCB	00,00,00,00,00,03,11,11,11,11,11,23,00,00,00,00,00,00,00,00,00,00,00,00,00
	FCB	00,00,00,00,53,22,11,11,11,21,11,11,11,23,50,00,00,00,00,00,00,00,00,00,00
	FCB	00,00,00,03,22,21,11,11,12,88,21,11,11,12,22,34,00,00,00,00,00,00,00,00,00
	FCB	00,00,00,22,22,21,11,11,12,88,82,11,11,11,12,22,33,50,00,00,00,00,00,00,00
	FCB	00,00,02,22,22,11,11,11,28,88,88,82,11,11,11,12,22,23,40,00,00,00,00,00,00
	FCB	00,00,22,22,22,11,11,11,28,88,88,88,21,11,11,11,22,22,23,40,00,00,00,00,00
	FCB	00,03,22,22,21,11,11,12,88,88,88,88,82,11,11,11,11,22,22,23,40,00,00,00,00
	FCB	00,32,22,22,21,11,11,12,88,88,88,88,88,21,11,11,11,12,22,22,23,50,00,00,00
	FCB	00,22,22,22,21,11,11,22,22,22,22,22,22,22,11,11,11,11,12,22,22,34,00,00,00
	FCB	03,22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,23,35,00,00
	FCB	02,22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,23,50,00
	FCB	42,22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,24,00
	FCB	32,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,22,40
	FCB	22,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,30

BIKE_FRONT_R2
	FCB	00,00,00,00,03,11,11,11,11,23,40,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
	FCB	00,00,00,03,21,11,11,11,11,11,11,22,45,00,00,00,00,00,00,00,00,00,00,00,00,00
	FCB	00,00,00,32,22,11,11,11,82,11,11,11,12,23,45,00,00,00,00,00,00,00,00,00,00,00
	FCB	00,00,03,22,22,11,11,11,88,82,11,11,11,11,12,23,50,00,00,00,00,00,00,00,00,00
	FCB	00,00,32,22,22,11,11,11,88,88,82,11,11,11,11,11,22,45,00,00,00,00,00,00,00,00
	FCB	00,04,22,22,22,11,11,11,28,88,88,82,11,11,11,11,12,22,24,50,00,00,00,00,00,00
	FCB	00,02,22,22,22,11,11,11,28,88,88,88,82,11,11,11,11,12,22,24,50,00,00,00,00,00
	FCB	00,42,22,22,22,11,11,11,12,88,88,88,88,82,11,11,11,11,12,22,24,50,00,00,00,00
	FCB	00,22,22,22,22,21,11,11,12,22,22,22,22,22,21,11,11,11,11,12,22,24,50,00,00,00
	FCB	04,22,22,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,24,50,00,00
	FCB	03,22,22,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,12,22,24,50,00
	FCB	53,22,22,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,34,00
	FCB	63,22,22,22,22,21,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,22,30
	FCB	63,22,22,22,22,22,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,22,20