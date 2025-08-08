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
		move.w	#$4ef9,d0	; jmp (longword)
		move.w	d0,(a0)+
		move.l	#loc_5ee,(a0)+
_loop:
		bra.s	_loop
		rte
		align $280
		bra.w	loc_5ee
		bra.w	init
		bra.w	loc_604
		bra.w	loc_5fc
		bra.w	loc_8a6
		bra.w	loc_90a
		bra.w	ctrlinput
		bra.w	$1034
		bra.w	sub_982
		bra.w	loc_9a6
		bra.w	sub_9e4
		bra.w	sub_936
		bra.w	loc_940
		bra.w	loc_9ee
		bra.w	loc_9ec
		bra.w	loc_a1e
		bra.w	loc_a20
		bra.w	tilemapsetup
		bra.w	$bb8
		bra.w	$c58
		bra.w	loc_a68
		bra.w	sub_abe
		bra.w	$c7c
		bra.w	$c96
		bra.w	$cac
		bra.w	palload
		bra.w	$cc4
		bra.w	bitdevdatr
		bra.w	bitdevramr
		bra.w	$175e
		bra.w	$16b6
		bra.w	$16c2
		bra.w	$16d4
		bra.w	loc_8dc
		bra.w	sub_8d6
		bra.w	$1324
		bra.w	$13c0
		bra.w	loc_8f0
		bra.w	loc_926
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
		bra.w	sub_41a
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
		move.w	#$4ef9,d0	; jmp (longword)
		move.w	d0,(a0)+
		move.l	#loc_5ee,(a0)+
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
		moveq	#(RAM_CARTRIDG_END-RAM_CARTRIDG)/2-1,d1
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
		btst	#1,d3
		bne.s	loc_43e
		bsr.w	sub_716
		bra.w	loc_576
		include	source/icd_blk4.prg
		jsr	sub_936.w
		jsr	sub_982.w
		bsr.w	sub_716
		bra.s	loc_584
loc_576:
		cmpi.w	#$4ef9,os_sys_ram_reset	; jmp (longword)
		bne.w	loc_5ee
		jmp	os_sys_ram
loc_584:
		moveq	#-1,d1
		bsr.w	$1308
		bsr.w	sub_64e
		bsr.w	sub_6f8
loc_592:
		jsr	sub_3a4(pc)
		bsr.w	$101e
		jsr	z80load.w
		bsr.w	sub_69e
		jsr	sub_8d6.w
		bsr.w	$1086
		lea	$a1200f,a4
loc_5b0:
		move.b	(a4),d0
		bne.s	loc_5b0
		moveq	#1,d0
		moveq	#4,d1
		jsr	$12be(pc)
		moveq	#4,d0
		jsr	sub_644.l
loc_5c4:
		lea	$fffffdda,a0
		move.w	(a0),d0
		andi.w	#$7ffc,d0
		jsr	off_5d4(pc,d0.w)
		bra.s	loc_5c4
off_5d4:
		nop
		rts
		bra.w	$1960
		bra.w	$1f78
		bra.w	$45b2
		bra.w	$47b2
		jmp	$ffff0000
loc_5ee:
		ori.w	#$700,sr
		jsr	sub_936.w
		jsr	sub_982.w
		bra.s	loc_592
loc_5fc:
		ori.w	#$700,sr
		movea.l	0,sp
loc_604:
		ori.w	#$700,sr
		jsr	sub_936.w
		jsr	sub_982.w
		jsr	sub_3a4(pc)
		bsr.w	$101e
		jsr	z80load.w
		bsr.w	sub_69e
		jsr	sub_8d6.w
		bsr.w	$1086
		lea	$a1200f,a4
loc_62e:
		move.b	(a4),d0
		bne.s	loc_62e
		bsr.w	$1182
		moveq	#1,d0
		moveq	#8,d1
		jsr	$12be(pc)
		moveq	#8,d0
		bsr.s	sub_644
		bra.s	loc_5c4
sub_644:
		andi.w	#$1c,d0
		move.w	d0,$fffffdda
		rts
sub_64e:
		lea	$a12001,a5
		lea	1(a5),a6
loc_658:
		bset.b	#1,(a5)
		beq.s	loc_658
		move.w	(a6),d5
		moveq	#0,d7
		andi.w	#2,d5
		ori.w	#$40,d5
		move.w	d5,(a6)
		bsr.s	sub_68c
		andi.w	#2,d5
		ori.w	#$80,d5
		move.w	d5,(a6)
		bsr.s	sub_68c
		andi.w	#2,d5
		ori.w	#$c0,d5
		move.w	d5,(a6)
		bsr.s	sub_68c
		andi.w	#2,d5
		move.w	d5,(a6)
