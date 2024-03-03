opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
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
	FNCALL	_main,_init
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_string
	FNCALL	_init,_lcd_cmd
	FNCALL	_lcd_string,_lcd_data
	FNROOT	_main
	global	_PORTB
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTB	set	6
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_2:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_3:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_4:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	51	;'3'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_5:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	52	;'4'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_6:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
STR_9	equ	STR_7+0
STR_11	equ	STR_7+0
STR_13	equ	STR_7+0
STR_8	equ	STR_6+0
STR_10	equ	STR_6+0
STR_12	equ	STR_6+0
	file	"LED_STATUS_DISP_LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_string
?_lcd_string:	; 0 bytes @ 0x0
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	ds	1
	global	??_lcd_string
??_lcd_string:	; 0 bytes @ 0x3
	global	??_init
??_init:	; 0 bytes @ 0x3
	ds	1
	global	lcd_string@string
lcd_string@string:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 43, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_string@string	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_13(CODE[4]), STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[4]), 
;;		 -> STR_9(CODE[4]), STR_8(CODE[4]), STR_7(CODE[4]), STR_6(CODE[4]), 
;;		 -> STR_5(CODE[6]), STR_4(CODE[6]), STR_3(CODE[6]), STR_2(CODE[6]), 
;;		 -> STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_string
;;   _init->_lcd_cmd
;;   _lcd_string->_lcd_data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     120
;;                               _init
;;                            _lcd_cmd
;;                         _lcd_string
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      30
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_string                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _lcd_cmd
;;   _lcd_cmd
;;   _lcd_string
;;     _lcd_data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 55 in file "D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_lcd_cmd
;;		_lcd_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	56
	
l1804:	
;LED_STAT_DISP_LCD.c: 56: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	57
	
l1806:	
;LED_STAT_DISP_LCD.c: 57: TRISC = 0x0F;
	movlw	(0Fh)
	movwf	(135)^080h	;volatile
	line	58
	
l1808:	
;LED_STAT_DISP_LCD.c: 58: init();
	fcall	_init
	line	59
	
l1810:	
;LED_STAT_DISP_LCD.c: 59: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	60
	
l1812:	
;LED_STAT_DISP_LCD.c: 60: lcd_string("LED STATUS");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_string
	line	61
	
