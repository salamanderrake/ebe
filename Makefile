#############################################################################
# Makefile for building: qtebe
# Generated by qmake (2.01a) (Qt 4.8.3) on: Tue Nov 20 11:01:16 2012
# Project:  qtebe.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile qtebe.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_NO_DEBUG -DQT_WEBKIT_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtWebKit -I/usr/include/qt4 -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtWebKit -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		sourcewindow.cpp \
		commandline.cpp \
		sourceedit.cpp moc_mainwindow.cpp \
		moc_sourcewindow.cpp \
		moc_commandline.cpp \
		moc_sourceedit.cpp \
		qrc_ebe.cpp
OBJECTS       = main.o \
		mainwindow.o \
		sourcewindow.o \
		commandline.o \
		sourceedit.o \
		moc_mainwindow.o \
		moc_sourcewindow.o \
		moc_commandline.o \
		moc_sourceedit.o \
		qrc_ebe.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		qtebe.pro
QMAKE_TARGET  = qtebe
DESTDIR       = 
TARGET        = qtebe

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: qtebe.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtWebKit.prl \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile qtebe.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtWebKit.prl:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile qtebe.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/qtebe1.0.0 || $(MKDIR) .tmp/qtebe1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/qtebe1.0.0/ && $(COPY_FILE) --parents mainwindow.h sourcewindow.h commandline.h sourceedit.h .tmp/qtebe1.0.0/ && $(COPY_FILE) --parents ebe.qrc .tmp/qtebe1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp sourcewindow.cpp commandline.cpp sourceedit.cpp .tmp/qtebe1.0.0/ && (cd `dirname .tmp/qtebe1.0.0` && $(TAR) qtebe1.0.0.tar qtebe1.0.0 && $(COMPRESS) qtebe1.0.0.tar) && $(MOVE) `dirname .tmp/qtebe1.0.0`/qtebe1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/qtebe1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_sourcewindow.cpp moc_commandline.cpp moc_sourceedit.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_sourcewindow.cpp moc_commandline.cpp moc_sourceedit.cpp
moc_mainwindow.cpp: sourcewindow.h \
		mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_sourcewindow.cpp: sourcewindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) sourcewindow.h -o moc_sourcewindow.cpp

moc_commandline.cpp: sourcewindow.h \
		commandline.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) commandline.h -o moc_commandline.cpp

moc_sourceedit.cpp: sourceedit.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) sourceedit.h -o moc_sourceedit.cpp

compiler_rcc_make_all: qrc_ebe.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_ebe.cpp
qrc_ebe.cpp: ebe.qrc \
		html/editing.html \
		html/about.html \
		html/breakpoints.html \
		html/projects.html \
		html/start.html \
		html/running.html \
		images/ebe64.png
	/usr/bin/rcc -name ebe ebe.qrc -o qrc_ebe.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		sourcewindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		sourcewindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

sourcewindow.o: sourcewindow.cpp sourcewindow.h \
		sourceedit.h \
		commandline.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sourcewindow.o sourcewindow.cpp

commandline.o: commandline.cpp commandline.h \
		sourcewindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o commandline.o commandline.cpp

sourceedit.o: sourceedit.cpp sourceedit.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sourceedit.o sourceedit.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_sourcewindow.o: moc_sourcewindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_sourcewindow.o moc_sourcewindow.cpp

moc_commandline.o: moc_commandline.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_commandline.o moc_commandline.cpp

moc_sourceedit.o: moc_sourceedit.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_sourceedit.o moc_sourceedit.cpp

qrc_ebe.o: qrc_ebe.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_ebe.o qrc_ebe.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

