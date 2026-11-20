package nts;

import ch.qos.logback.classic.pattern.CallerDataConverter;
import java.util.Vector;

public class C0185 extends AbstractC0095 {

    public C0185 f626;

    public C0185 f627;

    public StringBuffer f628;

    public int f629;

    public C0185 f630;

    public int f631;

    public int f632;

    public int f633;

    public C0185 f634;

    public String f635;

    public int f636;

    public boolean f637;

    public int f638;

    public C0185 f639;

    public C0185() {
        this.f628 = new StringBuffer();
        this.f637 = false;
        this.f632 = 0;
        this.f635 = "";
        this.f638 = 0;
        this.f631 = 0;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String m3601() {
        C0185 c0185 = this.f634;
        return C0663.m5892(c0185 != null ? c0185.m3601() : "", "/").append(this.f635.length() > 0 ? this.f635 : C0663.m5887(C0663.m5891("["), this.f638, "]")).toString();
    }

    public String m3602() {
        return this.f628.toString();
    }

    public String m3603() {
        String strM5887;
        C0185 c0185 = this.f634;
        StringBuilder sbM5891 = C0663.m5891(c0185 != null ? c0185.m3603() : "");
        if (this.f635.length() > 0) {
            strM5887 = this.f635.equals(C0164.m3491(0, 4, 110)) ? "$" : C0663.m5888(C0663.m5891("['"), this.f635, "']");
        } else {
            strM5887 = C0663.m5887(C0663.m5891("["), this.f638, "]");
        }
        return sbM5891.append(strM5887).toString();
    }

    public String m3604() {
        return this.f635;
    }

    public Vector m3605() {
        Vector vector = new Vector(this.f632);
        for (C0185 c0185 = this.f630; c0185 != null; c0185 = c0185.f627) {
            C0185 c0186 = new C0185(null, c0185.f635, c0185.f629);
            String strM3602 = c0185.m3602();
            c0186.f628.setLength(0);
            c0186.f628.append(strM3602);
            vector.add(c0186);
        }
        return vector;
    }

    public nts.C0185 m3606(java.util.StringTokenizer r10, boolean r11, boolean r12) {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0185.m3606(java.util.StringTokenizer, boolean, boolean):nts.ञ");
    }

    public C0185(C0185 c0185, int i) {
        this(c0185, "", i);
    }

    public static boolean m3599(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public C0185(C0185 c0185, String str, int i) {
        this.f628 = new StringBuffer();
        this.f637 = false;
        this.f632 = 0;
        this.f638 = 0;
        this.f631 = 0;
        this.f635 = str;
        this.f634 = c0185;
        this.f629 = i;
        this.f636 = i;
    }

    public static int m3598(String str) {
        int iCharAt = 0;
        for (int i = 0; i < str.length(); i++) {
            iCharAt = (iCharAt * 10) + (str.charAt(i) - '0');
        }
        return iCharAt;
    }

    public boolean m3609(String str) {
        if (str.length() == 0 || str.equals("*")) {
            return true;
        }
        return this.f635.equalsIgnoreCase(str);
    }

    public static String m3600(String str, String[] strArr) {
        int iIndexOf;
        int iIndexOf2;
        int iIndexOf3;
        int i;
        char cCharAt;
        if (str.contains("\\")) {
            StringBuffer stringBuffer = new StringBuffer();
            int i2 = 0;
            while (i2 < str.length()) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 != '\\' || (i = i2 + 1) >= str.length() || ((cCharAt = str.charAt(i)) != '[' && cCharAt != ']' && cCharAt != '\\')) {
                    if (cCharAt2 == '[' && (iIndexOf3 = str.indexOf("]", i2)) > i2) {
                        strArr[0] = str.substring(i2 + 1, iIndexOf3);
                        break;
                    }
                    stringBuffer.append(cCharAt2);
                } else {
                    stringBuffer.append(str.charAt(i));
                    i2 = i;
                }
                i2++;
            }
            return stringBuffer.toString();
        }
        if (!str.contains("[") || (iIndexOf2 = str.indexOf("]", (iIndexOf = str.indexOf("[")))) <= iIndexOf) {
            return str;
        }
        strArr[0] = str.substring(iIndexOf + 1, iIndexOf2);
        return str.substring(0, iIndexOf);
    }

    public void m3608(C0185 c0185) {
        c0185.f634 = this;
        C0185 c0186 = this.f639;
        this.f632++;
        C0185 c0187 = this.f630;
        if (c0187 != null && c0186 != null && c0186 != null) {
            C0185 c0188 = c0186.f627;
            c0186.f627 = c0185;
            c0185.f626 = c0186;
            c0185.f627 = c0188;
            if (c0188 == null) {
                this.f639 = c0185;
                return;
            }
            return;
        }
        if (c0187 == null) {
            this.f639 = c0185;
            this.f630 = c0185;
            c0185.f627 = null;
            c0185.f626 = null;
            return;
        }
        c0185.f627 = c0187;
        c0187.f626 = c0185;
        this.f630 = c0185;
    }

    public C0185 m3607(C0140 c0140) {
        String str;
        C0185 c0185;
        if (c0140.f318 == null || !c0140.m3283()) {
            str = null;
        } else {
            Vector<String> vector = c0140.f318;
            int i = c0140.f317;
            c0140.f317 = i + 1;
            str = vector.get(i);
        }
        if (str.equals("@") || str.equals("$")) {
            c0185 = this;
        } else {
            if (str.equals(CallerDataConverter.DEFAULT_RANGE_DELIMITER)) {
                return null;
            }
            int iM3598 = 0;
            String[] strArr = {""};
            String strM3600 = m3600(str, strArr);
            String str2 = strArr[0];
            if (str2.length() > 0 && this.f630 != null) {
                if (m3599(str2)) {
                    int iM3599 = m3598(str2);
                    if (iM3599 < 0 || iM3599 >= this.f632) {
                        return null;
                    }
                    c0185 = this.f630;
                    while (c0185 != null) {
                        if (c0185.m3609(strM3600)) {
                            iM3599--;
                        }
                        if (iM3599 < 0) {
                            break;
                        }
                        c0185 = c0185.f627;
                    }
                    c0185.f638 = m3598(str2);
                } else {
                    if (!str2.startsWith(C0164.m3491(10, 6, 35))) {
                        return null;
                    }
                    int iIndexOf = str2.indexOf("-");
                    if (iIndexOf > -1) {
                        String strTrim = str2.substring(iIndexOf + 1).trim();
                        if (!m3599(strTrim)) {
                            return null;
                        }
                        iM3598 = m3598(strTrim);
                    }
                    c0185 = this.f639;
                    int i2 = c0185.f634.f632 - iM3598;
                    while (c0185 != null) {
                        if (c0185.m3609(strM3600)) {
                            if (iM3598 == 0) {
                                break;
                            }
                            iM3598--;
                        }
                        c0185 = c0185.f626;
                    }
                    c0185.f638 = i2;
                }
            } else {
                c0185 = this.f630;
                while (c0185 != null && !c0185.m3609(strM3600)) {
                    c0185 = c0185.f627;
                }
            }
        }
        return (!c0140.m3283() || c0185 == null) ? c0185 : c0185.m3607(c0140);
    }
}
