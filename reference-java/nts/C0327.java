package nts;

public class C0327 extends AbstractC0606 {

    public int[] f1778;

    public C0327(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[32];
        this.f1778 = iArr;
        C0466.m5127(bArr, 0, iArr);
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0466.m5125(this.f3371, this.f1778);
        } else {
            C0466.m5128(this.f3371, this.f1778);
        }
    }
}
