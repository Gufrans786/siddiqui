package nts;

public class C0547 extends AbstractC0527 {

    public C0635 f3142;

    public C0547(byte[] bArr, byte[] bArr2, int i, int i2, long j, int i3, int i4) throws C0537 {
        super(bArr2, 64, 64, i, i2, 64);
        C0635 c0635 = new C0635();
        this.f3142 = c0635;
        c0635.m5738(bArr, bArr2, j, i3, i4);
        this.f3373 = true;
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        this.f3142.m5737(this.f3371);
    }
}