sub_68c:
		lea	$20000,a0
		move.w	#$20000/4-1,d0
loc_696:
		move.l	d7,(a0)+
		dbf	d0,loc_696
		rts
sub_69e:
		lea	$a12001,a5
loc_6a4:
		bclr.b	#0,(a5)
		bne.s	loc_6a4
		lea	1(a5),a6
		move.w	(a6),d5
		andi.w	#2,d5
		move.w	d5,(a6)
		lea	lze_16000,a0
		lea	$20000,a1
		bsr.w	unlze
		lea	lze_13000,a0
		lea	$26000,a1
		bsr.w	unlze
		lea	lze_1a000,a0
		lea	$38000,a1
		bsr.w	unlze
		move.b	#$2a,(a6)
loc_6ea:
		bset.b	#0,(a5)
		beq.s	loc_6ea
loc_6f0:
		bclr.b	#1,(a5)
		bne.s	loc_6f0
		rts
sub_6f8:
		btst.b	#2,(a6)
		bne.s	locret_714
		btst.b	#0,(a6)
		beq.s	locret_714
		lea	$200000,a0
		moveq	#-1,d0
		moveq	#0,d7
loc_70e:
		move.l	d7,(a0)
		dbf	d0,loc_70e
locret_714:
		rts
sub_716:
		move.b	REG_VERSION,d0
		andi.b	#$c0,d0
		bne.s	loc_724
		rts
loc_724:
		ori.w	#$700,sr
		jsr	sub_936(pc)
		jsr	$13fc(pc)
		lea	pal_754(pc),a1
		move.l	#$c0000000,VDP_CTRL
		move.l	(a1)+,VDP_DATA
		move.l	#$46060003,d0
		jsr	$13d4(pc)
		jsr	$c7c(pc)
loc_752:
		bra.s	loc_752
pal_754:
		;	cyan,black
		dc.w $ee0,$000
		dc.b "              ERROR!"
		dc.b 0
		even
		dc.b "THIS IS AN NTSC-COMPATIBLE MEGA-CD"
		dc.b 0
		dc.b "  FOR EXCLUSIVE USE IN JAPAN AND"
		dc.b 0
		dc.b "         SOUTHEAST ASIA."
		dc.b $ff
		even
		include	unlze.asm
sub_86c:
		rte
sub_86e:
		movem.l	d0-d7/a0-a6,-(sp)
		bsr.w	$10b6
		tst.b	$fffffe28
		bne.s	loc_890
		bsr.w	$cc4
		btst.b	#1,$fffffe26
		beq.s	loc_890
		jsr	os_sys_ram_mint_ex
		addq.b	#1,$fffffe27
loc_890:
		bsr.w	ctrlinput
		clr.b	$fffffe26
		bsr.w	$1120
		bsr.w	$12d6
		movem.l	(sp)+,d0-d7/a0-a6
		rte
loc_8a6:
		movem.l	d0-d7/a0-a6,-(sp)
		bsr.w	$10b6
		tst.b	$fffffe28
		bne.s	loc_8c8
		bsr.w	$cc4
		btst.b	#1,$fffffe26
		beq.s	loc_8c8
		jsr	os_sys_ram_mint_ex
		addq.b	#1,$fffffe27
loc_8c8:
		bsr.w	ctrlinput
		clr.b	$fffffe26
		movem.l	(sp)+,d0-d7/a0-a6
		rte
sub_8d6:
		ori.w	#$700,sr
		moveq	#3,d0
loc_8dc:
		move.b	d0,$fffffe26
		andi.w	#$f8ff,sr
loc_8e4:
		tst.b	$fffffe26
		bne.s	loc_8e4
		bsr.w	$14a2
		rts
loc_8f0:
		move.l	a1,$fffffd0e
		move.w	a1,$a12006
		bset.b	#4,rg3_dat+1
		move.w	rg3_dat,VDP_CTRL
		rts
loc_90a:
		move.l	a1,$fffffd0e
		move.w	#$fd0c,$a12006
		bset.b	#4,rg3_dat+1
		move.w	rg3_dat,VDP_CTRL
		rts
loc_926:
		bclr.b	#4,$fffffdb5
		move.w	rg3_dat,VDP_CTRL
		rts
sub_936:
		lea	vdp_962(pc),a1	; load vdp table into a1 register
		move.w	#$80,$fffffe2e
loc_940:
		lea	rg3_dat,a2
		moveq	#0,d0	; clear d0
