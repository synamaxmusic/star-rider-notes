;asl star_rider_phrases.asm -o star_rider_phrases.p
;p2bin star_rider_phrases.p star_rider_phrases.bin -r $4000-$7FFF

	CPU	6809

;* repeat
RPT	MACRO	COUNT,P1,P2,P3,P4,P5,P6,P7,P8,P9,{NOEXPAND}	;;Fixme was: RPT MACRO	COUNT,P1,P2,P3,P4,P5,P6,P7,P8,P9
;	NLIST							;;(using {NOEXPAND} to not make this show up in the listing)
	REPT	COUNT
	IRP	INST, P1,P2,P3,P4,P5,P6,P7,P8,P9		;;Fixme was: IRP INST,<<P1>,<P2>,<P3>,<P4>,<P5>,<P6>,<P7>,<P8>,<P9>>
	INST
	ENDM							;;Fixme was: ENDR
	ENDM							;;Fixme was: ENDR
;	LIST
	ENDM


CEND	EQU	$80	;;Fixme was: END EQU $80 (had to rename)
C0	EQU	$00
C1	EQU	$01
C2	EQU	$02
C3	EQU	$03
C4	EQU	$04
C5	EQU	$05
C6	EQU	$06
C7	EQU	$07
C8	EQU	$08
C9	EQU	$09
CSPC	EQU	$0A
CA	EQU	$0B
CB	EQU	$0C
CC	EQU	$0D
CD	EQU	$0E
CE	EQU	$0F
CF	EQU	$10
CG	EQU	$11
CH	EQU	$12
CI	EQU	$13
CJ	EQU	$14
CK	EQU	$15
CL	EQU	$16
CM	EQU	$17
CN	EQU	$18
CO	EQU	$19
CP	EQU	$1A
CQ	EQU	$1B
CR	EQU	$1C
CS	EQU	$1D
CT	EQU	$1E
CU	EQU	$1F
CV	EQU	$20
CW	EQU	$21
CX	EQU	$22
CY	EQU	$23
CZ	EQU	$24
CBARRW	EQU	$25
CEQU	EQU	$26
CDASH	EQU	$27	;;Fixme was: CDSH  EQU  $27 (Renaming so MICA/ZZATTRAC.ASM can use this)
CQUE	EQU	$28
CEXC	EQU	$29
CBRKL	EQU	$2A
CBRKR	EQU	$2B
CSQOT	EQU	$2C
CCMMA	EQU	$2D
CPER	EQU	$2E

;**** OFFSETS FOR SMALL FONT SPECIAL ****
CTHOU	EQU	$2F	;SMALL FONT ONLY!!!!
CCURSR	EQU	$30

;**** OFFSETS FOR LARGE FONT SPECIAL ****
CSLSH	EQU	$2F
CAMP	EQU	$30
CDQOT	EQU	$31
CCOLN	EQU	$32
CCURS	EQU	$33
CCNARW	EQU	$34


;*****	TEXT EQUATES   *****

TXROMK	EQU	$00     ;'ALL ROMS OK','RAM TEST FOLLOWS','PRESS ADVANCE TO EXIT'
TXRAMK	EQU	$01	;'NO RAM ERRORS DETECTED'
TXCMOK	EQU	$02	;'NO CMOS RAM ERRORS DETECTED'
TXCMER	EQU	$03	;'CMOS RAM ERROR'
TXCMDR	EQU	$04	;'CMOS RAM ERROR','OR WRITE PROTECT FAILURE','.....'
TXCMT	EQU	$05	;'COLOR RAM TEST','VERTICAL BARS INDICATE ERROR'
TXSWTS	EQU	$06	;'SWITCH TEST'
TXBOOK	EQU	$07	;'BOOKKEEPING TOTALS'
TXADJT	EQU	$08	;'GAME ADJUSTMENTS'
TXBADJ	EQU	$09	;'USE 'MOVE' TO SELECT ADJUSTMENT'
;*			;'USE 'CREDIT' BUTTONS TO CHANGE THE VALUE'
;*			;'PRESS ADVANCE TO EXIT'
TXIMES	EQU	$0A	;'ADJUSTMENT FAILURE'
;*			;'RESTORE FACTORY SETTINGS'
;*			;'BY OPENING FRONT DOOR OR TABLE TOP'
;*			;'AND TURNING GAME ON AND OFF'
TXREST	EQU	$0B	;'FACTORY SETTINGS RESTORED'
TXBKRS	EQU	$0C	;'BOOKKEEPING TOTALS CLEARED'
TXRESM	EQU	$0D	;'HIGH SCORE TABLE RESET'

