$NetBSD$

add NetBSD support

--- include/SFML/Config.hpp.orig	2018-10-15 19:41:39.000000000 +0000
+++ include/SFML/Config.hpp
@@ -86,6 +86,11 @@
         // FreeBSD
         #define SFML_SYSTEM_FREEBSD
 
+    #elif defined(__NetBSD__)
+
+        // NetBSD
+        #define SFML_SYSTEM_NETBSD
+
     #elif defined(__OpenBSD__)
 
         // OpenBSD
