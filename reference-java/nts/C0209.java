package nts;

public class C0209 extends AbstractC0606 {

    public int[] f782;

    public int[] f783;

    public int[] f784;

    public int[] f785;

    public int[] f786;

    public C0209(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[18];
        this.f784 = iArr;
        int[] iArr2 = new int[256];
        this.f785 = iArr2;
        int[] iArr3 = new int[256];
        this.f782 = iArr3;
        int[] iArr4 = new int[256];
        this.f783 = iArr4;
        int[] iArr5 = new int[256];
        this.f786 = iArr5;
        C0490.m5178(iArr, iArr2, iArr3, iArr4, iArr5);
        C0490.m5176(bArr, (byte[]) null, iArr, iArr2, iArr3, iArr4, iArr5);
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0490.m5177(this.f3371, this.f784, this.f785, this.f782, this.f783, this.f786);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f784;
        int[] iArr2 = this.f785;
        int[] iArr3 = this.f782;
        int[] iArr4 = this.f783;
        int[] iArr5 = this.f786;
        int[] iArr6 = {C0490.m5171(bArr, 0)};
        int[] iArr7 = {C0490.m5171(bArr, 4)};
        iArr6[0] = iArr6[0] ^ iArr[17];
        int i2 = 16;
        while (i2 > 0) {
            int iM5173 = C0490.m5173(iArr, iArr2, iArr3, iArr4, iArr5, iArr7[0], iArr6[0], i2);
            int i3 = i2;
            iArr7[0] = iM5173;
            iArr6[0] = C0490.m5173(iArr, iArr2, iArr3, iArr4, iArr5, iArr6[0], iM5173, i3 - 1);
            i2 = i3 - 2;
        }
        int i4 = iArr[0] ^ iArr7[0];
        iArr7[0] = i4;
        int i5 = iArr6[0];
        iArr6[0] = i4;
        iArr7[0] = i5;
        C0490.m5174(iArr6[0], bArr, 0);
        C0490.m5174(iArr7[0], bArr, 4);
    }
}
