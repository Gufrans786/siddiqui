package nts;

public class C0365 extends AbstractC0606 {

    public int[] f1917;

    public int[] f1918;

    public C0365(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 16, 16, i, i2, i3);
        int[] iArr = new int[40];
        this.f1917 = iArr;
        int[] iArr2 = new int[1024];
        this.f1918 = iArr2;
        C0257.m3831(bArr, iArr, iArr2);
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0257.m3837(this.f3371, this.f1917, this.f1918);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f1917;
        int[] iArr2 = this.f1918;
        int iM3834 = C0257.m3834(bArr, 0);
        int iM3835 = C0257.m3834(bArr, 4);
        int iM3836 = C0257.m3834(bArr, 8);
        int iM3837 = C0257.m3834(bArr, 12);
        int i2 = iM3834 ^ iArr[4];
        int i3 = iM3835 ^ iArr[5];
        int i4 = iM3836 ^ iArr[6];
        int i5 = iM3837 ^ iArr[7];
        int i6 = 39;
        for (int i7 = 0; i7 < 16; i7 += 2) {
            int iM3838 = C0257.m3835(iArr2, i2, 0);
            int iM3839 = C0257.m3835(iArr2, i3, 3);
            int i8 = i5 ^ (((iM3839 * 2) + iM3838) + iArr[i6]);
            i5 = (i8 >>> 1) | (i8 << 31);
            i4 = ((i4 << 1) | (i4 >>> 31)) ^ ((iM3838 + iM3839) + iArr[i6 - 1]);
            int iM38310 = C0257.m3835(iArr2, i4, 0);
            int iM38311 = C0257.m3835(iArr2, i5, 3);
            int i9 = i6 - 3;
            int i10 = i3 ^ (((iM38311 * 2) + iM38310) + iArr[i6 - 2]);
            i3 = (i10 >>> 1) | (i10 << 31);
            i6 -= 4;
            i2 = ((i2 << 1) | (i2 >>> 31)) ^ ((iM38310 + iM38311) + iArr[i9]);
        }
        int i11 = iArr[0] ^ i4;
        int i12 = iArr[1] ^ i5;
        int i13 = i2 ^ iArr[2];
        int i14 = iArr[3] ^ i3;
        C0257.m3836(i11, bArr, 0);
        C0257.m3836(i12, bArr, 4);
        C0257.m3836(i13, bArr, 8);
        C0257.m3836(i14, bArr, 12);
    }
}
