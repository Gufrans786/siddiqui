package nts;

import androidx.core.view.PointerIconCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.imageutils.JfifUtil;
import com.google.common.base.Ascii;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.net.InetAddress;
import java.util.Calendar;
import java.util.TimeZone;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0280 {

    public static byte[] f1415;

    static {
        C0177.m3563(0, 174, 59);
        C0177.m3563(174, 182, 27);
        C0177.m3563(356, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 65);
        C0177.m3563(TSLocationManager.LOCATION_ERROR_CANCELLED, 102, 75);
        C0177.m3563(601, 27, 88);
        C0177.m3563(628, 230, 41);
        C0177.m3563(858, 56, 79);
        C0177.m3563(914, 44, 121);
        C0177.m3563(958, 32, 57);
        C0177.m3563(990, 29, 104);
        C0177.m3563(PointerIconCompat.TYPE_ZOOM_OUT, 30, 39);
        C0177.m3563(1049, 46, 106);
        C0177.m3563(1095, 58, 90);
        C0177.m3563(1153, 32, 21);
        C0177.m3563(1185, 65, 24);
        C0177.m3563(1250, 65, 70);
        C0177.m3563(1315, JfifUtil.MARKER_RST0, 67);
        C0177.m3563(1523, 80, 7);
        C0177.m3563(1603, 31, 85);
        f1415 = new byte[]{48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 74, 75, 77, 78, 80, 82, 83, 84, 85, 86, 87, 88, 89, 90};
    }

    public static byte m4006(byte b) {
        return (b < 97 || b > 122) ? b : (byte) (b - 32);
    }

    public static boolean m4007(byte b) {
        char c = (char) b;
        return c == 'C' || c == 'F' || c == 'G' || c == 'T';
    }

    public static byte m4008(byte b) {
        return f1415[b % 32];
    }

    public static int m4010(byte[] bArr, int i) {
        int i2 = i;
        int i3 = i2;
        while (true) {
            byte b = bArr[i2];
            if (b == 0) {
                break;
            }
            if (b >= 97 && b <= 122) {
                b = (byte) (b - 32);
            }
            if (b == 73) {
                b = 49;
            }
            byte b2 = b != 76 ? b : (byte) 49;
            if (b2 == 79) {
                b2 = 48;
            }
            byte b3 = b2 != 81 ? b2 : (byte) 48;
            byte b4 = 0;
            while (true) {
                if (b4 >= 32) {
                    b4 = -1;
                    break;
                }
                if (b3 == f1415[b4]) {
                    break;
                }
                b4 = (byte) (b4 + 1);
            }
            if (-1 != b4) {
                bArr[i3] = f1415[b4 % 32];
                i3++;
            } else {
                bArr[i2] = 0;
            }
            i2++;
        }
        for (int i4 = i3; i4 < i2; i4++) {
            bArr[i4] = 0;
        }
        return i3 - i;
    }

    public static boolean m4011(byte b) {
        char c = (char) b;
        return c == 'X' || c == 'Z';
    }

    public static String m4016(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2);
    }

    public static boolean m4019(byte b) {
        char c = (char) b;
        return c == 'D' || c == 'E' || c == 'F' || c == 'G';
    }

    public static void m4018(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        System.arraycopy(bArr, i, bArr2, i2, i3);
    }

    public static int m4013(byte[] bArr, int i) {
        return ((((((bArr[i + 3] & 255) * 256) + (bArr[i + 2] & 255)) * 256) + (bArr[i + 1] & 255)) * 256) + (bArr[i] & 255);
    }

    public static void m4017(byte[] bArr, byte b, byte b2) {
        for (int i = 0; i < 16; i++) {
            bArr[i] = (byte) ((b2 - 48) + (b - 48) + bArr[i]);
        }
    }

    public static byte[] m4020(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i;
        byte b;
        byte[] bArr4 = new byte[301];
        byte[] bArr5 = new byte[14];
        m4018(bArr, 0, bArr4, 0, bArr.length);
        int iM4010 = m4010(bArr4, 0);
        if (iM4010 != 0) {
            if (bArr2 != null && bArr2.length > 0) {
                int i2 = iM4010 + 1;
                bArr4[iM4010] = 42;
                int i3 = i2;
                while (i3 < 300 && (i = i3 - i2) < bArr2.length && (b = bArr2[i]) != 0) {
                    bArr4[i3] = b;
                    i3++;
                }
                bArr4[i3] = 0;
                iM4010 = m4010(bArr4, i2) + i2;
            }
            while (iM4010 % 8 != 0) {
                bArr4[iM4010] = 0;
                iM4010++;
            }
            for (int i4 = 0; i4 < iM4010 / 8; i4++) {
                for (int i5 = 0; i5 < 8; i5++) {
                    bArr5[i5] = (byte) (bArr5[i5] ^ bArr4[(i4 * 8) + i5]);
                }
                int[] iArr = new int[2];
                int[] iArr2 = new int[4];
                for (int i6 = 0; i6 < 2; i6++) {
                    iArr[i6] = m4013(bArr5, i6 * 4);
                }
                for (int i7 = 0; i7 < 4; i7++) {
                    iArr2[i7] = m4013(bArr3, i7 * 4);
                }
                int i8 = iArr[0];
                int i9 = iArr[1];
                int i10 = 32;
                int i11 = 0;
                while (true) {
                    int i12 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    i11 -= 1640531527;
                    i8 += (((i9 << 4) + iArr2[0]) ^ (i9 + i11)) ^ ((i9 >>> 5) + iArr2[1]);
                    i9 += (((i8 << 4) + iArr2[2]) ^ (i8 + i11)) ^ ((i8 >>> 5) + iArr2[3]);
                    i10 = i12;
                }
                iArr[0] = i8;
                iArr[1] = i9;
                for (int i13 = 0; i13 < 2; i13++) {
                    int i14 = iArr[i13];
                    int i15 = i13 * 4;
                    bArr5[i15] = (byte) i14;
                    bArr5[i15 + 1] = (byte) ((i14 >>> 8) & 255);
                    bArr5[i15 + 2] = (byte) ((i14 >>> 16) & 255);
                    bArr5[i15 + 3] = (byte) ((i14 >>> 24) & 255);
                }
            }
        }
        int i16 = 8;
        while (i16 % 5 != 0) {
            bArr5[i16] = 0;
            i16++;
        }
        bArr5[i16] = 0;
        int i17 = (i16 / 5) * 8;
        byte[] bArr6 = new byte[i17 + 1];
        for (int i18 = 0; i18 < i16; i18++) {
            bArr6[i18] = bArr5[i18];
        }
        for (int i19 = (i16 * 8) - 1; i19 >= 0; i19--) {
            if ((bArr6[i19 / 8] & (1 << (i19 % 8))) != 0) {
                int i20 = i19 / 5;
                bArr6[i20] = (byte) (bArr6[i20] | ((byte) (1 << (i19 % 5))));
            } else {
                int i21 = i19 / 5;
                bArr6[i21] = (byte) (bArr6[i21] & ((byte) (~(1 << (i19 % 5)))));
            }
            if (i19 % 5 == 0) {
                int i22 = i19 / 5;
                bArr6[i22] = (byte) (bArr6[i22] & Ascii.US);
            }
        }
        for (int i23 = 0; i23 < i17; i23++) {
            bArr6[i23] = m4008(bArr6[i23]);
        }
        bArr6[i17] = 0;
        bArr6[12] = 0;
        return bArr6;
    }

    public static int m4009(byte[] bArr) {
        if (bArr[0] == 0 || !m4019(m4006(bArr[5]))) {
            return -1;
        }
        int i = (bArr[13] - 48) + ((bArr[12] - 48) * 10) + ((bArr[11] - 48) * 100) + ((bArr[10] - 48) * 1000);
        int i2 = (bArr[15] - 48) + ((bArr[14] - 48) * 10);
        int i3 = (bArr[17] - 48) + ((bArr[16] - 48) * 10);
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(C0177.m3563(1940, 3, 16)));
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone(C0177.m3563(1943, 3, 44)));
        calendar.set(2000, 0, 1, 0, 0, 0);
        calendar2.set(i, i2 - 1, i3, 0, 0, 0);
        return (int) ((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / CoreConstants.MILLIS_IN_ONE_DAY);
    }

    public static int m4014(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        byte b;
        byte[] bArr5 = new byte[31];
        int i = 0;
        while (i < 30 && (b = bArr3[i]) != 0) {
            bArr5[i] = b;
            i++;
        }
        bArr5[i] = 0;
        m4010(bArr5, 0);
        byte[] bArrM4020 = m4020(bArr, bArr2, bArr4);
        boolean z = true;
        int i2 = 0;
        while (true) {
            if (i2 < (bArr5[6] != 0 ? 12 : 6)) {
                byte b2 = bArr5[i2];
                if (b2 != 0) {
                    z = false;
                }
                if (b2 == 0) {
                    return 1;
                }
                if (b2 != bArrM4020[i2]) {
                    return 2;
                }
                i2++;
            } else {
                if (bArr5[12] != 0) {
                    return 3;
                }
                return z ? 4 : 0;
            }
        }
    }

    public static String m4015() {
        try {
            String hostName = InetAddress.getLocalHost().getHostName();
            if (hostName.length() > 15) {
                hostName = hostName.substring(0, 15);
            }
            byte[] bArr = new byte[100];
            byte[] bytes = hostName.getBytes();
            m4018(bytes, 0, bArr, 1, bytes.length);
            bArr[0] = 65;
            return m4016(m4020(bArr, new byte[0], new byte[]{69, 110, 105, 107, 97, 109, 69, 114, 117, 104, 100, 121, 114, 116, 104, 83}), 0, 8);
        } catch (Throwable unused) {
            return C0177.m3563(1932, 8, RNMBXStyleValue.InterpolationModeIdentity);
        }
    }

    public static int m4012(byte[] bArr) {
        bArr[bArr.length - 1] = 0;
        m4010(bArr, 0);
        if (m4011(bArr[5])) {
            int i = (bArr[13] - 48) + ((bArr[12] - 48) * 10);
            Calendar calendar = Calendar.getInstance();
            int i2 = calendar.get(5) + ((calendar.get(2) + 1) * 30) + ((calendar.get(1) - 2000) * 365);
            int i3 = (bArr[9] - 48) + ((bArr[8] - 48) * 10) + (((bArr[7] - 48) + ((bArr[6] - 48) * 10)) * 30) + (((bArr[11] - 48) + ((bArr[10] - 48) * 10)) * 365);
            if (i2 > i3 + i) {
                return 9;
            }
            if (i2 < i3 - i) {
                return 12;
            }
        }
        if (((char) bArr[5]) == 'P') {
            byte b = bArr[6];
        }
        return 0;
    }
}