;;==============================================================================

	CODEPAGE WILLIASCII
	CHARSET '0',$00
	CHARSET '1',$01
	CHARSET '2',$02
	CHARSET '3',$03
	CHARSET '4',$04
	CHARSET '5',$05
	CHARSET '6',$06
	CHARSET '7',$07
	CHARSET '8',$08
	CHARSET '9',$09
	CHARSET '\32',$0A	;;Space
	CHARSET 'A',$0B
	CHARSET 'B',$0C
	CHARSET 'C',$0D
	CHARSET 'D',$0E
	CHARSET 'E',$0F
	CHARSET 'F',$10
	CHARSET 'G',$11
	CHARSET 'H',$12
	CHARSET 'I',$13
	CHARSET 'J',$14
	CHARSET 'K',$15
	CHARSET 'L',$16
	CHARSET 'M',$17
	CHARSET 'N',$18
	CHARSET 'O',$19
	CHARSET 'P',$1A
	CHARSET 'Q',$1B
	CHARSET 'R',$1C
	CHARSET 'S',$1D
	CHARSET 'T',$1E
	CHARSET 'U',$1F
	CHARSET 'V',$20
	CHARSET 'W',$21
	CHARSET 'X',$22
	CHARSET 'Y',$23
	CHARSET 'Z',$24
;	CHARSET 'CBARRW'	EQU	$25
	CHARSET '=',$26
	CHARSET '-',$27
	CHARSET '?',$28
	CHARSET '!',$29
	CHARSET '(',$2A
	CHARSET ')',$2B
	CHARSET '\H',$2C	;;Apostrophe
	CHARSET ',',$2D
	CHARSET '.',$2E
	
;; These are new for Star Rider	

;**** OFFSETS FOR LARGE FONT SPECIAL ****
	CHARSET '/',$2F
	CHARSET '&',$30
	CHARSET '"',$31
	CHARSET ':',$32
	CHARSET '_',$33
;CCNARW	EQU	$34


	CHARSET '\58',$32	;;Colon
	
;;==============================================================================

	RADIX	16

HS_0		EQU	C000
HS_1		EQU	C015
HS_2		EQU	C023
HS_3		EQU	C038
HS_4		EQU	C04D
HS_5		EQU	C062
HS_6		EQU	C070
HS_7		EQU	C085
HS_8		EQU	C093
HS_9		EQU	C0A8
HS_A		EQU	C0C0
HS_AMP		EQU	C38C
HS_B		EQU	C0D5
HS_BRKL		EQU	C31A
HS_BRKR		EQU	C328
HS_C		EQU	C0EA
HS_SQOT		EQU	C365
HS_COLN		EQU	C3A7
HS_D		EQU	C0FF
HS_DASH		EQU	C35D
HS_DQOT		EQU	C3A1
HS_E		EQU	C114
HS_EQU		EQU	C353
HS_EXC		EQU	C313
HS_F		EQU	C129
HS_G		EQU	C13E
HS_H		EQU	C153
HS_I		EQU	C168
HS_J		EQU	C176
HS_K		EQU	C18B
HS_L		EQU	C1A0
HS_LEFT_ARROW	EQU	C33E
HS_M		EQU	C1B5
HS_N		EQU	C1D1
HS_O		EQU	C1E6
HS_P		EQU	C202
HS_PER		EQU	C369
HS_Q		EQU	C21E
HS_QUE		EQU	C305
HS_R		EQU	C23A
HS_S		EQU	C24F
HS_SLASH	EQU	C370
HS_SPC		EQU	C0BD
HS_CMMA		EQU	C336
HS_T		EQU	C264
HS_U		EQU	C279
HS_UNDERSCORE	EQU	C3AC
HS_UP_ARROW	EQU	C3C4
HS_V		EQU	C28E
HS_W		EQU	C2AA
HS_X		EQU	C2C6
HS_Y		EQU	C2DB
HS_Z		EQU	C2F0

