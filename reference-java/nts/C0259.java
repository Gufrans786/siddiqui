package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import ch.qos.logback.classic.Level;
import ch.qos.logback.core.CoreConstants;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.UUID;
import java.util.Vector;

public class C0259 extends C0212 {

    public static final String f1266;

    public static final String f1265 = C0642.m5852(0, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);

    public static final String f1262 = C0642.m5852(4, 8, 98);

    public static final String f1263 = C0642.m5852(12, 10, 99);

    public static final String f1264 = C0642.m5852(22, 11, 27);

    static {
        C0642.m5852(33, 4, 125);
        C0642.m5852(37, 8, 121);
        f1266 = C0642.m5852(45, 8, 72);
        m3902(C0642.m5852(53, 27, 40));
        m3902(C0642.m5852(80, 25, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
        String[] strArr = new String[4];
        C0642.m5852(105, 11, 22);
        C0642.m5852(116, 5, 48);
        C0642.m5852(121, 9, 111);
        C0642.m5852(130, 6, 16);
    }

    public static String m3841(byte[] bArr) {
        return m3892(m3901(8, bArr, 0, bArr.length, false));
    }

    public static String m3843(String str) {
        return str == null ? "" : str;
    }

    public static byte[] m3845(byte[] bArr) {
        if (bArr == null) {
            return C0212.f791;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public static String m3847(byte[] bArr) {
        return m3882(m3904(bArr, 0, bArr.length, true));
    }

    public static String m3853(byte[] bArr) {
        return (bArr == null || bArr.length <= 0 || bArr[bArr.length + (-1)] != 0) ? m3844(bArr, 0, bArr.length) : m3844(bArr, 0, bArr.length - 1);
    }

    public static String m3855(byte[] bArr) throws C0414 {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            stringBuffer.append(m3868(bArr[i]));
            if (i < bArr.length - 1) {
                stringBuffer.append(" ");
            }
        }
        return stringBuffer.toString();
    }

    public static byte[] m3859(byte[] bArr) {
        return bArr == null ? C0212.f791 : bArr;
    }

    public static boolean m3861(byte[] bArr) {
        int iMin = Math.min(Level.TRACE_INT, bArr.length);
        for (int i = 0; i < iMin; i++) {
            if (bArr[i] < 0) {
                return true;
            }
        }
        return false;
    }

    public static byte[] m3865(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return C0212.f791;
        }
        if (i < 0) {
            i = 0;
        } else if (i > bArr.length) {
            i = bArr.length;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i + i2 > bArr.length) {
            i2 = bArr.length - i;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    public static byte[] m3876(String str) {
        return m3899(1, m3902(str));
    }

    public static boolean m3880(byte[] bArr) {
        for (byte b : bArr) {
            int i = b & 255;
            if ((i < 43 && i != 32 && i != 13 && i != 10 && i != 9) || i > 122) {
                return false;
            }
        }
        return true;
    }

    public static boolean m3881(byte[] bArr) {
        for (byte b : bArr) {
            if ((b & 255) >= 128) {
                return C0301.m4164(m3883(m3844(bArr, 0, bArr.length)), bArr);
            }
        }
        return true;
    }

    public static String m3882(byte[] bArr) {
        return new String(bArr);
    }

    public static byte[] m3906(byte[] bArr, boolean z) {
        return m3904(bArr, 0, bArr.length, z);
    }

    public static byte[] m3858(String str) {
        return str.getBytes();
    }

    public static byte[] m3877(byte[] bArr) {
        return m3900(1, bArr, 0, bArr.length);
    }

    public static byte[] m3883(String str) {
        try {
            return str.getBytes(f1265);
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    public static byte[] m3904(byte[] bArr, int i, int i2, boolean z) {
        C0619 c0619 = new C0619(null, new Object());
        c0619.f3416 = z;
        c0619.f3395 = false;
        c0619.m5706(bArr, i, i2);
        c0619.f3413 = 1;
        c0619.f3429 = 76;
        try {
            c0619.m5674(2);
            return c0619.f3403;
        } catch (C0414 unused) {
            return C0212.f791;
        }
    }

    public static int m3840(String str) throws C0414 {
        try {
            return Integer.parseInt(str.trim());
        } catch (Exception e) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0642.m5852(455, 23, 66) + C0414.m4672(e));
        }
    }

    public static long m3857(byte[] bArr, int i, int i2) {
        long j = 0;
        while (i2 > 0) {
            int i3 = i + i2;
            if (i3 > bArr.length) {
                break;
            }
            j = (j << 8) | ((long) (bArr[i3 - 1] & 255));
            i2--;
        }
        return j;
    }

    public static byte[] m3874(int i, byte[] bArr) {
        return m3901(i, bArr, 0, bArr.length, false);
    }

    public static long m3879(String str) {
        return Long.parseLong(str, 16);
    }

    public static String m3844(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, f1265);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr, i, i2);
        }
    }

    public static int m3846(byte[] bArr, int i, int i2) {
        return m3866(bArr, i, i2, false);
    }

    public static int m3866(byte[] bArr, int i, int i2, boolean z) {
        int i3 = 0;
        if (z) {
            int i4 = 0;
            while (i3 < i2) {
                i4 |= (bArr[i] & 255) << (i3 * 8);
                i3++;
                i++;
            }
            return i4;
        }
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i3;
            }
            i3 = (bArr[i] & 255) | (i3 << 8);
            i++;
            i2 = i5;
        }
    }

    public static String[] m3852(String str, String str2) {
        return m3907(str, str2, false);
    }

    public static boolean m3854(String str) {
        if (m3856(str)) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            if ((str.charAt(i) & 65408) > 0) {
                return false;
            }
        }
        return true;
    }

    public static long m3860(String str) {
        return Integer.parseInt(str, 16);
    }

    public static String m3848(byte[] bArr, String str) {
        return m3894(bArr, 0, bArr.length, str);
    }

    public static String m3842(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2);
    }

    public static byte[] m3850(String str) {
        return m3899(14, str.getBytes());
    }

    public static byte[] m3849(int i) {
        return m3875(i, 4);
    }

    public static boolean m3873(byte[] bArr, byte[] bArr2) {
        return C0301.m4164(m3905(bArr, C0642.m5852(495, 11, 17)), m3905(bArr2, C0642.m5852(495, 11, 17)));
    }

    public static byte[] m3851(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static boolean m3856(String str) {
        return str == null || str.length() <= 0;
    }

    public static byte[] m3899(int i, byte[] bArr) {
        return m3900(i, bArr, 0, bArr.length);
    }

    public static byte[] m3878(byte[] bArr, String str) {
        byte[] bArr2;
        if (bArr != null && bArr.length != 0) {
            String str2 = "";
            for (int i = 0; i < 5; i++) {
                str2 = str2 + CoreConstants.DASH_CHAR;
            }
            byte[] bArrM3902 = m3902(C0663.m5892(str2, "").append(C0642.m5852(517, 6, 58)).append(str.toUpperCase()).append("").append(str2).append("\r\n").toString());
            byte[] bArrM3903 = m3902(C0663.m5892(str2, "").append(C0642.m5852(523, 4, 113)).append(str.toUpperCase()).append("").append(str2).append("\r\n").toString());
            int i2 = 1;
            if (m3861(bArr)) {
                C0619 c0619 = new C0619(null, new Object());
                c0619.m5706(bArr, 0, bArr.length);
                c0619.f3413 = 1;
                c0619.f3429 = 72;
                c0619.m5674(2);
                bArr = c0619.f3403;
            }
            byte[] bArr3 = C0212.f790;
            if (bArr.length < bArr3.length) {
                bArr2 = C0212.f790;
                break;
            }
            while (true) {
                if (i2 > bArr3.length) {
                    bArr2 = C0212.f791;
                    break;
                }
                if (bArr[bArr.length - i2] != bArr3[bArr3.length - i2]) {
                    bArr2 = C0212.f790;
                    break;
                }
                i2++;
            }
            C0301 c0301M4180 = new C0301().m4180(bArrM3902);
            return c0301M4180.m4180(m3903("", c0301M4180.f1613)).m4180(bArr).m4180(bArr2).m4180(bArrM3903).m4182();
        }
        return C0212.f791;
    }

    public static byte[] m3900(int i, byte[] bArr, int i2, int i3) {
        C0619 c0619 = new C0619(null, new Object());
        c0619.f3408 = false;
        c0619.m5689(bArr, i2, i3);
        c0619.f3413 = i;
        try {
            c0619.m5674(1);
            return c0619.f3409;
        } catch (C0414 unused) {
            return C0212.f791;
        }
    }

    public static byte[] m3864(byte[] bArr) {
        return m3878(bArr, C0642.m5852(TypedValues.PositionType.TYPE_PERCENT_X, 11, 52));
    }

    public static String m3862(int i) {
        return Integer.toHexString(i);
    }

    public static byte[] m3863(String str) {
        return m3899(8, m3902(str));
    }

    public static byte[] m3901(int i, byte[] bArr, int i2, int i3, boolean z) {
        C0619 c0619 = new C0619(null, new Object());
        c0619.f3423 = false;
        c0619.f3395 = z;
        c0619.m5706(bArr, i2, i3);
        c0619.f3413 = i;
        try {
            c0619.m5674(2);
            return c0619.f3403;
        } catch (C0414 unused) {
            return C0212.f791;
        }
    }

    public static String m3891(C0619 c0619, String str, boolean z, String str2) {
        c0619.m5701('/', !z);
        c0619.m5701('=', z);
        byte[] bArrM3859 = m3859(m3903(str, str2));
        c0619.m5706(bArrM3859, 0, bArrM3859.length);
        c0619.m5674(2);
        return m3882(c0619.f3403);
    }

    public static byte[] m3897(int i) {
        int i2 = 4;
        for (int i3 = ViewCompat.MEASURED_STATE_MASK; i2 > 1 && (i3 & i) == 0; i3 >>>= 8) {
            i2--;
        }
        byte[] bArr = new byte[i2];
        int i4 = 0;
        while (i4 < i2) {
            bArr[i4] = (byte) i;
            i4++;
            i >>>= 8;
        }
        return bArr;
    }

    public static byte[] m3898(int i, int i2) {
        int iMin = Math.min(i2, 4);
        byte[] bArr = new byte[iMin];
        for (int i3 = 0; i3 < iMin; i3++) {
            bArr[(iMin - i3) - 1] = (byte) (i & 255);
            i >>= 8;
        }
        return bArr;
    }

    public static byte[] m3905(byte[] bArr, String str) {
        if (bArr != null && bArr.length != 0) {
            byte[] bArrM3902 = m3902(C0642.m5852(527, 11, 122) + str.toUpperCase() + C0642.m5852(538, 5, 51));
            byte[] bArrM3903 = m3902(C0642.m5852(543, 9, 12) + str.toUpperCase() + C0642.m5852(552, 5, 25));
            C0301 c0301 = new C0301();
            c0301.m4173(bArr);
            int iM4163 = C0301.m4163(c0301.f1616, bArrM3902, 0, c0301.f1615);
            if (iM4163 == -1) {
                File file = new File(m3882(bArr));
                if (file.exists()) {
                    try {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        int length = (int) file.length();
                        byte[] bArr2 = new byte[length];
                        int i = 0;
                        while (true) {
                            int i2 = bufferedInputStream.read(bArr2, i, length - i);
                            if (i2 <= 0) {
                                break;
                            }
                            i += i2;
                        }
                        bufferedInputStream.close();
                        c0301.m4173(bArr2);
                        bArr = bArr2;
                    } catch (IOException unused) {
                        return C0212.f791;
                    }
                }
                iM4163 = C0301.m4163(c0301.f1616, bArrM3902, 0, c0301.f1615);
            }
            if (iM4163 >= 0) {
                iM4163 += bArrM3902.length;
            } else if (iM4163 < 0) {
                iM4163 = 0;
            }
            int iM4164 = C0301.m4163(c0301.f1616, bArrM3903, iM4163, c0301.f1615);
            if (iM4164 < iM4163) {
                iM4164 = bArr.length;
            }
            byte[] bArrM3865 = m3865(bArr, iM4163, iM4164 - iM4163);
            return !m3861(bArrM3865) ? m3900(1, bArrM3865, 0, bArrM3865.length) : bArrM3865;
        }
        return C0212.f791;
    }

    public static String m3870(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, f1263);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr, i, i2);
        }
    }

    public static String m3869(int i, String str) {
        return m3882(m3874(i, str.getBytes())).replaceAll("\r\n", "");
    }

    public static String m3868(int i) throws C0414 {
        try {
            String upperCase = Integer.toHexString(i).toUpperCase();
            if (upperCase.length() > 2) {
                return upperCase.substring(0, 2);
            }
            return upperCase.length() < 2 ? "0" + upperCase : upperCase;
        } catch (Exception unused) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0642.m5852(478, 17, 32));
        }
    }

    public static boolean m3872(String str, String str2) {
        return str.equalsIgnoreCase(str2);
    }

    public static byte[] m3875(long j, int i) {
        byte[] bArr = new byte[i];
        m3895(j, bArr, 0, i);
        return bArr;
    }

    public static void m3871(long j, byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            bArr[i] = (byte) (255 & j);
            i++;
            j >>= 8;
        }
    }

    public static String m3867() {
        return UUID.randomUUID().toString();
    }

    public static boolean m3896(byte[] bArr, byte[] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static String[] m3908(String str, String str2, boolean z, boolean z2) {
        int i;
        if (str != null && str.length() != 0) {
            char[] charArray = str.toCharArray();
            char[] charArray2 = str2.toCharArray();
            Vector vector = new Vector();
            int i2 = 0;
            for (int i3 = 0; i3 < charArray.length; i3++) {
                for (char c : charArray2) {
                    if (charArray[i3] == c) {
                        if (z) {
                            while (i2 < i3 && Character.isWhitespace(charArray[i2])) {
                                i2++;
                            }
                            i = i3;
                            while (i2 < i && Character.isWhitespace(charArray[i - 1])) {
                                i--;
                            }
                        } else {
                            i = i3;
                        }
                        if (i2 != i || z2) {
                            vector.add(str.substring(i2, i));
                        }
                        i2 = i3 + 1;
                        break;
                    }
                }
            }
            if (i2 < str.length()) {
                String strSubstring = str.substring(i2);
                if (z) {
                    strSubstring = strSubstring.trim();
                }
                if (strSubstring.length() > 0 || z2) {
                    vector.add(strSubstring);
                }
            }
            return (String[]) vector.toArray(new String[0]);
        }
        return new String[0];
    }

    public static String[] m3907(String str, String str2, boolean z) {
        return m3908(str, str2, z, false);
    }

    public static String m3894(byte[] bArr, int i, int i2, String str) {
        if (i2 == 0) {
            return "";
        }
        if (str != null && str.length() > 0) {
            try {
                return new String(bArr, i, i2, str);
            } catch (Exception unused) {
            }
        }
        return m3870(bArr, i, i2);
    }

    public static String m3892(byte[] bArr) {
        try {
            return new String(bArr, f1263);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static String m3893(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            int i2 = i - 1;
            if (bArr[i2] == 0) {
                return m3844(bArr, 0, i2);
            }
        }
        return m3844(bArr, 0, i);
    }

    public static byte[] m3903(String str, String str2) throws C0414 {
        if (str2 != null) {
            try {
                if (str2.length() != 0) {
                    return str.getBytes(str2);
                }
            } catch (Exception e) {
                throw new C0414(e);
            }
        }
        return str.getBytes();
    }

    public static String m3885(int i, String str) {
        return m3882(m3874(i, str.getBytes()));
    }

    public static byte[] m3902(String str) {
        try {
            return str.getBytes(f1263);
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    public static String m3890(StringBuilder sb, int i, int i2) {
        return sb.substring(i, i2);
    }

    public static String m3888(String str, int i) {
        return str.substring(i);
    }

    public static String m3889(String str, int i, int i2) {
        return str.substring(i, i2);
    }

    public static String m3886(long j, int i) {
        byte[] bArrM3875 = m3875(j, i);
        return m3882(m3901(8, bArrM3875, 0, bArrM3875.length, false));
    }

    public static String m3887(long j, int i, boolean z) {
        return m3882(C0619.m5664(m3875(j, i), z));
    }

    public static long m3884(byte[] bArr, int i, int i2) {
        long j = 0;
        while (i2 > 0 && i < bArr.length) {
            j = (j << 8) | ((long) (bArr[i] & 255));
            i2--;
            i++;
        }
        return j;
    }

    public static void m3895(long j, byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 1;
        while (i3 >= i) {
            bArr[i3] = (byte) (255 & j);
            i3--;
            j >>= 8;
        }
    }
}
