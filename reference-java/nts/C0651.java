package nts;

public class C0651 extends AbstractC0527 {

    public int[] f3637;

    public int[] f3638;

    public C0651(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 16, 16, i, i2, i3);
        int[] iArr = new int[40];
        this.f3637 = iArr;
        int[] iArr2 = new int[1024];
        this.f3638 = iArr2;
        C0257.m3831(bArr, iArr, iArr2);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0257.m3837(this.f3371, this.f3637, this.f3638);
    }
}
