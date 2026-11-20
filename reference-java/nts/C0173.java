package nts;

public class C0173 extends AbstractC0317 {

    public static final long[] f564 = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};

    public static final long[][] f565 = {new long[]{0, 36, 3, 41, 18}, new long[]{1, 44, 10, 45, 2}, new long[]{62, 6, 43, 15, 61}, new long[]{28, 55, 25, 21, 56}, new long[]{27, 20, 39, 8, 14}};

    public int f568;

    public int f570;

    public long[][] f566 = null;

    public byte[] f567 = null;

    public int f569 = 0;

    public C0173() {
        this.f1703 = 512;
        this.f570 = 72;
        this.f568 = 1;
        mo3250();
    }

    public Object clone() throws CloneNotSupportedException {
        C0173 c0173 = new C0173();
        m3535(c0173);
        return c0173;
    }

    @Override
    public byte[] mo3413() {
        byte[] bArr = this.f567;
        int i = this.f569;
        int i2 = this.f570;
        int i3 = (i + i2) - (i % i2);
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        int i4 = this.f570;
        if (i % i4 > i4 - 2) {
            bArr2[i] = -127;
        } else {
            if (this.f568 == 2) {
                bArr2[i] = 6;
            } else {
                bArr2[i] = 1;
            }
            bArr2[i3 - 1] = -128;
        }
        m3536(bArr2, i4);
        this.f1702 = new byte[this.f1703 / 8];
        int i5 = 0;
        for (int i6 = 0; i6 < 5; i6++) {
            for (int i7 = 0; i7 < 5; i7++) {
                if ((i6 * 5) + i7 < this.f570 / 8) {
                    long j = this.f566[i7][i6];
                    for (int i8 = 0; i8 < 8 && i5 < this.f1703 / 8; i8++) {
                        this.f1702[i5] = (byte) j;
                        i5++;
                        j >>= 8;
                    }
                }
            }
        }
        return this.f1702;
    }

    @Override
    public void mo3250() {
        int i = 0;
        this.f569 = 0;
        this.f566 = new long[5][];
        while (true) {
            long[][] jArr = this.f566;
            if (i >= jArr.length) {
                this.f567 = new byte[144];
                return;
            } else {
                jArr[i] = new long[5];
                i++;
            }
        }
    }

    public void m3534(int i) {
        if (i != 1 && i != 2) {
            throw new C0414(C0465.m5117(0, 16, 40));
        }
        this.f568 = i;
    }

    public void m3535(C0173 c0173) {
        for (int i = 0; i < 5; i++) {
            for (int i2 = 0; i2 < 5; i2++) {
                c0173.f566[i][i2] = this.f566[i][i2];
            }
        }
        byte[] bArr = this.f567;
        System.arraycopy(bArr, 0, c0173.f567, 0, bArr.length);
        c0173.f569 = this.f569;
        c0173.f570 = this.f570;
        c0173.f1703 = this.f1703;
        c0173.f568 = this.f568;
    }

    public void m3536(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5 = this.f570;
        if (i % i5 == 0) {
            int i6 = 8;
            int i7 = i5 / 8;
            int i8 = 0;
            while (i8 < i / this.f570) {
                int i9 = 0;
                while (true) {
                    i3 = 5;
                    if (i9 >= 5) {
                        break;
                    }
                    int i10 = 0;
                    while (i10 < 5) {
                        int i11 = i9 * 5;
                        if (i10 + i11 < i7) {
                            long[] jArr = this.f566[i10];
                            int i12 = ((i8 * i7) + i10 + i11) * i6;
                            i4 = i6;
                            jArr[i9] = ((((((((((long) (bArr[i12 + 6] & 255)) << 48) | (((long) (bArr[i12 + 7] & 255)) << 56)) | (((long) (bArr[i12 + 5] & 255)) << 40)) | (((long) (bArr[i12 + 4] & 255)) << 32)) | (((long) (bArr[i12 + 3] & 255)) << 24)) | (((long) (bArr[i12 + 2] & 255)) << 16)) | (((long) (bArr[i12 + 1] & 255)) << i4)) | ((long) (bArr[i12] & 255))) ^ jArr[i9];
                        } else {
                            i4 = i6;
                        }
                        i10++;
                        i8 = i8;
                        i6 = i4;
                    }
                    i9++;
                }
                int i13 = i6;
                int i14 = i8;
                int i15 = 0;
                long[][] jArr2 = this.f566;
                int i16 = 0;
                for (i2 = 24; i16 < i2; i2 = 24) {
                    long j = f564[i16];
                    long[] jArr3 = new long[i3];
                    long[] jArr4 = new long[i3];
                    long[][] jArr5 = new long[i3][];
                    for (int i17 = i15; i17 < i3; i17++) {
                        jArr5[i17] = new long[i3];
                    }
                    for (int i18 = i15; i18 < i3; i18++) {
                        long[] jArr6 = jArr2[i18];
                        jArr3[i18] = (((jArr6[i15] ^ jArr6[1]) ^ jArr6[2]) ^ jArr6[3]) ^ jArr6[4];
                    }
                    int i19 = i15;
                    while (i19 < i3) {
                        long j2 = jArr3[(i19 + 4) % i3];
                        int i20 = i19 + 1;
                        long j3 = jArr3[i20 % 5];
                        jArr4[i19] = j2 ^ ((j3 << 1) | (j3 >>> 63));
                        i19 = i20;
                    }
                    for (int i21 = i15; i21 < i3; i21++) {
                        for (int i22 = i15; i22 < i3; i22++) {
                            long[] jArr7 = jArr2[i21];
                            jArr7[i22] = jArr7[i22] ^ jArr4[i21];
                        }
                    }
                    int i23 = i15;
                    while (i23 < i3) {
                        int i24 = i15;
                        while (i24 < i3) {
                            long[] jArr8 = jArr5[i24];
                            int iM3533 = m3533((i24 * 3) + (i23 * 2), i3);
                            long j4 = jArr2[i23][i24];
                            long j5 = f565[i23][i24];
                            jArr8[iM3533] = (j4 << ((int) j5)) | (j4 >>> (64 - ((int) j5)));
                            i24++;
                            i3 = 5;
                        }
                        i23++;
                        i3 = 5;
                    }
                    int i25 = i3;
                    for (int i26 = i15; i26 < i25; i26++) {
                        int i27 = i15;
                        while (i27 < i25) {
                            jArr2[i26][i27] = jArr5[i26][i27] ^ ((~jArr5[m3533(i26 + 1, i25)][i27]) & jArr5[m3533(i26 + 2, i25)][i27]);
                            i27++;
                            i15 = i15;
                        }
                    }
                    int i28 = i15;
                    long[] jArr9 = jArr2[i28];
                    jArr9[i28] = j ^ jArr9[i28];
                    i16++;
                    i3 = i25;
                }
                i8 = i14 + 1;
                i6 = i13;
            }
            return;
        }
        throw new C0414(C0465.m5117(20, 64, 74));
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int i3 = this.f570;
            int i4 = this.f569;
            int i5 = i3 - i4;
            if (i2 < i5) {
                System.arraycopy(bArr, i, this.f567, i4, i2);
                this.f569 += i2;
                return;
            }
            if (i4 > 0) {
                System.arraycopy(bArr, 0, this.f567, i4, i5);
                m3536(this.f567, this.f570);
            } else {
                i5 = 0;
            }
            int i6 = i2 - i5;
            int i7 = this.f570;
            if (i6 >= i7) {
                int i8 = i6 - (i6 % i7);
                byte[] bArr2 = new byte[i8];
                System.arraycopy(bArr, i5, bArr2, 0, i8);
                m3536(bArr2, i8);
            }
            int i9 = i6 % this.f570;
            this.f569 = i9;
            if (i9 > 0) {
                System.arraycopy(bArr, i2 - i9, this.f567, 0, i9);
                return;
            }
            return;
        }
        throw new C0304(C0465.m5117(16, 4, 53));
    }

    public static int m3533(int i, int i2) {
        if (i2 < 0) {
            return m3533(-i, -i2);
        }
        int i3 = i % i2;
        return i3 < 0 ? i3 + i2 : i3;
    }
}
