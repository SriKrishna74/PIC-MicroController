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
	FNROOT	_main
	global	_RB0
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"Task1.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 56 in file "D:\Microchip\MY_PROJECTS\TASK_1\Task__1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Microchip\MY_PROJECTS\TASK_1\Task__1.c"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	57
	
l939:	
;Task__1.c: 57: TRISB = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	58
	
l941:	
;Task__1.c: 58: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	goto	l943
	line	60
;Task__1.c: 60: while(1)
	
l559:	
	line	62
	
l943:	
;Task__1.c: 61: {
;Task__1.c: 62: if(RB0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(48/8),(48)&7
	goto	u11
	goto	u10
u11:
	goto	l560
u10:
	line	64
	
l945:	
;Task__1.c: 63: {
;Task__1.c: 64: RD0 = 1;
	bsf	(64/8),(64)&7
	line	65
;Task__1.c: 65: RD1 = 0;
	bcf	(65/8),(65)&7
	line	66
;Task__1.c: 66: RD2 = 0;
	bcf	(66/8),(66)&7
	line	67
;Task__1.c: 67: }
	goto	l943
	line	68
	
l560:	
;Task__1.c: 68: else if(RB1 == 1 && RB2 == 1)
	btfss	(49/8),(49)&7
	goto	u21
	goto	u20
u21:
	goto	l562
u20:
	
l947:	
	btfss	(50/8),(50)&7
	goto	u31
	goto	u30
u31:
	goto	l562
u30:
	line	70
	
l949:	
;Task__1.c: 69: {
;Task__1.c: 70: RD0 = 0;
	bcf	(64/8),(64)&7
	line	71
;Task__1.c: 71: RD1 = 1;
	bsf	(65/8),(65)&7
	line	72
;Task__1.c: 72: RD2 = 0;
	bcf	(66/8),(66)&7
	line	73
;Task__1.c: 73: }
	goto	l943
	line	74
	
l562:	
;Task__1.c: 74: else if(RB3 == 1 || RB4 == 1)
	btfsc	(51/8),(51)&7
	goto	u41
	goto	u40
u41:
	goto	l566
u40:
	
l951:	
	btfss	(52/8),(52)&7
	goto	u51
	goto	u50
u51:
	goto	l564
u50:
	
l566:	
	line	76
;Task__1.c: 75: {
;Task__1.c: 76: RD0 = 0;
	bcf	(64/8),(64)&7
	line	77
;Task__1.c: 77: RD1 = 0;
	bcf	(65/8),(65)&7
	line	78
;Task__1.c: 78: RD2 = 1;
	bsf	(66/8),(66)&7
	line	79
;Task__1.c: 79: }
	goto	l943
	line	80
	
l564:	
	line	82
;Task__1.c: 80: else
;Task__1.c: 81: {
;Task__1.c: 82: RD0 = 0;
	bcf	(64/8),(64)&7
	line	83
;Task__1.c: 83: RD1 = 0;
	bcf	(65/8),(65)&7
	line	84
;Task__1.c: 84: RD2 = 0;
	bcf	(66/8),(66)&7
	goto	l943
	line	85
	
l567:	
	goto	l943
	
l563:	
	goto	l943
	
l561:	
	goto	l943
	line	86
	
l568:	
	line	60
	goto	l943
	
l569:	
	line	87
	
l570:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
