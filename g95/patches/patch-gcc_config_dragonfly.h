$NetBSD: patch-gcc_config_dragonfly.h,v 1.1 2013/06/21 07:38:52 makoto Exp $

DragonFly BSD support.

--- ../gcc-4.1.2/gcc/config/dragonfly.h.orig	2013-05-19 08:51:14.000000000 +0000
+++ ../gcc-4.1.2/gcc/config/dragonfly.h
@@ -0,0 +1,87 @@
+/* Base configuration file for all DragonFly targets.
+   Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
+
+This file is part of GCC.
+
+GCC is free software; you can redistribute it and/or modify
+it under the terms of the GNU General Public License as published by
+the Free Software Foundation; either version 2, or (at your option)
+any later version.
+
+GCC is distributed in the hope that it will be useful,
+but WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+GNU General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with GCC; see the file COPYING.  If not, write to
+the Free Software Foundation, 59 Temple Place - Suite 330,
+Boston, MA 02111-1307, USA.  */
+
+/* Common DragonFly configuration. 
+   All DragonFly architectures should include this file, which will specify
+   their commonalities.
+   Adapted from gcc/config/i386/freebsd-elf.h by 
+   David O'Brien <obrien@FreeBSD.org>.  
+   Further work by David O'Brien <obrien@FreeBSD.org> and
+   Loren J. Rittle <ljrittle@acm.org>.  */
+
+
+/* In case we need to know.  */
+#define USING_CONFIG_DRAGONFLY 1
+
+/* This defines which switch letters take arguments.  On DragonFly, most of
+   the normal cases (defined in gcc.c) apply, and we also have -h* and
+   -z* options (for the linker) (coming from SVR4).
+   We also have -R (alias --rpath), no -z, --soname (-h), --assert etc.  */
+
+#undef  SWITCH_TAKES_ARG
+#define SWITCH_TAKES_ARG(CHAR) (DFLY_SWITCH_TAKES_ARG(CHAR))
+
+#undef  WORD_SWITCH_TAKES_ARG
+#define WORD_SWITCH_TAKES_ARG(STR) (DFLY_WORD_SWITCH_TAKES_ARG(STR))
+
+#undef  TARGET_OS_CPP_BUILTINS
+#define TARGET_OS_CPP_BUILTINS() DFLY_TARGET_OS_CPP_BUILTINS()
+
+#undef  CPP_SPEC
+#define CPP_SPEC DFLY_CPP_SPEC
+
+#undef  STARTFILE_SPEC
+#define STARTFILE_SPEC DFLY_STARTFILE_SPEC
+
+#undef  ENDFILE_SPEC
+#define ENDFILE_SPEC DFLY_ENDFILE_SPEC
+
+#undef  LIB_SPEC
+#define LIB_SPEC DFLY_LIB_SPEC
+
+
+/************************[  Target stuff  ]***********************************/
+
+/* All DragonFly Architectures support the ELF object file format.  */
+#undef  OBJECT_FORMAT_ELF
+#define OBJECT_FORMAT_ELF
+
+/* Don't assume anything about the header files.  */
+#undef  NO_IMPLICIT_EXTERN_C
+#define NO_IMPLICIT_EXTERN_C	1
+
+/* Make gcc agree with DragonFly's standard headers (<stddef.h>, etc...)  */
+
+#undef  WCHAR_TYPE
+#define WCHAR_TYPE "int"
+
+#define MATH_LIBRARY_PROFILE    "-lm_p"
+
+/* Code generation parameters.  */
+
+/* Use periods rather than dollar signs in special g++ assembler names.
+   This ensures the configuration knows our system correctly so we can link
+   with libraries compiled with the native cc.  */
+#undef NO_DOLLAR_IN_LABEL
+
+/* Used by libgcc2.c.  We support file locking with fcntl / F_SETLKW.
+   This enables the test coverage code to use file locking when exiting a
+   program, which avoids race conditions if the program has forked.  */
+#define TARGET_HAS_F_SETLKW
