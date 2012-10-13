#! /bin/sh
# build.sh		Created      : Sat Oct 13 09:20:43 2012
#			Last modified: Sat Oct 13 09:29:44 2012
############################################################
# Written by Takashi Masuyama <mamewo@dk9.so-net.ne.jp>

CLASS_DIR=bin/classes

# for linux
JAVA_HOME=/opt/jdk1.7.0_05
INCLUDE_OPT="-I $JAVA_HOME/include/ -I $JAVA_HOME/include/linux -I include"

javac -d $CLASS_DIR src/main/java/JNIHello.java
javah -d src/main/c/include -jni -classpath $CLASS_DIR JNIHello

gcc -shared -fPIC $INCLUDE_OPT -I src/main/c/include -o lib/libJNIHello.so src/main/c/JNIHello.c
