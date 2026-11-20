package nts;

import kotlin.UShort;

public class C0188 extends AbstractC0256 {

    public int f655;

    public short[] f656;

    public short[] f658;

    public int f660;

    public int f661;

    public int[] f654 = {6, 20, 45, 80, 200, 1000};

    public int f659 = 80;

    public C0447 f657 = new C0447();

    public C0188() {
        this.f1255 = new C0299();
        this.f1251 = 0;
        this.f1252 = 0L;
        this.f1256 = new byte[65535];
        this.f1254 = 0;
        this.f1250 = 0;
        this.f656 = new short[16384];
        for (int i = 0; i < 16384; i++) {
            this.f656[i] = -1;
        }
        this.f658 = new short[65535];
        for (int i2 = 0; i2 < 65535; i2++) {
            this.f658[i2] = -1;
        }
        this.f1251 = 0;
        this.f1252 = 0L;
        C0299 c0299 = this.f1255;
        c0299.f1610 = 0;
        c0299.f1608 = 0;
        c0299.f1606 = 0;
        this.f1254 = 1;
        this.f1250 = 1;
        this.f657.m5087();
        for (int i3 = 0; i3 < 16384; i3++) {
            this.f656[i3] = -1;
        }
        for (int i4 = 0; i4 < 65535; i4++) {
            this.f658[i4] = -1;
        }
    }

    public final int m3621(int i, int i2, int i3) {
        return (((i << 6) ^ (i2 << 3)) ^ i3) & 16383;
    }

    public final void m3623(int i, int i2, int i3, int i4) {
        int i5 = (((i << 6) ^ (i2 << 3)) ^ i3) & 16383;
        short[] sArr = this.f656;
        short s = sArr[i5];
        sArr[i5] = (short) i4;
        this.f658[i4] = s;
    }

    public final void m3622(int i, int i2) {
        int i3 = this.f659;
        int i4 = this.f656[i] & UShort.MAX_VALUE;
        int i5 = this.f1254 + i2;
        while (i4 != 65535 && i4 >= i5 - 32768 && i3 > 0) {
            byte[] bArr = this.f1256;
            int i6 = this.f661;
            if (bArr[i4 + i6] == bArr[i6 + i5]) {
                int i7 = 0;
                while (i7 < this.f660) {
                    byte[] bArr2 = this.f1256;
                    if (bArr2[i4 + i7] != bArr2[i5 + i7]) {
                        break;
                    } else {
                        i7++;
                    }
                }
                if (i7 > this.f661) {
                    this.f661 = i7;
                    this.f655 = i4;
                    if (i7 == this.f660) {
                        return;
                    }
                }
            }
            i3 -= 2;
            if (i3 == 0) {
                this.f658[i4] = -1;
                return;
            }
            i4 = this.f658[i4] & UShort.MAX_VALUE;
        }
    }

