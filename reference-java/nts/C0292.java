package nts;

public class C0292 implements InterfaceC0126 {

    public long f1517;

    public boolean f1518;

    public int[] f1519;

    public byte[] f1520;

    public int f1522;

    public int[] f1524;

    public byte[] f1521 = null;

    public int f1523 = 512;

    public C0292(byte[] bArr, boolean z) {
        int[] iArr = new int[64];
        this.f1524 = iArr;
        this.f1522 = 10;
        this.f1519 = null;
        this.f1520 = null;
        this.f1518 = z;
        int length = bArr.length / 2;
        this.f1519 = new int[64];
        int[] iArr2 = new int[64];
        this.f1520 = new byte[16];
        if (z) {
            this.f1522 = C0422.m4686(bArr, 0, length, iArr, iArr2);
        } else {
            this.f1522 = C0422.m4686(bArr, 0, length, iArr2, iArr);
        }
        C0422.m4686(bArr, length, length, this.f1519, iArr2);
    }

    public final void m4069() {
        if (this.f1518) {
            C0422.m4684(this.f1520, this.f1524, this.f1522);
        } else {
            C0422.m4687(this.f1520, this.f1524, this.f1522);
        }
    }

    public final void m4070() {
        C0259.m3871(this.f1517, this.f1521, 0, 16);
        C0422.m4684(this.f1521, this.f1519, this.f1522);
    }

    public final void m4071() {
        int i = 0;
        byte b = 0;
        while (true) {
            byte b2 = b;
            if (i >= 16) {
                break;
            }
            byte[] bArr = this.f1521;
            byte b3 = bArr[i];
            bArr[i] = (byte) (((b3 << 1) + b2) & 255);
            i++;
            b = (byte) ((b3 >> 7) & 1);
        }
        if (b != 0) {
            byte[] bArr2 = this.f1521;
            bArr2[0] = (byte) (bArr2[0] ^ 135);
        }
    }

    @Override
    public boolean mo3223() {
        return true;
    }

    @Override
    public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        int i4 = (i2 / 16) * 16;
        m4072(bArr, i, i4, bArr2, i3, false);
        return i4;
    }

    @Override
    public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
        byte[] bArr2 = new byte[i2];
        m4072(bArr, i, i2, bArr2, 0, true);
        return bArr2;
    }

    public final void m4072(byte[] bArr, int i, int i2, byte[] bArr2, int i3, boolean z) throws C0537 {
        if (i2 == 0) {
            return;
        }
        if (i2 >= 16) {
            int i4 = i2 / 16;
            int i5 = i2 % 16;
            if (!z && i5 > 0) {
                throw new C0537(C0558.m5481("&\u0000\u001b\r\u0007\u0003\rH.\b\u0015\u0011\u0017LSunxrvx=[}`db9", 14, 14, 26));
            }
            if (i5 != 0) {
                i4--;
            }
            if (this.f1521 == null) {
                this.f1521 = new byte[16];
                m4070();
            }
            int i6 = 0;
            while (i6 < i4 && i2 > 0) {
                System.arraycopy(bArr, i, this.f1520, 0, 16);
                i += 16;
                if (i6 % (this.f1523 / 16) == 0 && i6 != 0) {
                    this.f1517++;
                    m4070();
                }
                for (int i7 = 0; i7 < 16; i7++) {
                    byte[] bArr3 = this.f1520;
                    bArr3[i7] = (byte) (bArr3[i7] ^ this.f1521[i7]);
                }
                m4069();
                for (int i8 = 0; i8 < 16; i8++) {
                    byte[] bArr4 = this.f1520;
                    bArr4[i8] = (byte) (bArr4[i8] ^ this.f1521[i8]);
                }
                m4071();
                System.arraycopy(this.f1520, 0, bArr2, i3, 16);
                i3 += 16;
                i2 -= 16;
                i6++;
            }
            if (i6 % (this.f1523 / 16) == 0 && i6 != 0) {
                this.f1517++;
                m4070();
            }
            if (i5 > 0) {
                byte[] bArr5 = new byte[16];
                if (!this.f1518) {
                    System.arraycopy(this.f1521, 0, bArr5, 0, 16);
                    m4071();
                }
                System.arraycopy(bArr, i, this.f1520, 0, 16);
                int i9 = i + 16;
                for (int i10 = 0; i10 < 16; i10++) {
                    byte[] bArr6 = this.f1520;
                    bArr6[i10] = (byte) (bArr6[i10] ^ this.f1521[i10]);
                }
                m4069();
                for (int i11 = 0; i11 < 16; i11++) {
                    byte[] bArr7 = this.f1520;
                    bArr7[i11] = (byte) (bArr7[i11] ^ this.f1521[i11]);
                }
                if (this.f1518) {
                    m4071();
                }
                byte[] bArr8 = new byte[i5];
                System.arraycopy(this.f1520, 0, bArr8, 0, i5);
                System.arraycopy(bArr, i9, this.f1520, 0, i5);
                if (!this.f1518) {
                    System.arraycopy(bArr5, 0, this.f1521, 0, 16);
                }
                for (int i12 = 0; i12 < 16; i12++) {
                    byte[] bArr9 = this.f1520;
                    bArr9[i12] = (byte) (bArr9[i12] ^ this.f1521[i12]);
                }
                m4069();
                for (int i13 = 0; i13 < 16; i13++) {
                    byte[] bArr10 = this.f1520;
                    bArr10[i13] = (byte) (bArr10[i13] ^ this.f1521[i13]);
                }
                System.arraycopy(this.f1520, 0, bArr2, i3, 16);
                System.arraycopy(bArr8, 0, bArr2, i3 + 16, i5);
                return;
            }
            return;
        }
        throw new C0537(C0558.m5481("&\u0000\u001b\r\u0007\u0003\rH.\b\u0015\u0011\u0017LSunxrvx=[}`db9", 0, 14, 97));
    }
}
