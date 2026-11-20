package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0368 extends C0421 {
    public static int m4457(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i + 1] << 16) & 16711680) | ((bArr[i + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    public static void m4458(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public static void m4459(byte[] bArr, int[] iArr) {
        for (int i = 0; i < 4; i++) {
            iArr[i] = m4457(bArr, i * 4);
        }
    }

    public static void m4460(byte[] bArr, int[] iArr, int i, int i2) {
        int iM4457 = m4457(bArr, 0);
        int iM4458 = m4457(bArr, 4);
        if (i2 == 0) {
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                iM4457 += ((iM4458 << 4) ^ ((iM4458 >>> 5) + iM4458)) ^ (iArr[i3 & 3] + i3);
                i3 -= 1640531527;
                iM4458 += ((iM4457 << 4) ^ ((iM4457 >>> 5) + iM4457)) ^ (iArr[(i3 >>> 11) & 3] + i3);
            }
        } else {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                iM4457 += (((iM4458 << 4) ^ (iM4458 >>> 5)) + iM4458) ^ (iArr[i5 & 3] + i5);
                i5 -= 1640531527;
                iM4458 += (((iM4457 << 4) ^ (iM4457 >>> 5)) + iM4457) ^ (iArr[(i5 >>> 11) & 3] + i5);
            }
        }
        m4458(iM4457, bArr, 0);
        m4458(iM4458, bArr, 4);
    }
}
