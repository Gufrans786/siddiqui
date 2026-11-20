package nts;

public class C0441 extends AbstractC0527 {

    public int[] f2273;

    public int[] f2274;

    public int[] f2275;

    public C0441(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[32];
        this.f2274 = iArr;
        this.f2275 = new int[32];
        this.f2273 = new int[32];
        C0466.m5127(bArr, 0, iArr);
        C0466.m5127(bArr, 8, this.f2275);
        if (bArr.length == 24) {
            int[] iArr2 = new int[32];
            this.f2273 = iArr2;
            C0466.m5127(bArr, 16, iArr2);
        } else {
            this.f2273 = this.f2274;
        }
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0245.m3793(this.f3371, this.f2274, this.f2275, this.f2273);
    }
}
