package nts;

public class C0459 extends AbstractC0606 {

    public C0635 f2670;

    public C0459(byte[] bArr, byte[] bArr2, int i, int i2, long j, int i3, int i4) throws C0537 {
        super(bArr2, 64, 64, i, i2, 64);
        C0635 c0635 = new C0635();
        this.f2670 = c0635;
        c0635.m5738(bArr, bArr2, j, i3, i4);
        this.f3373 = true;
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        this.f2670.m5737(this.f3371);
    }
}
