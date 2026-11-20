package nts;

public class C0439 extends AbstractC0527 {

    public int[] f2263;

    public int[] f2264;

    public int[] f2265;

    public int[] f2266;

    public int[] f2267;

    public C0439(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[18];
        this.f2265 = iArr;
        int[] iArr2 = new int[256];
        this.f2266 = iArr2;
        int[] iArr3 = new int[256];
        this.f2263 = iArr3;
        int[] iArr4 = new int[256];
        this.f2264 = iArr4;
        int[] iArr5 = new int[256];
        this.f2267 = iArr5;
        C0490.m5178(iArr, iArr2, iArr3, iArr4, iArr5);
        C0490.m5176(bArr, (byte[]) null, iArr, iArr2, iArr3, iArr4, iArr5);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0490.m5177(this.f3371, this.f2265, this.f2266, this.f2263, this.f2264, this.f2267);
    }
}
