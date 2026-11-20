package nts;

public class C0386 extends AbstractC0527 {

    public C0349 f1990;

    public C0386(byte[] bArr, byte[] bArr2, int i, int i2, long j) {
        super(bArr2, 64, 64, i, i2, 64);
        C0349 c0349 = new C0349();
        this.f1990 = c0349;
        c0349.m4418(bArr, bArr2, j);
        this.f3373 = true;
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        this.f1990.m4417(this.f3371);
    }
}
