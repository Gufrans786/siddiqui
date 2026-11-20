package nts;

import androidx.core.view.MotionEventCompat;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import kotlin.io.encoding.Base64;
import okio.Utf8;
import org.bouncycastle.crypto.signers.PSSSigner;

public class C0616 extends C0356 {

    public static byte[] f3376 = {-39, 120, -7, -60, Ascii.EM, -35, -75, -19, 40, -23, -3, 121, 74, -96, -40, -99, -58, 126, 55, -125, 43, 118, 83, -114, 98, 76, 100, -120, 68, -117, -5, -94, Ascii.ETB, -102, 89, -11, -121, -77, 79, 19, 97, 69, 109, -115, 9, -127, 125, 50, -67, -113, SignedBytes.MAX_POWER_OF_TWO, -21, -122, -73, 123, Ascii.VT, -16, -107, 33, 34, 92, 107, 78, -126, 84, -42, 101, -109, -50, 96, -78, Ascii.FS, 115, 86, -64, Ascii.DC4, -89, -116, -15, -36, Ascii.DC2, 117, -54, Ascii.US, 59, -66, -28, -47, 66, Base64.padSymbol, -44, 48, -93, 60, -74, 38, 111, -65, Ascii.SO, -38, 70, 105, 7, 87, 39, -14, Ascii.GS, -101, PSSSigner.TRAILER_IMPLICIT, -108, 67, 3, -8, 17, -57, -10, -112, -17, 62, -25, 6, -61, -43, 47, -56, 102, Ascii.RS, -41, 8, -24, -22, -34, -128, 82, -18, -9, -124, -86, 114, -84, 53, 77, 106, 42, -106, Ascii.SUB, -46, 113, 90, Ascii.NAK, 73, 116, 75, -97, -48, 94, 4, Ascii.CAN, -92, -20, -62, -32, 65, 110, Ascii.SI, 81, -53, -52, 36, -111, -81, 80, -95, -12, 112, 57, -103, 124, 58, -123, 35, -72, -76, 122, -4, 2, 54, 91, 37, 85, -105, 49, 45, 93, -6, -104, -29, -118, -110, -82, 5, -33, 41, 16, 103, 108, -70, -55, -45, 0, -26, -49, -31, -98, -88, 44, 99, Ascii.SYN, 1, Utf8.REPLACEMENT_BYTE, 88, -30, -119, -87, Ascii.CR, 56, 52, Ascii.ESC, -85, 51, -1, -80, -69, 72, Ascii.FF, 95, -71, -79, -51, 46, -59, -13, -37, 71, -27, -91, -100, 119, 10, -90, 32, 104, -2, 127, -63, -83};

    public static byte[] f3377 = {1, 2, 3, 5};

    public static int[] m5644(byte[] bArr) {
        int[] iArr = new int[128];
        int length = bArr.length;
        int i = length * 8;
        for (int i2 = 0; i2 < length && i2 < 128; i2++) {
            iArr[i2] = 255 & bArr[i2];
        }
        int i3 = (i + 7) / 8;
        int iPow = 255 % ((int) Math.pow(2.0d, (i + 8) - (i3 * 8)));
        for (int i4 = length; i4 < 128; i4++) {
            iArr[i4] = f3376[(iArr[i4 - 1] + iArr[i4 - length]) % 256] & 255;
        }
        int i5 = 128 - i3;
        iArr[i5] = f3376[iPow & iArr[i5]] & 255;
        for (int i6 = 127 - i3; i6 >= 0; i6--) {
            iArr[i6] = f3376[iArr[i6 + 1] ^ iArr[i6 + i3]] & 255;
        }
        int[] iArr2 = new int[64];
        for (int i7 = 0; i7 < 64; i7++) {
            int i8 = i7 * 2;
            iArr2[i7] = (iArr[i8] & 255) | ((iArr[i8 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
        }
        return iArr2;
    }

    public static int m5645(int i) {
        return i < 0 ? i + 4 : i;
    }

    public static int m5646(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = iArr[i];
        byte b = (byte) (f3377[i] & Ascii.SI);
        if (b != 0) {
            i3 = ((i3 << (16 - b)) | (i3 >> b)) & 65535;
        }
        iArr[i] = i3;
        int i4 = i3 - iArr2[i2];
        int i5 = i - 1;
        iArr[i] = ((i4 - (iArr[m5645(i5)] & iArr[m5645(i - 2)])) - ((~iArr[m5645(i5)]) & iArr[m5645(i - 3)])) & 65535;
        return i2 - 1;
    }

    public static int m5650(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    public static void m5653(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
    }

    public static int m5647(int[] iArr, int[] iArr2, int i) {
        return m5646(iArr, 0, iArr2, m5646(iArr, 1, iArr2, m5646(iArr, 2, iArr2, m5646(iArr, 3, iArr2, i))));
    }

    public static int m5651(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = iArr[i] + iArr2[i2];
        int i4 = i - 1;
        int i5 = (i3 + (iArr[m5645(i4)] & iArr[m5645(i - 2)]) + ((~iArr[m5645(i4)]) & iArr[m5645(i - 3)])) & 65535;
        iArr[i] = i5;
        byte b = (byte) (f3377[i] & Ascii.SI);
        if (b != 0) {
            i5 = ((i5 >> (16 - b)) | (i5 << b)) & 65535;
        }
        iArr[i] = i5;
        return i2 + 1;
    }

    public static int m5652(int[] iArr, int[] iArr2, int i) {
        return m5651(iArr, 3, iArr2, m5651(iArr, 2, iArr2, m5651(iArr, 1, iArr2, m5651(iArr, 0, iArr2, i))));
    }

    public static void m5648(int[] iArr, int i, int[] iArr2) {
        iArr[i] = 65535 & (iArr[i] - iArr2[iArr[m5645(i - 1)] & 63]);
    }

    public static void m5649(int[] iArr, int[] iArr2) {
        m5648(iArr, 3, iArr2);
        m5648(iArr, 2, iArr2);
        m5648(iArr, 1, iArr2);
        m5648(iArr, 0, iArr2);
    }

    public static void m5655(int[] iArr, int i, int[] iArr2) {
        iArr[i] = iArr[i] + iArr2[iArr[m5645(i - 1)] & 63];
    }

    public static void m5656(int[] iArr, int[] iArr2) {
        m5655(iArr, 0, iArr2);
        m5655(iArr, 1, iArr2);
        m5655(iArr, 2, iArr2);
        m5655(iArr, 3, iArr2);
    }

    public static void m5654(byte[] bArr, int[] iArr) {
        int[] iArr2 = new int[4];
        for (int i = 0; i < 4; i++) {
            iArr2[i] = m5650(bArr, i * 2);
        }
        int iM5652 = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            iM5652 = m5652(iArr2, iArr, iM5652);
        }
        m5656(iArr2, iArr);
        for (int i3 = 0; i3 < 6; i3++) {
            iM5652 = m5652(iArr2, iArr, iM5652);
        }
        m5656(iArr2, iArr);
        for (int i4 = 0; i4 < 5; i4++) {
            iM5652 = m5652(iArr2, iArr, iM5652);
        }
        for (int i5 = 0; i5 < 4; i5++) {
            m5653(iArr2[i5], bArr, i5 * 2);
        }
    }
}
