package nts;

public class C0112 extends AbstractC0264 {

    public int[] f177 = new int[256];

    public int[] f176 = {0, 0};

    public void m3179(byte[] bArr) {
        int[] iArr = this.f176;
        iArr[1] = 0;
        iArr[0] = 0;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        for (int i = 0; i < 256; i++) {
            this.f177[i] = i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            int[] iArr2 = this.f177;
            int i4 = iArr2[i3];
            i2 = (i2 + i4 + bArr[i3 % bArr.length]) & 255;
            iArr2[i3] = iArr2[i2];
            iArr2[i2] = i4;
        }
    }

    @Override
    public void mo3180(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        int[] iArr = this.f176;
        int i = iArr[0];
        int i2 = iArr[1];
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            int[] iArr2 = this.f177;
            int i4 = iArr2[i];
            i2 = (i2 + i4) & 255;
            iArr2[i] = iArr2[i2];
            iArr2[i2] = i4;
            bArr[i3] = (byte) (iArr2[(iArr2[i] + i4) & 255] & 255);
        }
        int[] iArr3 = this.f176;
        iArr3[0] = i;
        iArr3[1] = i2;
    }
}
