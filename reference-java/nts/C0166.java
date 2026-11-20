package nts;

public class C0166 extends AbstractC0606 {

    public int f537;

    public int[] f538;

    public int f539;

    public C0166(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5) {
        super(bArr2, 8, 8, i, i2, i5);
        int[] iArr = new int[4];
        this.f538 = iArr;
        this.f539 = 32;
        this.f537 = 0;
        C0368.m4459(bArr, iArr);
        this.f539 = i3;
        this.f537 = i4;
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0368.m4460(this.f3371, this.f538, this.f539, this.f537);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f538;
        int i2 = this.f539;
        int i3 = this.f537;
        int i4 = i2 == 32 ? -957401312 : i2 * (-1640531527);
        int iM4457 = C0368.m4457(bArr, 0);
        int iM4458 = C0368.m4457(bArr, 4);
        if (i3 == 0) {
            for (int i5 = 0; i5 < i2; i5++) {
                iM4458 -= ((iM4457 << 4) ^ ((iM4457 >>> 5) + iM4457)) ^ (iArr[(i4 >>> 11) & 3] + i4);
                i4 -= -1640531527;
                iM4457 -= ((iM4458 << 4) ^ ((iM4458 >>> 5) + iM4458)) ^ (iArr[i4 & 3] + i4);
            }
        } else {
            for (int i6 = 0; i6 < i2; i6++) {
                iM4458 -= (((iM4457 << 4) ^ (iM4457 >>> 5)) + iM4457) ^ (iArr[(i4 >>> 11) & 3] + i4);
                i4 -= -1640531527;
                iM4457 -= (((iM4458 << 4) ^ (iM4458 >>> 5)) + iM4458) ^ (iArr[i4 & 3] + i4);
            }
        }
        C0368.m4458(iM4457, bArr, 0);
        C0368.m4458(iM4458, bArr, 4);
    }
}
