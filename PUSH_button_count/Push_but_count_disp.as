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
	FNCALL	_main,___awdiv
	FNCALL	_main,_lcd_data
	FNCALL	_main,___awmod
	FNCALL	_init,_lcd_cmd
	FNCALL	_lcd_string,_lcd_data
	FNROOT	_main
	global	_PORTB
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:
_PORTB	set	6
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_TRISB
_TRISB	set	134
	global	_TRISC0
_TRISC0	set	1080
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
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	89	;'Y'
	retlw	0
psect	strings
	file	"Push_but_count_disp.as"
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_string
??_lcd_string:	; 0 bytes @ 0x3
	global	??_init
??_init:	; 0 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_string@string
lcd_string@string:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	global	main@count
main@count:	; 2 bytes @ 0x9
	ds	2
;;Data sizes: Strings 14, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_string@string	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_1(CODE[14]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
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
;; (0) _main                                                 2     2      0     585
;;                                              9 COMMON     2     2      0
;;                               _init
;;                            _lcd_cmd
;;                         _lcd_string
;;                            ___awdiv
;;                           _lcd_data
;;                            ___awmod
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
;; (1) _lcd_data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     195
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     195
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _lcd_cmd
;;   _lcd_cmd
;;   _lcd_string
;;     _lcd_data
;;   ___awdiv
;;   _lcd_data
;;   ___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
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
;;		line 56 in file "D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    9[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_lcd_cmd
;;		_lcd_string
;;		___awdiv
;;		_lcd_data
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	57
	
l1832:	
;count_disp.c: 57: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	58
	
l1834:	
;count_disp.c: 58: TRISC0 = 1;
	bsf	(1080/8)^080h,(1080)&7
	line	59
	
l1836:	
;count_disp.c: 59: init();
	fcall	_init
	line	60
	
l1838:	
;count_disp.c: 60: int count = 0;
	movlw	low(0)
	movwf	(main@count)
	movlw	high(0)
	movwf	((main@count))+1
	line	61
	
l1840:	
;count_disp.c: 61: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	62
	
l1842:	
;count_disp.c: 62: lcd_string("COUNT DISPLAY");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l1844
	line	63
;count_disp.c: 63: while(1)
	
l576:	
	line	66
	
l1844:	
;count_disp.c: 64: {
;count_disp.c: 66: if(RC0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1844
u2170:
	line	68
	
l1846:	
;count_disp.c: 67: {
;count_disp.c: 68: lcd_cmd(0xc0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	69
	
l1848:	
;count_disp.c: 69: count = count+1;
	movf	(main@count),w
	addlw	low(01h)
	movwf	(main@count)
	movf	(main@count+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@count)
	line	70
	
l1850:	
;count_disp.c: 70: lcd_data((count / 10) + 0x30);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@count+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@count),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_data
	line	71
	
l1852:	
;count_disp.c: 71: lcd_data((count % 10) + 0x30);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@count+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@count),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_data
	line	72
;count_disp.c: 72: while(RC0 == 1);
	goto	l578
	
l579:	
	
l578:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l578
u2180:
	goto	l1844
	
l580:	
	goto	l1844
	line	73
	
l577:	
	goto	l1844
	line	74
	
l581:	
	line	63
	goto	l1844
	
l582:	
	line	75
	
l583:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_init
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _init *****************
;; Defined at:
;;		line 48 in file "D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
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
psect	text95
	file	"D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
	line	48
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l1830:	
;count_disp.c: 49: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	50
;count_disp.c: 50: lcd_cmd(0x28);
	movlw	(028h)
	fcall	_lcd_cmd
	line	51
;count_disp.c: 51: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	52
;count_disp.c: 52: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	53
;count_disp.c: 53: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	54
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_lcd_string
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _lcd_string *****************
;; Defined at:
;;		line 41 in file "D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  string          1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(14), 
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
psect	text96
	file	"D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
	line	41
	global	__size_of_lcd_string
	__size_of_lcd_string	equ	__end_of_lcd_string-_lcd_string
	
_lcd_string:	
	opt	stack 6
; Regs used in _lcd_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_string@string stored from wreg
	movwf	(lcd_string@string)
	line	42
	
l1822:	
;count_disp.c: 42: while(*string)
	goto	l1828
	
l568:	
	line	44
	
l1824:	
;count_disp.c: 43: {
;count_disp.c: 44: lcd_data(*string++);
	movf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	
l1826:	
	movlw	(01h)
	movwf	(??_lcd_string+0)+0
	movf	(??_lcd_string+0)+0,w
	addwf	(lcd_string@string),f
	goto	l1828
	line	45
	
l567:	
	line	42
	
l1828:	
	movf	(lcd_string@string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l1824
u2160:
	goto	l570
	
l569:	
	line	46
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
;; =============== function _lcd_string ends ============

	signat	_lcd_string,4216
	global	_lcd_cmd
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 26 in file "D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
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
psect	text97
	file	"D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
	line	26
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	27
	
l1798:	
;count_disp.c: 27: PORTB = (cmd&0xF0);
	movf	(lcd_cmd@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	28
	
l1800:	
;count_disp.c: 28: RB1 = 0;
	bcf	(49/8),(49)&7
	line	29
	
l1802:	
;count_disp.c: 29: RB0 = 0;
	bcf	(48/8),(48)&7
	line	30
	
l1804:	
;count_disp.c: 30: RB2 = 1;
	bsf	(50/8),(50)&7
	line	31
	
l1806:	
;count_disp.c: 31: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	118
movwf	((??_lcd_cmd+0)+0),f
u2197:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2197
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2197
	clrwdt
opt asmopt_on

	line	32
	
l1808:	
;count_disp.c: 32: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	33
	
l1810:	
;count_disp.c: 33: PORTB = ((cmd<<4)&0xF0);
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
	line	34
	
l1812:	
;count_disp.c: 34: RB1 = 0;
	bcf	(49/8),(49)&7
	line	35
	
l1814:	
;count_disp.c: 35: RB0 = 0;
	bcf	(48/8),(48)&7
	line	36
	
l1816:	
;count_disp.c: 36: RB2 = 1;
	bsf	(50/8),(50)&7
	line	37
	
l1818:	
;count_disp.c: 37: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_cmd+0)+0+1),f
	movlw	118
movwf	((??_lcd_cmd+0)+0),f
u2207:
	decfsz	((??_lcd_cmd+0)+0),f
	goto	u2207
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u2207
	clrwdt
opt asmopt_on

	line	38
	
l1820:	
;count_disp.c: 38: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	39
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 10 in file "D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text98
	file	"D:\Microchip\MY_PROJECTS\PUSH_button_count\count_disp.c"
	line	10
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	11
	
l1774:	
;count_disp.c: 11: PORTB = (data&0xF0);
	movf	(lcd_data@data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	12
	
l1776:	
;count_disp.c: 12: RB1 = 0;
	bcf	(49/8),(49)&7
	line	13
	
l1778:	
;count_disp.c: 13: RB0 = 1;
	bsf	(48/8),(48)&7
	line	14
	
l1780:	
;count_disp.c: 14: RB2 = 1;
	bsf	(50/8),(50)&7
	line	15
	
l1782:	
;count_disp.c: 15: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_data+0)+0+1),f
	movlw	118
movwf	((??_lcd_data+0)+0),f
u2217:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2217
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2217
	clrwdt
opt asmopt_on

	line	16
	
l1784:	
;count_disp.c: 16: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	17
	
l1786:	
;count_disp.c: 17: PORTB = ((data<<4)&0xF0);
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
	line	18
	
l1788:	
;count_disp.c: 18: RB1 = 0;
	bcf	(49/8),(49)&7
	line	19
	
l1790:	
;count_disp.c: 19: RB0 = 1;
	bsf	(48/8),(48)&7
	line	20
	
l1792:	
;count_disp.c: 20: RB2 = 1;
	bsf	(50/8),(50)&7
	line	21
	
l1794:	
;count_disp.c: 21: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_data+0)+0+1),f
	movlw	118
movwf	((??_lcd_data+0)+0),f
u2227:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2227
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2227
	clrwdt
opt asmopt_on

	line	22
	
l1796:	
;count_disp.c: 22: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	23
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	___awmod
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text99
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1498:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1500:	
	btfss	(___awmod@dividend+1),7
	goto	u1481
	goto	u1480
u1481:
	goto	l1504
u1480:
	line	10
	
l1502:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l1504
	line	12
	
l800:	
	line	13
	
l1504:	
	btfss	(___awmod@divisor+1),7
	goto	u1491
	goto	u1490
u1491:
	goto	l1508
u1490:
	line	14
	
l1506:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1508
	
l801:	
	line	15
	
l1508:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1501
	goto	u1500
u1501:
	goto	l1526
u1500:
	line	16
	
l1510:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l1516
	
l804:	
	line	18
	
l1512:	
	movlw	01h
	
u1515:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1515
	line	19
	
l1514:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1516
	line	20
	
l803:	
	line	17
	
l1516:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l1512
u1520:
	goto	l1518
	
l805:	
	goto	l1518
	line	21
	
l806:	
	line	22
	
l1518:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1535
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1535:
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l1522
u1530:
	line	23
	
l1520:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1522
	
l807:	
	line	24
	
l1522:	
	movlw	01h
	
u1545:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1545
	line	25
	
l1524:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l1518
u1550:
	goto	l1526
	
l808:	
	goto	l1526
	line	26
	
l802:	
	line	27
	
l1526:	
	movf	(___awmod@sign),w
	skipz
	goto	u1560
	goto	l1530
u1560:
	line	28
	
l1528:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1530
	
l809:	
	line	29
	
l1530:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l810
	
l1532:	
	line	30
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text100
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1332:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1334:	
	btfss	(___awdiv@divisor+1),7
	goto	u1011
	goto	u1010
u1011:
	goto	l1338
u1010:
	line	11
	
l1336:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1338
	line	13
	
l732:	
	line	14
	
l1338:	
	btfss	(___awdiv@dividend+1),7
	goto	u1021
	goto	u1020
u1021:
	goto	l733
u1020:
	line	15
	
l1340:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1342:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l733:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l1362
u1030:
	line	20
	
l1344:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1350
	
l736:	
	line	22
	
l1346:	
	movlw	01h
	
u1045:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1045
	line	23
	
l1348:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1350
	line	24
	
l735:	
	line	21
	
l1350:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l1346
u1050:
	goto	l1352
	
l737:	
	goto	l1352
	line	25
	
l738:	
	line	26
	
l1352:	
	movlw	01h
	
u1065:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1065
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1075
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1075:
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l1358
u1070:
	line	28
	
l1354:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1356:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1358
	line	30
	
l739:	
	line	31
	
l1358:	
	movlw	01h
	
u1085:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1085
	line	32
	
l1360:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l1352
u1090:
	goto	l1362
	
l740:	
	goto	l1362
	line	33
	
l734:	
	line	34
	
l1362:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1100
	goto	l1366
u1100:
	line	35
	
l1364:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1366
	
l741:	
	line	36
	
l1366:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l742
	
l1368:	
	line	37
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
