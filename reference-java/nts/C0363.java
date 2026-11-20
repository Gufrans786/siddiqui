package nts;

import java.util.Vector;

public class C0363 extends AbstractC0095 {

    public String f1904;

    public String f1905;

    public String f1906;

    public boolean f1907;

    public String f1908;

    public String f1909;

    public boolean f1910;

    public C0363() {
        this("", "", "", "", "", false, true);
    }

    public static C0363 m4427(String str) {
        boolean z;
        Vector vector = new Vector();
        char[] charArray = new char[0];
        if (str != null && str.length() > 0) {
            charArray = str.toCharArray();
        }
        int i = 0;
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
        String strM4074 = "";
        while (i < charArray.length) {
            char c = charArray[i];
            if (z2) {
                if (z2) {
                    if (c == '\"') {
                        z3 = !z3;
                    } else if (c == ';' && !z3) {
                        vector.addElement(new C0296(strM4074, C0296.m4074(charArray, i2, i, true, true)));
                        i2 = i + 1;
                        z2 = false;
                    }
                }
            } else if (c == ';') {
                i2 = i + 1;
            } else if (c == '=') {
                strM4074 = C0296.m4074(charArray, i2, i, true, false);
                i2 = i + 1;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            vector.addElement(new C0296(strM4074, C0296.m4074(charArray, i2, i, true, true)));
        }
        int i3 = 0;
        C0296 c0296 = null;
        String strSubstring = "";
        while (i3 < vector.size()) {
            C0296 c0297 = (C0296) vector.elementAt(i3);
            String str2 = c0297.f1543;
            String strSubstring2 = c0297.f1542;
            int iIndexOf = str2.indexOf("*0");
            if (iIndexOf > 0) {
                strSubstring = str2.substring(0, iIndexOf + 1);
                c0297.f1543 = str2.substring(0, iIndexOf);
                c0296 = c0297;
            }
            if (str2.endsWith("*")) {
                if (iIndexOf < 0) {
                    c0297.f1543 = str2.substring(0, str2.length() - 1);
                }
                int iIndexOf2 = strSubstring2.indexOf(39, 0);
                int i4 = iIndexOf2 + 1;
                int iIndexOf3 = strSubstring2.indexOf(39, i4);
                if (iIndexOf2 > 0 && iIndexOf3 > iIndexOf2) {
                    String strSubstring3 = strSubstring2.substring(0, iIndexOf2);
                    String strSubstring4 = strSubstring2.substring(i4, iIndexOf3);
                    strSubstring2 = strSubstring2.substring(iIndexOf3 + 1);
                    c0297.f1540 = strSubstring3;
                    c0297.f1541 = strSubstring4;
                }
                c0297.f1539 = true;
                c0297.f1542 = strSubstring2;
            }
            if (c0296 != null && iIndexOf < 0) {
                if (str2.startsWith(strSubstring)) {
                    c0296.f1542 += strSubstring2;
                    vector.removeElementAt(i3);
                } else {
                    c0296 = null;
                    strSubstring = "";
                }
                i3--;
            }
            i3++;
        }
        for (int i5 = 0; i5 < vector.size(); i5++) {
            C0296 c0298 = (C0296) vector.elementAt(i5);
            boolean z4 = c0298.f1539;
            if (z4 && z4) {
                String str3 = c0298.f1542;
                String str4 = c0298.f1540;
                byte[] bArrM3902 = C0259.m3902(str3);
                C0301 c0301 = new C0301();
                c0301.f1613 = str4;
                int i6 = 0;
                while (i6 < bArrM3902.length) {
                    int i7 = i6 + 1;
                    byte b = bArrM3902[i6];
                    if (b == 37) {
                        byte[] bArr = new byte[1];
                        C0619.m5661(bArrM3902, i7, bArr, 0, 2);
                        b = bArr[0];
                        i6 += 3;
                    } else {
                        i6 = i7;
                    }
                    c0301.m4178((int) b);
                }
                c0298.f1542 = c0301.m4172();
            }
        }
        if (vector.size() <= 0) {
            return null;
        }
        C0296 c0299 = (C0296) vector.elementAt(0);
        String str5 = c0299.f1543;
        String str6 = c0299.f1542;
        String strM4073 = C0296.m4073(vector, C0164.m3508(0, 7, 53));
        String strM4075 = C0296.m4073(vector, C0164.m3508(7, 6, 112));
        String strM4076 = C0296.m4073(vector, C0164.m3508(13, 4, 116));
        String strM3508 = C0164.m3508(17, 6, 113);
        for (int i8 = 0; i8 < vector.size(); i8++) {
            if (strM3508.equalsIgnoreCase(((C0296) vector.elementAt(i8)).f1543)) {
                z = true;
                return new C0363(str5, str6, strM4073, strM4075, strM4076, z, false);
            }
        }
        z = false;
        return new C0363(str5, str6, strM4073, strM4075, strM4076, z, false);
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof String) {
            return this.f1905.equals(obj);
        }
        if (!(obj instanceof C0363)) {
            return super.equals(obj);
        }
        C0363 c0363 = (C0363) obj;
        return this.f1905.equals(c0363.f1905) && this.f1909.equals(c0363.f1909) && this.f1908.equals(c0363.f1908);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return this.f1905 + "=" + this.f1906;
    }

    public C0363(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        this.f1905 = str;
        this.f1906 = str2;
        this.f1904 = str3;
        this.f1909 = str4;
        this.f1908 = str5;
        this.f1910 = z;
        this.f1907 = z2;
    }
}
