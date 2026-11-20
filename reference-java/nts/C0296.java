package nts;

import java.util.Vector;

public class C0296 {

    public boolean f1539 = false;

    public String f1540;

    public String f1541;

    public String f1542;

    public String f1543;

    public C0296(String str, String str2) {
        this.f1543 = str;
        this.f1542 = str2;
    }

    public static String m4074(char[] cArr, int i, int i2, boolean z, boolean z2) {
        if (z) {
            while (i < cArr.length && Character.isWhitespace(cArr[i])) {
                i++;
            }
            while (i2 > i && Character.isWhitespace(cArr[i2 - 1])) {
                i2--;
            }
        }
        if (z2) {
            if (i < i2 && cArr[i] == '\"') {
                i++;
            }
            if (i < i2 && cArr[i2 - 1] == '\"') {
                i2--;
            }
        }
        return new String(cArr, i, i2 - i);
    }

    public String toString() {
        return C0663.m5888(new StringBuilder().append(this.f1543).append("=\""), this.f1542, "\"");
    }

    public static String m4073(Vector vector, String str) {
        for (int i = 0; i < vector.size(); i++) {
            C0296 c0296 = (C0296) vector.elementAt(i);
            if (str.equalsIgnoreCase(c0296.f1543)) {
                return c0296.f1542;
            }
        }
        return "";
    }
}
