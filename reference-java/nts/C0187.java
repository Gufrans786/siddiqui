package nts;

import java.util.Vector;

public class C0187 extends AbstractC0095 {

    public C0187 f640;

    public C0187 f641;

    public Vector f642;

    public Vector f643;

    public C0187 f644;

    public C0474 f645;

    public int f646;

    public Vector f647;

    public C0187 f648;

    public int f649;

    public String f650;

    public int f651;

    public int f652;

    public C0187 f653;

    public C0187() {
        this.f642 = new Vector();
        this.f643 = new Vector();
        this.f645 = new C0474();
        this.f650 = "";
    }

    public static int m3610(String str) {
        int iCharAt = 0;
        for (int i = 0; i < str.length(); i++) {
            iCharAt = (iCharAt * 10) + (str.charAt(i) - '0');
        }
        return iCharAt;
    }

    public static boolean m3611(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String m3613(String str) {
        for (int i = 0; i < this.f642.size(); i++) {
            C0563 c0563 = (C0563) this.f642.get(i);
            if (c0563.f3173.equals(str) || c0563.f3174.equals(str)) {
                return c0563.f3174;
            }
        }
        C0187 c0187 = this.f648;
        return c0187 != null ? c0187.m3613(str) : "";
    }

    public String m3614() {
        C0187 c0187 = this.f648;
        return C0663.m5892(c0187 != null ? c0187.m3614() : "", "/").append(this.f645.f2714).toString();
    }

    public nts.C0187 m3618(java.util.StringTokenizer r14, boolean r15) {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0187.m3618(java.util.StringTokenizer, boolean):nts.ऩ");
    }

    public C0187(C0187 c0187, C0474 c0474, Vector vector, Vector vector2, int i, int i2) {
        this.f648 = c0187;
        this.f645 = c0474;
        this.f643 = vector;
        this.f642 = vector2;
        this.f646 = i2;
        this.f650 = "";
    }

    public boolean m3615(String str) {
        if (str.length() != 0 && !str.equals("*")) {
            C0474 c0474 = this.f645;
            if (!c0474.f2714.equalsIgnoreCase(str) && !c0474.f2716.equalsIgnoreCase(str)) {
                String strM5880 = c0474.f2716;
                if (c0474.f2713.length() > 0 && !c0474.f2713.endsWith("/")) {
                    strM5880 = C0663.m5880("/", strM5880);
                }
                if (!str.equalsIgnoreCase(c0474.f2713 + strM5880)) {
                    return false;
                }
            }
        }
        return true;
    }

    public String m3612() {
        return this.f650.toString();
    }

    public boolean m3620(String str, String str2) {
        String strSubstring;
        int iIndexOf = str.indexOf(":");
        if (iIndexOf < 0) {
            strSubstring = "";
        } else {
            strSubstring = str.substring(0, iIndexOf);
            str = str.substring(iIndexOf + 1);
        }
        for (int i = 0; i < this.f643.size(); i++) {
            C0124 c0124 = (C0124) this.f643.elementAt(i);
            if ((strSubstring.length() <= 0 || c0124.f246.equals(strSubstring)) && c0124.f248.equals(str) && c0124.f247.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public void m3619(C0187 c0187) {
        c0187.f648 = this;
        C0187 c0188 = this.f653;
        this.f652++;
        C0187 c0189 = this.f644;
        if (c0189 != null && c0188 != null && c0188 != null) {
            C0187 c01810 = c0188.f641;
            c0188.f641 = c0187;
            c0187.f640 = c0188;
            c0187.f641 = c01810;
            if (c01810 == null) {
                this.f653 = c0187;
            }
            this.f647 = null;
            return;
        }
        if (c0189 == null) {
            this.f653 = c0187;
            this.f644 = c0187;
            c0187.f641 = null;
            c0187.f640 = null;
        } else {
            c0187.f641 = c0189;
            c0189.f640 = c0187;
            this.f644 = c0187;
        }
        this.f647 = null;
    }

    public C0187 m3617(String str) {
        for (C0187 c0187 = this.f644; c0187 != null; c0187 = c0187.f641) {
            if (c0187.m3615(str)) {
                return c0187;
            }
        }
        return null;
    }

    public C0187 m3616(int i) {
        C0187 c0187 = this.f644;
        while (true) {
            int i2 = i - 1;
            if (i <= 0 || c0187 == null) {
                break;
            }
            c0187 = c0187.f641;
            i = i2;
        }
        return c0187;
    }
}
