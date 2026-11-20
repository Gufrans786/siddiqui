package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0516 extends AbstractC0444 {
    public C0516() {
        this.f1687 = new C0509[]{new C0509(128, 128, 0)};
        this.f1684 = new C0509[]{new C0509(64, 2147483615, 32)};
        this.f1689 = 64;
        this.f1685 = 64;
        this.f1691 = 128;
        this.f1690 = 1;
        this.f1686 = 1;
    }

    public static void m5241(byte[] bArr, int[] iArr) {
        for (int i = 0; i < 4; i++) {
            iArr[i] = m5242(bArr, i * 4);
        }
    }

    public static int m5242(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i + 1] << 16) & 16711680) | ((bArr[i + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    @Override
    public void mo3115() {
        mo3994(C0308.m4227(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }

    public static void m5243(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) {
        return new C0268(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) {
        return new C0178(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    public static void m5244(byte[] bArr, int[] iArr) {
        int length = bArr.length >>> 2;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr2[i] = m5242(bArr, i * 4);
        }
        int i2 = length - 1;
        int i3 = iArr2[i2];
        int i4 = 0;
        for (int i5 = (52 / length) + 6; i5 > 0; i5--) {
            i4 -= 1640531527;
            int i6 = (i4 >>> 2) & 3;
            int i7 = 0;
            while (i7 < i2) {
                int i8 = i7 + 1;
                int i9 = iArr2[i8];
                i3 = ((((i3 >>> 5) ^ (i9 << 2)) + ((i9 >>> 3) ^ (i3 << 4))) ^ ((i9 ^ i4) + (i3 ^ iArr[(i7 & 3) ^ i6]))) + iArr2[i7];
                iArr2[i7] = i3;
                i7 = i8;
            }
            int i10 = iArr2[0];
            i3 = ((((i3 >>> 5) ^ (i10 << 2)) + ((i10 >>> 3) ^ (i3 << 4))) ^ ((i10 ^ i4) + (i3 ^ iArr[i6 ^ (i7 & 3)]))) + iArr2[i2];
            iArr2[i2] = i3;
        }
        for (int i11 = 0; i11 < length; i11++) {
            m5243(iArr2[i11], bArr, i11 * 4);
        }
    }
}
