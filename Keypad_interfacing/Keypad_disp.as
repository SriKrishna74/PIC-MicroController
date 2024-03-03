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
	FNCALL	_main,_keypad
	FNCALL	_keypad,_lcd_data
	FNCALL	_init,_lcd_cmd
	FNCALL	_lcd_string,_lcd_data
	FNROOT	_main
	global	_PORTB
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
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
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"Keypad_disp.as"
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
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_keypad
?_keypad:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	ds	1
	global	?_lcd_string
?_lcd_string:	; 0 bytes @ 0x3
	global	??_init
??_init:	; 0 bytes @ 0x3
	global	??_keypad
??_keypad:	; 0 bytes @ 0x3
	global	lcd_string@length
lcd_string@length:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_string
??_lcd_string:	; 0 bytes @ 0x4
	ds	1
	global	lcd_string@string
lcd_string@string:	; 1 bytes @ 0x5
	ds	1
	global	lcd_string@i
lcd_string@i:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	1
;;Data sizes: Strings 13, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_string@string	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_string
;;   _keypad->_lcd_data
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     120
;;                                              7 COMMON     1     1      0
;;                               _init
;;                            _lcd_cmd
;;                         _lcd_string
;;                             _keypad
;; ---------------------------------------------------------------------------------
;; (1) _keypad                                               0     0      0      15
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      15
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_string                                           4     3      1      75
;;                                              3 COMMON     4     3      1
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     3      0      15
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      15
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
;;   _keypad
;;     _lcd_data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
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
;;		line 123 in file "D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_lcd_cmd
;;		_lcd_string
;;		_keypad
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
	line	123
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	124
	
l1845:	
;KEYPAD.c: 124: TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	125
;KEYPAD.c: 125: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	126
;KEYPAD.c: 126: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	127
	
l1847:	
;KEYPAD.c: 127: PORTD = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	128
;KEYPAD.c: 128: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	129
	
l1849:	
;KEYPAD.c: 129: TRISC = 0XF0;
	movlw	(0F0h)
	movwf	(135)^080h	;volatile
	line	130
	
l1851:	
;KEYPAD.c: 130: init();
	fcall	_init
	line	131
	
l1853:	
;KEYPAD.c: 131: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	132
	
l1855:	
;KEYPAD.c: 132: lcd_string("KEYPAD INPUT",12);
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_lcd_string)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_string
	line	133
	
l1857:	
;KEYPAD.c: 133: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	goto	l1859
	line	135
;KEYPAD.c: 135: while(1)
	
l627:	
	line	137
	