L0		EQU	C7BB
L1		EQU	C7DB
L2		EQU	C7FB
L3		EQU	C81B
L4		EQU	C83B
L5		EQU	C85B
L6		EQU	C87B
L7		EQU	C89B
L8		EQU	C8BB
L9		EQU	C8DB
LA		EQU	C91B
LAMP		EQU	CD08
LB		EQU	C93B
LBRKL		EQU	CC7F
LBRKR		EQU	CC8D
LC		EQU	C95B
LCD_0		EQU	C5AB
LCD_1		EQU	C5D7
LCD_2		EQU	C603
LCD_3		EQU	C62F
LCD_4		EQU	C65B
LCD_5		EQU	C687
LCD_6		EQU	C6B3
LCD_7		EQU	C6DF
LCD_8		EQU	C70B
LCD_9		EQU	C737
LCD_SPC		EQU	C763
LCD_UNDERSCORE	EQU	C78F
LCMMA		EQU	CC9B
LCOLN		EQU	CD23
LD		EQU	C97B
LDQOT		EQU	CD1D
LDSH		EQU	CCD0
LE		EQU	C99B
LEQU		EQU	CCC6
LEXC		EQU	CC6F
LF		EQU	C9BB
LG		EQU	C9DB
LH		EQU	C9FB
LI		EQU	CA1B
LJ		EQU	CA2B
LK		EQU	CA4B
LL		EQU	CA6B
LM		EQU	CA8B
LN		EQU	CAB3
LO		EQU	CAD3
LP		EQU	CAF3
LPER		EQU	CCDC
LQ		EQU	CB13
LQUE		EQU	CC5F
LR		EQU	CB37
LS		EQU	CB57
LSLSH		EQU	CCEC
LSPC		EQU	C8FB
LSQOT		EQU	CCD8
LT		EQU	CB77
LU		EQU	CB97
LV		EQU	CBB7
LW		EQU	CBD7
LX		EQU	CBFF
LY		EQU	CC1F
LZ		EQU	CC3F
L_LEFT_ARROW	EQU	CCB1
L_UNDERSCORE	EQU	CD2D
L_UP_ARROW	EQU	CD45
S0		EQU	C3D9
S1		EQU	C3E3
S2		EQU	C3ED
S3		EQU	C3F7
S4		EQU	C401
S5		EQU	C40B
S6		EQU	C415
S7		EQU	C41F
S8		EQU	C429
S9		EQU	C433
SA		EQU	C447
SB		EQU	C451
SBRKL		EQU	C568
SBRKR		EQU	C572
SC		EQU	C45B
SCMMA		EQU	C57E
SCOLON		EQU	C5A6
SD		EQU	C465
SDSH		EQU	C553
SE		EQU	C46F
SEQU		EQU	C54B
SEXC		EQU	C563
SF		EQU	C479
SG		EQU	C483
SH		EQU	C48D
SI		EQU	C497
SJ		EQU	C4A1
SK		EQU	C4AB
SL		EQU	C4B5
SM		EQU	C4BF
SN		EQU	C4CE
SP		EQU	C4D8
SPER		EQU	C583
SQ		EQU	C4E2
SQUE		EQU	C559
SR		EQU	C4EC
SSLSH		EQU	C588
SSPC		EQU	C43D
SSQOT		EQU	C57C
ST		EQU	C4F6
SU		EQU	C500
SV		EQU	C50A
SW		EQU	C514
SX		EQU	C523
SY		EQU	C52D
SZ		EQU	C537
S_LEFT_ARROW	EQU	C541
S_RIGHT_ARROW	EQU	C597	


;
;  Pointers to Font sprite descriptors
;

	ORG	5F7A
	
	FDB	_HS_0		;00
	FDB	_HS_1           ;01
	FDB	_HS_2           ;02
	FDB	_HS_3           ;03
	FDB	_HS_4           ;04
	FDB	_HS_5           ;05
	FDB	_HS_6           ;06
	FDB	_HS_7           ;07
	FDB	_HS_8           ;08
	FDB	_HS_9           ;09
	FDB	_HS_SPC         ;0A
	FDB	_HS_A           ;0B
	FDB	_HS_B           ;0C
	FDB	_HS_C           ;0D
	FDB	_HS_D           ;0E
	FDB	_HS_E           ;0F
	FDB	_HS_F           ;10
	FDB	_HS_G           ;11
	FDB	_HS_H           ;12
	FDB	_HS_I           ;13
	FDB	_HS_J           ;14
	FDB	_HS_K           ;15
	FDB	_HS_L           ;16
	FDB	_HS_M           ;17
	FDB	_HS_N           ;18
	FDB	_HS_O           ;19
	FDB	_HS_P           ;1A
	FDB	_HS_Q           ;1B
	FDB	_HS_R           ;1C
	FDB	_HS_S           ;1D
	FDB	_HS_T           ;1E
	FDB	_HS_U           ;1F
	FDB	_HS_V           ;20
	FDB	_HS_W           ;21
	FDB	_HS_X           ;22
	FDB	_HS_Y           ;23
	FDB	_HS_Z           ;24
	
	FDB	_HS_LEFT_ARROW	;25
	FDB	_HS_EQU		;26
	FDB	_HS_DASH	;27
	FDB	_HS_QUE		;28
	FDB	_HS_EXC		;29
	FDB	_HS_BRKL	;2A
	FDB	_HS_BRKR	;2B
	FDB	_HS_SQOT	;2C
	FDB	_HS_CMMA	;2D
	FDB	_HS_PER		;2E
	FDB	_HS_SLASH	;2F
	FDB	_HS_AMP		;30
	FDB	_HS_DQOT	;31
	FDB	_HS_COLN	;32
	FDB	_HS_UNDERSCORE	;33
	FDB	_HS_UP_ARROW	;34
	
	FDB	_L0		;00
	FDB	_L1		;01
	FDB	_L2		;02
	FDB	_L3		;03
	FDB	_L4		;04
	FDB	_L5		;05
	FDB	_L6		;06
	FDB	_L7		;07
	FDB	_L8		;08
	FDB	_L9		;09
	FDB	_LSPC		;0A
	FDB	_LA		;0B
	FDB	_LB		;0C
	FDB	_LC		;0D
	FDB	_LD		;0E
	FDB	_LE		;0F
	FDB	_LF		;10
	FDB	_LG		;11
	FDB	_LH		;12
	FDB	_LI		;13
	FDB	_LJ		;14
	FDB	_LK		;15
	FDB	_LL		;16
	FDB	_LM		;17
	FDB	_LN		;18
	FDB	_LO		;19
	FDB	_LP		;1A
	FDB	_LQ		;1B
	FDB	_LR		;1C
	FDB	_LS		;1D
	FDB	_LT		;1E
	FDB	_LU		;1F
	FDB	_LV		;20
	FDB	_LW		;21
	FDB	_LX		;22
	FDB	_LY		;23
	FDB	_LZ		;24
	
	FDB	_L_LEFT_ARROW	;25
	FDB	_LEQU		;26
	FDB	_LDSH		;27
	FDB	_LQUE		;28
	FDB	_LEXC		;29
	FDB	_LBRKL		;2A
	FDB	_LBRKR		;2B
	FDB	_LSQOT		;2C
	FDB	_LCMMA		;2D
	FDB	_LPER		;2E
	FDB	_LSLSH		;2F
	FDB	_LAMP		;30
	FDB	_LDQOT		;31
	FDB	_LCOLN		;32
	FDB	_L_UNDERSCORE	;33
	FDB	_L_UP_ARROW	;34
	
	FDB	_S0		;00
	FDB	_S1		;01
	FDB	_S2		;02
	FDB	_S3		;03
	FDB	_S4		;04
	FDB	_S5		;05
	FDB	_S6		;06
	FDB	_S7		;07
	FDB	_S8		;08
	FDB	_S9		;09
	FDB	_SSPC		;0A
	FDB	_SA		;0B
	FDB	_SB		;0C
	FDB	_SC		;0D
	FDB	_SD		;0E
	FDB	_SE		;0F
	FDB	_SF		;10
	FDB	_SG		;11
	FDB	_SH		;12
	FDB	_SI		;13
	FDB	_SJ		;14
	FDB	_SK		;15
	FDB	_SL		;16
	FDB	_SM		;17
	FDB	_SN		;18
	FDB	_S0		;19 	; reuses S0, there is no "SO".
	FDB	_SP		;1A
	FDB	_SQ		;1B
	FDB	_SR		;1C
	FDB	_S5		;1D 	; reuses S5, there is no "SS".
	FDB	_ST		;1E
	FDB	_SU		;1F
	FDB	_SV		;20
	FDB	_SW		;21
	FDB	_SX		;22
	FDB	_SY		;23
	FDB	_SZ		;24
	FDB	_S_LEFT_ARROW	;25
	FDB	_SEQU		;26	
	FDB	_SDSH		;27	
	FDB	_SQUE		;28	
	FDB	_SEXC		;29	
	FDB	_SBRKL		;2A	
	FDB	_SBRKR		;2B	
	FDB	_SSQOT		;2C	
	FDB	_SCMMA		;2D	
	FDB	_SPER		;2E	
	FDB	_SSLSH		;2F
	FDB	_SPER		;30		;; Period is duplicated	
	FDB	_SPER		;31		;; Period is duplicated	
	FDB	_SCOLON		;32
	FDB	_SPER		;33		;; Period is duplicated	
	FDB	_S_RIGHT_ARROW	;34	

