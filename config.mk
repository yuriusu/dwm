# dwm version
VERSION = 6.2

# Directory paths
PREFIX = /usr
MANPREFIX = ${PREFIX}/share/man

# X11
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama
XINERAMAFLAGS = -DXINERAMA
XINERAMALIBS  = -lXinerama

# Xft
FREETYPEINC = /usr/include/freetype2
FREETYPELIBS = -lfontconfig -lXft

# Flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I${X11INC} -I${FREETYPEINC} ${CPPFLAGS}
LDFLAGS  = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}

# Compiler and linker
CC = cc

# Default shell
SHELL = /usr/bin/bash
