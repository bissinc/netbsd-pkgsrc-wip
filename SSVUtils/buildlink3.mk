# $NetBSD$

BUILDLINK_TREE+=	SSVUtils

.if !defined(SSVUTILS_BUILDLINK3_MK)
SSVUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SSVUtils+=	SSVUtils>=20130714
BUILDLINK_PKGSRCDIR.SSVUtils?=		../../wip/SSVUtils

SSVUTILS_MODULE=	${PREFIX}/lib/cmake/SSVUtils

.endif	# SSVUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-SSVUtils
