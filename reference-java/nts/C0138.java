package nts;

public class C0138 {

    public String f311 = "";

    public String f308 = "";

    public String f302 = "";

    public String f307 = "";

    public String f300 = "";

    public String f301 = "";

    public int f305 = 0;

    public String f310 = "";

    public String f303 = "";

    public String f304 = "";

    public String f306 = "";

    public byte[] f309 = new byte[0];

    public C0138() {
        m3278();
    }

    public void m3277() {
        this.f311 = "";
        this.f308 = "";
        this.f302 = "";
        this.f307 = "";
        this.f300 = C0164.m3500(4578, 3, 127);
        this.f301 = "";
        this.f305 = 0;
    }

    public void m3278() {
        m3277();
        this.f310 = "";
        this.f303 = "";
        this.f304 = "";
        this.f306 = "";
        this.f309 = new byte[0];
    }

    public void m3281(String str, String str2) {
        this.f310 = str;
        this.f303 = str2;
    }

    public void m3282(String str, String str2, byte[] bArr) {
        this.f306 = str;
        this.f304 = str2;
        this.f309 = bArr;
        if (bArr == null) {
            this.f309 = new byte[0];
        }
    }

    public static String m3275(String str, String str2) {
        int i;
        int iIndexOf = str.indexOf(str2 + "=");
        if (iIndexOf == -1) {
            return "";
        }
        int length = str2.length() + 1 + iIndexOf;
        if (str.charAt(length) == '\"') {
            length++;
            i = 1;
        } else {
            i = 0;
        }
        int length2 = -1;
        for (int i2 = length; length2 == -1 && i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\"') {
                i--;
            } else if (cCharAt == ',') {
                if (i == 0) {
                    length2 = i2;
                }
                if (length2 > 0 && str.charAt(length2 - 1) == '\"') {
                    length2--;
                }
            }
        }
        if (length2 == -1) {
            length2 = str.length() - 1;
        }
        return str.substring(length, length2);
    }

    public void m3280(String str) {
        m3277();
        this.f308 = m3275(str, C0164.m3500(4581, 3, 4));
        String strM3275 = m3275(str, C0164.m3500(4584, 9, 20));
        this.f300 = strM3275;
        if (strM3275.length() == 0) {
            this.f300 = C0164.m3500(4593, 3, 81);
        }
        this.f311 = m3275(str, C0164.m3500(4596, 5, 36));
        this.f302 = m3275(str, C0164.m3500(4601, 5, 36));
        this.f307 = m3275(str, C0164.m3500(4606, 6, 84));
        if (this.f308.length() > 0) {
            String[] strArrM3907 = C0259.m3907(this.f308, ",", true);
            this.f308 = "";
            for (int i = 0; i < strArrM3907.length; i++) {
                if (strArrM3907[i].equals(C0164.m3500(4612, 4, 67)) || strArrM3907[i].equals(C0164.m3500(4616, 8, 17))) {
                    this.f308 = strArrM3907[i];
                    break;
                }
            }
        }
        if (this.f308.length() <= 0 || this.f301.startsWith("*")) {
            return;
        }
        String str2 = this.f308 + this.f300 + this.f311 + this.f302 + this.f307 + System.currentTimeMillis();
        this.f301 = str2;
        this.f301 = m3276(6, str2);
        this.f305 = 0;
    }

    public String m3279() {
        int i;
        String str = "";
        if (this.f310.length() == 0 || this.f302.length() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(C0663.m5888(new StringBuilder().append(C0164.m3500(4643, 17, 70)), this.f310, "\""));
        stringBuffer.append(C0164.m3500(4660, 9, 5) + this.f311 + "\"");
        if (this.f308.length() > 0) {
            stringBuffer.append(C0164.m3500(4669, 7, 115) + this.f308 + "\"");
        }
        stringBuffer.append(C0164.m3500(4676, 13, 99) + this.f300 + "\"");
        stringBuffer.append(C0164.m3500(4689, 7, 92) + this.f304 + "\"");
        stringBuffer.append(C0164.m3500(4696, 9, 124) + this.f302 + "\"");
        int i2 = this.f305 + 1;
        this.f305 = i2;
        byte[] bArrM3898 = C0259.m3898(i2, 4);
        stringBuffer.append(C0164.m3500(4705, 5, 92) + C0259.m3882(C0259.m3901(8, bArrM3898, 0, bArrM3898.length, false)));
        String strSubstring = this.f301;
        if (strSubstring.startsWith("*")) {
            strSubstring = strSubstring.substring(1);
        }
        stringBuffer.append(C0164.m3500(4710, 10, 125) + strSubstring + "\"");
        StringBuilder sbAppend = new StringBuilder().append(C0164.m3500(4720, 12, 111));
        String strSubstring2 = this.f301;
        if (strSubstring2.startsWith("*")) {
            strSubstring2 = strSubstring2.substring(1);
        }
        if (this.f300.startsWith(C0164.m3500(4624, 3, 68))) {
            str = this.f310 + ":" + this.f311 + ":" + this.f303;
            i = 6;
            if (this.f300.equals(C0164.m3500(4627, 8, 45))) {
                str = m3276(6, str) + ":" + this.f302 + ":" + strSubstring2;
            }
        } else {
            i = -1;
        }
        String string = this.f306 + ":" + this.f304;
        if (this.f308.equalsIgnoreCase(C0164.m3500(4635, 8, 98))) {
            string = C0663.m5892(string, ":").append(m3276(i, C0259.m3882(this.f309))).toString();
        }
        String strM5888 = C0663.m5888(new StringBuilder(), this.f302, ":");
        if (this.f308.length() > 0) {
            byte[] bArrM3899 = C0259.m3898(this.f305, 4);
            strM5888 = C0663.m5888(new StringBuilder().append(strM5888).append(C0259.m3882(C0259.m3901(8, bArrM3899, 0, bArrM3899.length, false))).append(":").append(strSubstring2).append(":"), this.f308, ":");
        }
        stringBuffer.append(sbAppend.append(m3276(i, m3276(i, str) + ":" + C0663.m5891(strM5888).append(m3276(i, string)).toString())).append("\"").toString());
        if (this.f307.length() > 0) {
            stringBuffer.append(C0164.m3500(4732, 10, 63) + this.f307 + "\"");
        }
        return stringBuffer.toString();
    }

    public static String m3276(int i, String str) {
        return C0259.m3882(C0259.m3874(8, C0259.m3874(i, C0259.m3858(str))));
    }
}
