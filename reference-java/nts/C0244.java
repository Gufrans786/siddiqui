package nts;

public class C0244 extends AbstractC0527 {

    public int[] f901;

    public C0244(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[32];
        this.f901 = iArr;
        C0466.m5127(bArr, 0, iArr);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0466.m5125(this.f3371, this.f901);
    }
}
