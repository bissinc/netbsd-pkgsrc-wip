# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/09/20 03:22:16 ykomatsu Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
ZOPE3_UNSTABLE_BUILDLINK3_MK:=	${ZOPE3_UNSTABLE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	zope3-unstable
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nzope3-unstable}
BUILDLINK_PACKAGES+=	zope3-unstable

.if !empty(ZOPE3_UNSTABLE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.zope3-unstable+=	zope3-unstable>=3.1.0c3
BUILDLINK_PKGSRCDIR.zope3-unstable?=	../../wip/zope3-unstable
.endif	# ZOPE3_UNSTABLE_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
