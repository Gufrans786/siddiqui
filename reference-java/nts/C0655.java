package nts;

public class C0655 extends AbstractC0606 {

    public C0349 f3643;

    public C0655(byte[] bArr, byte[] bArr2, int i, int i2, long j) {
        super(bArr2, 64, 64, i, i2, 64);
        C0349 c0349 = new C0349();
        this.f3643 = c0349;
        c0349.m4418(bArr, bArr2, j);
        this.f3373 = true;
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        C0349 c0349 = this.f3643;
        byte[] bArr = this.f3371;
        C0349.m4415(bArr, c0349.f1868, c0349.f1867, c0349.f1865, c0349.f1866);
        c0349.f1866 += bArr.length;
        c0349.f1866 %= 64;
    }
}
