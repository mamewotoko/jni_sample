#! /bin/sh
# compile.sh		Created      : Sat Oct 13 09:02:19 2012
#			Last modified: Sat Oct 13 09:16:49 2012
############################################################
# Written by Takashi Masuyama <mamewo@dk9.so-net.ne.jp>

gcc -I /opt/jdk1.7.0_05/include/ -I /opt/jdk1.7.0_05/include/linux -I include -shared -fPIC csrc/JNIHello.c -o lib/libJNIHello.so
