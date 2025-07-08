		include	equ.lib
		include macro.lib
vectortbl:
		dc.l stack
		dc.l init
		dc.l loc_200
		dc.l os_sys_ram_madderr
		dc.l os_sys_ram_mcoderr
		dc.l os_sys_ram_mdiverr
		dc.l os_sys_ram_mchkerr
		dc.l os_sys_ram_mtrcerr
		dc.l os_sys_ram_msoverr
		dc.l os_sys_ram_mtrace
		dc.l os_sys_ram_mnocod0
		dc.l os_sys_ram_mnocod1
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l os_sys_ram_mlevel2
		dc.l loc_200
		dc.l os_sys_ram_mlevel4
		dc.l loc_200
		dc.l os_sys_ram_mlevel6
		dc.l loc_200
		dc.l os_sys_ram_mtrap00
		dc.l os_sys_ram_mtrap01
		dc.l os_sys_ram_mtrap02
		dc.l os_sys_ram_mtrap03
		dc.l os_sys_ram_mtrap04
		dc.l os_sys_ram_mtrap05
		dc.l os_sys_ram_mtrap06
		dc.l os_sys_ram_mtrap07
		dc.l os_sys_ram_mtrap08
		dc.l os_sys_ram_mtrap09
		dc.l os_sys_ram_mtrap10
		dc.l os_sys_ram_mtrap11
		dc.l os_sys_ram_mtrap12
		dc.l os_sys_ram_mtrap13
		dc.l os_sys_ram_mtrap14
		dc.l os_sys_ram_mtrap15
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.l loc_200
		dc.b "SEGA MEGA DRIVE "
		dc.b "(C)SEGA 1992.MAY"
		dc.b "MEGA-CD BOOT ROM 05/01-1992     02:30      1.11 "
		dc.b "MEGA-CD BOOT ROM                                "
		dc.b "BR 000002-1.11"
		dc.w $f074
		dc.b "J               "
		dc.l 0
		dc.l $1ffff
		dc.l ip_start
		dc.l ip_end
		dc.l $20202020
		dc.l $20202020
		dc.l $20202020
		dc.l $20202020
		dc.b "                                                "
		dc.b "J               "
loc_200:
		lea	os_sys_ram_reset,a0
		move.w	#$4ef9,d0
		move.w	d0,(a0)+
		move.l	#$5ee,(a0)+
_loop:
		bra.s	_loop
		rte
		align $280
		bra.w	$5ee
		bra.w	init
		bra.w	$604
		bra.w	$5fc
		bra.w	$8a6
		bra.w	$90a
		bra.w	0
		bra.w	$1034
		bra.w	$982
		bra.w	$9a6
		bra.w	$9e4
		bra.w	$936
		bra.w	$940
		bra.w	$9ee
		bra.w	$9ec
		bra.w	$a1e
		bra.w	$a20
		bra.w	0
		bra.w	$bb8
		bra.w	$c58
		bra.w	$a68
		bra.w	$abe
		bra.w	$c7c
		bra.w	$c96
		bra.w	$cac
		bra.w	0
		bra.w	$cc4
		bra.w	bitdevdatr
		bra.w	bitdevramr
		bra.w	$175e
		bra.w	$16b6
		bra.w	$16c2
		bra.w	$16d4
		bra.w	$8dc
		bra.w	$8d6
		bra.w	$1324
		bra.w	$13c0
		bra.w	$8f0
		bra.w	$926
		bra.w	$13d4
		bra.w	$141a
		bra.w	$140e
		bra.w	$13fc
		bra.w	$138a
		bra.w	mapdevr
		bra.w	$1458
		bra.w	$1482
		bra.w	$14a2
		bra.w	$1086
		bra.w	$10b6
		bra.w	$1120
		bra.w	$1190
		bra.w	$12a0
		bra.w	$12aa
		bra.w	$12b4
		bra.w	$12be
		bra.w	$4606
		bra.w	$4618
		bra.w	$41a
		bra.w	$c06
		bra.w	$c2c
		bra.w	$b2e
		bra.w	$11ee
		bra.w	$3878
		bra.w	$14b4
		bra.w	$c84
		bra.w	$d2a
		bra.w	$d86
		bra.w	$d72
		bra.w	$14e4
		bra.w	$14f4
		bra.w	$1532
		bra.w	$150a