l1859:	
;KEYPAD.c: 136: {
;KEYPAD.c: 137: keypad();
	fcall	_keypad
	goto	l1859
	line	140
	
l628:	
	line	135
	goto	l1859
	
l629:	
	line	141
	
l630:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_keypad
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _keypad *****************
;; Defined at:
;;		line 54 in file "D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
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
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
	line	54
	global	__size_of_keypad
	__size_of_keypad	equ	__end_of_keypad-_keypad
	
_keypad:	
	opt	stack 6
; Regs used in _keypad: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1819:	
;KEYPAD.c: 55: RD0=1;RD1=0;RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	line	56
;KEYPAD.c: 56: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l576
u2150:
	line	58
	
l1821:	
;KEYPAD.c: 57: {
;KEYPAD.c: 58: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	59
;KEYPAD.c: 59: while(RC4==1);
	goto	l577
	
l578:	
	
l577:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l577
u2160:
	goto	l576
	
l579:	
	line	60
	
l576:	
	line	61
;KEYPAD.c: 60: }
;KEYPAD.c: 61: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l580
u2170:
	line	63
	
l1823:	
;KEYPAD.c: 62: {
;KEYPAD.c: 63: lcd_data('4');
	movlw	(034h)
	fcall	_lcd_data
	line	64
;KEYPAD.c: 64: while(RC5==1);
	goto	l581
	
l582:	
	
l581:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l581
u2180:
	goto	l580
	
l583:	
	line	65
	
l580:	
	line	66
;KEYPAD.c: 65: }
;KEYPAD.c: 66: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l584
u2190:
	line	68
	
l1825:	
;KEYPAD.c: 67: {
;KEYPAD.c: 68: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	69
;KEYPAD.c: 69: while(RC6==1);
	goto	l585
	
l586:	
	
l585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(62/8),(62)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l585
u2200:
	goto	l584
	
l587:	
	line	70
	
l584:	
	line	71
;KEYPAD.c: 70: }
;KEYPAD.c: 71: if(RC7==1)
	btfss	(63/8),(63)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l588
u2210:
	line	73
	
l1827:	
;KEYPAD.c: 72: {
;KEYPAD.c: 73: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	74
;KEYPAD.c: 74: while(RC7==1);
	goto	l589
	
l590:	
	
l589:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(63/8),(63)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l589
u2220:
	goto	l588
	
l591:	
	line	75
	
l588:	
	line	77
;KEYPAD.c: 75: }
;KEYPAD.c: 77: RD0=0;RD1=1;RD2=0;
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	line	78
;KEYPAD.c: 78: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l592
u2230:
	line	80
	
l1829:	
;KEYPAD.c: 79: {
;KEYPAD.c: 80: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	81
;KEYPAD.c: 81: while(RC4==1);
	goto	l593
	
l594:	
	
l593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l593
u2240:
	goto	l592
	
l595:	
	line	82
	
l592:	
	line	83
;KEYPAD.c: 82: }
;KEYPAD.c: 83: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l596
u2250:
	line	85
	
l1831:	
;KEYPAD.c: 84: {
;KEYPAD.c: 85: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	86
;KEYPAD.c: 86: while(RC5==1);
	goto	l597
	
l598:	
	
l597:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l597
u2260:
	goto	l596
	
l599:	
	line	87
	
l596:	
	line	88
;KEYPAD.c: 87: }
;KEYPAD.c: 88: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l600
u2270:
	line	90
	
l1833:	
;KEYPAD.c: 89: {
;KEYPAD.c: 90: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	91
;KEYPAD.c: 91: while(RC6==1);
	goto	l601
	
l602:	
	
l601:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(62/8),(62)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l601
u2280:
	goto	l600
	
l603:	
	line	92
	
l600:	
	line	93
;KEYPAD.c: 92: }
;KEYPAD.c: 93: if(RC7==1)
	btfss	(63/8),(63)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l604
u2290:
	line	95
	
l1835:	
;KEYPAD.c: 94: {
;KEYPAD.c: 95: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	96
;KEYPAD.c: 96: while(RC7==1);
	goto	l605
	
l606:	
	
l605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(63/8),(63)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l605
u2300:
	goto	l604
	
l607:	
	line	97
	
l604:	
	line	99
;KEYPAD.c: 97: }
;KEYPAD.c: 99: RD0=0;RD1=0;RD2=1;
	bcf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	line	101
;KEYPAD.c: 101: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l608
u2310:
	line	103
	
l1837:	
;KEYPAD.c: 102: {
;KEYPAD.c: 103: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	104
;KEYPAD.c: 104: while(RC4==1);
	goto	l609
	
l610:	
	
l609:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l609
u2320:
	goto	l608
	
l611:	
	line	105
	
l608:	
	line	106
;KEYPAD.c: 105: }
;KEYPAD.c: 106: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l612
u2330:
	line	108
	
l1839:	
;KEYPAD.c: 107: {
;KEYPAD.c: 108: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	109
;KEYPAD.c: 109: while(RC5==1);
	goto	l613
	
l614:	
	
l613:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l613
u2340:
	goto	l612
	
l615:	
	line	110
	
l612:	
	line	111
;KEYPAD.c: 110: }
;KEYPAD.c: 111: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l616
u2350:
	line	113
	
l1841:	
;KEYPAD.c: 112: {
;KEYPAD.c: 113: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	114
;KEYPAD.c: 114: while(RC6==1);
	goto	l617
	
l618:	
	
l617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(62/8),(62)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l617
u2360:
	goto	l616
	
l619:	
	line	115
	
l616:	
	line	116
;KEYPAD.c: 115: }
;KEYPAD.c: 116: if(RC7 == 1)
	btfss	(63/8),(63)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l624
u2370:
	line	118
	
l1843:	
;KEYPAD.c: 117: {
;KEYPAD.c: 118: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	119
;KEYPAD.c: 119: while(RC7==1);
	goto	l621
	
l622:	
	
l621:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(63/8),(63)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l621
u2380:
	goto	l624
	
l623:	
	goto	l624
	line	120
	
l620:	
	line	121
	
l624:	
	return
	opt stack 0
GLOBAL	__end_of_keypad
	__end_of_keypad:
;; =============== function _keypad ends ============

	signat	_keypad,88
	global	_init
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _init *****************
;; Defined at:
;;		line 46 in file "D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
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
psect	text98
	file	"D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
	line	46
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l1817:	
;KEYPAD.c: 47: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	48
;KEYPAD.c: 48: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	49
;KEYPAD.c: 49: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	50
;KEYPAD.c: 50: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	51
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_lcd_string
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _lcd_string *****************
;; Defined at:
;;		line 38 in file "D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_1(13), 
;;  length          1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  string          1    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(13), 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text99
	file	"D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
	line	38
	global	__size_of_lcd_string
	__size_of_lcd_string	equ	__end_of_lcd_string-_lcd_string
	
_lcd_string:	
	opt	stack 6
; Regs used in _lcd_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_string@string stored from wreg
	line	40
	movwf	(lcd_string@string)
	
l1809:	
;KEYPAD.c: 39: unsigned char i;
;KEYPAD.c: 40: for(i = 0;i<length;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(lcd_string@i)
	goto	l1815
	line	41
	
l568:	
	line	42
	
l1811:	
;KEYPAD.c: 41: {
;KEYPAD.c: 42: lcd_data(string[i]);
	movf	(lcd_string@i),w
	addwf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	40
	
l1813:	
	movlw	(01h)
	movwf	(??_lcd_string+0)+0
	movf	(??_lcd_string+0)+0,w
	addwf	(lcd_string@i),f
	goto	l1815
	
l567:	
	
l1815:	
	movf	(lcd_string@length),w
	subwf	(lcd_string@i),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1811
u2140:
	goto	l570
	
l569:	
	line	44
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
;; =============== function _lcd_string ends ============

	signat	_lcd_string,8312
	global	_lcd_cmd
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 28 in file "D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
psect	text100
	file	"D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
	line	28
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	29
	
l1799:	
;KEYPAD.c: 29: PORTB = cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	30
	
l1801:	
;KEYPAD.c: 30: RC1 = 0;
	bcf	(57/8),(57)&7
	line	31
	
l1803:	
;KEYPAD.c: 31: RC0 = 0;
	bcf	(56/8),(56)&7
	line	32
	
l1805:	
;KEYPAD.c: 32: RC2 = 1;
	bsf	(58/8),(58)&7
	line	33
;KEYPAD.c: 33: _delay((unsigned long)((50)*(10000000/4000.0)));
	opt asmopt_off
movlw	163
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	85
movwf	((??_lcd_cmd+0)+0),f
u2397:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2397
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2397
opt asmopt_on

	line	34
	
l1807:	
;KEYPAD.c: 34: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	35
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 17 in file "D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;;		_keypad
;; This function uses a non-reentrant model
;;
psect	text101
	file	"D:\Microchip\MY_PROJECTS\Keypad_interfacing\KEYPAD.c"
	line	17
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	18
	
l1789:	
;KEYPAD.c: 18: PORTB = data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	19
	
l1791:	
;KEYPAD.c: 19: RC1 = 0;
	bcf	(57/8),(57)&7
	line	20
	
l1793:	
;KEYPAD.c: 20: RC0 = 1;
	bsf	(56/8),(56)&7
	line	21
	
l1795:	
;KEYPAD.c: 21: RC2 = 1;
	bsf	(58/8),(58)&7
	line	22
;KEYPAD.c: 22: _delay((unsigned long)((50)*(10000000/4000.0)));
	opt asmopt_off
movlw	163
movwf	((??_lcd_data+0)+0+1),f
	movlw	85
movwf	((??_lcd_data+0)+0),f
u2407:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2407
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2407
opt asmopt_on

	line	23
	
l1797:	
;KEYPAD.c: 23: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	25
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
