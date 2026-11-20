package nts;

public class C0560 extends AbstractC0606 {

    public int f3162;

    public int[] f3163;

    public byte[] f3164;

    public C0560(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        super(bArr2, 8, 8, i, i2, i3);
        int[] iArr = new int[16];
        this.f3163 = iArr;
        byte[] bArr3 = new byte[16];
        this.f3164 = bArr3;
        this.f3162 = 16;
        this.f3162 = C0137.m3270(bArr, iArr, bArr3);
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0137.m3273(this.f3371, this.f3163, this.f3164, this.f3162);
            return;
        }
        byte[] bArr = this.f3371;
        int[] iArr = this.f3163;
        byte[] bArr2 = this.f3164;
        int i2 = this.f3162;
        int iM3269 = C0137.m3269(bArr, 0);
        int iM32610 = C0137.m3269(bArr, 4);
        int i3 = i2 - 1;
        while (i3 >= 0) {
            int iM3268 = iM3269 ^ C0137.m3268(i3 % 3, iM32610, iArr[i3], bArr2[i3]);
            i3--;
            int i4 = iM32610;
            iM32610 = iM3268;
            iM3269 = i4;
        }
        C0137.m3272(iM32610, bArr, 0);
        C0137.m3272(iM3269, bArr, 4);
    }
}
