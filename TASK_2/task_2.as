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
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	file	"task_2.as"
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
	global	main@count
main@count:	; 2 bytes @ 0x0
	ds	2
	global	main@count_300
main@count_300:	; 2 bytes @ 0x2
	ds	2
	global	main@count_299
main@count_299:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
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
;; (0) _main                                                 6     6      0      60
;;                                              0 COMMON     6     6      0
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
;;COMMON               E      6       6       1       42.9%
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
;;		line 5 in file "D:\Microchip\MY_PROJECTS\TASK_2\Task_2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    2[COMMON] int 
;;  count           2    4[COMMON] int 
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Microchip\MY_PROJECTS\TASK_2\Task_2.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	6
	
l941:	
;Task_2.c: 6: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	7
;Task_2.c: 7: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	8
	
l943:	
;Task_2.c: 8: int count = 0;
	movlw	low(0)
	movwf	(main@count)
	movlw	high(0)
	movwf	((main@count))+1
	line	9
;Task_2.c: 9: while(1)
	
l559:	
	line	11
;Task_2.c: 10: {
;Task_2.c: 11: int count = 0;
	movlw	low(0)
	movwf	(main@count_299)
	movlw	high(0)
	movwf	((main@count_299))+1
	line	12
	
l945:	
;Task_2.c: 12: if(RB0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(48/8),(48)&7
	goto	u11
	goto	u10
u11:
	goto	l559
u10:
	goto	l951
	line	14
	
l947:	
;Task_2.c: 13: {
;Task_2.c: 14: while(RB0==0)
	goto	l951
	
l562:	
	line	16
	
l949:	
;Task_2.c: 15: {
;Task_2.c: 16: int count = count+1;
	movf	(main@count_300),w
	addlw	low(01h)
	movwf	(main@count_300)
	movf	(main@count_300+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@count_300)
	goto	l951
	line	17
	
l561:	
	line	14
	
l951:	
	btfss	(48/8),(48)&7
	goto	u21
	goto	u20
u21:
	goto	l949
u20:
	goto	l953
	
l563:	
	line	18
	
l953:	
;Task_2.c: 17: }
;Task_2.c: 18: if(count == 1)
	movlw	01h
	xorwf	(main@count_299),w
	iorwf	(main@count_299+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l957
u30:
	line	20
	
l955:	
;Task_2.c: 19: {
;Task_2.c: 20: RB1 = 1;
	bsf	(49/8),(49)&7
	line	21
;Task_2.c: 21: }
	goto	l559
	line	22
	
l564:	
	
l957:	
;Task_2.c: 22: else if(count == 2)
	movlw	02h
	xorwf	(main@count_299),w
	iorwf	(main@count_299+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l961
u40:
	line	24
	
l959:	
;Task_2.c: 23: {
;Task_2.c: 24: RB1 = 0;
	bcf	(49/8),(49)&7
	line	25
;Task_2.c: 25: }
	goto	l559
	line	26
	
l566:	
	
l961:	
;Task_2.c: 26: else if(count == 3)
	movlw	03h
	xorwf	(main@count_299),w
	iorwf	(main@count_299+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l568
u50:
	line	28
	
l963:	
;Task_2.c: 27: {
;Task_2.c: 28: RB1 = 1;
	bsf	(49/8),(49)&7
	line	29
;Task_2.c: 29: }
	goto	l559
	line	30
	
l568:	
	line	32
;Task_2.c: 30: else
;Task_2.c: 31: {
;Task_2.c: 32: RB1 = 0;
	bcf	(49/8),(49)&7
	goto	l559
	line	33
	
l569:	
	goto	l559
	
l567:	
	goto	l559
	
l565:	
	goto	l559
	line	34
	
l560:	
	goto	l559
	line	35
	
l570:	
	line	9
	goto	l559
	
l571:	
	line	36
	
l572:	
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
