// JNIHello.java	Created      : Sat Oct 13 08:13:53 2012
//			Last modified: Sat Oct 13 09:13:28 2012
// Compile: javac JNIHello.java #
// Execute: java JNIHello #
// FTP Directory: sources/java #
//------------------------------------------------------------
//
import java.io.*;
import java.util.*;
public class JNIHello {
    static {
	System.loadLibrary("JNIHello");
    }

    native static private void hello();

    public static void main(String argv[])
    {
       try {
	   hello();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}