package nts;

import java.io.FileNotFoundException;
import java.util.Hashtable;

public class C0663 {
    public static int m5879(int i, int i2, int i3, int i4) {
        return C0128.m3248(i, i2, i3).length() + i4;
    }

    public static String m5880(String str, String str2) {
        return str + str2;
    }

    public static C0387 m5881(String str) {
        C0387 c0387 = new C0387();
        c0387.m4531(str);
        return c0387;
    }

    public static int m5882(int i, int i2, int i3, int i4) {
        return i + i2 + i3 + i4;
    }

    public static long m5883(long j, long j2, long j3, long j4) {
        return (j * j2 * j3) + j4;
    }

    public static Integer m5884(int i, int i2, int i3, Hashtable hashtable, Integer num, int i4) {
        hashtable.put(num, C0128.m3229(i, i2, i3));
        return Integer.valueOf(i4);
    }

    public static String m5885(int i, int i2, int i3, StringBuilder sb) {
        return sb.append(C0642.m5849(i, i2, i3)).toString();
    }

    public static String m5886(FileNotFoundException fileNotFoundException, StringBuilder sb) {
        return sb.append(C0414.m4672(fileNotFoundException)).toString();
    }

    public static String m5887(StringBuilder sb, int i, String str) {
        return sb.append(i).append(str).toString();
    }

    public static String m5888(StringBuilder sb, String str, String str2) {
        return sb.append(str).append(str2).toString();
    }

    public static String m5889(C0517 c0517, int i, StringBuilder sb, String str) {
        return sb.append(c0517.m5247(i)).append(str).toString();
    }

    public static StringBuilder m5890(int i, int i2, int i3, StringBuilder sb, String str) {
        return sb.append(C0642.m5849(i, i2, i3)).append(str);
    }

    public static StringBuilder m5891(String str) {
        return new StringBuilder().append(str);
    }

    public static StringBuilder m5892(String str, String str2) {
        return new StringBuilder().append(str).append(str2);
    }

    public static void m5893(boolean z, String str, int i, C0253 c0253) throws C0537 {
        Boolean.valueOf(z);
        c0253.m3816(C0253.m3805(str, i));
    }
}
