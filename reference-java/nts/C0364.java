package nts;

public class C0364 {

    public int f1916 = 0;

    public int f1915 = 0;

    public int f1913 = 0;

    public int f1914 = 0;

    public int f1911 = 80;

    public byte[] f1912 = null;

    public final long m4428(byte[] bArr, int i) {
        return (((long) (bArr[i + 7] & 255)) << 56) | ((long) (bArr[i] & 255)) | (((long) (bArr[i + 1] & 255)) << 8) | (((long) (bArr[i + 2] & 255)) << 16) | (((long) (bArr[i + 3] & 255)) << 24) | (((long) (bArr[i + 4] & 255)) << 32) | (((long) (bArr[i + 5] & 255)) << 40) | (((long) (bArr[i + 6] & 255)) << 48);
    }

    public final long m4430(long j, int i) {
        if (i == 32) {
            return ((j >> 32) & 4294967295L) | (j << 32);
        }
        if (i == 24) {
            return ((j >> 24) & 1099511627775L) | (j << 40);
        }
        if (i == 16) {
            return ((j >> 16) & 281474976710655L) | (j << 48);
        }
        if (i != 63) {
            return 0L;
        }
        return (((j >> 56) & 255) >> 7) | (j << 1);
    }

    public byte[] m4438(byte[] bArr, int i, int i2) throws C0537 {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte[] bArr2;
        int iM4429;
        int iM44210;
        byte[] bArr3;
        C0364 c0364 = this;
        C0628 c0628 = (C0628) C0308.m4217(C0177.m3561(22, 7, 116));
        int i9 = 4;
        c0628.mo3412(c0364.m4437(c0364.f1914), 0, 4);
        c0628.mo3412(c0364.m4437(c0364.f1911), 0, 4);
        c0628.mo3412(c0364.m4437(c0364.f1913), 0, 4);
        c0628.mo3412(c0364.m4437(c0364.f1915), 0, 4);
        c0628.mo3412(c0364.m4437(19), 0, 4);
        c0628.mo3412(c0364.m4437(c0364.f1916), 0, 4);
        c0628.mo3412(c0364.m4437(i2), 0, 4);
        c0628.mo3412(bArr, i, i2);
        c0628.mo3412(c0364.m4437(c0364.f1912.length), 0, 4);
        byte[] bArr4 = c0364.f1912;
        c0628.mo3121(bArr4, 0, bArr4.length, null, 0);
        c0628.mo3412(c0364.m4437(0), 0, 4);
        c0628.mo3122(c0364.m4437(0), 0, 4);
        byte[] bArr5 = c0628.f1702;
        int i10 = c0364.f1913;
        int i11 = c0364.f1914;
        int i12 = i10 / (i11 * 4);
        int i13 = i12 * 4;
        int i14 = i13 * i11;
        byte[] bArr6 = new byte[i14 * 1024];
        int i15 = 0;
        while (true) {
            i3 = 1024;
            if (i15 >= c0364.f1914) {
                break;
            }
            C0628 c0628M4431 = c0364.m4431(c0628, 1024);
            c0628M4431.mo3121(bArr5, 0, 64, null, 0);
            c0628M4431.mo3412(c0364.m4437(0), 0, 4);
            c0628M4431.mo3122(c0364.m4437(i15), 0, 4);
            c0364.m4432(c0628M4431, 1024, bArr6, i15 * 1024);
            i15++;
            c0628 = c0628M4431;
        }
        C0628 c0628M4432 = c0628;
        int i16 = 0;
        while (true) {
            i4 = 1;
            if (i16 >= c0364.f1914) {
                break;
            }
            c0628M4432 = c0364.m4431(c0628M4432, 1024);
            c0628M4432.mo3121(bArr5, 0, 64, null, 0);
            c0628M4432.mo3412(c0364.m4437(1), 0, 4);
            c0628M4432.mo3122(c0364.m4437(i16), 0, 4);
            c0364.m4432(c0628M4432, 1024, bArr6, (c0364.f1914 + i16) * 1024);
            i16++;
        }
        boolean z = c0364.f1916 == 0;
        byte[] bArr7 = new byte[1024];
        int i17 = 2;
        int i18 = 0;
        int i19 = 2;
        while (true) {
            byte[] bArr8 = bArr7;
            if (i18 >= c0364.f1915) {
                break;
            }
            int i20 = 0;
            int i21 = i19;
            byte[] bArr9 = bArr8;
            while (i20 < i9) {
                boolean z2 = (i18 == 0 && i20 == i17 && c0364.f1916 == i17) ? true : z;
                int i22 = 0;
                while (i22 < c0364.f1914) {
                    int i23 = i21;
                    while (i23 < i12) {
                        int i24 = i20 * i12;
                        int i25 = i24 + i23;
                        int i26 = i25 == 0 ? i13 - 1 : i25 - 1;
                        int i27 = i9;
                        if (z2) {
                            int iM44211 = c0364.m4429(bArr6, ((c0364.f1914 * i26) + i22) * i3);
                            int iM44212 = c0364.m4429(bArr6, (((c0364.f1914 * i26) + i22) * i3) + 4);
                            i6 = i14;
                            bArr6 = bArr6;
                            i8 = i20;
                            i12 = i12;
                            iM4429 = iM44211;
                            bArr3 = bArr9;
                            i7 = i22;
                            i23 = i23;
                            i5 = i3;
                            iM44210 = iM44212;
                        } else {
                            if (i23 == i21 || i23 % 128 == 0) {
                                byte[] bArr10 = new byte[i3];
                                c0364.m4433(bArr10, 0, i18);
                                c0364.m4433(bArr10, 8, i22);
                                c0364.m4433(bArr10, 16, i20);
                                c0364.m4433(bArr10, 24, i14);
                                c0364.m4433(bArr10, 32, c0364.f1915);
                                c0364.m4433(bArr10, 40, c0364.f1916);
                                c0364.m4433(bArr10, 48, (((long) i23) / 128) + 1);
                                int i28 = i14;
                                byte[] bArr11 = new byte[1024];
                                i5 = 1024;
                                i6 = i28;
                                i7 = i22;
                                i8 = i20;
                                c0364.m4434(bArr11, 0, bArr11, 0, bArr10, 0);
                                byte[] bArr12 = new byte[1024];
                                bArr2 = bArr12;
                                c0364 = this;
                                c0364.m4434(bArr2, 0, bArr12, 0, bArr11, 0);
                            } else {
                                i6 = i14;
                                i8 = i20;
                                i5 = i3;
                                bArr2 = bArr9;
                                i7 = i22;
                            }
                            int i29 = (i23 % 128) * 8;
                            iM4429 = c0364.m4429(bArr2, i29);
                            iM44210 = c0364.m4429(bArr2, i29 + 4);
                            bArr3 = bArr2;
                        }
                        int i30 = (i18 == 0 && i8 == 0) ? i7 : iM44210 % c0364.f1914;
                        int i31 = i18 == 0 ? 0 : ((i8 + 1) % 4) * i12;
                        if (i30 == i7) {
                            i24 = i26;
                        } else if (i23 == 0) {
                            i24 = ((i24 + i13) - 1) % i13;
                        }
                        int i32 = ((i24 + i13) - i31) % i13;
                        long j = ((long) iM4429) & 4294967295L;
                        int i33 = c0364.f1914;
                        int i34 = ((i33 * ((((i32 - 1) - ((int) (((((long) i32) & 4294967295L) * (((long) ((int) ((j * j) >> 32))) & 4294967295L)) >> 32))) + i31) % i13)) + i30) * 1024;
                        byte[] bArr13 = bArr6;
                        c0364.m4434(bArr13, ((i25 * i33) + i7) * i5, bArr6, ((i26 * i33) + i7) * i5, bArr6, i34);
                        i23++;
                        bArr6 = bArr13;
                        i22 = i7;
                        i3 = i5;
                        c0628M4432 = c0628M4432;
                        i9 = i27;
                        i12 = i12;
                        i14 = i6;
                        i20 = i8;
                        bArr9 = bArr3;
                    }
                    i22++;
                    i12 = i12;
                    i14 = i14;
                }
                i20++;
                i4 = 1;
                i21 = 0;
                z = z2;
                i14 = i14;
                i17 = 2;
            }
            i18++;
            bArr7 = bArr9;
            i19 = i21;
            i14 = i14;
            i17 = 2;
        }
        byte[] bArr14 = bArr6;
        int i35 = i3;
        C0628 c0629 = c0628M4432;
        byte[] bArr15 = new byte[i35];
        int i36 = i13 - 1;
        System.arraycopy(bArr14, c0364.f1914 * i36 * i35, bArr15, 0, i35);
        while (true) {
            int i37 = c0364.f1914;
            if (i4 >= i37) {
                int i38 = c0364.f1911;
                byte[] bArr16 = new byte[i38];
                C0628 c0628M4433 = c0364.m4431(c0629, i38);
                c0628M4433.mo3122(bArr15, 0, i35);
                c0364.m4432(c0628M4433, c0364.f1911, bArr16, 0);
                return bArr16;
            }
            int i39 = ((i37 * i36) + i4) * i35;
            int i40 = 0;
            int i41 = 0;
            int i42 = i35;
            while (i42 >= 16) {
                i42 -= 16;
                int i43 = 0;
                while (i43 < 16) {
                    bArr15[i40] = (byte) (bArr14[i39] ^ bArr15[i41]);
                    i43++;
                    i40++;
                    i41++;
                    i39++;
                }
            }
            i4++;
        }
    }

