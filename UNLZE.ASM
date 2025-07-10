unlze:
		subq.l	#2,sp
		move.b	(a0)+,1(sp)
		move.b	(a0)+,(sp)
		move.w	(sp),d5
		moveq	#$10-1,d4
loc_7d8:
		lsr.w	#1,d5
		move.w	sr,d6
		dbf	d4,loc_7ea
		move.b	(a0)+,1(sp)
		move.b	(a0)+,(sp)
		move.w	(sp),d5
		moveq	#$10-1,d4
loc_7ea:
		move.w	d6,ccr
		bcc.s	loc_7f2
		move.b	(a0)+,(a1)+
		bra.s	loc_7d8
loc_7f2:
		moveq	#0,d3
		lsr.w	#1,d5
		move.w	sr,d6
		dbf	d4,loc_806
		move.b	(a0)+,1(sp)
		move.b	(a0)+,(sp)
		move.w	(sp),d5
		moveq	#$10-1,d4
loc_806:
		move.w	d6,ccr
		bcs.s	loc_836
		lsr.w	#1,d5
		dbf	d4,loc_81a
		move.b	(a0)+,1(sp)
		move.b	(a0)+,(sp)
		move.w	(sp),d5
		moveq	#$10-1,d4
loc_81a:
		roxl.w	#1,d3
		lsr.w	#1,d5
		dbf	d4,loc_82c
		move.b	(a0)+,1(sp)
		move.b	(a0)+,(sp)
		move.w	(sp),d5
		moveq	#$10-1,d4
loc_82c:
		roxl.w	#1,d3
		addq.w	#1,d3
		moveq	#-1,d2
		move.b	(a0)+,d2
		bra.s	loc_84c
loc_836:
		move.b	(a0)+,d0
		move.b	(a0)+,d1
		moveq	#-1,d2
		move.b	d1,d2
		lsl.w	#5,d2
		move.b	d0,d2
		andi.w	#7,d1
		beq.s	loc_858
		move.b	d1,d3
		addq.w	#1,d3
loc_84c:
		move.b	(a1,d2.w),d0
		move.b	d0,(a1)+
		dbf	d3,loc_84c
		bra.s	loc_7d8
loc_858:
		move.b	(a0)+,d1
		beq.s	loc_868
		cmpi.b	#1,d1
		beq.w	loc_7d8
		move.b	d1,d3
		bra.s	loc_84c
loc_868:
		addq.l	#2,sp
		rts