opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 6446"

opt pagewidth 120

	opt pm

	processor	12F683
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 1 "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\header.h"
	psect config,class=CONFIG,delta=2 ;#
# 1 "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\header.h"
	dw 0x37FF & 0x3BFF & 0x3CFF & 0x3FFF & 0x3FFF & 0x3FDF & 0x3FEF & 0x3FF7 & 0x3FFC ;#
	FNCALL	_main,_Buzzer
	FNCALL	_main,_EepromRead
	FNCALL	_main,_EepromWrite
	FNROOT	_main
	FNCALL	_isr,i1_Buzzer
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_taroltido
	global	_beallitas
	global	_idomeres
	global	_timer2count
	global	_ADCON0
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:
_ADCON0	set	31
	global	_CCP1CON
_CCP1CON	set	21
	global	_CMCON0
_CMCON0	set	25
	global	_GPIO
_GPIO	set	5
	global	_INTCON
_INTCON	set	11
	global	_T2CON
_T2CON	set	18
	global	_GIE
_GIE	set	95
	global	_GPIO0
_GPIO0	set	40
	global	_GPIO1
_GPIO1	set	41
	global	_GPIO2
_GPIO2	set	42
	global	_GPIO3
_GPIO3	set	43
	global	_GPIO4
_GPIO4	set	44
	global	_GPIO5
_GPIO5	set	45
	global	_PEIE
_PEIE	set	94
	global	_TMR2IF
_TMR2IF	set	97
	global	_ANSEL
_ANSEL	set	159
	global	_EEADR
_EEADR	set	155
	global	_EECON2
_EECON2	set	157
	global	_EEDATA
_EEDATA	set	154
	global	_OSCCON
_OSCCON	set	143
	global	_OSCTUNE
_OSCTUNE	set	144
	global	_PR2
_PR2	set	146
	global	_TRISIO
_TRISIO	set	133
	global	_GPPU
_GPPU	set	1039
	global	_RD
_RD	set	1248
	global	_TMR2IE
_TMR2IE	set	1121
	global	_WPU4
_WPU4	set	1196
	global	_WR
_WR	set	1249
	global	_WREN
_WREN	set	1250
	file	"levilagito.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_idomeres:
       ds      2

_timer2count:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_taroltido:
       ds      2

_beallitas:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Buzzer
?_Buzzer:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_Buzzer
?i1_Buzzer:	; 0 bytes @ 0x0
	global	??i1_Buzzer
??i1_Buzzer:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 2 bytes @ 0x0
	ds	3
	global	i1Buzzer@jelszam
i1Buzzer@jelszam:	; 1 bytes @ 0x3
	ds	1
	global	i1Buzzer@i
i1Buzzer@i:	; 1 bytes @ 0x4
	ds	1
	global	??_isr
??_isr:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_Buzzer
??_Buzzer:	; 0 bytes @ 0x0
	global	?_EepromWrite
?_EepromWrite:	; 0 bytes @ 0x0
	global	?_EepromRead
?_EepromRead:	; 2 bytes @ 0x0
	global	EepromWrite@adat
EepromWrite@adat:	; 2 bytes @ 0x0
	ds	2
	global	??_EepromRead
??_EepromRead:	; 0 bytes @ 0x2
	global	??_EepromWrite
??_EepromWrite:	; 0 bytes @ 0x2
	ds	1
	global	Buzzer@jelszam
Buzzer@jelszam:	; 1 bytes @ 0x3
	ds	1
	global	Buzzer@i
Buzzer@i:	; 1 bytes @ 0x4
	ds	1
	global	EepromRead@buffer
EepromRead@buffer:	; 2 bytes @ 0x5
	ds	2
	global	EepromRead@result
