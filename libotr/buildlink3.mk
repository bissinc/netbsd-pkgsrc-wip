# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/02/26 14:56:33 lexort Exp $
#
BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBOTR_BUILDLINK3_MK:=	${LIBOTR_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libotr
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibotr}
BUILDLINK_PACKAGES+=	libotr

.if !empty(LIBOTR_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libotr+=	libotr>=2.0.1
BUILDLINK_PKGSRCDIR.libotr?=	../../wip/libotr
.endif	# LIBOTR_BUILDLINK3_MK

.include "../../security/libgpg-error/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
