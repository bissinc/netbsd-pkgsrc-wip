$NetBSD$

--- plugins/DebuggerCore/unix/netbsd/PlatformProcess.h.orig	2017-02-18 22:55:39.963467225 +0000
+++ plugins/DebuggerCore/unix/netbsd/PlatformProcess.h
@@ -0,0 +1,27 @@
+/*
+Copyright (C) 2015 - 2015 Evan Teran
+                          evan.teran@gmail.com
+
+This program is free software: you can redistribute it and/or modify
+it under the terms of the GNU General Public License as published by
+the Free Software Foundation, either version 2 of the License, or
+(at your option) any later version.
+
+This program is distributed in the hope that it will be useful,
+but WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+GNU General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program.  If not, see <http://www.gnu.org/licenses/>.
+*/
+
+#ifndef PLATOFORM_PROCESS_20150517_H_
+#define PLATOFORM_PROCESS_20150517_H_
+
+#include "IProcess.h"
+
+class PlatformProcess : public IProcess {
+};
+
+#endif