loc_946:
		move.b	(a1),d0	; get high bit
		bpl.s	locret_960	; if zero, exit
		move.w	(a1)+,d1	; get full word of vdp register
		cmpi.b	#$92,d0	; is high bit $92?
		bhi.s	loc_958	; if higher than $92, branch to loc_958
		add.b	d0,d0	; multiply high bit by 2
		move.w	d1,(a2,d0.w)	; store vdp register table into $ffffdb4
loc_958:
		move.w	d1,VDP_CTRL	; use vdp register
		bra.s	loc_946
locret_960:
		rts
vdp_962:
		dc.w $8000+%00000100
		dc.w $8100+%00100100
		dc.w $9000+%00010001
		dc.w $8b00+%00000000
		dc.w $8c00+%10000001
		dc.w $8300+vram_window_plane>>10
		dc.w $8200+vram_plane_a>>10
		dc.w $8400+vram_plane_b>>13
		dc.w $8500+vram_sprtbl>>9
		dc.w $8d00+vram_hscroll>>10
		dc.w $8700+%00000000
		dc.w $8a00+%00000000
		dc.w $8f00+%00000010
		dc.w $9100+%00000000
		dc.w $9200+%00000000
		dc.w 0
sub_982:
		move.l	#$c0000000,VDP_CTRL
		move.w	#0,VDP_DATA
		bsr.w	sub_9e4
		move.l	#$40000000,d0
		move.w	#$ffff,d1
		bra.w	loc_a1e
loc_9a6:
		bsr.s	sub_9ca
		bsr.w	sub_a0c
		bsr.w	sub_a14
		bra.w	loc_a00
		move.l	#$7c000002,VDP_CTRL
		move.l	#0,VDP_DATA
		rts
sub_9ca:
		clr.l	$fffff900
		move.l	#$78000002,VDP_CTRL
		move.l	#0,VDP_DATA
		rts
sub_9e4:
		move.l	#$40000010,d0
		moveq	#$50/2-1,d1
loc_9ec:
		moveq	#0,d2
loc_9ee:
		move.l	d0,VDP_CTRL
loc_9f4:
		move.w	d2,VDP_DATA
		dbf	d1,loc_9f4
		rts
loc_a00:
		move.l	#$60000002,d0
		move.w	#$dff,d1
		bra.s	loc_a1e
sub_a0c:
		move.l	#$40000003,d0
		bra.s	loc_a1a
sub_a14:
		move.l	#$60000003,d0
loc_a1a:
		move.w	#$1fff,d1
loc_a1e:
		moveq	#0,d2
loc_a20:
		lea	VDP_CTRL,a6
		move.w	#$8f00+%00000001,(a6)
		move.w	rg4_dat,d3
		bset	#4,d3
		move.w	d3,(a6)
		move.l	#$940000,d3
		move.w	d1,d3
		lsl.l	#8,d3
		move.w	#$9300,d3
		move.b	d1,d3
		move.l	d3,(a6)
		move.w	#$9780,(a6)
		ori.l	#$40000080,d0
		move.l	d0,(a6)
		move.b	d2,VDP_DATA-VDP_CTRL(a6)
loc_a56:
		move.w	(a6),d3
		btst	#1,d3
		bne.s	loc_a56
		move.w	rg4_dat,(a6)
		move.w	#$8f00+%00000010,(a6)
		rts
loc_a68:
		lea	VDP_CTRL,a6
		move.w	rg4_dat,d3
		bset	#4,d3
		move.w	d3,(a6)
		asr.l	#1,d1
		move.l	#$940000,d3
		move.w	d2,d3
		lsl.l	#8,d3
		move.w	#$9300,d3
		move.b	d2,d3
		move.l	d3,(a6)
		move.l	#$960000,d3
		move.w	d1,d3
		lsl.l	#8,d3
		move.w	#$9500,d3
		move.b	d1,d3
		move.l	d3,(a6)
		swap	d1
		move.w	#$9700,d3
		move.b	d1,d3
		move.w	d3,(a6)
		ori.l	#$40000080,d0
		swap	d0
		move.w	d0,(a6)
		swap	d0
		move.w	d0,-(sp)
		move.w	(sp)+,(a6)
		move.w	rg4_dat,(a6)
		rts
