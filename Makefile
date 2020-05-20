#############################################################################
# Makefile for building: loginteller
# 20120508 - www.binefa.cat
#############################################################################

####### Compiler, tools and options
CC              = gcc
CFLAGS          = -o
# COPY          = cp -f
# COPY_FILE     = $(COPY)
# COPY_DIR      = $(COPY) -r
# INSTALL_FILE  = install -m 644 -p
# INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE        = rm -f
# SYMLINK       = ln -f -s
# DEL_DIR       = rmdir
# MOVE          = mv -f
# CHK_DIR_EXISTS= test -d
# MKDIR         = mkdir -p

####### Files
SOURCES 	  = loginteller.c
DESTDIR       = /usr/bin
TARGET        = loginteller

####### Compilation
loginteller:
	$(CC) $(SOURCES) $(CFLAGS) $(TARGET)

clean:
	$(DEL_FILE) $(TARGET)

####### Install
install: $(TARGET)
	$(INSTALL_PROGRAM) $(TARGET) $(DESTDIR)
#	install -m 755 $(TARGET) $(DESTDIR)

uninstall:
	$(DEL_FILE) $(DESTDIR)/$(TARGET)
#	rm -f $(DESTDIR)/$(TARGET)

