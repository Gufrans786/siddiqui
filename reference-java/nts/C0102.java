package nts;

public class C0102 extends AbstractC0527 {

    public int[] f102;

    public int f103;

    public C0102(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 16, 16, i, i2, i3);
        int[] iArr = new int[64];
        this.f102 = iArr;
        this.f103 = 10;
        this.f103 = C0422.m4686(bArr, 0, bArr.length, iArr, new int[64]);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0422.m4684(this.f3371, this.f102, this.f103);
    }
}
