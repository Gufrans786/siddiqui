package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0245 extends C0135 {
    public C0245() {
        this.f1687 = new C0509[]{new C0509(128, 192, 64)};
        this.f1691 = 128;
        this.f1689 = 64;
        this.f1685 = 64;
    }

    public static void m3793(byte[] bArr, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[2];
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            int i3 = i + 3;
            int i4 = ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i] & 255) | ((bArr[i + 2] << 16) & 16711680);
            i += 4;
            iArr4[i2] = i4 | ((bArr[i3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK);
        }
        C0466.m5126(iArr4, iArr);
        C0466.m5129(iArr4, iArr2);
        C0466.m5126(iArr4, iArr3);
        int i5 = 0;
        for (int i6 = 0; i6 < 2; i6++) {
            int i7 = iArr4[i6];
            bArr[i5] = (byte) i7;
            bArr[i5 + 1] = (byte) (i7 >>> 8);
            int i8 = i5 + 3;
            bArr[i5 + 2] = (byte) (i7 >>> 16);
            i5 += 4;
            bArr[i8] = (byte) (i7 >>> 24);
        }
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) {
        return new C0448(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    public static void m3794(byte[] bArr, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[2];
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            int i3 = i + 3;
            int i4 = ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i] & 255) | ((bArr[i + 2] << 16) & 16711680);
            i += 4;
            iArr4[i2] = i4 | ((bArr[i3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK);
        }
        C0466.m5129(iArr4, iArr3);
        C0466.m5126(iArr4, iArr2);
        C0466.m5129(iArr4, iArr);
        int i5 = 0;
        for (int i6 = 0; i6 < 2; i6++) {
            int i7 = iArr4[i6];
            bArr[i5] = (byte) i7;
            bArr[i5 + 1] = (byte) (i7 >>> 8);
            int i8 = i5 + 3;
            bArr[i5 + 2] = (byte) (i7 >>> 16);
            i5 += 4;
            bArr[i8] = (byte) (i7 >>> 24);
        }
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) {
        return new C0441(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    @Override
    public void mo3267(byte[] bArr) throws C0537 {
        super.mo3267(bArr);
        C0135.m3263(this.f1683);
        C0135.m3263(this.f1683);
        byte[] bArr2 = this.f1683;
        if (bArr2.length == 24) {
            C0135.m3263(bArr2);
        }
    }
}
