/* JiniHelloImpl.c	Created      : Sat Oct 13 08:16:43 2012 */
#include <stdio.h>
#include <JNIHello.h>

JNIEXPORT void JNICALL Java_JNIHello_hello(JNIEnv * env, jclass cls)
{
  printf("hello JNI\n");
}
