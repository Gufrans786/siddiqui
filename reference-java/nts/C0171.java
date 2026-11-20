package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0171 extends AbstractC0317 {

    public static final int[] f556 = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    public int[] f557 = new int[8];

    public int f558 = 0;

    public byte[] f561 = new byte[64];

    public int f563 = 0;

    public int f559 = 0;

    public boolean f560 = false;

    public boolean f562 = false;

    public C0171() {
        this.f1703 = 256;
        mo3250();
    }

    public Object clone() throws CloneNotSupportedException {
        C0171 c0171 = new C0171();
        m3520(c0171);
        return c0171;
    }

    public final void m3518() {
        int i;
        int[] iArr = new int[64];
        int i2 = 0;
        while (true) {
            if (i2 >= 16) {
                break;
            }
            byte[] bArr = this.f561;
            int i3 = i2 * 4;
            int i4 = (bArr[i3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK;
            iArr[i2] = i4;
            int i5 = ((bArr[i3 + 1] << 16) & 16711680) | i4;
            iArr[i2] = i5;
            int i6 = i5 | ((bArr[i3 + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            iArr[i2] = i6;
            iArr[i2] = i6 | (bArr[i3 + 3] & 255);
            i2++;
        }
        for (i = 16; i < 64; i++) {
            int i7 = i - 15;
            int iM3519 = (m3519(iArr[i7], 7) ^ m3519(iArr[i7], 18)) ^ (iArr[i7] >>> 3);
            int i8 = i - 2;
            iArr[i] = iArr[i - 16] + iM3519 + iArr[i - 7] + ((iArr[i8] >>> 10) ^ (m3519(iArr[i8], 17) ^ m3519(iArr[i8], 19)));
        }
        int[] iArr2 = this.f557;
        int i9 = iArr2[0];
        boolean z = true;
        int i10 = iArr2[1];
        int i11 = 2;
        int i12 = iArr2[2];
        int i13 = iArr2[3];
        int i14 = iArr2[4];
        int i15 = iArr2[5];
        int i16 = 6;
        int i17 = iArr2[6];
        int i18 = iArr2[7];
        int i19 = 0;
        for (int i20 = 64; i19 < i20; i20 = 64) {
            int iM35110 = ((m3519(i9, i11) ^ m3519(i9, 13)) ^ m3519(i9, 22)) + (((i9 & i10) ^ (i9 & i12)) ^ (i10 & i12));
            int i21 = i16;
            int iM35111 = i18 + ((m3519(i14, 11) ^ m3519(i14, i16)) ^ m3519(i14, 25)) + ((i14 & i15) ^ ((~i14) & i17)) + f556[i19] + iArr[i19];
            int i22 = i13 + iM35111;
            int i23 = iM35110 + iM35111;
            i19++;
            i13 = i12;
            i18 = i17;
            z = z;
            i11 = i11;
            i12 = i10;
            i17 = i15;
            i10 = i9;
            i15 = i14;
            i9 = i23;
            i14 = i22;
            i16 = i21;
        }
        int i24 = i16;
        boolean z2 = z;
        int i25 = i11;
        int[] iArr3 = this.f557;
        iArr3[0] = iArr3[0] + i9;
        iArr3[z2 ? 1 : 0] = iArr3[z2 ? 1 : 0] + i10;
        iArr3[i25] = iArr3[i25] + i12;
        iArr3[3] = iArr3[3] + i13;
        iArr3[4] = iArr3[4] + i14;
        iArr3[5] = iArr3[5] + i15;
        iArr3[i24] = iArr3[i24] + i17;
        iArr3[7] = iArr3[7] + i18;
        this.f558 = 0;
    }

    @Override
    public byte[] mo3413() {
        int i = 0;
        if (!this.f560) {
            int i2 = this.f558;
            if (i2 <= 55) {
                byte[] bArr = this.f561;
                this.f558 = i2 + 1;
                bArr[i2] = -128;
                while (true) {
                    int i3 = this.f558;
                    if (i3 >= 56) {
                        break;
                    }
                    byte[] bArr2 = this.f561;
                    this.f558 = i3 + 1;
                    bArr2[i3] = 0;
                }
            } else {
                byte[] bArr3 = this.f561;
                this.f558 = i2 + 1;
                bArr3[i2] = -128;
                while (true) {
                    int i4 = this.f558;
                    if (i4 >= 64) {
                        break;
                    }
                    byte[] bArr4 = this.f561;
                    this.f558 = i4 + 1;
                    bArr4[i4] = 0;
                }
                m3518();
                while (true) {
                    int i5 = this.f558;
                    if (i5 >= 56) {
                        break;
                    }
                    byte[] bArr5 = this.f561;
                    this.f558 = i5 + 1;
                    bArr5[i5] = 0;
                }
            }
            byte[] bArr6 = this.f561;
            int i6 = this.f563;
            bArr6[56] = (byte) (i6 >>> 24);
            bArr6[57] = (byte) (i6 >>> 16);
            bArr6[58] = (byte) (i6 >>> 8);
            bArr6[59] = (byte) i6;
            int i7 = this.f559;
            bArr6[60] = (byte) (i7 >>> 24);
            bArr6[61] = (byte) (i7 >>> 16);
            bArr6[62] = (byte) (i7 >>> 8);
            bArr6[63] = (byte) i7;
            m3518();
            int i8 = 0;
            while (true) {
                byte[] bArr7 = this.f561;
                if (i8 >= bArr7.length) {
                    break;
                }
                bArr7[i8] = 0;
                i8++;
            }
            this.f559 = 0;
            this.f563 = 0;
            this.f560 = true;
        }
        this.f1702 = new byte[this.f1703 / 8];
        while (true) {
            byte[] bArr8 = this.f1702;
            if (i >= bArr8.length) {
                return bArr8;
            }
            bArr8[i] = (byte) (this.f557[i >>> 2] >>> (((3 - i) & 3) << 3));
            i++;
        }
    }

    @Override
    public void mo3250() {
        this.f559 = 0;
        this.f563 = 0;
        this.f558 = 0;
        int[] iArr = this.f557;
        iArr[0] = 1779033703;
        iArr[1] = -1150833019;
        iArr[2] = 1013904242;
        iArr[3] = -1521486534;
        iArr[4] = 1359893119;
        iArr[5] = -1694144372;
        iArr[6] = 528734635;
        iArr[7] = 1541459225;
        this.f560 = false;
        this.f562 = false;
    }

    public final int m3519(int i, int i2) {
        return (i << (32 - i2)) | (i >>> i2);
    }

    public void m3520(C0171 c0171) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f557;
            if (i2 >= iArr.length) {
                break;
            }
            c0171.f557[i2] = iArr[i2];
            i2++;
        }
        c0171.f558 = this.f558;
        while (true) {
            byte[] bArr = this.f561;
            if (i >= bArr.length) {
                c0171.f563 = this.f563;
                c0171.f559 = this.f559;
                c0171.f560 = this.f560;
                c0171.f562 = this.f562;
                return;
            }
            c0171.f561[i] = bArr[i];
            i++;
        }
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            while (i2 > 0 && !this.f562) {
                i2--;
                byte[] bArr2 = this.f561;
                int i3 = this.f558;
                int i4 = i3 + 1;
                this.f558 = i4;
                int i5 = i + 1;
                bArr2[i3] = bArr[i];
                int i6 = this.f559 + 8;
                this.f559 = i6;
                if (i6 == 0) {
                    int i7 = this.f563 + 1;
                    this.f563 = i7;
                    if (i7 == 0) {
                        this.f562 = true;
                    }
                }
                if (i4 == 64) {
                    m3518();
                }
                i = i5;
            }
            return;
        }
        throw new C0304(C0558.m5481("\u0003\u0007\u0011\u0005", 0, 4, 99));
    }
}
