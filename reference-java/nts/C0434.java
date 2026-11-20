package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0434 extends C0168 {
    public static int m4801(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i + 1] << 16) & 16711680) | ((bArr[i + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    public static void m4802(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public static void m4803(byte[] bArr, int[] iArr) {
        for (int i = 0; i < 4; i++) {
            iArr[i] = m4801(bArr, i * 4);
        }
    }

    public static void m4804(byte[] bArr, int[] iArr, int i) {
        int iM4801 = m4801(bArr, 0);
        int iM4802 = m4801(bArr, 4);
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 -= 1640531527;
            iM4801 += (((iM4802 << 4) + iArr[0]) ^ (iM4802 + i2)) ^ ((iM4802 >>> 5) + iArr[1]);
            iM4802 += (((iM4801 << 4) + iArr[2]) ^ (iM4801 + i2)) ^ ((iM4801 >>> 5) + iArr[3]);
        }
        m4802(iM4801, bArr, 0);
        m4802(iM4802, bArr, 4);
    }
}
