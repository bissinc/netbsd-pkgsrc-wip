# $NetBSD: buildlink3.mk,v 1.6 2008/12/09 21:40:00 bartoszkuzma Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBASSA_BUILDLINK3_MK:=	${LIBASSA_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libassa
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibassa}
BUILDLINK_PACKAGES+=	libassa
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libassa

.if ${LIBASSA_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libassa+=	libassa>=3.5.0
BUILDLINK_PKGSRCDIR.libassa?=	../../wip/libassa
.endif	# LIBASSA_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
