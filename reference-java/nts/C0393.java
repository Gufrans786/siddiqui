package nts;

public class C0393 extends AbstractC0606 {

    public C0112 f2053;

    public C0393(byte[] bArr, byte[] bArr2, int i, int i2) {
        super(bArr2, 8, 8, i, i2, 8);
        C0112 c0112 = new C0112();
        this.f2053 = c0112;
        c0112.m3179(bArr);
        this.f3373 = true;
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        C0502.m5186(this.f3371, this.f2053);
    }
}
