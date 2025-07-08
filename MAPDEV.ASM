mapdevr:
		movem.l	d0-d7/a3-a6,-(sp)
		movea.w	d0,a3
		move.b	(a1)+,d0
		ext.w	d0
		movea.w	d0,a5
		move.b	(a1)+,d0
		ext.w	d0
		ext.l	d0
		ror.l	#1,d0
		ror.w	#1,d0
		move.l	d0,d4
		movea.w	(a1)+,a6
		adda.w	a3,a6
		movea.w	(a1)+,a4
		adda.w	a3,a4
		move.b	(a1)+,d5
		asl.w	#8,d5
		move.b	(a1)+,d5
		moveq	#16,d6
loc_1584:
		moveq	#7,d0
		move.w	d6,d7
		sub.w	d0,d7
		move.w	d5,d1
		lsr.w	d7,d1
		andi.w	#$7F,d1
		move.w	d1,d2
		cmpi.w	#$40,d1
		bcc.s	loc_159E
		moveq	#6,d0
		lsr.w	#1,d2
loc_159E:
		bsr.w	sub_16A6
		andi.w	#$F,d2
		lsr.w	#4,d1
		add.w	d1,d1
		jmp	loc_15FA(pc,d1.w)
loc_15AE:
		move.w	a6,(a2)+
		addq.w	#1,a6
		dbf	d2,loc_15AE
		bra.s	loc_1584
loc_15B8:
		move.w	a4,(a2)+
		dbf	d2,loc_15B8
		bra.s	loc_1584
loc_15C0:
		bsr.w	sub_1622
loc_15C4:
		move.w	d1,(a2)+
		dbf	d2,loc_15C4
		bra.s	loc_1584
loc_15CC:
		bsr.w	sub_1622
loc_15D0:
		move.w	d1,(a2)+
		addq.w	#1,d1
		dbf	d2,loc_15D0
		bra.s	loc_1584
loc_15DA:
		bsr.w	sub_1622
loc_15DE:
		move.w	d1,(a2)+
		subq.w	#1,d1
		dbf	d2,loc_15DE
		bra.s	loc_1584
loc_15E8:
		cmpi.w	#$F,d2
		beq.s	loc_160A
loc_15EE:
		bsr.w	sub_1622
		move.w	d1,(a2)+
		dbf	d2,loc_15EE
		bra.s	loc_1584
loc_15FA:
		bra.s	loc_15AE
		bra.s	loc_15AE
		bra.s	loc_15B8
		bra.s	loc_15B8
		bra.s	loc_15C0
		bra.s	loc_15CC
		bra.s	loc_15DA
		bra.s	loc_15E8
loc_160A:
		subq.w	#1,a1
		cmpi.w	#16,d6
		bne.s	loc_1614
		subq.w	#1,a1
loc_1614:
		move.w	a1,d0
		lsr.w	#1,d0
		bcc.s	loc_161C
		addq.w	#1,a1
loc_161C:
		movem.l	(sp)+,d0-d7/a3-a6
		rts
sub_1622:
		move.w	a3,d3
		swap	d4
		bpl.s	loc_1632
		subq.w	#1,d6
		btst	d6,d5
		beq.s	loc_1632
		ori.w	#$1000,d3
loc_1632:
		swap	d4
		bpl.s	loc_1640
		subq.w	#1,d6
		btst	d6,d5
		beq.s	loc_1640
		ori.w	#$800,d3
loc_1640:
		move.w	d5,d1
		move.w	d6,d7
		sub.w	a5,d7
		bcc.s	loc_1670
		move.w	d7,d6
		addi.w	#$10,d6
		neg.w	d7
		lsl.w	d7,d1
		move.b	(a1),d5
		rol.b	d7,d5
		add.w	d7,d7
		and.w	dat_1686-2(pc,d7.w),d5
		add.w	d5,d1
loc_165E:
		move.w	a5,d0
		add.w	d0,d0
		and.w	dat_1686-2(pc,d0.w),d1
		add.w	d3,d1
		move.b	(a1)+,d5
		lsl.w	#8,d5
		move.b	(a1)+,d5
		rts
loc_1670:
		beq.s	loc_1682
		lsr.w	d7,d1
		move.w	a5,d0
		add.w	d0,d0
		and.w	dat_1686-2(pc,d0.w),d1
		add.w	d3,d1
		move.w	a5,d0
		bra.s	sub_16A6
loc_1682:
		moveq	#16,d6
loc_1684:
		bra.s	loc_165E
dat_1686:
		dc.w 1
		dc.w 3
		dc.w 7
		dc.w $F
		dc.w $1F
		dc.w $3F
		dc.w $7F
		dc.w $FF
		dc.w $1FF
		dc.w $3FF
		dc.w $7FF
		dc.w $FFF
		dc.w $1FFF
		dc.w $3FFF
		dc.w $7FFF
		dc.w $FFFF
sub_16A6:
		sub.w	d0,d6
		cmpi.w	#9,d6
		bcc.s	locret_16B4
		addq.w	#8,d6
		asl.w	#8,d5
		move.b	(a1)+,d5
locret_16B4:
		rts