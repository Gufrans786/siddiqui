package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.google.common.base.Ascii;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0208 {

    public static final byte[] f736;

    public static final byte[] f739;

    public static final byte[] f741;

    public static final byte[] f742;

    public static final byte[] f743;

    public static final byte[] f748;

    public static final byte[] f756;

    public static final byte[] f758;

    public static final byte[] f760;

    public static final byte[] f761;

    public static final byte[] f762;

    public static final byte[] f770;

    public static final byte[] f781;

    public static final byte[] f780 = C0259.m3858("*");

    public static final String f771 = C0128.m3238(0, 8, 114);

    public static final String f749 = C0128.m3238(8, 20, 39);

    public static final byte[] f765 = C0259.m3902(C0128.m3238(28, 13, 50));

    public static final byte[] f738 = C0259.m3902(C0128.m3238(41, 15, 74));

    public static final byte[] f744 = C0259.m3902(C0128.m3238(56, 15, 71));

    public static final byte[] f752 = C0259.m3902(C0128.m3238(71, 13, 12));

    public static final byte[] f779 = C0259.m3902(C0128.m3238(84, 16, SyslogConstants.LOG_CLOCK));

    public static final byte[] f750 = C0259.m3902(C0128.m3238(100, 16, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));

    public static final byte[] f751 = C0259.m3902(C0128.m3238(116, 8, RNMBXStyleValue.InterpolationModeIdentity));

    public static final byte[] f759 = C0259.m3902(C0128.m3238(124, 4, 33));

    public static final byte[] f772 = C0259.m3902(C0128.m3238(128, 4, 102));

    public static final String f775 = C0128.m3238(132, 15, 41);

    public static final String f755 = C0128.m3238(CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 15, 116);

    public static final String f767 = C0128.m3238(162, 15, 30);

    public static final String f776 = C0128.m3238(177, 12, 22);

    public static final String f754 = C0128.m3238(189, 10, 34);

    public static final String f778 = C0128.m3238(199, 10, 84);

    public static final String f774 = C0128.m3238(209, 10, 63);

    public static final String f764 = C0128.m3238(219, 10, 7);

    public static final String f768 = C0128.m3238(229, 10, 23);

    public static final String f746 = C0128.m3238(239, 10, 119);

    public static final String f763 = C0128.m3238(249, 16, 29);

    public static final String f773 = C0128.m3238(265, 16, 74);

    public static final String f745 = C0128.m3238(281, 16, 4);

    public static final String f740 = C0128.m3238(297, 22, 63);

    public static final String f757 = C0128.m3238(319, 22, 44);

    public static final String f737 = C0128.m3238(341, 22, 92);

    public static final String f769 = C0128.m3238(363, 14, WebSocketProtocol.PAYLOAD_SHORT);

    public static final String f777 = C0128.m3238(377, 14, 101);

    public static final String f753 = C0128.m3238(391, 14, 69);

    public static final String f747 = C0128.m3238(405, 7, 1);

    public static final String f766 = C0128.m3238(412, 5, 111);

    static {
        C0259.m3902(C0128.m3238(417, 23, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
        C0259.m3902(C0128.m3238(440, 25, 24));
        C0259.m3902(C0128.m3238(465, 27, 12));
        C0259.m3902(C0128.m3238(492, 28, 33));
        f770 = C0259.m3902(C0128.m3238(520, 22, 27));
        C0259.m3902(C0128.m3238(542, 24, 31));
        f760 = C0259.m3902(C0128.m3238(566, 8, 17));
        f739 = C0259.m3902(C0128.m3238(574, 33, 110));
        f761 = C0259.m3902(C0128.m3238(TypedValues.MotionType.TYPE_PATHMOTION_ARC, 33, 112));
        f756 = C0259.m3902(C0128.m3238(640, 12, 31));
        f762 = C0259.m3902(C0128.m3238(652, 12, 57));
        f736 = C0259.m3902(C0128.m3238(664, 12, 41));
        f758 = C0259.m3902(C0128.m3238(676, 12, 80));
        f781 = C0259.m3902(C0128.m3238(688, 7, 14));
        f743 = C0259.m3902(C0128.m3238(695, 6, 96));
        f741 = new byte[]{68, 79, 87, 78, 71, 82, 68, 1};
        f748 = new byte[]{68, 79, 87, 78, 71, 82, 68, 0};
        f742 = new byte[]{-49, 33, -83, 116, -27, -102, 97, 17, -66, Ascii.GS, -116, 2, Ascii.RS, 101, -72, -111, -62, -94, 17, Ascii.SYN, 122, -69, -116, 94, 7, -98, 9, -30, -56, -88, 51, -100};
    }

    public static Vector m3680(String str) {
        Vector vector = new Vector();
        String string = "";
        String str2 = string;
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (z) {
                if (z2) {
                    string = string + cCharAt;
                    z2 = false;
                } else if (cCharAt == '\\') {
                    z2 = true;
                } else if (cCharAt == '\"') {
                    z = false;
                } else {
                    string = string + cCharAt;
                }
            } else if (z2) {
                if (cCharAt == ',' || cCharAt == '=' || cCharAt == '+' || cCharAt == '<' || cCharAt == '>' || cCharAt == '#' || cCharAt == ':' || cCharAt == ';' || cCharAt == '\\' || cCharAt == '\"') {
                    string = string + cCharAt;
                } else if (str2.length() == 0) {
                    str2 = str2 + cCharAt;
                } else {
                    str2 = str2 + cCharAt;
                    string = C0663.m5891(string).append((char) Integer.parseInt(str2, 16)).toString();
                }
                z2 = false;
            } else if (cCharAt == ',') {
                vector.add(string.trim());
                string = "";
            } else if (cCharAt == '\\') {
                str2 = "";
                z2 = true;
            } else if (cCharAt == '\"') {
                z = true;
            } else {
                string = string + cCharAt;
            }
        }
        if (string.length() > 0) {
            vector.add(string.trim());
        }
        return vector;
    }

    public static String m3681(int i) {
        if (i == 1025) {
            return f763;
        }
        if (i == 1281) {
            return f773;
        }
        if (i == 1537) {
            return f745;
        }
        if (i == 1027) {
            return f740;
        }
        if (i == 1283) {
            return f757;
        }
        if (i == 1539) {
            return f737;
        }
        if (i == 2052) {
            return f769;
        }
        if (i == 2053) {
            return f777;
        }
        if (i == 2054) {
            return f753;
        }
        if (i == 2055) {
            return f747;
        }
        return i == 2056 ? f766 : i + "";
    }

    public static int m3683(String str) {
        if (str.equalsIgnoreCase(f763)) {
            return InputDeviceCompat.SOURCE_GAMEPAD;
        }
        if (str.equalsIgnoreCase(f773)) {
            return 1281;
        }
        if (str.equalsIgnoreCase(f745)) {
            return 1537;
        }
        if (str.equalsIgnoreCase(f740)) {
            return 1027;
        }
        if (str.equalsIgnoreCase(f757)) {
            return 1283;
        }
        if (str.equalsIgnoreCase(f737)) {
            return 1539;
        }
        if (str.equalsIgnoreCase(f769)) {
            return 2052;
        }
        if (str.equalsIgnoreCase(f777)) {
            return 2053;
        }
        if (str.equalsIgnoreCase(f753)) {
            return 2054;
        }
        if (str.equalsIgnoreCase(f747)) {
            return 2055;
        }
        if (str.equalsIgnoreCase(f766)) {
            return 2056;
        }
        throw new C0414(C0128.m3238(1358, 31, 95) + str);
    }

    public static boolean m3686(byte b) {
        return b >= 20 && b <= 23;
    }

    public static byte[] m3687(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            return bArr;
        }
        if (bArr.length == 0) {
            return bArr2;
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] m3688(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, bArr.length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static int m3684(String str) {
        if (str.equalsIgnoreCase(f778)) {
            return 256;
        }
        if (str.equalsIgnoreCase(f774)) {
            return 257;
        }
        if (str.equalsIgnoreCase(f764)) {
            return 258;
        }
        if (str.equalsIgnoreCase(f768)) {
            return 259;
        }
        if (str.equalsIgnoreCase(f746)) {
            return 260;
        }
        if (str.equalsIgnoreCase(f775)) {
            return 23;
        }
        if (str.equalsIgnoreCase(f755)) {
            return 24;
        }
        if (str.equalsIgnoreCase(f767)) {
            return 25;
        }
        if (str.equalsIgnoreCase(f776)) {
            return 29;
        }
        if (str.equalsIgnoreCase(f754)) {
            return 30;
        }
        throw new C0414(C0128.m3238(1476, 20, 122) + str);
    }

    public static int m3682(int i) {
        if (i == 256) {
            return 2048;
        }
        if (i == 257) {
            return 3072;
        }
        if (i == 258) {
            return 4096;
        }
        if (i == 259) {
            return 6144;
        }
        if (i == 260) {
            return 8192;
        }
        if (i == 23) {
            return 256;
        }
        if (i == 24) {
            return BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT;
        }
        if (i == 25) {
            return 521;
        }
        throw new C0414(C0128.m3238(1523, 18, 107) + i);
    }

    public static String m3685(int i) {
        if (i == 256) {
            return f778;
        }
        if (i == 257) {
            return f774;
        }
        if (i == 258) {
            return f764;
        }
        if (i == 259) {
            return f768;
        }
        if (i == 260) {
            return f746;
        }
        if (i == 23) {
            return f775;
        }
        if (i == 24) {
            return f755;
        }
        if (i == 25) {
            return f767;
        }
        if (i == 29) {
            return f776;
        }
        if (i == 30) {
            return f754;
        }
        return C0128.m3238(1496, 27, 32) + i;
    }

    public static String m3679(int i) {
        if (i == 513) {
            return C0128.m3238(1443, 4, 34);
        }
        if (i == 515) {
            return C0128.m3238(1447, 4, 14);
        }
        if (i == 1025) {
            return C0128.m3238(1389, 6, 110);
        }
        if (i == 1027) {
            return C0128.m3238(1407, 6, 84);
        }
        if (i == 1281) {
            return C0128.m3238(1395, 6, 38);
        }
        if (i == 1283) {
            return C0128.m3238(1413, 6, 100);
        }
        if (i == 1537) {
            return C0128.m3238(1401, 6, 12);
        }
        if (i != 1539) {
            switch (i) {
                case 2052:
                case 2057:
                    return C0128.m3238(1425, 6, 34);
                case 2053:
                case 2058:
                    return C0128.m3238(1431, 6, 22);
                case 2054:
                case 2059:
                    return C0128.m3238(1437, 6, RNMBXStyleValue.InterpolationModeIdentity);
                case 2055:
                case 2056:
                    return "";
                default:
                    throw new C0414(C0128.m3238(1451, 25, 49) + i);
            }
        }
        return C0128.m3238(1419, 6, 105);
    }
}
