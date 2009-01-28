# $NetBSD: buildlink3.mk,v 1.2 2009/01/28 10:44:04 mwdavies Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PHONON_BUILDLINK3_MK:=	${PHONON_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	phonon
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nphonon}
BUILDLINK_PACKAGES+=	phonon
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}phonon

.if ${PHONON_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.phonon+=	phonon>=4.1.83
BUILDLINK_PKGSRCDIR.phonon?=	../../wip/phonon
.endif	# PHONON_BUILDLINK3_MK

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
