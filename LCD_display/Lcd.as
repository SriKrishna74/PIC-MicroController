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
	global	_TRISB
_TRISB	set	134
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
	retlw	115	;'s'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	107	;'k'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	71	;'G'
	retlw	0
psect	strings
	file	"Lcd.as"
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
;;Data sizes: Strings 14, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_string@string	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[3]), STR_1(CODE[11]), 
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
;; (0) _main                                                 0     0      0      90
;;                               _init
;;                         _lcd_string
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      30
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_string                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     3      0      30
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
;;		line 57 in file "D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
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
;;		_lcd_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
	line	57
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l1796:	
;lcd.c: 58: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	59
	
l1798:	
;lcd.c: 59: init();
	fcall	_init
	goto	l1800
	line	60
;lcd.c: 60: while(1)
	
l576:	
	line	63
	
l1800:	
;lcd.c: 61: {
;lcd.c: 63: lcd_string("srikrishna");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_string
	line	64
	
l1802:	
;lcd.c: 64: lcd_string(" G");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1800
	line	70
	
l577:	
	line	60
	goto	l1800
	
l578:	
	line	71
	
l579:	
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
;;		line 49 in file "D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
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
	file	"D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
	line	49
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l1794:	
;lcd.c: 50: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	51
;lcd.c: 51: lcd_cmd(0x28);
	movlw	(028h)
	fcall	_lcd_cmd
	line	52
;lcd.c: 52: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	53
;lcd.c: 53: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	54
;lcd.c: 54: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	55
	
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
;;		line 42 in file "D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_2(3), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  string          1    4[COMMON] PTR const unsigned char 
;;		 -> STR_2(3), STR_1(11), 
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
	file	"D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
	line	42
	global	__size_of_lcd_string
	__size_of_lcd_string	equ	__end_of_lcd_string-_lcd_string
	
_lcd_string:	
	opt	stack 6
; Regs used in _lcd_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_string@string stored from wreg
	movwf	(lcd_string@string)
	line	43
	
l1786:	
;lcd.c: 43: while(*string)
	goto	l1792
	
l568:	
	line	45
	
l1788:	
;lcd.c: 44: {
;lcd.c: 45: lcd_data(*string++);
	movf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	
l1790:	
	movlw	(01h)
	movwf	(??_lcd_string+0)+0
	movf	(??_lcd_string+0)+0,w
	addwf	(lcd_string@string),f
	goto	l1792
	line	46
	
l567:	
	line	43
	
l1792:	
	movf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l1788
u2160:
	goto	l570
	
l569:	
	line	47
	
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
;;		line 27 in file "D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
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
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
	line	27
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	28
	
l1762:	
;lcd.c: 28: PORTB = (cmd&0xF0);
	movf	(lcd_cmd@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l1764:	
;lcd.c: 29: RB1 = 0;
	bcf	(49/8),(49)&7
	line	30
	
l1766:	
;lcd.c: 30: RB0 = 0;
	bcf	(48/8),(48)&7
	line	31
	
l1768:	
;lcd.c: 31: RB2 = 1;
	bsf	(50/8),(50)&7
	line	32
	
l1770:	
;lcd.c: 32: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	118
movwf	((??_lcd_cmd+0)+0),f
u2177:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2177
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2177
	clrwdt
opt asmopt_on

	line	33
	
l1772:	
;lcd.c: 33: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	34
	
l1774:	
;lcd.c: 34: PORTB = ((cmd<<4)&0xF0);
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
	line	35
	
l1776:	
;lcd.c: 35: RB1 = 0;
	bcf	(49/8),(49)&7
	line	36
	
l1778:	
;lcd.c: 36: RB0 = 0;
	bcf	(48/8),(48)&7
	line	37
	
l1780:	
;lcd.c: 37: RB2 = 1;
	bsf	(50/8),(50)&7
	line	38
	
l1782:	
;lcd.c: 38: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	118
movwf	((??_lcd_cmd+0)+0),f
u2187:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2187
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2187
	clrwdt
opt asmopt_on

	line	39
	
l1784:	
;lcd.c: 39: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	40
	
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
;;		line 11 in file "D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
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
	file	"D:\Microchip\MY_PROJECTS\LCD_display\lcd.c"
	line	11
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	12
	
l1738:	
;lcd.c: 12: PORTB = (data&0xF0);
	movf	(lcd_data@data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	13
	
l1740:	
;lcd.c: 13: RB1 = 0;
	bcf	(49/8),(49)&7
	line	14
	
l1742:	
;lcd.c: 14: RB0 = 1;
	bsf	(48/8),(48)&7
	line	15
	
l1744:	
;lcd.c: 15: RB2 = 1;
	bsf	(50/8),(50)&7
	line	16
	
l1746:	
;lcd.c: 16: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_data+0)+0+1),f
	movlw	118
movwf	((??_lcd_data+0)+0),f
u2197:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2197
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2197
	clrwdt
opt asmopt_on

	line	17
	
l1748:	
;lcd.c: 17: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	18
	
l1750:	
;lcd.c: 18: PORTB = ((data<<4)&0xF0);
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
	line	19
	
l1752:	
;lcd.c: 19: RB1 = 0;
	bcf	(49/8),(49)&7
	line	20
	
l1754:	
;lcd.c: 20: RB0 = 1;
	bsf	(48/8),(48)&7
	line	21
	
l1756:	
;lcd.c: 21: RB2 = 1;
	bsf	(50/8),(50)&7
	line	22
	
l1758:	
;lcd.c: 22: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_data+0)+0+1),f
	movlw	118
movwf	((??_lcd_data+0)+0),f
u2207:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2207
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2207
	clrwdt
opt asmopt_on

	line	23
	
l1760:	
;lcd.c: 23: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	24
	
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
