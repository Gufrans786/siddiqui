package nts;

public class C0202 extends AbstractC0527 {

    public int f720;

    public int[] f721;

    public int f722;

    public C0202(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5) {
        super(bArr2, 8, 8, i, i2, i5);
        int[] iArr = new int[4];
        this.f721 = iArr;
        this.f722 = 32;
        this.f720 = 0;
        C0368.m4459(bArr, iArr);
        this.f722 = i3;
        this.f720 = i4;
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0368.m4460(this.f3371, this.f721, this.f722, this.f720);
    }
}
