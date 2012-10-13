/* test.c		Created      : Sat Oct 13 08:36:38 2012 */
#include <JNIHello.h>

int
main(int argc, char* argv[])
{
  jclass cls;
  Java_JNIHello_hello(NULL, cls);
}
