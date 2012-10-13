### Makefile		Created      : Sat Oct 13 09:30:25 2012
###			Last modified: Sat Oct 13 09:34:42 2012

CLASS_DIR=bin/classes

# for linux
JAVA_HOME=/opt/jdk1.7.0_05
INCLUDE_OPT=-I $(JAVA_HOME)/include/ -I $(JAVA_HOME)/include/linux -I include

all:
	javac -d $(CLASS_DIR) src/main/java/JNIHello.java
	javah -d src/main/c/include -jni -classpath $(CLASS_DIR) JNIHello
	gcc -shared -fPIC $(INCLUDE_OPT) -I src/main/c/include -o lib/libJNIHello.so src/main/c/JNIHello.c

run:
	LD_LIBRARY_PATH=lib:$LD_LIBRARY_PATH java -classpath bin/classes JNIHello

clean:
	find . -name '*~' | xargs rm
	rm src/main/c/include/*.h
	rm bin/classes/*