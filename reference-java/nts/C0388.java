package nts;

import com.google.common.base.Ascii;

public class C0388 extends C0378 {

    public int[] f1992;

    public int f1993;

    public byte[] f1994;

    public int[] f1995;

    public C0388(int i, int i2) {
        super(i, i2);
        this.f1993 = 0;
    }

    public void m4572() {
        int i;
        byte[] bArr = this.f1961;
        this.f1994 = new byte[bArr.length];
        this.f1995 = new int[bArr.length];
        this.f1992 = new int[bArr.length];
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.f1961;
            if (i2 >= bArr2.length) {
                return;
            }
            byte b = bArr2[i2];
            if (b == 0) {
                i = i2 + 1;
                int iM4573 = m4573(0, i, 137);
                int i3 = iM4573 + 1;
                i2 += i3;
                if (i2 == this.f1961.length) {
                    int i4 = this.f1993;
                    if (i4 == 0) {
                        byte[] bArr3 = this.f1994;
                        this.f1993 = i4 + 1;
                        bArr3[i4] = 0;
                        return;
                    }
                    return;
                }
                if (i3 >= 11) {
                    int[] iArr = this.f1992;
                    int i5 = this.f1993;
                    iArr[i5] = 7;
                    this.f1995[i5] = iM4573 - 10;
                    byte[] bArr4 = this.f1994;
                    this.f1993 = i5 + 1;
                    bArr4[i5] = Ascii.DC2;
                } else if (i3 >= 3) {
                    int[] iArr2 = this.f1992;
                    int i6 = this.f1993;
                    iArr2[i6] = 3;
                    this.f1995[i6] = iM4573 - 2;
                    byte[] bArr5 = this.f1994;
                    this.f1993 = i6 + 1;
                    bArr5[i6] = 17;
                } else {
                    byte[] bArr6 = this.f1994;
                    int i7 = this.f1993;
                    this.f1993 = i7 + 1;
                    bArr6[i7] = 0;
                    i2 = i;
                }
            } else {
                int i8 = i2 + 1;
                int iM4574 = m4573(b, i8, 6);
                int i9 = iM4574 + 1;
                byte[] bArr7 = this.f1994;
                int i10 = this.f1993;
                this.f1993 = i10 + 1;
                bArr7[i10] = this.f1961[i2];
                if (i9 >= 4) {
                    int[] iArr3 = this.f1995;
                    int i11 = this.f1993;
                    iArr3[i11] = (byte) (iM4574 - 3);
                    this.f1992[i11] = 2;
                    this.f1993 = i11 + 1;
                    bArr7[i11] = 16;
                    i = iM4574 + i8;
                    i2 = i;
                } else {
                    i2 = i8;
                }
            }
        }
    }

    public void m4574(C0299 c0299, C0378 c0378) {
        c0378.f1959 = c0299;
        for (int i = 0; i < this.f1993; i++) {
            c0378.m4476(this.f1994[i]);
            if (this.f1994[i] > 15) {
                c0299.m4162(this.f1995[i], this.f1992[i]);
            }
        }
    }

    public final int m4573(int i, int i2, int i3) {
        int i4 = 0;
        while (true) {
            byte[] bArr = this.f1961;
            if (i2 < bArr.length && i4 < i3) {
                int i5 = i2 + 1;
                if (bArr[i2] != i) {
                    break;
                }
                i4++;
                i2 = i5;
            } else {
                break;
            }
        }
        return i4;
    }

    public void m4575(C0378 c0378) {
        for (int i = 0; i < this.f1993; i++) {
            short[] sArr = c0378.f1962;
            byte b = this.f1994[i];
            sArr[b] = (short) (sArr[b] + 1);
        }
    }
}
