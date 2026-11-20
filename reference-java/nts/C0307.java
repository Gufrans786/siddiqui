package nts;

import androidx.appcompat.app.AppCompatDelegate;
import com.facebook.imagepipeline.common.RotationOptions;
import sa.lg.android.locate.BuildConfig;

public class C0307 extends AbstractC0095 {

    public static final String f1630 = C0128.m3227(0, 5, 23);

    public static final String f1635 = C0128.m3227(5, 6, 101);

    public static final String f1634 = C0128.m3227(11, 11, 114);

    public static final String f1632 = C0128.m3227(22, 4, 85);

    public static final String f1633 = C0128.m3227(26, 4, 85);

    public static final String f1629 = C0128.m3227(30, 9, 83);

    public static final String f1631 = C0128.m3227(39, 9, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);

    public String f1643 = "";

    public String f1636 = "";

    public int f1637 = 80;

    public String f1640 = "";

    public int f1648 = 0;

    public String f1638 = "";

    public int f1639 = 0;

    public String f1642 = "";

    public boolean f1645 = false;

    public String f1646 = "";

    public String f1641 = "";

    public String f1644 = "";

    public boolean f1647 = false;

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String m4187() {
        return this.f1643;
    }

    public void m4189(String str) {
        this.f1636 = C0259.m3843(str);
        m4203();
    }

    public int m4191() {
        return this.f1639;
    }

    public String m4194() {
        return this.f1641;
    }

    public String m4195() {
        return this.f1642;
    }

    public void m4197(String str) {
        if (str == null) {
            str = "";
        }
        this.f1640 = str;
    }

    public String m4198() {
        return this.f1640;
    }

    public String m4199() {
        return this.f1636;
    }

    public String m4200() {
        switch (this.f1639) {
            case 0:
                return f1630;
            case 1:
                return f1635;
            case 2:
                return f1634;
            case 3:
                return f1632;
            case 4:
                return f1633;
            case 5:
                return f1629;
            case 6:
                return f1631;
            default:
                return "";
        }
    }

    public String m4202() {
        return this.f1638;
    }

    public void m4204(int i) {
        this.f1637 = i;
    }

    public int m4207() {
        return this.f1637;
    }

    public int m4208() {
        return this.f1648;
    }

    public void m4210(String str) {
        this.f1638 = C0259.m3843(str);
        m4203();
    }

    public int m4211(boolean z) {
        int i = this.f1648;
        if (i == 0 && z) {
            return 3;
        }
        return i;
    }

    public void m4188(String str) {
        this.f1642 = str;
    }

    public void m4192(int i) {
        this.f1648 = i;
    }

    public String m4196() {
        return this.f1644;
    }

    public void m4205(String str) {
        this.f1644 = str;
    }

    public boolean m4190() {
        return this.f1647;
    }

    public void m4193(String str) {
        this.f1646 = str;
    }

    public void m4206(boolean z) {
        this.f1647 = z;
    }

    public String m4209() {
        return this.f1646;
    }

    public void m4212(int i) {
        if (this.f1639 != i) {
            this.f1643 = "";
            if (i == 3) {
                this.f1636 = "";
                this.f1638 = "";
            }
        }
        this.f1639 = i;
    }

    public static String m4183(boolean z) throws C0414 {
        if (!C0610.m5625(C0128.m3227(193, 7, 117))) {
            return "";
        }
        try {
            return C0558.m5482(C0128.m3227(200, 59, 62), C0128.m3227(259, 11, 45));
        } catch (Exception e) {
            if (z) {
                throw new C0414(0, C0414.m4672(e));
            }
            return "";
        }
    }

    public final void m4203() {
        if (this.f1638.length() == 0 || this.f1636.length() == 0) {
            this.f1643 = "";
        }
        if (this.f1639 != 0) {
            return;
        }
        this.f1643 = C0128.m3227(355, 6, 105) + C0259.m3885(1, this.f1638 + ":" + this.f1636);
    }

