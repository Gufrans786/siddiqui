package nts;

public class C0605 extends AbstractC0606 {

    public int[] f3329;

    public int f3330;

    public C0605(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        super(bArr2, 8, 8, i, i2, i4);
        int[] iArr = new int[4];
        this.f3329 = iArr;
        this.f3330 = 32;
        C0434.m4803(bArr, iArr);
        this.f3330 = i3;
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0434.m4804(this.f3371, this.f3329, this.f3330);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f3329;
        int i2 = this.f3330;
        int i3 = i2 == 32 ? -957401312 : i2 * (-1640531527);
        int iM4801 = C0434.m4801(bArr, 0);
        int iM4802 = C0434.m4801(bArr, 4);
        for (int i4 = 0; i4 < i2; i4++) {
            iM4802 -= (((iM4801 << 4) + iArr[2]) ^ (iM4801 + i3)) ^ ((iM4801 >>> 5) + iArr[3]);
            iM4801 -= (((iM4802 << 4) + iArr[0]) ^ (iM4802 + i3)) ^ ((iM4802 >>> 5) + iArr[1]);
            i3 -= -1640531527;
        }
        C0434.m4802(iM4801, bArr, 0);
        C0434.m4802(iM4802, bArr, 4);
    }
}