;	FDB	_SAMP		;N/A	
;	FDB	_SDQOT		;N/A	
;	FDB	_S_UP_ARROW	;N/A	
	
	FDB	_LCD_0
	FDB	_LCD_1
	FDB	_LCD_2
	FDB	_LCD_3
	FDB	_LCD_4
	FDB	_LCD_5
	FDB	_LCD_6
	FDB	_LCD_7
	FDB	_LCD_8
	FDB	_LCD_9
	FDB	_LCD_SPC
	
	RADIX	10
	
	RPT	42,FDB	_LCD_UNDERSCORE		;; write 42 instances of pointer to LCD_UNDERSCORE
	
	RADIX	16

;
;  Font sprite descriptors
;

NULL	EQU	$FFFF

	ORG	6122

_HS_0
	FCB	37
	FDB	HS_0

_HS_1
	FCB	27
	FDB	HS_1

_HS_2
	FCB	37
	FDB	HS_2
	
_HS_3
	FCB	37
	FDB	HS_3
	
_HS_4
	FCB	37
	FDB	HS_4
	
_HS_5	
	FCB	27
	FDB	HS_5

_HS_6	
	FCB	37
	FDB	HS_6

_HS_7
	FCB	27
	FDB	HS_7

_HS_8
	FCB	37
	FDB	HS_8

_HS_9
	FCB	37
	FDB	HS_9

_HS_SPC
	FCB	31
	FDB	HS_SPC

_HS_A
	FCB	37
	FDB	HS_A

_HS_B
	FCB	37
	FDB	HS_B

_HS_C
	FCB	37
	FDB	HS_C

_HS_D
	FCB	37
	FDB	HS_D

_HS_E
	FCB	37
	FDB	HS_E

_HS_F
	FCB	37
	FDB	HS_F

_HS_G
	FCB	37
	FDB	HS_G

_HS_H
	FCB	37
	FDB	HS_H

_HS_I
	FCB	27
	FDB	HS_I

_HS_J
	FCB	37
	FDB	HS_J

_HS_K
	FCB	37
	FDB	HS_K

_HS_L
	FCB	37
	FDB	HS_L

_HS_M
	FCB	47
	FDB	HS_M

_HS_N
	FCB	37
	FDB	HS_N

_HS_O
	FCB	47
	FDB	HS_O

_HS_P
	FCB	47
	FDB	HS_P

_HS_Q
	FCB	47
	FDB	HS_Q

_HS_R
	FCB	37
	FDB	HS_R