sub_abe:
		move.l	a1,-(sp)
		movea.l	d1,a1
		addq.l	#2,d1
		asr.l	#1,d1
		lea	VDP_CTRL,a6
		move.w	#$8f00+%00000010,(a6)
		move.w	rg4_dat,d3
		bset	#4,d3
		move.w	d3,(a6)
		move.l	#$940000,d3
		move.w	d2,d3
		lsl.l	#8,d3
		move.w	#$9300,d3
		move.b	d2,d3
		move.l	d3,(a6)
		move.l	#$960000,d3
		move.w	d1,d3
		lsl.l	#8,d3
		move.w	#$9500,d3
		move.b	d1,d3
		move.l	d3,(a6)
		swap	d1
		move.w	#$9700,d3
		move.b	d1,d3
		move.w	d3,(a6)
		ori.l	#$40000080,d0
		swap	d0
		move.w	d0,(a6)
		swap	d0
		move.w	d0,-(sp)
		move.w	(sp)+,(a6)
		move.w	rg4_dat,(a6)
		andi.w	#$ff7f,d0
		move.l	d0,(a6)
		move.l	(a1),VDP_DATA-VDP_CTRL(a6)
		move.w	rg18_dat,(a6)
		movea.l	(sp)+,a1
		rts
		align $b94
tilemapsetup:
		lea	VDP_DATA,a5
		move.w	#0,-(sp)
		move.w	$fffffe2e,-(sp)
loc_ba2:
		move.l	d0,VDP_CTRL-VDP_DATA(a5)
		move.w	d1,d3
loc_ba8:
		move.w	(a1)+,(a5)
		dbf	d3,loc_ba8
		add.l	(sp),d0
		dbf	d2,loc_ba2
		addq.w	#4,sp
		rts
		align $ca6
palload:
		bset.b	#0,$fffffe29
loc_cac:
		move.l	a3,-(sp)
		moveq	#0,d0
		move.b	(a1)+,d0
		lea	color_ram,a3
		adda.w	d0,a3
		move.b	(a1)+,d0
loc_cba:
		move.w	(a1)+,(a3)+
		dbf	d0,loc_cba
		movea.l	(sp)+,a3
		rts
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
sub_f98:
		move.b	#$e3,d7
sndset:
		move.w	sr,-(sp)
		ori.w	#$700,sr
		z80bus_on
		z80bus_wait
		move.b	d7,z80start+$1c0a
		z80bus_off
		move.w	(sp)+,sr
		rts
ctrlinput:
		z80bus_on
		z80bus_wait
		bsr.s	sub_fe4
		z80bus_off
		rts
sub_fe4:
		lea	$fffffe20,a5
		lea	REG_DATA1,a6
		bsr.w	sub_ff4
		addq.w	#2,a6
sub_ff4:
		move.b	#0,(a6)
		nop
		nop
		move.b	(a6),d7
		asl.b	#2,d7
		move.b	#$40,(a6)
		andi.w	#$c0,d7
		move.b	(a6),d6
		andi.w	#$3f,d6
		or.b	d6,d7
		not.b	d7
		move.b	(a5),d6
		eor.b	d7,d6
		move.b	d7,(a5)+
		and.b	d7,d6
		move.b	d6,(a5)+
		rts
sub_101e:
		moveq	#$40,d7
		move.b	d7,REG_CTRL1
		move.b	d7,REG_CTRL2
		move.b	d7,REG_CTRL3
		rts
		align $155c
		include	mapdev.asm
		align $9000
		incbin	bitdev/9000.nem
		even
		incbin	bitdev/9248.nem
		even
		incbin	bitdev/9310.nem
		even
		incbin	bitdev/9588.nem
		even
		incbin	bitdev/95de.nem
		even
		incbin	bitdev/979a.nem
		even
		incbin	bitdev/9a7c.nem
		even
		incbin	bitdev/9b64.nem
		even
		incbin	bitdev/a184.nem
		even
		incbin	bitdev/a1f4.nem
		even
		align $a4ae
		incbin	bitdev/a4ae.nem
		even
		incbin	bitdev/a4e0.nem
		even
		align $cafc
		incbin	bitdev/cafc.nem
		even
		align $eece
		incbin	bitdev/eece.nem
		even
		align $f168
		incbin	bitdev/f168.nem
		even
		incbin	bitdev/f28a.nem
		even
		incbin	bitdev/f40c.nem
		even
		incbin	bitdev/f5f2.nem
		even
		align $f7dc
		incbin	bitdev/f7dc.nem
		even
		incbin	bitdev/f8ee.nem
		even
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
lze_13000:
		incbin	lze/13000.kos
		even
		align $16000
lze_16000:
		incbin	lze/16000.kos
		even
		align $1a000
lze_1a000:
		incbin	lze/1a000.kos
		even
		align $20000