l1814:	
;LED_STAT_DISP_LCD.c: 61: lcd_cmd(0XC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	62
	
l1816:	
;LED_STAT_DISP_LCD.c: 62: lcd_string("LED1:");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_string
	line	63
	
l1818:	
;LED_STAT_DISP_LCD.c: 63: lcd_cmd(0xc9);
	movlw	(0C9h)
	fcall	_lcd_cmd
	line	64
	
l1820:	
;LED_STAT_DISP_LCD.c: 64: lcd_string("LED2:");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_string
	line	65
	
l1822:	
;LED_STAT_DISP_LCD.c: 65: lcd_cmd(0xd0);
	movlw	(0D0h)
	fcall	_lcd_cmd
	line	66
	
l1824:	
;LED_STAT_DISP_LCD.c: 66: lcd_string("LED3:");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_string
	line	67
	
l1826:	
;LED_STAT_DISP_LCD.c: 67: lcd_cmd(0xd9);
	movlw	(0D9h)
	fcall	_lcd_cmd
	line	68
	
l1828:	
;LED_STAT_DISP_LCD.c: 68: lcd_string("LED4:");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1830
	line	69
;LED_STAT_DISP_LCD.c: 69: while(1)
	
l576:	
	line	71
	
l1830:	
;LED_STAT_DISP_LCD.c: 70: {
;LED_STAT_DISP_LCD.c: 71: if(RC0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l577
u2170:
	line	73
	
l1832:	
;LED_STAT_DISP_LCD.c: 72: {
;LED_STAT_DISP_LCD.c: 73: RC4 = 1;
	bsf	(60/8),(60)&7
	line	74
	
l1834:	
;LED_STAT_DISP_LCD.c: 74: lcd_cmd(0xc5);
	movlw	(0C5h)
	fcall	_lcd_cmd
	line	75
	
l1836:	
;LED_STAT_DISP_LCD.c: 75: lcd_string("ON ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_string
	line	76
;LED_STAT_DISP_LCD.c: 76: }
	goto	l1842
	line	77
	
l577:	
	line	79
;LED_STAT_DISP_LCD.c: 77: else
;LED_STAT_DISP_LCD.c: 78: {
;LED_STAT_DISP_LCD.c: 79: RC4 = 0;
	bcf	(60/8),(60)&7
	line	80
	
l1838:	
;LED_STAT_DISP_LCD.c: 80: lcd_cmd(0xc5);
	movlw	(0C5h)
	fcall	_lcd_cmd
	line	81
	
l1840:	
;LED_STAT_DISP_LCD.c: 81: lcd_string("OFF");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1842
	line	82
	
l578:	
	line	84
	
l1842:	
;LED_STAT_DISP_LCD.c: 82: }
;LED_STAT_DISP_LCD.c: 84: if(RC1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l579
u2180:
	line	86
	
l1844:	
;LED_STAT_DISP_LCD.c: 85: {
;LED_STAT_DISP_LCD.c: 86: RC5 = 1;
	bsf	(61/8),(61)&7
	line	87
	
l1846:	
;LED_STAT_DISP_LCD.c: 87: lcd_cmd(0xcC);
	movlw	(0CCh)
	fcall	_lcd_cmd
	line	88
	
l1848:	
;LED_STAT_DISP_LCD.c: 88: lcd_string("ON ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_lcd_string
	line	89
;LED_STAT_DISP_LCD.c: 89: }
	goto	l1854
	line	90
	
l579:	
	line	92
;LED_STAT_DISP_LCD.c: 90: else
;LED_STAT_DISP_LCD.c: 91: {
;LED_STAT_DISP_LCD.c: 92: RC5 = 0;
	bcf	(61/8),(61)&7
	line	93
	
l1850:	
;LED_STAT_DISP_LCD.c: 93: lcd_cmd(0xcC);
	movlw	(0CCh)
	fcall	_lcd_cmd
	line	94
	
l1852:	
;LED_STAT_DISP_LCD.c: 94: lcd_string("OFF");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1854
	line	95
	
l580:	
	line	97
	
l1854:	
;LED_STAT_DISP_LCD.c: 95: }
;LED_STAT_DISP_LCD.c: 97: if(RC2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l581
u2190:
	line	99
	
l1856:	
;LED_STAT_DISP_LCD.c: 98: {
;LED_STAT_DISP_LCD.c: 99: RC6 = 1;
	bsf	(62/8),(62)&7
	line	100
	
l1858:	
;LED_STAT_DISP_LCD.c: 100: lcd_cmd(0xD5);
	movlw	(0D5h)
	fcall	_lcd_cmd
	line	101
	
l1860:	
;LED_STAT_DISP_LCD.c: 101: lcd_string("ON ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_lcd_string
	line	102
;LED_STAT_DISP_LCD.c: 102: }
	goto	l1866
	line	103
	
l581:	
	line	105
;LED_STAT_DISP_LCD.c: 103: else
;LED_STAT_DISP_LCD.c: 104: {
;LED_STAT_DISP_LCD.c: 105: RC6 = 0;
	bcf	(62/8),(62)&7
	line	106
	
l1862:	
;LED_STAT_DISP_LCD.c: 106: lcd_cmd(0xD5);
	movlw	(0D5h)
	fcall	_lcd_cmd
	line	107
	
l1864:	
;LED_STAT_DISP_LCD.c: 107: lcd_string("OFF");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1866
	line	108
	
l582:	
	line	110
	
l1866:	
;LED_STAT_DISP_LCD.c: 108: }
;LED_STAT_DISP_LCD.c: 110: if(RC3 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l583
u2200:
	line	112
	
l1868:	
;LED_STAT_DISP_LCD.c: 111: {
;LED_STAT_DISP_LCD.c: 112: RC7 = 1;
	bsf	(63/8),(63)&7
	line	113
	
l1870:	
;LED_STAT_DISP_LCD.c: 113: lcd_cmd(0xDC);
	movlw	(0DCh)
	fcall	_lcd_cmd
	line	114
	
l1872:	
;LED_STAT_DISP_LCD.c: 114: lcd_string("ON ");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_lcd_string
	line	115
;LED_STAT_DISP_LCD.c: 115: }
	goto	l1830
	line	116
	
l583:	
	line	118
;LED_STAT_DISP_LCD.c: 116: else
;LED_STAT_DISP_LCD.c: 117: {
;LED_STAT_DISP_LCD.c: 118: RC7 = 0;
	bcf	(63/8),(63)&7
	line	119
	
l1874:	
;LED_STAT_DISP_LCD.c: 119: lcd_cmd(0xDC);
	movlw	(0DCh)
	fcall	_lcd_cmd
	line	120
	
l1876:	
;LED_STAT_DISP_LCD.c: 120: lcd_string("OFF");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1830
	line	121
	
l584:	
	goto	l1830
	line	124
	
l585:	
	line	69
	goto	l1830
	
l586:	
	line	125
	
l587:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_init
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _init *****************
;; Defined at:
;;		line 47 in file "D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
	line	47
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l1802:	
;LED_STAT_DISP_LCD.c: 48: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	49
;LED_STAT_DISP_LCD.c: 49: lcd_cmd(0x28);
	movlw	(028h)
	fcall	_lcd_cmd
	line	50
;LED_STAT_DISP_LCD.c: 50: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	51
;LED_STAT_DISP_LCD.c: 51: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	52
;LED_STAT_DISP_LCD.c: 52: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	53
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_lcd_string
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _lcd_string *****************
;; Defined at:
;;		line 40 in file "D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_13(4), STR_12(4), STR_11(4), STR_10(4), 
;;		 -> STR_9(4), STR_8(4), STR_7(4), STR_6(4), 
;;		 -> STR_5(6), STR_4(6), STR_3(6), STR_2(6), 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  string          1    4[COMMON] PTR const unsigned char 
;;		 -> STR_13(4), STR_12(4), STR_11(4), STR_10(4), 
;;		 -> STR_9(4), STR_8(4), STR_7(4), STR_6(4), 
;;		 -> STR_5(6), STR_4(6), STR_3(6), STR_2(6), 
;;		 -> STR_1(11), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
	line	40
	global	__size_of_lcd_string
	__size_of_lcd_string	equ	__end_of_lcd_string-_lcd_string
	
_lcd_string:	
	opt	stack 6
; Regs used in _lcd_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_string@string stored from wreg
	movwf	(lcd_string@string)
	line	41
	
l1794:	
;LED_STAT_DISP_LCD.c: 41: while(*string)
	goto	l1800
	
l568:	
	line	43
	
l1796:	
;LED_STAT_DISP_LCD.c: 42: {
;LED_STAT_DISP_LCD.c: 43: lcd_data(*string++);
	movf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	
l1798:	
	movlw	(01h)
	movwf	(??_lcd_string+0)+0
	movf	(??_lcd_string+0)+0,w
	addwf	(lcd_string@string),f
	goto	l1800
	line	44
	
l567:	
	line	41
	
l1800:	
	movf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l1796
u2160:
	goto	l570
	
l569:	
	line	45
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
;; =============== function _lcd_string ends ============

	signat	_lcd_string,4216
	global	_lcd_cmd
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 25 in file "D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
	line	25
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	26
	
l1770:	
;LED_STAT_DISP_LCD.c: 26: PORTB = (cmd&0xF0);
	movf	(lcd_cmd@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	27
	
l1772:	
;LED_STAT_DISP_LCD.c: 27: RB1 = 0;
	bcf	(49/8),(49)&7
	line	28
	
l1774:	
;LED_STAT_DISP_LCD.c: 28: RB0 = 0;
	bcf	(48/8),(48)&7
	line	29
	
l1776:	
;LED_STAT_DISP_LCD.c: 29: RB2 = 1;
	bsf	(50/8),(50)&7
	line	30
	
l1778:	
;LED_STAT_DISP_LCD.c: 30: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	118
movwf	((??_lcd_cmd+0)+0),f
u2217:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2217
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2217
	clrwdt
opt asmopt_on

	line	31
	
l1780:	
;LED_STAT_DISP_LCD.c: 31: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	32
	
l1782:	
;LED_STAT_DISP_LCD.c: 32: PORTB = ((cmd<<4)&0xF0);
	movf	(lcd_cmd@cmd),w
	movwf	(??_lcd_cmd+0)+0
	movlw	(04h)-1
u2155:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2155
	clrc
	rlf	(??_lcd_cmd+0)+0,w
	andlw	0F0h
	movwf	(6)	;volatile
	line	33
	
l1784:	
;LED_STAT_DISP_LCD.c: 33: RB1 = 0;
	bcf	(49/8),(49)&7
	line	34
	
l1786:	
;LED_STAT_DISP_LCD.c: 34: RB0 = 0;
	bcf	(48/8),(48)&7
	line	35
	
l1788:	
;LED_STAT_DISP_LCD.c: 35: RB2 = 1;
	bsf	(50/8),(50)&7
	line	36
	
l1790:	
;LED_STAT_DISP_LCD.c: 36: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	118
movwf	((??_lcd_cmd+0)+0),f
u2227:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2227
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2227
	clrwdt
opt asmopt_on

	line	37
	
l1792:	
;LED_STAT_DISP_LCD.c: 37: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	38
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 9 in file "D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_string
;; This function uses a non-reentrant model
;;
psect	text88
	file	"D:\Microchip\MY_PROJECTS\LED_STATUS_DISP_LCD\LED_STAT_DISP_LCD.c"
	line	9
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	10
	
l1746:	
;LED_STAT_DISP_LCD.c: 10: PORTB = (data&0xF0);
	movf	(lcd_data@data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	11
	
l1748:	
;LED_STAT_DISP_LCD.c: 11: RB1 = 0;
	bcf	(49/8),(49)&7
	line	12
	
l1750:	
;LED_STAT_DISP_LCD.c: 12: RB0 = 1;
	bsf	(48/8),(48)&7
	line	13
	
l1752:	
;LED_STAT_DISP_LCD.c: 13: RB2 = 1;
	bsf	(50/8),(50)&7
	line	14
	
l1754:	
;LED_STAT_DISP_LCD.c: 14: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_data+0)+0+1),f
	movlw	118
movwf	((??_lcd_data+0)+0),f
u2237:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2237
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2237
	clrwdt
opt asmopt_on

	line	15
	
l1756:	
;LED_STAT_DISP_LCD.c: 15: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	16
	
l1758:	
;LED_STAT_DISP_LCD.c: 16: PORTB = ((data<<4)&0xF0);
	movf	(lcd_data@data),w
	movwf	(??_lcd_data+0)+0
	movlw	(04h)-1
u2145:
	clrc
	rlf	(??_lcd_data+0)+0,f
	addlw	-1
	skipz
	goto	u2145
	clrc
	rlf	(??_lcd_data+0)+0,w
	andlw	0F0h
	movwf	(6)	;volatile
	line	17
	
l1760:	
;LED_STAT_DISP_LCD.c: 17: RB1 = 0;
	bcf	(49/8),(49)&7
	line	18
	
l1762:	
;LED_STAT_DISP_LCD.c: 18: RB0 = 1;
	bsf	(48/8),(48)&7
	line	19
	
l1764:	
;LED_STAT_DISP_LCD.c: 19: RB2 = 1;
	bsf	(50/8),(50)&7
	line	20
	
l1766:	
;LED_STAT_DISP_LCD.c: 20: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_data+0)+0+1),f
	movlw	118
movwf	((??_lcd_data+0)+0),f
u2247:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2247
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2247
	clrwdt
opt asmopt_on

	line	21
	
l1768:	
;LED_STAT_DISP_LCD.c: 21: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	22
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
