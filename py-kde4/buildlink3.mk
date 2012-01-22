# $NetBSD: buildlink3.mk,v 1.1 2012/01/22 22:02:16 mwdavies Exp $

BUILDLINK_TREE+=	py-kde4

.if !defined(PY_KDE4_BUILDLINK3_MK)
PY_KDE4_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-kde4+=	${PYPKGPREFIX}-kde4>=4.8.0
BUILDLINK_PKGSRCDIR.py-kde4?=	../../wip/py-kde4

.endif # PY_KDE4_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-kde4