    public final byte[] m4437(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    public final int m4429(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final void m4433(byte[] bArr, int i, long j) {
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
        bArr[i + 2] = (byte) (j >> 16);
        bArr[i + 3] = (byte) (j >> 24);
        bArr[i + 4] = (byte) (j >> 32);
        bArr[i + 5] = (byte) (j >> 40);
        bArr[i + 6] = (byte) (j >> 48);
        bArr[i + 7] = (byte) (j >> 56);
    }

    public final C0628 m4431(C0628 c0628, int i) throws C0537 {
        c0628.mo3250();
        int i2 = i <= 64 ? i : 64;
        if (c0628.f3465 != i2) {
            c0628.f3465 = i2;
            c0628.mo3250();
        }
        c0628.mo3412(m4437(i), 0, 4);
        return c0628;
    }

    public final C0628 m4432(C0628 c0628, int i, byte[] bArr, int i2) throws C0537 {
        while (i > 64) {
            byte[] bArrM4264 = C0308.m4264(c0628);
            System.arraycopy(bArrM4264, 0, bArr, i2, 32);
            i2 += 32;
            i -= 32;
            c0628.mo3250();
            int i3 = i > 64 ? 64 : i;
            if (c0628.f3465 != i3) {
                c0628.f3465 = i3;
                c0628.mo3250();
            }
            c0628.mo3122(bArrM4264, 0, 64);
        }
        System.arraycopy(C0308.m4264(c0628), 0, bArr, i2, i);
        return c0628;
    }

    public final void m4435(long[] jArr, int i, int i2, int i3, int i4) {
        long j = jArr[i];
        long j2 = jArr[i2];
        long j3 = ((j & 4294967295L) * 2 * (j2 & 4294967295L)) + j2 + j;
        jArr[i] = j3;
        long jM4430 = m4430(jArr[i4] ^ j3, 32);
        jArr[i4] = jM4430;
        long j4 = jArr[i3];
        long j5 = ((j4 & 4294967295L) * 2 * (jM4430 & 4294967295L)) + jM4430 + j4;
        jArr[i3] = j5;
        long jM4431 = m4430(jArr[i2] ^ j5, 24);
        jArr[i2] = jM4431;
        long j6 = jArr[i];
        long j7 = ((j6 & 4294967295L) * 2 * (jM4431 & 4294967295L)) + jM4431 + j6;
        jArr[i] = j7;
        long jM4432 = m4430(jArr[i4] ^ j7, 16);
        jArr[i4] = jM4432;
        long j8 = jArr[i3];
        long j9 = ((j8 & 4294967295L) * 2 * (4294967295L & jM4432)) + jM4432 + j8;
        jArr[i3] = j9;
        jArr[i2] = m4430(jArr[i2] ^ j9, 63);
    }

    public final void m4436(long[] jArr, int i, int i2, long[] jArr2, int i3, int i4) {
        for (int i5 = 0; i5 < 8; i5++) {
            int i6 = (i5 * i2) + i;
            int i7 = (i5 * i4) + i3;
            jArr[i6] = jArr2[i7];
            jArr[i6 + 1] = jArr2[i7 + 1];
        }
        int i8 = (i2 * 2) + i;
        int i9 = (i2 * 4) + i;
        int i10 = (i2 * 6) + i;
        m4435(jArr, i, i8, i9, i10);
        int i11 = i + 1;
        int i12 = i8 + 1;
        int i13 = i9 + 1;
        int i14 = i10 + 1;
        m4435(jArr, i11, i12, i13, i14);
        int i15 = i2 + i;
        int i16 = (i2 * 3) + i;
        int i17 = (i2 * 5) + i;
        int i18 = (i2 * 7) + i;
        m4435(jArr, i15, i16, i17, i18);
        int i19 = i15 + 1;
        int i20 = i16 + 1;
        int i21 = i17 + 1;
        int i22 = i18 + 1;
        m4435(jArr, i19, i20, i21, i22);
        m4435(jArr, i, i12, i17, i22);
        m4435(jArr, i11, i16, i21, i10);
        m4435(jArr, i15, i20, i9, i14);
        m4435(jArr, i19, i8, i13, i18);
    }

    public final void m4434(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        long[] jArr = new long[128];
        long[] jArr2 = new long[128];
        long[] jArr3 = new long[128];
        for (int i4 = 0; i4 < 128; i4++) {
            int i5 = i4 * 8;
            jArr[i4] = m4428(bArr2, i2 + i5) ^ m4428(bArr3, i3 + i5);
        }
        for (int i6 = 0; i6 < 8; i6++) {
            int i7 = i6 * 16;
            m4436(jArr2, i7, 2, jArr, i7, 2);
        }
        int i8 = 0;
        while (i8 < 8) {
            long[] jArr4 = jArr3;
            int i9 = i8 * 2;
            m4436(jArr4, i9, 16, jArr2, i9, 16);
            i8++;
            jArr3 = jArr4;
        }
        long[] jArr5 = jArr3;
        for (int i10 = 0; i10 < 128; i10++) {
            int i11 = (i10 * 8) + i;
            m4433(bArr, i11, (m4428(bArr, i11) ^ jArr[i10]) ^ jArr5[i10]);
        }
    }
}
