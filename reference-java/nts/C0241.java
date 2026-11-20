package nts;

public class C0241 extends AbstractC0527 {

    public int f893;

    public int[] f894;

    public byte[] f895;

    public C0241(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[16];
        this.f894 = iArr;
        byte[] bArr3 = new byte[16];
        this.f895 = bArr3;
        this.f893 = 16;
        this.f893 = C0137.m3270(bArr, iArr, bArr3);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0137.m3273(this.f3371, this.f894, this.f895, this.f893);
    }
}
