package nts;

public class C0448 extends AbstractC0606 {

    public int[] f2547;

    public int[] f2548;

    public int[] f2549;

    public C0448(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[32];
        this.f2548 = iArr;
        this.f2549 = new int[32];
        this.f2547 = new int[32];
        C0466.m5127(bArr, 0, iArr);
        C0466.m5127(bArr, 8, this.f2549);
        if (bArr.length == 24) {
            int[] iArr2 = new int[32];
            this.f2547 = iArr2;
            C0466.m5127(bArr, 16, iArr2);
        } else {
            this.f2547 = this.f2548;
        }
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0245.m3793(this.f3371, this.f2548, this.f2549, this.f2547);
        } else {
            C0245.m3794(this.f3371, this.f2548, this.f2549, this.f2547);
        }
    }
}
