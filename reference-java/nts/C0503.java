package nts;

public class C0503 extends AbstractC0527 {

    public C0112 f2817;

    public C0503(byte[] bArr, byte[] bArr2, int i, int i2) {
        super(bArr2, 8, 8, i, i2, 8);
        C0112 c0112 = new C0112();
        this.f2817 = c0112;
        c0112.m3179(bArr);
        this.f3373 = true;
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0502.m5186(this.f3371, this.f2817);
    }
}