_HS_S
	FCB	37
	FDB	HS_S

_HS_T
	FCB	37
	FDB	HS_T

_HS_U
	FCB	37
	FDB	HS_U

_HS_V
	FCB	47
	FDB	HS_V

_HS_W
	FCB	47
	FDB	HS_W

_HS_X
	FCB	37
	FDB	HS_X

_HS_Y
	FCB	37
	FDB	HS_Y

_HS_Z
	FCB	37
	FDB	HS_Z

_HS_QUE
	FCB	27
	FDB	HS_QUE

_HS_EXC
	FCB	17
	FDB	HS_EXC

_HS_BRKL
	FCB	27
	FDB	HS_BRKL

_HS_BRKR
	FCB	27
	FDB	HS_BRKR

_HS_CMMA
	FCB	24
	FDB	HS_CMMA

_HS_LEFT_ARROW
	FCB	37
	FDB	HS_LEFT_ARROW

_HS_EQU
	FCB	25
	FDB	HS_EQU

_HS_DASH
	FCB	24
	FDB	HS_DASH

_HS_SQOT
	FCB	22
	FDB	HS_SQOT

_HS_PER
	FCB	17
	FDB	HS_PER

_HS_SLASH
	FCB	37
	FDB	HS_SLASH

_HS_AMP
	FCB	37
	FDB	HS_AMP

_HS_DQOT
	FCB	32
	FDB	HS_DQOT

_HS_COLN
	FCB	15
	FDB	HS_COLN

_HS_UNDERSCORE
	FCB	38
	FDB	HS_UNDERSCORE

_HS_UP_ARROW
	FCB	37
	FDB	HS_UP_ARROW

_S0
	FCB	25
	FDB	S0

_S1
	FCB	25
	FDB	S1

_S2
	FCB	25
	FDB	S2

_S3
	FCB	25
	FDB	S3

_S4
	FCB	25
	FDB	S4

_S5
	FCB	25
	FDB	S5

_S6
	FCB	25
	FDB	S6

_S7
	FCB	25
	FDB	S7

_S8
	FCB	25
	FDB	S8

_S9
	FCB	25
	FDB	S9

_SSPC
	FCB	25
	FDB	SSPC

_SA
	FCB	25
	FDB	SA

_SB
	FCB	25
	FDB	SB

_SC
	FCB	25
	FDB	SC

_SD
	FCB	25
	FDB	SD
	
_SE
	FCB	25
	FDB	SE

_SF
	FCB	25
	FDB	SF

_SG
	FCB	25
	FDB	SG

_SH
	FCB	25
	FDB	SH

_SI
	FCB	25
	FDB	SI

_SJ
	FCB	25
	FDB	SJ

_SK
	FCB	25
	FDB	SK

_SL
	FCB	25
	FDB	SL

_SM
	FCB	35
	FDB	SM

_SN
	FCB	25
	FDB	SN

_SP
	FCB	25
	FDB	SP

_SQ
	FCB	25
	FDB	SQ

_SR
	FCB	25
	FDB	SR

_ST
	FCB	25
	FDB	ST

_SU
	FCB	25
	FDB	SU

_SV
	FCB	25
	FDB	SV

_SW
	FCB	35
	FDB	SW

_SX
	FCB	25
	FDB	SX

_SY
	FCB	25
	FDB	SY

_SZ
	FCB	25
	FDB	SZ

_S_LEFT_ARROW
	FCB	25
	FDB	S_LEFT_ARROW

_SEQU
	FCB	24
	FDB	SEQU

_SDSH
	FCB	23
	FDB	SDSH

_SQUE
	FCB	25
	FDB	SQUE

_SEXC
	FCB	15
	FDB	SEXC

_SBRKL
	FCB	25
	FDB	SBRKL

_SBRKR
	FCB	25
	FDB	SBRKR

_SSQOT
	FCB	12
	FDB	SSQOT

_SCMMA
	FCB	15
	FDB	SCMMA

_SPER
	FCB	15
	FDB	SPER

_SSLSH
	FCB	35
	FDB	SSLSH

_S_RIGHT_ARROW
	FCB	35
	FDB	S_RIGHT_ARROW

_SCOLON
	FCB	15
	FDB	SCOLON

_LCD_0
	FCB	4B
	FDB	LCD_0

_LCD_1
	FCB	4B
	FDB	LCD_1

_LCD_2
	FCB	4B
	FDB	LCD_2

_LCD_3
	FCB	4B
	FDB	LCD_3

_LCD_4
	FCB	4B
	FDB	LCD_4

_LCD_5
	FCB	4B
	FDB	LCD_5

_LCD_6
	FCB	4B
	FDB	LCD_6

_LCD_7
	FCB	4B
	FDB	LCD_7

_LCD_8
	FCB	4B
	FDB	LCD_8

_LCD_9
	FCB	4B
	FDB	LCD_9

_LCD_SPC
	FCB	4B
	FDB	LCD_SPC

_LCD_UNDERSCORE
	FCB	4B
	FDB	LCD_UNDERSCORE

_L0
	FCB	48
	FDB	L0

_L1
	FCB	48
	FDB	L1

