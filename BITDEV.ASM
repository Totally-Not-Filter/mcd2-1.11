bitdevdatr:
		movem.l	d0-d7/a1-a5,-(sp)
		lea	sub_e70(pc),a3
		lea	VDP_CTRL,a2
		bra.s	loc_e02
bitdevramr:
		movem.l	d0-d7/a1-a5,-(sp)
		lea	loc_e86(pc),a3
loc_e02:
		lea	bitdevwk,a4
		move.w	(a1)+,d2
		add.w	d2,d2
		bcc.s	loc_e10
		adda.w	#loc_e7a-sub_e70,a3
loc_e10:
		lsl.w	#2,d2
		movea.w	d2,a5
		moveq	#8,d3
		moveq	#0,d2
		moveq	#0,d4
		bsr.w	sub_ea0
		move.b	(a1)+,d5
		asl.w	#8,d5
		move.b	(a1)+,d5
		moveq	#16,d6
loc_e26:
		moveq	#8,d0
		bsr.w	sub_f02
		cmpi.w	#$fc,d1
		bcc.s	loc_e62
		add.w	d1,d1
		move.b	(a4,d1.w),d0
		ext.w	d0
		bsr.w	sub_f16
		move.b	1(a4,d1.w),d1
loc_e42:
		move.w	d1,d0
		andi.w	#$f,d1
		andi.w	#$f0,d0
		lsr.w	#4,d0
loc_e4e:
		lsl.l	#4,d4
		or.b	d1,d4
		subq.w	#1,d3
		bne.s	loc_e5c
		jmp	(a3)
loc_e58:
		moveq	#0,d4
		moveq	#8,d3
loc_e5c:
		dbf	d0,loc_e4e
		bra.s	loc_e26
loc_e62:
		moveq	#6,d0
		bsr.w	sub_f16
		moveq	#7,d0
		bsr.w	sub_f12
		bra.s	loc_e42
sub_e70:
		move.l	d4,(a2)
		subq.w	#1,a5
		move.w	a5,d4
		bne.s	loc_e58
		bra.s	loc_e9a
loc_e7a:
		eor.l	d4,d2
		move.l	d2,(a2)
		subq.w	#1,a5
		move.w	a5,d4
		bne.s	loc_e58
		bra.s	loc_e9a
loc_e86:
		move.l	d4,(a2)+
		subq.w	#1,a5
		move.w	a5,d4
		bne.s	loc_e58
		bra.s	loc_e9a
loc_e90:
		eor.l	d4,d2
		move.l	d2,(a2)+
		subq.w	#1,a5
		move.w	a5,d4
		bne.s	loc_e58
loc_e9a:
		movem.l	(sp)+,d0-d7/a1-a5
		rts
sub_ea0:
		move.b	(a1)+,d0
loc_ea2:
		cmpi.b	#$ff,d0
		bne.s	loc_eaa
		rts
loc_eaa:
		move.w	d0,d7
loc_eac:
		move.b	(a1)+,d0
		bmi.s	loc_ea2
		move.b	d0,d1
		andi.w	#$f,d7
		andi.w	#$70,d1
		or.w	d1,d7
		andi.w	#$f,d0
		move.b	d0,d1
		lsl.w	#8,d1
		or.w	d1,d7
		moveq	#8,d1
		sub.w	d0,d1
		bne.s	loc_ed6
		move.b	(a1)+,d0
		add.w	d0,d0
		move.w	d7,(a4,d0.w)
		bra.s	loc_eac
loc_ed6:
		move.b	(a1)+,d0
		lsl.w	d1,d0
		add.w	d0,d0
		moveq	#1,d5
		lsl.w	d1,d5
		subq.w	#1,d5
		lea	(a4,d0.w),a4
loc_ee6:
		move.w	d7,(a4)+
		dbf	d5,loc_ee6
		lea	bitdevwk,a4
loc_ef0:
		bra.s	loc_eac
dat_ef2:
		dc.w	1
		dc.w	3
		dc.w	7
		dc.w	$f
		dc.w	$1f
		dc.w	$3f
		dc.w	$7f
		dc.w	$ff
sub_f02:
		move.w	d6,d7
		sub.w	d0,d7
		move.w	d5,d1
		lsr.w	d7,d1
		add.w	d0,d0
		and.w	dat_ef2-2(pc,d0.w),d1
		rts
sub_f12:
		bsr.s	sub_f02
		lsr.w	#1,d0
sub_f16:
		sub.w	d0,d6
		cmpi.w	#9,d6
		bcc.s	locret_f24
		addq.w	#8,d6
		asl.w	#8,d5
		move.b	(a1)+,d5
locret_f24:
		rts