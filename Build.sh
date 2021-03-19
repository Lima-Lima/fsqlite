CC=gcc
CFLAGS=-g
SRCDIR=./src
DEFINES=-DLOWERCASE 

$CC -c $CFLAGS $SRCDIR/sqlite3.c $DEFINES -o $BUILD_DIR/sqlite3.o -lpthread -ldl
$CC -c $CFLAGS $SRCDIR/csqlite.c $DEFINES -o $BUILD_DIR/csqlite.o -lpthread -ldl
$FC -c $FFLAGS $SRCDIR/fsqlite.f90 -o $BUILD_DIR/fsqlite.o -J $BUILD_DIR
ar r --output $BUILD_DIR $BUILD_DIR/libfsqlite.a $BUILD_DIR/fsqlite.o $BUILD_DIR/csqlite.o $BUILD_DIR/sqlite3.o

