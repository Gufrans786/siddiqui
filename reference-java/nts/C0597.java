package nts;

public class C0597 extends AbstractC0527 {

    public short[] f3304;

    public C0597(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        short[] sArr = new short[52];
        this.f3304 = sArr;
        C0551.m5434(bArr, sArr);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0551.m5439(this.f3371, this.f3304);
    }
}