    public void m4213(String str) {
        if (str == null) {
            str = "";
        }
        this.f1643 = str;
        this.f1639 = 2;
    }

    public void m4201(String str) {
        this.f1641 = str;
    }

    public static boolean m4184(boolean z) throws C0414 {
        if (!C0610.m5625(C0128.m3227(116, 7, 75))) {
            return false;
        }
        try {
            return C0558.m5482(C0128.m3227(123, 59, 29), C0128.m3227(182, 11, 47)).equals(BuildConfig.IOS_VERSION_CODE);
        } catch (Exception e) {
            if (z) {
                throw new C0414(0, C0414.m4672(e));
            }
            return false;
        }
    }

    public static boolean m4185(String str, int i, String str2) {
        if (!C0610.m5625(C0128.m3227(RotationOptions.ROTATE_270, 7, 75))) {
            return false;
        }
        try {
            return m4186(C0558.m5482(C0128.m3227(277, 59, 73), C0128.m3227(336, 13, 28)), str, i, str2);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean m4186(String str, String str2, int i, String str3) {
        boolean zEquals;
        if (str != null) {
            try {
                if (str.trim().length() != 0) {
                    String[] strArrSplit = str.split(";");
                    for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                        strArrSplit[i2] = strArrSplit[i2].trim().toLowerCase();
                    }
                    if (strArrSplit.length == 0) {
                        return false;
                    }
                    if (str3 != null && str3.trim().length() > 0) {
                        String lowerCase = str3.trim().toLowerCase();
                        if (!lowerCase.endsWith(C0128.m3227(349, 3, 31))) {
                            lowerCase = lowerCase + C0128.m3227(352, 3, 61);
                        }
                        for (String str4 : strArrSplit) {
                            if (str4.equals(lowerCase)) {
                                return true;
                            }
                        }
                    }
                    if (i > 0) {
                        for (String str5 : strArrSplit) {
                            if (str5.equals(i + "")) {
                                return true;
                            }
                        }
                    }
                    if (str2 != null && str2.trim().length() > 0) {
                        String lowerCase2 = str2.trim().toLowerCase();
                        for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                            if (strArrSplit[i3].toLowerCase().equals(lowerCase2)) {
                                return true;
                            }
                            if (strArrSplit[i3].contains("*")) {
                                String strSubstring = strArrSplit[i3];
                                String strSubstring2 = lowerCase2;
                                while (true) {
                                    if (strSubstring2.length() > 0 && strSubstring.length() > 0) {
                                        if (strSubstring != "*") {
                                            if (strSubstring.charAt(0) == '*') {
                                                while (strSubstring.length() > 0 && strSubstring.charAt(0) == '*') {
                                                    strSubstring = strSubstring.substring(1);
                                                }
                                                if (strSubstring.length() != 0) {
                                                    int iIndexOf = strSubstring.indexOf("*");
                                                    int iIndexOf2 = strSubstring2.indexOf(iIndexOf < 0 ? strSubstring : strSubstring.substring(0, iIndexOf));
                                                    if (iIndexOf2 >= 0) {
                                                        strSubstring2 = strSubstring2.substring(iIndexOf2);
                                                    }
                                                }
                                            } else {
                                                int iIndexOf3 = strSubstring.indexOf("*");
                                                if (iIndexOf3 < 0) {
                                                    zEquals = strSubstring.equals(strSubstring2);
                                                    break;
                                                }
                                                if (strSubstring2.substring(0, iIndexOf3).equals(strSubstring.substring(0, iIndexOf3))) {
                                                    strSubstring2 = strSubstring2.substring(iIndexOf3);
                                                    strSubstring = strSubstring.substring(iIndexOf3);
                                                }
                                            }
                                        }
                                        zEquals = true;
                                        break;
                                    }
                                    zEquals = false;
                                    break;
                                }
                                if (zEquals) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
