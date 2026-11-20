package nts;

public class C0300 extends AbstractC0606 {

    public short[] f1612;

    public C0300(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        int i4;
        super(bArr2, 8, 8, i, i2, i3);
        this.f1612 = new short[52];
        int i5 = this.f3365;
        int i6 = 4;
        if (i5 == 4 || i5 == 3) {
            C0551.m5434(bArr, this.f1612);
        } else {
            short[] sArr = this.f1612;
            short[] sArr2 = new short[52];
            C0551.m5434(bArr, sArr2);
            sArr[48] = C0551.m5435(sArr2[0]);
            sArr[49] = (short) ((-sArr2[1]) & 65535);
            sArr[50] = (short) ((-sArr2[2]) & 65535);
            sArr[51] = C0551.m5435(sArr2[3]);
            int i7 = 42;
            while (i7 >= 0) {
                sArr[i7 + 4] = sArr2[i6];
                sArr[i7 + 5] = sArr2[i6 + 1];
                int i8 = i6 + 3;
                sArr[i7] = C0551.m5435(sArr2[i6 + 2]);
                if (i7 > 0) {
                    int i9 = i6 + 4;
                    sArr[i7 + 2] = (short) ((-sArr2[i8]) & 65535);
                    i4 = i6 + 5;
                    sArr[i7 + 1] = (short) ((-sArr2[i9]) & 65535);
                } else {
                    int i10 = i6 + 4;
                    sArr[1] = (short) ((-sArr2[i8]) & 65535);
                    i4 = i6 + 5;
                    sArr[2] = (short) ((-sArr2[i10]) & 65535);
                }
                sArr[i7 + 3] = C0551.m5435(sArr2[i4]);
                i7 -= 6;
                i6 = i4 + 1;
            }
        }
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        C0551.m5439(this.f3371, this.f1612);
    }
}