_L2
	FCB	48
	FDB	L2

_L3
	FCB	48
	FDB	L3

_L4
	FCB	48
	FDB	L4

_L5
	FCB	48
	FDB	L5

_L6
	FCB	48
	FDB	L6

_L7
	FCB	48
	FDB	L7

_L8
	FCB	48
	FDB	L8

_L9
	FCB	48
	FDB	L9

_LSPC
	FCB	48
	FDB	LSPC

_LA
	FCB	48
	FDB	LA

_LB
	FCB	48
	FDB	LB

_LC
	FCB	48
	FDB	LC

_LD
	FCB	48
	FDB	LD

_LE
	FCB	48
	FDB	LE

_LF
	FCB	48
	FDB	LF

_LG
	FCB	48
	FDB	LG

_LH
	FCB	48
	FDB	LH

_LI
	FCB	28
	FDB	LI

_LJ
	FCB	48
	FDB	LJ

_LK
	FCB	48
	FDB	LK

_LL
	FCB	48
	FDB	LL

_LM
	FCB	58
	FDB	LM

_LN
	FCB	48
	FDB	LN

_LO
	FCB	48
	FDB	LO

_LP
	FCB	48
	FDB	LP

_LQ
	FCB	48
	FDB	LQ

_LR
	FCB	48
	FDB	LR

_LS
	FCB	48
	FDB	LS

_LT
	FCB	48
	FDB	LT

_LU
	FCB	48
	FDB	LU

_LV
	FCB	48
	FDB	LV

_LW
	FCB	58
	FDB	LW

_LX
	FCB	48
	FDB	LX

_LY
	FCB	48
	FDB	LY

_LZ
	FCB	48
	FDB	LZ

_LQUE
	FCB	28
	FDB	LQUE

_LEXC
	FCB	28
	FDB	LEXC

_LBRKL
	FCB	27
	FDB	LBRKL

_LBRKR
	FCB	27
	FDB	LBRKR

_LCMMA
	FCB	2B
	FDB	LCMMA

_L_LEFT_ARROW
	FCB	37
	FDB	L_LEFT_ARROW

_LEQU
	FCB	25
	FDB	LEQU

_LDSH
	FCB	24
	FDB	LDSH

_LSQOT
	FCB	22
	FDB	LSQOT

_LPER
	FCB	28
	FDB	LPER

_LSLSH
	FCB	47
	FDB	LSLSH

_LAMP
	FCB	37
	FDB	LAMP

_LDQOT
	FCB	32
	FDB	LDQOT

_LCOLN
	FCB	25
	FDB	LCOLN

_L_UNDERSCORE
	FCB	38
	FDB	L_UNDERSCORE

_L_UP_ARROW
	FCB	37
	FDB	L_UP_ARROW

;;==============================================================================
;
;	PPPP   H   H  RRRR    AAA    SSSS  EEEEE   SSSS	
;	P   P  H   H  R   R  A   A  S      E      S    	
;	PPPP   HHHHH  RRRR   AAAAA   SSS   EEEE    SSS 
;	P      H   H  R   R  A   A      S  E          S
;	P      H   H  R   R  A   A  SSSS   EEEEE  SSSS 
;
	
