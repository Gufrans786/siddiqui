package nts;

public class C0636 extends AbstractC0527 {

    public int[] f3492;

    public int f3493;

    public C0636(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        super(bArr2, 8, 8, i, i2, i4);
        int[] iArr = new int[4];
        this.f3492 = iArr;
        this.f3493 = 32;
        C0434.m4803(bArr, iArr);
        this.f3493 = i3;
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0434.m4804(this.f3371, this.f3492, this.f3493);
    }
}