EepromRead@result:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      12
;; BANK0           80     11      14
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?_EepromRead	unsigned short  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->i1_Buzzer
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_EepromRead
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     138
;;                                              9 BANK0      2     2      0
;;                             _Buzzer
;;                         _EepromRead
;;                        _EepromWrite
;; ---------------------------------------------------------------------------------
;; (1) _EepromRead                                           9     7      2      48
;;                                              0 BANK0      9     7      2
;; ---------------------------------------------------------------------------------
;; (1) _Buzzer                                               5     5      0      46
;;                                              0 BANK0      5     5      0
;; ---------------------------------------------------------------------------------
;; (1) _EepromWrite                                          2     0      2      44
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _isr                                                  4     4      0     150
;;                                              5 COMMON     4     4      0
;;                           i1_Buzzer
;; ---------------------------------------------------------------------------------
;; (3) i1_Buzzer                                             5     5      0     150
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Buzzer
;;   _EepromRead
;;   _EepromWrite
;;
;; _isr (ROOT)
;;   i1_Buzzer
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      B       E       4       17.5%
;;BANK1               20      0       0       5        0.0%
;;ABS                  0      0      1A       6        0.0%
;;BITBANK1            20      0       0       7        0.0%
;;DATA                 0      0      1F       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Buzzer
;;		_EepromRead
;;		_EepromWrite
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\main.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l1084:	
;main.c: 27: OSCCON = 0b01110001;
	movlw	(071h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	28
;main.c: 28: OSCTUNE = 0b00001111;
	movlw	(0Fh)
	movwf	(144)^080h	;volatile
	line	29
;main.c: 29: TRISIO = 0b00011100;
	movlw	(01Ch)
	movwf	(133)^080h	;volatile
	line	30
	
l1086:	
;main.c: 30: GPIO = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	31
	
l1088:	
;main.c: 31: CCP1CON = 0;
	clrf	(21)	;volatile
	line	32
;main.c: 32: CMCON0 = 7;
	movlw	(07h)
	movwf	(25)	;volatile
	line	33
	
l1090:	
;main.c: 33: ADCON0 = 0;
	clrf	(31)	;volatile
	line	34
	
l1092:	
;main.c: 34: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	35
	
l1094:	
;main.c: 35: GPPU = 1;
	bsf	(1039/8)^080h,(1039)&7
	line	36
	
l1096:	
;main.c: 36: WPU4 = 1;
	bsf	(1196/8)^080h,(1196)&7
	line	37
	
l1098:	
;main.c: 37: INTCON = 0;
	clrf	(11)	;volatile
	line	38
	
l1100:	
;main.c: 38: PEIE = 1;
	bsf	(94/8),(94)&7
	line	39
	
l1102:	
;main.c: 39: GIE = 1;
	bsf	(95/8),(95)&7
	line	45
	
l1104:	
;main.c: 45: PR2 = 125;
	movlw	(07Dh)
	movwf	(146)^080h	;volatile
	line	46
	
l1106:	
;main.c: 46: T2CON = 0b01001111;
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	47
	
l1108:	
;main.c: 47: TMR2IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1121/8)^080h,(1121)&7
	line	48
	
l1110:	
;main.c: 48: PEIE = 1;
	bsf	(94/8),(94)&7
	line	49
	
l1112:	
;main.c: 49: GIE = 1;
	bsf	(95/8),(95)&7
	line	51
	
l1114:	
;main.c: 51: Buzzer(1);
	movlw	(01h)
	fcall	_Buzzer
	line	52
	
l1116:	
;main.c: 52: taroltido = EepromRead();
	fcall	_EepromRead
	movf	(1+(?_EepromRead)),w
	movwf	(_taroltido+1)
	movf	(0+(?_EepromRead)),w
	movwf	(_taroltido)
	line	54
	