;	ORG	6314

	RADIX	10
	
	CODEPAGE WILLIASCII
	
	FCC	"I AM THE ROBOFFICIAL"
	RORG 	-1
	FCB 	CL+CEND
	
	FCC	"AND THIS IS THE COSMOTRACK"
	RORG 	-1
	FCB 	CK+CEND
	
	FCC	"ITS FORCE FIELD"
	RORG 	-1
	FCB 	CD+CEND
	
	FCC	"AND ITS WARNING TRACK"
	RORG 	-1
	FCB 	CK+CEND

	FCC	"THE COSMOTRACK TAKES YOU"
	RORG 	-1
	FCB 	CU+CEND
	
	FCC	"TO STRANGE FAR AWAY PLANETS"
	RORG 	-1
	FCB 	CS+CEND
	
	FCC	"LIKE CUBITANIA"
	RORG 	-1
	FCB 	CA+CEND
	
	FCC	"EVERY PLANET HAS ITS OWN"
	RORG 	-1
	FCB 	CN+CEND
	
	FCC	"TWISTS, TURNS AND SURPRISES"		;(commas look like periods?)
	RORG 	-1
	FCB 	CS+CEND	
	
	FCC	"STALACTIA - THE CAVE PLANET"
	RORG 	-1
	FCB 	CT+CEND
	
	FCC	"YOU WILL RACE AGAINST:"
	RORG 	-1
	FCB 	CCOLN+CEND
	
	FCC	"THUNDERBOLT,"				;(yup, commas look like periods in-game)
	RORG 	-1
	FCB 	CCMMA+CEND
	
	FCC	"THE COSMIC CHAMPION."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"SIDEWINDER,"
	RORG 	-1
	FCB 	CCMMA+CEND
	
	FCC	"THE SNAKEY ONE."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"RED HAWK,"
	RORG 	-1
	FCB 	CCMMA+CEND
	
	FCC	"DIFFICULT TO PASS"
	RORG 	-1
	FCB 	CS+CEND
	
	FCC	"GOLD JET,"
	RORG 	-1
	FCB 	CCMMA+CEND
	
	FCC	"ROOKIE OF THE YEAR."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"KEEP AN EYE ON"
	RORG 	-1
	FCB 	CN+CEND
	
	FCC	"YOUR REAR VIEW TOO!"
	RORG 	-1
	FCB 	CEXC+CEND
	
	FCC	"THE TRACK IS FULL OF OBSTACLES"
	RORG 	-1
	FCB 	CS+CEND

	FCC	"WATCH OUT FOR THEM."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"I GRANT YOU ANOTHER LIFE"
	RORG 	-1
	FCB 	CE+CEND
	
	FCC	"TWIST RIGHT HANDLE DOWN"
	RORG 	-1
	FCB 	CN+CEND
	
	FCC	"FOR MORE ACCELERATION POWER."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"ON LEFT HANDLE:"		;;Displays with next four phrases
	RORG 	-1
	FCB 	CCOLN+CEND
	
	FCC	"PRESS TURBO IN FRONT"
	RORG 	-1
	FCB 	CT+CEND
	
	FCC	"FOR MAXIMUM SPEED."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"SQUEEZE BACK BUTTON"
	RORG 	-1
	FCB 	CN+CEND

	FCC	"TO BRAKE."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"YOU MUST ALWAYS WIN"
	RORG 	-1
	FCB 	CN+CEND

	FCC	"TO AVOID ENTRY FEES."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"IF YOU WIN"
	RORG 	-1
	FCB 	CN+CEND

	FCC	"YOU ARE A STAR RIDER!"
	RORG 	-1
	FCB 	CEXC+CEND

	FCC	"ANOTHER MORTAL"
	RORG 	-1
	FCB 	CL+CEND

	FCC	"OVER & OUT"				;used alongside "I AM THE ROBOFFICIAL"
	RORG 	-1
	FCB 	CT+CEND
	
	FCC	"THE RACE IS OVER, YOU WERE LAST."	;this displays with comma correctly when next line starts: https://youtu.be/ecVcA3l6v3E?feature=shared&t=379
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"I WAS READY TO BET MY HALF"
	RORG 	-1
	FCB 	CF+CEND

	FCC	"OF THE UNIVERSE ON YOU!"
	RORG 	-1
	FCB 	CEXC+CEND

	FCC	"COME ON,"
	RORG 	-1
	FCB 	CCMMA+CEND
	
	FCC	"YOU CAN DO BETTER THAN THAT!"
	RORG 	-1
	FCB 	CEXC+CEND
	
	FCC	"BIG CITY TOO MUCH FOR YOU?"
	RORG 	-1
	FCB 	CQUE+CEND

	FCC	"SPACE BUMPKIN?"
	RORG 	-1
	FCB 	CQUE+CEND

	FCC	"HM..."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"IT TOOK A TITAN TO BEAT YOU."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"IF YOU CHOOSE, YOU MAY"
	RORG 	-1
	FCB 	CY+CEND

	FCC	"RE-RACE THIS PLANET-"
	RORG 	-1
	FCB 	CDASH+CEND

	FCC	"YOU CAME IN SECOND."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"YOU MAY CHOOSE"
	RORG 	-1
	FCB 	CE+CEND

	FCC	"TO RACE THE NEXT PLANET-"
	RORG 	-1
	FCB 	CDASH+CEND

	FCC	"YOU'RE WINNING THE FANS"
	RORG 	-1
	FCB 	CS+CEND

	FCC	"IN THE COSMODROME."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	"ACE STAR RIDER!"
	RORG 	-1
	FCB 	CEXC+CEND
	
	FCC	"ALL RIGHT!"
	RORG 	-1
	FCB 	CEXC+CEND

	FCC	"YOU BEAT THE TITANS."
	RORG 	-1
	FCB 	CPER+CEND
	
	FCC	" NEXT RACE FINISH  1 2 3 4 5 "		;;{AS} won't change "2" from $32 to $02
	RORG 	-1
	FCB 	CSPC+CEND
;; {AS} is stupid and won't change the "2" in the string to
;; the correct byte so we're forcing it instead.
PHRFIX	SET	*					;;Let's mark where we're leaving off
	RORG	-8					;;Go back 8 bytes
	FCB	$02					;; Overwrite $32 with $02

	ORG	PHRFIX					;;Go back to where we left off.
;; Leave this here until this bug is fixed.

	FCC	" WELCOME STAR RIDER"
	RORG 	-1
	FCB 	CR+CEND

	FCC	"GET READY"
	RORG 	-1
	FCB 	CY+CEND

	FCC	"LAST"
	RORG 	-1
	FCB 	CT+CEND

	FCC	"FOR THE RIDE OF YOUR LIFE"
	RORG 	-1
	FCB 	CE+CEND

	FCC	"IGNITION START COUNTDOWN"
	RORG 	-1
	FCB 	CN+CEND

	FCC	"YOU CAME IN  1 2 3 4 5 "
	RORG 	-1
	FCB 	CSPC+CEND
