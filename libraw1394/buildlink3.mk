# $NetBSD: buildlink3.mk,v 1.4 2009/05/06 09:33:14 cheusov Exp $

BUILDLINK_TREE+=	libraw1394

.if !defined(LIBRAW1394_BUILDLINK3_MK)
LIBRAW1394_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libraw1394+=	libraw1394>=0.10.1
BUILDLINK_PKGSRCDIR.libraw1394?=	../../wip/libraw1394

.endif # LIBRAW1394_BUILDLINK3_MK

BUILDLINK_TREE+=	-libraw1394
