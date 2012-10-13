#! /bin/sh
# run.sh		Created      : Sat Oct 13 09:28:09 2012
#			Last modified: Sat Oct 13 09:28:42 2012
############################################################
# Written by Takashi Masuyama <mamewo@dk9.so-net.ne.jp>

env LD_LIBRARY_PATH=lib:$LD_LIBRARY_PATH java -classpath bin/classes JNIHello