l1118:	
;main.c: 54: if(!GPIO3){
	btfsc	(43/8),(43)&7
	goto	u281
	goto	u280
u281:
	goto	l1130
u280:
	line	55
	
l384:	
	btfss	(43/8),(43)&7
	goto	u291
	goto	u290
u291:
	goto	l384
u290:
	line	56
	
l1122:	
;main.c: 56: Buzzer(5);
	movlw	(05h)
	fcall	_Buzzer
	line	57
	
l1124:	
;main.c: 57: taroltido = 0;
	clrf	(_taroltido)
	clrf	(_taroltido+1)
	line	58
	
l1126:	
;main.c: 58: beallitas = 1;
	clrf	(_beallitas)
	incf	(_beallitas),f
	line	59
	
l1128:	
;main.c: 59: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	64
	
l1130:	
;main.c: 64: if(!GPIO4){
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u301
	goto	u300
u301:
	goto	l1148
u300:
	line	65
	
l389:	
	btfss	(44/8),(44)&7
	goto	u311
	goto	u310
u311:
	goto	l389
u310:
	line	66
	
l1134:	
;main.c: 66: Buzzer(1);
	movlw	(01h)
	fcall	_Buzzer
	line	67
	
l1136:	
;main.c: 67: if(!GPIO3){
	btfsc	(43/8),(43)&7
	goto	u321
	goto	u320
u321:
	goto	l1144
u320:
	line	68
	
l393:	
	btfss	(43/8),(43)&7
	goto	u331
	goto	u330
u331:
	goto	l393
u330:
	line	69
	
l1140:	
;main.c: 69: Buzzer(4);
	movlw	(04h)
	fcall	_Buzzer
	line	70
	
l1142:	
;main.c: 70: taroltido = 65535;
	movlw	low(0FFFFh)
	movwf	(_taroltido)
	movlw	high(0FFFFh)
	movwf	((_taroltido))+1
	line	72
	
l1144:	
;main.c: 71: }
;main.c: 72: GPIO1 = 1;
	bsf	(41/8),(41)&7
	line	73
	
l1146:	
;main.c: 73: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	76
	
l1148:	
;main.c: 74: }
;main.c: 76: if(!GPIO2){
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u341
	goto	u340
u341:
	goto	l1168
u340:
	line	77
	
l1150:	
;main.c: 77: if(beallitas){
	movf	(_beallitas),w
	skipz
	goto	u350
	goto	l402
u350:
	line	78
	
l398:	
	btfss	(42/8),(42)&7
	goto	u361
	goto	u360
u361:
	goto	l398
u360:
	
l400:	
	line	79
;main.c: 79: TMR2IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1121/8)^080h,(1121)&7
	line	80
	
l1154:	
;main.c: 80: beallitas = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_beallitas)
	line	81
;main.c: 81: timer2count = 0;
	clrf	(_timer2count)
	line	82
;main.c: 82: idomeres = 0;
	clrf	(_idomeres)
	clrf	(_idomeres+1)
	line	83
	
l1156:	
;main.c: 83: EepromWrite(taroltido);
	movf	(_taroltido+1),w
	movwf	(?_EepromWrite+1)
	movf	(_taroltido),w
	movwf	(?_EepromWrite)
	fcall	_EepromWrite
	line	84
	
l1158:	
;main.c: 84: Buzzer(10);
	movlw	(0Ah)
	fcall	_Buzzer
	line	85
;main.c: 85: }else{
	goto	l1168
	line	86
	
l402:	
	btfss	(42/8),(42)&7
	goto	u371
	goto	u370
u371:
	goto	l402
u370:
	
l404:	
	line	87
;main.c: 87: TMR2IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1121/8)^080h,(1121)&7
	line	88
;main.c: 88: GPIO1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7
	line	89
	
l1160:	
;main.c: 89: taroltido = EepromRead();
	fcall	_EepromRead
	movf	(1+(?_EepromRead)),w
	movwf	(_taroltido+1)
	movf	(0+(?_EepromRead)),w
	movwf	(_taroltido)
	line	90
	
l1162:	
;main.c: 90: timer2count = 0;
	clrf	(_timer2count)
	line	91
	
l1164:	
;main.c: 91: idomeres = 0;
	clrf	(_idomeres)
	clrf	(_idomeres+1)
	line	92
	
l1166:	
;main.c: 92: Buzzer(2);
	movlw	(02h)
	fcall	_Buzzer
	line	95
	
l1168:	
;main.c: 93: }
;main.c: 94: }
;main.c: 95: _delay((unsigned long)((20)*(8000000/4000.0)));
	opt asmopt_off
movlw	52
movwf	((??_main+0)+0+1),f
	movlw	241
movwf	((??_main+0)+0),f
u387:
	decfsz	((??_main+0)+0),f
	goto	u387
	decfsz	((??_main+0)+0+1),f
	goto	u387
	nop2
opt asmopt_on

	goto	l1130
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

psect	maintext
	line	97
	signat	_main,88
	global	_EepromRead
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

;; *************** function _EepromRead *****************
;; Defined at:
;;		line 15 in file "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    7[BANK0 ] unsigned short 
;;  buffer          2    5[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       4       0
;;      Temps:          0       3       0
;;      Totals:         0       9       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text142
	file	"C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
	line	15
	global	__size_of_EepromRead
	__size_of_EepromRead	equ	__end_of_EepromRead-_EepromRead
	
_EepromRead:	
	opt	stack 7
; Regs used in _EepromRead: [wreg+status,2]
	line	18
	
l1062:	
;functions.c: 16: unsigned short buffer;
;functions.c: 17: unsigned short result;
;functions.c: 18: EEADR = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(155)^080h	;volatile
	line	19
	
l1064:	
;functions.c: 19: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	20
	
l1066:	
;functions.c: 20: buffer = EEDATA;
	movf	(154)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EepromRead@buffer)
	clrf	(EepromRead@buffer+1)
	line	21
	