    public final boolean m3624(boolean z) {
        int i;
        C0447 c0447;
        byte[] bArr;
        boolean zM5084;
        boolean zM5085;
        int i2 = this.f1250 - 259;
        this.f660 = 258;
        do {
            int i3 = this.f1254;
            if (i3 >= i2) {
                if (z) {
                    return false;
                }
                do {
                    int i4 = this.f1254;
                    if (i4 >= this.f1250 - 2) {
                        do {
                            i = this.f1254;
                            if (i >= this.f1250) {
                                break;
                            }
                            c0447 = this.f657;
                            bArr = this.f1256;
                            this.f1254 = i + 1;
                        } while (!c0447.m5084(bArr[i] & 255));
                    } else {
                        byte[] bArr2 = this.f1256;
                        int iM3621 = m3621(bArr2[i4], bArr2[i4 + 1], bArr2[i4 + 2]);
                        this.f661 = 0;
                        if (this.f656[iM3621] != -1) {
                            int i5 = this.f1250 - this.f1254;
                            if (i5 >= 258) {
                                i5 = 258;
                            }
                            this.f660 = i5;
                            m3622(iM3621, 0);
                        }
                        byte[] bArr3 = this.f1256;
                        int i6 = this.f1254;
                        m3623(bArr3[i6], bArr3[i6 + 1], bArr3[i6 + 2], i6);
                        int i7 = this.f661;
                        if (i7 >= 3) {
                            zM5084 = this.f657.m5089(i7, this.f1254 - this.f655);
                            int i8 = this.f1254;
                            int i9 = this.f661 + i8;
                            this.f1254 = i8 + 1;
                            while (true) {
                                int i10 = this.f1254;
                                if (i10 >= i9) {
                                    break;
                                }
                                if (i10 < this.f1250 - 2) {
                                    byte[] bArr4 = this.f1256;
                                    m3623(bArr4[i10], bArr4[i10 + 1], bArr4[i10 + 2], i10);
                                }
                                this.f1254++;
                            }
                        } else {
                            C0447 c0448 = this.f657;
                            byte[] bArr5 = this.f1256;
                            int i11 = this.f1254;
                            this.f1254 = i11 + 1;
                            zM5084 = c0448.m5084(bArr5[i11] & 255);
                        }
                    }
                } while (!zM5084);
                return true;
            }
            byte[] bArr6 = this.f1256;
            int iM3622 = m3621(bArr6[i3], bArr6[i3 + 1], bArr6[i3 + 2]);
            this.f661 = 0;
            if (this.f656[iM3622] != -1) {
                m3622(iM3622, 0);
            }
            int i12 = this.f661;
            if (i12 > 2) {
                byte[] bArr7 = this.f1256;
                int i13 = this.f1254;
                int iM3623 = m3621(bArr7[i13 + 1], bArr7[i13 + 2], bArr7[i13 + 3]);
                if (this.f656[iM3623] != -1) {
                    m3622(iM3623, 1);
                    if (i12 < this.f661) {
                        byte[] bArr8 = this.f1256;
                        int i14 = this.f1254;
                        m3623(bArr8[i14], bArr8[i14 + 1], bArr8[i14 + 2], i14);
                        C0447 c0449 = this.f657;
                        byte[] bArr9 = this.f1256;
                        int i15 = this.f1254;
                        this.f1254 = i15 + 1;
                        if (c0449.m5084(bArr9[i15] & 255)) {
                            return true;
                        }
                    }
                }
                byte[] bArr10 = this.f1256;
                int i16 = this.f1254;
                m3623(bArr10[i16], bArr10[i16 + 1], bArr10[i16 + 2], i16);
                zM5085 = this.f657.m5089(this.f661, this.f1254 - this.f655);
                int i17 = this.f1254;
                int i18 = this.f661 + i17;
                this.f1254 = i17 + 1;
                if (!zM5085) {
                    while (true) {
                        int i19 = this.f1254;
                        if (i19 >= i18) {
                            break;
                        }
                        byte[] bArr11 = this.f1256;
                        int i20 = i19 + 1;
                        int i21 = (bArr11[i19 + 2] ^ ((bArr11[i19] << 6) ^ (bArr11[i20] << 3))) & 16383;
                        short[] sArr = this.f656;
                        short s = sArr[i21];
                        sArr[i21] = (short) i19;
                        this.f658[i19] = s;
                        this.f1254 = i20;
                    }
                } else {
                    this.f1254 = i18;
                    return true;
                }
            } else {
                byte[] bArr12 = this.f1256;
                int i22 = this.f1254;
                int i23 = i22 + 1;
                int i24 = (((bArr12[i23] << 3) ^ (bArr12[i22] << 6)) ^ bArr12[i22 + 2]) & 16383;
                short[] sArr2 = this.f656;
                short s2 = sArr2[i24];
                sArr2[i24] = (short) i22;
                this.f658[i22] = s2;
                C0447 c04410 = this.f657;
                this.f1254 = i23;
                zM5085 = c04410.m5084(bArr12[i22] & 255);
            }
        } while (!zM5085);
        return true;
    }
}
