package nts;

public class C0178 extends AbstractC0606 {

    public int[] f613;

    public C0178(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, bArr2.length, bArr2.length, i, i2, i3);
        int[] iArr = new int[4];
        this.f613 = iArr;
        C0516.m5241(bArr, iArr);
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0516.m5244(this.f3371, this.f613);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f613;
        int length = bArr.length >>> 2;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = C0516.m5242(bArr, i2 * 4);
        }
        int i3 = iArr2[0];
        for (int i4 = ((52 / length) + 6) * (-1640531527); i4 != 0; i4 -= -1640531527) {
            int i5 = (i4 >>> 2) & 3;
            int i6 = length - 1;
            int i7 = i6;
            while (i7 > 0) {
                int i8 = iArr2[i7 - 1];
                i3 = iArr2[i7] - (((i3 ^ i4) + (iArr[(i7 & 3) ^ i5] ^ i8)) ^ (((i8 >>> 5) ^ (i3 << 2)) + ((i3 >>> 3) ^ (i8 << 4))));
                iArr2[i7] = i3;
                i7--;
            }
            int i9 = iArr2[i6];
            i3 = iArr2[0] - (((i3 ^ i4) + (iArr[i5 ^ (i7 & 3)] ^ i9)) ^ (((i9 >>> 5) ^ (i3 << 2)) + ((i3 >>> 3) ^ (i9 << 4))));
            iArr2[0] = i3;
        }
        for (int i10 = 0; i10 < length; i10++) {
            C0516.m5243(iArr2[i10], bArr, i10 * 4);
        }
    }
}