sub_3a4:
		lea	os_sys_ram_reset,a0
		move.w	#$4ef9,d0
		move.w	d0,(a0)+
		move.l	#$5ee,(a0)+
		move.w	d0,(a0)+
		move.l	#$86e,(a0)+
		lea	$86c,a1
		moveq	#$12-1,d1
_loop1:
		move.w	d0,(a0)+
		move.l	a1,(a0)+
		dbf	d1,_loop1
		lea	loc_200.l,a1
		moveq	#8-1,d1
_loop2:
		move.w	d0,(a0)+
		move.l	a1,(a0)+
		dbf	d1,_loop2
		move.w	d0,(a0)+
		move.l	#_end,(a0)+
		move.w	d0,(a0)+
		move.l	#$5c58,(a0)
		lea	RAM_CARTRIDG(pc),a1
		lea	$400001,a2
		tst.b	(a2)
		bpl.s	_end
		lea	$f(a2),a2
		moveq	#RAM_CARTRIDG_END-RAM_CARTRIDG-1,d1
_loop3:
		cmpm.w	(a1)+,(a2)+
		dbne	d1,_loop3
		bne.s	_end
		move.l	#$400020,(a0)
_end:
		rts
RAM_CARTRIDG:
		dc.b "RAM_CARTRIDG"
RAM_CARTRIDG_END:
sub_41a:
		move.l	a1,os_sys_ram_mlevel6+2
		rts
sub_420:
		move.l	a1,os_sys_ram_mint_ex+2
		rts
init:
		ori.w	#$700,sr
		moveq	#-1,d1
		bsr.w	$1308
		btst.b	#6,REG_CTRL3
		beq.s	ICD_START
		movea.l	0,sp
loc_43e:
		move.w	VDP_CTRL,d3
		btst	#3,d3
		bne.s	loc_43e
		bsr.w	$716
		bra.w	$576
		include	source/icd_blk4.prg
		jsr	$936
		jsr	$982
		bsr.w	$716
		bra.s	loc_584
loc_576:
		cmpi.w	#$4ef9,os_sys_ram_reset
		bne.w	$5ee
		jmp	os_sys_ram
loc_584:
		moveq	#-1,d1
		bsr.w	$1308
		bsr.w	$64e
		bsr.w	$6f8
loc_592:
		jsr	sub_3a4
		bsr.w	$101e
		jsr	z80load
		align $dea
		include	bitdev.asm
z80load:
		lea	z80busreq,a4
		move.w	sr,-(sp)
		ori.w	#$700,sr
		move.w	#$100,(a4)
		move.w	#$100,z80reset-z80busreq(a4)
_loop1:
		btst.b	#0,(a4)
		bne.s	_loop1
		lea	z80start,a6
		lea	z80_11000,a5
		move.w	#z80_11000_end-z80_11000-1,d7
_loop2:
		move.b	(a5)+,(a6)+
		dbf	d7,_loop2
		lea	z80start+$1000,a6
		lea	z80_11f82,a5
		move.w	#z80_11f82_end-z80_11f82-1,d7
_loop3:
		move.b	(a5)+,(a6)+
		dbf	d7,_loop3
		lea	z80start+$1300,a6
		lea	z80_12054,a5
		move.w	#z80_12054_end-z80_12054-1,d7
_loop4:
		move.b	(a5)+,(a6)+
		dbf	d7,_loop4
		move.w	#$000,z80reset-z80busreq(a4)
		move.w	#$000,(a4)
		move.w	#$100,z80reset-z80busreq(a4)
		move.w	(sp)+,sr
		rts
		align $155c
		include	mapdev.asm
		align $11000
z80_11000:
		incbin	sound/11000.bin
z80_11000_end:
		even
z80_11f82:
		incbin	sound/11f82.bin
z80_11f82_end:
		even
z80_12054:
		incbin	sound/12054.bin
z80_12054_end:
		even
		align $13000
		incbin	lze/13000.kos
		even
		align $16000
		incbin	lze/16000.kos
		even
		align $1a000
		incbin	lze/1a000.kos
		even
		align $20000