l1068:	
;functions.c: 21: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_EepromRead+0)+0+2),f
movlw	3
movwf	((??_EepromRead+0)+0+1),f
	movlw	186
movwf	((??_EepromRead+0)+0),f
u397:
	decfsz	((??_EepromRead+0)+0),f
	goto	u397
	decfsz	((??_EepromRead+0)+0+1),f
	goto	u397
	decfsz	((??_EepromRead+0)+0+2),f
	goto	u397
opt asmopt_on

	line	22
	
l1070:	
;functions.c: 22: EEADR = 1;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	23
	
l1072:	
;functions.c: 23: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	24
	
l1074:	
;functions.c: 24: result = EEDATA;
	movf	(154)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EepromRead@result)
	clrf	(EepromRead@result+1)
	line	25
	
l1076:	
;functions.c: 25: buffer = buffer << 8;
	movf	(EepromRead@buffer),w
	movwf	(EepromRead@buffer+1)
	clrf	(EepromRead@buffer)
	line	26
	
l1078:	
;functions.c: 26: result = result + buffer;
	movf	(EepromRead@buffer),w
	addwf	(EepromRead@result),f
	skipnc
	incf	(EepromRead@result+1),f
	movf	(EepromRead@buffer+1),w
	addwf	(EepromRead@result+1),f
	line	27
	
l1080:	
;functions.c: 27: return result;
	movf	(EepromRead@result+1),w
	movwf	(?_EepromRead+1)
	movf	(EepromRead@result),w
	movwf	(?_EepromRead)
	line	28
	
l371:	
	return
	opt stack 0
GLOBAL	__end_of_EepromRead
	__end_of_EepromRead:
;; =============== function _EepromRead ends ============

	signat	_EepromRead,90
	global	_Buzzer
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _Buzzer *****************
;; Defined at:
;;		line 2 in file "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
;; Parameters:    Size  Location     Type
;;  jelszam         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  jelszam         1    3[BANK0 ] unsigned char 
;;  i               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 20/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       3       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
	line	2
	global	__size_of_Buzzer
	__size_of_Buzzer	equ	__end_of_Buzzer-_Buzzer
	
_Buzzer:	
	opt	stack 7
; Regs used in _Buzzer: [wreg+status,2+status,0]
;Buzzer@jelszam stored from wreg
	line	4
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Buzzer@jelszam)
	
l1052:	
;functions.c: 3: unsigned char i;
;functions.c: 4: for(i=0; i<jelszam; i++){
	clrf	(Buzzer@i)
	goto	l1060
	
l366:	
	line	5
;functions.c: 5: GPIO0 = 1;
	bsf	(40/8),(40)&7
	line	6
	
l1054:	
;functions.c: 6: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_Buzzer+0)+0+2),f
movlw	3
movwf	((??_Buzzer+0)+0+1),f
	movlw	186
movwf	((??_Buzzer+0)+0),f
u407:
	decfsz	((??_Buzzer+0)+0),f
	goto	u407
	decfsz	((??_Buzzer+0)+0+1),f
	goto	u407
	decfsz	((??_Buzzer+0)+0+2),f
	goto	u407
opt asmopt_on

	line	7
	
l1056:	
;functions.c: 7: GPIO0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	8
;functions.c: 8: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_Buzzer+0)+0+2),f
movlw	3
movwf	((??_Buzzer+0)+0+1),f
	movlw	186
movwf	((??_Buzzer+0)+0),f
u417:
	decfsz	((??_Buzzer+0)+0),f
	goto	u417
	decfsz	((??_Buzzer+0)+0+1),f
	goto	u417
	decfsz	((??_Buzzer+0)+0+2),f
	goto	u417
opt asmopt_on

	line	4
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(Buzzer@i),f
	
l1060:	
	movf	(Buzzer@jelszam),w
	subwf	(Buzzer@i),w
	skipc
	goto	u271
	goto	u270
u271:
	goto	l366
u270:
	line	10
	
l368:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer
	__end_of_Buzzer:
