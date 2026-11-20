package nts;

public class C0430 extends AbstractC0606 {

    public int[] f2236;

    public C0430(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        this.f2236 = C0616.m5644(bArr);
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0616.m5654(this.f3371, this.f2236);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f2236;
        int[] iArr2 = new int[4];
        for (int i2 = 0; i2 < 4; i2++) {
            iArr2[i2] = C0616.m5650(bArr, i2 * 2);
        }
        int iM5647 = 63;
        for (int i3 = 0; i3 < 5; i3++) {
            iM5647 = C0616.m5647(iArr2, iArr, iM5647);
        }
        C0616.m5649(iArr2, iArr);
        for (int i4 = 0; i4 < 6; i4++) {
            iM5647 = C0616.m5647(iArr2, iArr, iM5647);
        }
        C0616.m5649(iArr2, iArr);
        for (int i5 = 0; i5 < 5; i5++) {
            iM5647 = C0616.m5647(iArr2, iArr, iM5647) & 255;
        }
        for (int i6 = 0; i6 < 4; i6++) {
            C0616.m5653(iArr2[i6], bArr, i6 * 2);
        }
    }
}
