$NetBSD: patch-src_ivch_ivch.c,v 1.1 2013/05/25 13:09:48 thomasklausner Exp $

--- src/ivch/ivch.c.orig	2009-04-08 23:59:48.000000000 +0000
+++ src/ivch/ivch.c
@@ -31,7 +31,6 @@
 
 #include "xf86.h"
 #include "xf86_OSproc.h"
-#include "xf86Resources.h"
 #include "compiler.h"
 #include "miscstruct.h"
 #include "xf86i2c.h"