;; =============== function _Buzzer ends ============

	signat	_Buzzer,4216
	global	_EepromWrite
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _EepromWrite *****************
;; Defined at:
;;		line 33 in file "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
;; Parameters:    Size  Location     Type
;;  adat            2    0[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/20
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
	line	33
	global	__size_of_EepromWrite
	__size_of_EepromWrite	equ	__end_of_EepromWrite-_EepromWrite
	
_EepromWrite:	
	opt	stack 7
; Regs used in _EepromWrite: [wreg+status,2]
	line	34
	
l982:	
;functions.c: 34: EEADR = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(155)^080h	;volatile
	line	35
	
l984:	
;functions.c: 35: EEDATA = adat>>8;
	bcf	status, 5	;RP0=0, select bank0
	movf	(EepromWrite@adat+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	36
	
l986:	
;functions.c: 36: WREN = 1;
	bsf	(1250/8)^080h,(1250)&7
	line	37
	
l988:	
;functions.c: 37: GIE = 0;
	bcf	(95/8),(95)&7
	line	38
	
l990:	
;functions.c: 38: EECON2 = 0x55;
	movlw	(055h)
	movwf	(157)^080h	;volatile
	line	39
	
l992:	
;functions.c: 39: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(157)^080h	;volatile
	line	40
	
l994:	
;functions.c: 40: WR = 1;
	bsf	(1249/8)^080h,(1249)&7
	line	41
;functions.c: 41: while (WR == 1);
	
l374:	
	btfsc	(1249/8)^080h,(1249)&7
	goto	u201
	goto	u200
u201:
	goto	l374
u200:
	line	42
	
l996:	
;functions.c: 42: EEADR = 1;
	movlw	(01h)
	movwf	(155)^080h	;volatile
	line	43
;functions.c: 43: EEDATA = adat;
	bcf	status, 5	;RP0=0, select bank0
	movf	(EepromWrite@adat),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	44
	
l998:	
;functions.c: 44: WREN = 1;
	bsf	(1250/8)^080h,(1250)&7
	line	45
	
l1000:	
;functions.c: 45: GIE = 0;
	bcf	(95/8),(95)&7
	line	46
;functions.c: 46: EECON2 = 0x55;
	movlw	(055h)
	movwf	(157)^080h	;volatile
	line	47
;functions.c: 47: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(157)^080h	;volatile
	line	48
	
l1002:	
;functions.c: 48: WR = 1;
	bsf	(1249/8)^080h,(1249)&7
	line	49
;functions.c: 49: while (WR == 1);
	
l377:	
	btfsc	(1249/8)^080h,(1249)&7
	goto	u211
	goto	u210
u211:
	goto	l377
u210:
	
l379:	
	line	50
;functions.c: 50: GIE = 1;
	bsf	(95/8),(95)&7
	line	51
;functions.c: 51: WREN = 0;
	bcf	(1250/8)^080h,(1250)&7
	line	52
	
l380:	
	return
	opt stack 0
GLOBAL	__end_of_EepromWrite
	__end_of_EepromWrite:
;; =============== function _EepromWrite ends ============

	signat	_EepromWrite,4216
	global	_isr
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _isr *****************
;; Defined at:
;;		line 100 in file "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  409[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Buzzer
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text145
	file	"C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\main.c"
	line	100
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 6
; Regs used in _isr: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text145
	line	101
	
i1l1004:	
;main.c: 101: if(beallitas){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_beallitas),w
	skipz
	goto	u22_20
	goto	i1l1018
u22_20:
	line	110
	
i1l1006:	
;main.c: 110: if(timer2count>99){
	movlw	(064h)
	subwf	(_timer2count),w
	skipc
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l1038
u23_20:
	line	111
	
i1l1008:	
;main.c: 111: GPIO5 = 1;
	bsf	(45/8),(45)&7
	line	112
	
i1l1010:	
;main.c: 112: _delay((unsigned long)((10)*(8000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_isr+0)+0+1),f
	movlw	248
movwf	((??_isr+0)+0),f
u42_27:
	decfsz	((??_isr+0)+0),f
	goto	u42_27
	decfsz	((??_isr+0)+0+1),f
	goto	u42_27
	clrwdt
opt asmopt_on

	line	113
	
i1l1012:	
;main.c: 113: GPIO5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7
	line	114
	
i1l1014:	
;main.c: 114: timer2count = 0;
	clrf	(_timer2count)
	line	115
	
i1l1016:	
;main.c: 115: taroltido++;
	incf	(_taroltido),f
	skipnz
	incf	(_taroltido+1),f
	goto	i1l1038
	line	118
	
i1l1018:	
;main.c: 118: if(timer2count>99){
	movlw	(064h)
	subwf	(_timer2count),w
	skipc
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l1030
u24_20:
	line	119
	
i1l1020:	
;main.c: 119: GPIO5 = 1;
	bsf	(45/8),(45)&7
	line	120
	
i1l1022:	
;main.c: 120: _delay((unsigned long)((10)*(8000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_isr+0)+0+1),f
	movlw	248
movwf	((??_isr+0)+0),f
u43_27:
	decfsz	((??_isr+0)+0),f
	goto	u43_27
	decfsz	((??_isr+0)+0+1),f
	goto	u43_27
	clrwdt
opt asmopt_on

	line	121
	
i1l1024:	
;main.c: 121: GPIO5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7
	line	122
	
i1l1026:	
;main.c: 122: timer2count = 0;
	clrf	(_timer2count)
	line	123
	
i1l1028:	
;main.c: 123: idomeres++;
	incf	(_idomeres),f
	skipnz
	incf	(_idomeres+1),f
	line	125
	
i1l1030:	
;main.c: 124: }
;main.c: 125: if(taroltido<=idomeres){
	movf	(_taroltido+1),w
	subwf	(_idomeres+1),w
	skipz
	goto	u25_25
	movf	(_taroltido),w
	subwf	(_idomeres),w
u25_25:
	skipc
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l1038
u25_20:
	line	126
	
i1l1032:	
;main.c: 126: TMR2IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1121/8)^080h,(1121)&7
	line	127
;main.c: 127: GPIO1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7
	line	128
	
i1l1034:	
;main.c: 128: idomeres = 0;
	clrf	(_idomeres)
	clrf	(_idomeres+1)
	line	129
;main.c: 129: timer2count = 0;
	clrf	(_timer2count)
	line	130
	
i1l1036:	
;main.c: 130: Buzzer(2);
	movlw	(02h)
	fcall	i1_Buzzer
	line	133
	
i1l1038:	
;main.c: 131: }
;main.c: 132: }
;main.c: 133: timer2count++;
	incf	(_timer2count),f
	line	134
	
i1l1040:	
;main.c: 134: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	line	135
	
i1l415:	
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,90
	global	i1_Buzzer
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function i1_Buzzer *****************
;; Defined at:
;;		line 2 in file "C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
;; Parameters:    Size  Location     Type
;;  Buzzer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Buzzer          1    3[COMMON] unsigned char 
;;  Buzzer          1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          3       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text146
	file	"C:\Users\DPTP\Dropbox\PIC_Programozas\P12F683\levilagito\functions.c"
	line	2
	global	__size_ofi1_Buzzer
	__size_ofi1_Buzzer	equ	__end_ofi1_Buzzer-i1_Buzzer
	
i1_Buzzer:	
	opt	stack 5
; Regs used in i1_Buzzer: [wreg+status,2+status,0]
;i1Buzzer@jelszam stored from wreg
	line	4
	movwf	(i1Buzzer@jelszam)
	
i1l1042:	
;functions.c: 3: unsigned char i;
;functions.c: 4: for(i=0; i<jelszam; i++){
	clrf	(i1Buzzer@i)
	goto	i1l1050
	
i1l366:	
	line	5
;functions.c: 5: GPIO0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7
	line	6
	
i1l1044:	
;functions.c: 6: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??i1_Buzzer+0)+0+2),f
movlw	3
movwf	((??i1_Buzzer+0)+0+1),f
	movlw	186
movwf	((??i1_Buzzer+0)+0),f
u44_27:
	decfsz	((??i1_Buzzer+0)+0),f
	goto	u44_27
	decfsz	((??i1_Buzzer+0)+0+1),f
	goto	u44_27
	decfsz	((??i1_Buzzer+0)+0+2),f
	goto	u44_27
opt asmopt_on

	line	7
	
i1l1046:	
;functions.c: 7: GPIO0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	8
;functions.c: 8: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??i1_Buzzer+0)+0+2),f
movlw	3
movwf	((??i1_Buzzer+0)+0+1),f
	movlw	186
movwf	((??i1_Buzzer+0)+0),f
u45_27:
	decfsz	((??i1_Buzzer+0)+0),f
	goto	u45_27
	decfsz	((??i1_Buzzer+0)+0+1),f
	goto	u45_27
	decfsz	((??i1_Buzzer+0)+0+2),f
	goto	u45_27
opt asmopt_on

	line	4
	
i1l1048:	
	incf	(i1Buzzer@i),f
	
i1l1050:	
	movf	(i1Buzzer@jelszam),w
	subwf	(i1Buzzer@i),w
	skipc
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l366
u26_20:
	line	10
	
i1l368:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Buzzer
	__end_ofi1_Buzzer:
;; =============== function i1_Buzzer ends ============

	signat	i1_Buzzer,88
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
