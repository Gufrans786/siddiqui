package nts;

public class C0471 extends AbstractC0606 {

    public int[] f2699;

    public int f2700;

    public C0471(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 16, 16, i, i2, i3);
        this.f2699 = new int[64];
        this.f2700 = 10;
        int i4 = this.f3365;
        if (i4 == 4 || i4 == 3 || i4 == 6) {
            this.f2700 = C0422.m4686(bArr, 0, bArr.length, this.f2699, new int[64]);
        } else {
            this.f2700 = C0422.m4686(bArr, 0, bArr.length, new int[64], this.f2699);
        }
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3 || i == 6) {
            C0422.m4684(this.f3371, this.f2699, this.f2700);
        } else {
            C0422.m4687(this.f3371, this.f2699, this.f2700);
        }
    }
}