;; {AS} is stupid and won't change the "2" in the string to
;; the correct byte so we're forcing it instead.
PHRFIX	SET	*					;;Let's mark where we're leaving off
	RORG	-8					;;Go back 8 bytes
	FCB	$02					;; Overwrite $32 with $02

	ORG	PHRFIX					;;Go back to where we left off.
;; Leave this here until this bug is fixed.

	FCC	"CONGRATULATIONS STAR RIDER"
	RORG 	-1
	FCB 	CR+CEND

	FCC	"YOU CONQUERED CUBITANIA!"
	RORG 	-1
	FCB 	CEXC+CEND
	
	FCC	"CANT HANDLE A FEW OBSTACLES"
	RORG 	-1
	FCB 	CS+CEND

	FCC	"EH? "					;;"Beauty, eh?"
	RORG 	-1
	FCB 	CSPC+CEND

	FCC	"I THINK YOU HAVE THE RIGHT STUFF!"
	RORG 	-1
	FCB 	CEXC+CEND
	
	FCC	"GET A HORSE "
	RORG 	-1
	FCB 	CSPC+CEND

	FCC	"I SALUTE YOU,"
	RORG 	-1
	FCB 	CCMMA+CEND

	FCC	"YOU ARE BOUND FOR THE STARS."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"YOU SEEMED UNBEATABLE"
	RORG 	-1
	FCB 	CE+CEND

	FCC	"WHAT HAPPENED?"
	RORG 	-1
	FCB 	CQUE+CEND

	FCC	"ARE YOU AFRAID OF DARK CAVES?"
	RORG 	-1
	FCB 	CQUE+CEND
	
	FCC	"EXCELLENT! "
	RORG 	-1
	FCB 	CSPC+CEND

	FCC	"I DIDN'T THINK A MORTAL"
	RORG 	-1
	FCB 	CL+CEND

	FCC	"WOULD SURVIVE STALACTIA."
	RORG 	-1
	FCB 	CPER+CEND

	FCC	"NICE TRY---  CUBEHEAD!"
	RORG 	-1
	FCB 	CEXC+CEND
	
	FCC	"THE SUPREME POWERS GRANT YOU"
	RORG 	-1
	FCB 	CU+CEND
	
	FCC	"THE RIGHT TO BUY IN "
	RORG 	-1
	FCB 	CSPC+CEND

	FCC	" 5 4 3 2 1 0 "
	RORG 	-1
	FCB 	CSPC+CEND
;; {AS} is stupid and won't change the "2" in the string to
;; the correct byte so we're forcing it instead.
PHRFIX	SET	*					;;Let's mark where we're leaving off
	RORG	-6					;;Go back 6 bytes
	FCB	$02					;; Overwrite $32 with $02

	ORG	PHRFIX					;;Go back to where we left off.
;; Leave this here until this bug is fixed.

	FCC	"BLAST OFF"
	RORG 	-1
	FCB 	CF+CEND
	
	FCC	"CREDITS: "
	RORG 	-1
	FCB 	CSPC+CEND

	FCC	"SCORE"
	RORG 	-1
	FCB 	CE+CEND

	FCC	"STAR RIDERS"
	RORG 	-1
	FCB 	CS+CEND

	FCC	"GAME OVER"
	RORG 	-1
	FCB 	CR+CEND

;;==============================================================================	
;;
;;  DIAGNOSTIC PHRASES
;;

	FCC	"CUSTOM I.C. FAULT - "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	"DISC FAULT - "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	" SOUND BOARD FAULT"
	RORG 	-1
	FCB 	CT+CEND
	
	FCC	"NOTIFY OPERATOR"
	RORG 	-1
	FCB 	CR+CEND
	
	FCC	"TO PERFORM MAINTENANCE"
	RORG 	-1
	FCB 	CE+CEND
	
	FCC	"TESTING"
	RORG 	-1
	FCB 	CG+CEND
	
INDIC	FCC	"INITIAL TESTS INDICATE"
	RORG 	-1
	FCB 	CE+CEND
	
ALLGO	FCC	"ALL SYSTEMS GO"
	RORG 	-1
	FCB 	CO+CEND

	FCC	"NO "
	RORG 	-1
	FCB 	CSPC+CEND

	FCC	"READ-WRITE "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	"READ ONLY "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	"CMOS "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	"RAM ERRORS "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	"ROM ERRORS "
	RORG 	-1
	FCB 	CSPC+CEND
	
	FCC	"RAM TEST FOLLOWS"
	RORG 	-1
	FCB 	CS+CEND
	
	FCC	"SOUND LINE"
	RORG 	-1
	FCB 	CE+CEND
	

	FCC	"SOUND TEST"
	RORG 	-1
	FCB 	CT+CEND
	
	FCC	"OR WRITE PROTECT CMOS FAILURE"
	RORG 	-1
	FCB 	CE+CEND
	
	FCC	"SWITCH TEST"
	RORG 	-1
	FCB 	CT+CEND
	
	FCC	"AUTO UP"
	RORG 	-1
	FCB 	CP+CEND
	
	FCC	"ADVANCE"
	RORG 	-1
	FCB 	CE+CEND
	
	FCC	"SCORE RESET"
	RORG 	-1
	FCB 	CT+CEND