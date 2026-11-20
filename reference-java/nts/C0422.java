package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;

public class C0422 extends C0109 {

    public static int[] f2157 = new int[256];

    public static int[] f2160 = new int[256];

    public static int[] f2165 = new int[256];

    public static int[] f2168 = new int[256];

    public static int[] f2159 = new int[256];

    public static int[] f2163 = new int[256];

    public static int[] f2169 = new int[256];

    public static int[] f2158 = new int[256];

    public static int[] f2170 = new int[256];

    public static int[] f2167 = new int[256];

    public static int[] f2162 = new int[10];

    public static int[] f2164 = new int[256];

    public static int[] f2156 = new int[256];

    public static int[] f2161 = new int[256];

    public static int[] f2166 = new int[256];

    static {
        int[] iArr = new int[256];
        int[] iArr2 = new int[256];
        int i = 0;
        int iM4682 = 1;
        while (i < 256) {
            iArr[i] = iM4682;
            iArr2[iM4682] = i;
            i++;
            iM4682 ^= m4682(iM4682);
        }
        int i2 = 0;
        int iM4683 = 1;
        while (i2 < 10) {
            f2162[i2] = iM4683 << 24;
            i2++;
            iM4683 = m4682(iM4683);
        }
        f2157[0] = 99;
        f2163[99] = 0;
        for (int i3 = 1; i3 < 256; i3++) {
            int i4 = iArr[255 - iArr2[i3]];
            int i5 = ((i4 << 1) | (i4 >>> 7)) & 255;
            int i6 = i4 ^ i5;
            int i7 = ((i5 >>> 7) | (i5 << 1)) & 255;
            int i8 = i6 ^ i7;
            int i9 = ((i7 >>> 7) | (i7 << 1)) & 255;
            int i10 = (i8 ^ i9) ^ ((((i9 >>> 7) | (i9 << 1)) & 255) ^ 99);
            f2157[i3] = i10;
            f2163[i10] = i3;
        }
        for (int i11 = 0; i11 < 256; i11++) {
            int i12 = f2157[i11];
            int iM4684 = m4682(i12);
            int i13 = ((i12 << 16) ^ ((i12 ^ iM4684) ^ (i12 << 8))) ^ (iM4684 << 24);
            f2160[i11] = i13;
            f2165[i11] = m4683(i13);
            f2168[i11] = m4683(f2165[i11]);
            f2159[i11] = m4683(f2168[i11]);
            int i14 = f2163[i11];
            f2169[i11] = (m4685(14, i14, iArr, iArr2) << 24) ^ ((m4685(11, i14, iArr, iArr2) ^ (m4685(13, i14, iArr, iArr2) << 8)) ^ (m4685(9, i14, iArr, iArr2) << 16));
            f2158[i11] = m4683(f2169[i11]);
            f2170[i11] = m4683(f2158[i11]);
            f2167[i11] = m4683(f2170[i11]);
        }
        for (int i15 = 0; i15 < 256; i15++) {
            int[] iArr3 = f2164;
            int[] iArr4 = f2169;
            int[] iArr5 = f2157;
            iArr3[i15] = iArr4[iArr5[i15]];
            f2156[i15] = f2158[iArr5[i15]];
            f2161[i15] = f2170[iArr5[i15]];
            f2166[i15] = f2167[iArr5[i15]];
        }
    }

    public static int m4682(int i) {
        return ((i & 128) != 0 ? 27 : 0) ^ ((i << 1) & 255);
    }

    public static int m4683(int i) {
        return (i >>> 8) | (i << 24);
    }

    public static void m4684(byte[] bArr, int[] iArr, int i) {
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < 4) {
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            int i8 = i5 + 3;
            int i9 = ((bArr[i5 + 1] << 16) & 16711680) | ((bArr[i5] << 24) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i5 + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            i5 += 4;
            iArr2[i3] = i7 ^ (i9 | (bArr[i8] & 255));
            i3++;
            i4 = i6;
        }
        char c = 1;
        int[] iArr4 = iArr2;
        int[] iArr5 = iArr3;
        int i10 = 1;
        while (i10 < i) {
            int i11 = iArr[i4];
            int[] iArr6 = f2160;
            int i12 = i11 ^ iArr6[(iArr4[i2] >>> 24) & 255];
            int[] iArr7 = f2165;
            int i13 = iArr4[c];
            int i14 = i12 ^ iArr7[(i13 >>> 16) & 255];
            int[] iArr8 = f2168;
            int i15 = iArr4[2];
            int i16 = i2;
            int i17 = iArr8[(i15 >>> 8) & 255] ^ i14;
            int[] iArr9 = f2159;
            char c2 = c;
            int i18 = iArr4[3];
            iArr5[i16] = i17 ^ iArr9[i18 & 255];
            int i19 = ((iArr[i4 + 1] ^ iArr6[(i13 >>> 24) & 255]) ^ iArr7[(i15 >>> 16) & 255]) ^ iArr8[(i18 >>> 8) & 255];
            int i20 = iArr4[i16];
            iArr5[c2] = i19 ^ iArr9[i20 & 255];
            int i21 = i4 + 3;
            int i22 = ((iArr[i4 + 2] ^ iArr6[(i15 >>> 24) & 255]) ^ iArr7[(i18 >>> 16) & 255]) ^ iArr8[(i20 >>> 8) & 255];
            int i23 = iArr4[c2];
            iArr5[2] = i22 ^ iArr9[i23 & 255];
            i4 += 4;
            iArr5[3] = (((iArr[i21] ^ iArr6[(i18 >>> 24) & 255]) ^ iArr7[(i20 >>> 16) & 255]) ^ iArr8[(i23 >>> 8) & 255]) ^ iArr9[iArr4[2] & 255];
            i10++;
            int[] iArr10 = iArr4;
            iArr4 = iArr5;
            iArr5 = iArr10;
            i2 = i16;
            c = c2;
        }
        int i24 = i2;
        char c3 = c;
        int i25 = iArr[i4];
        int[] iArr11 = f2157;
        int i26 = i25 ^ (iArr11[(iArr4[i24] >>> 24) & 255] << 24);
        int i27 = iArr4[c3];
        int i28 = i26 ^ (iArr11[(i27 >>> 16) & 255] << 16);
        int i29 = iArr4[2];
        int i30 = i28 ^ (iArr11[(i29 >>> 8) & 255] << 8);
        int i31 = iArr4[3];
        iArr5[i24] = i30 ^ iArr11[i31 & 255];
        int i32 = ((iArr[i4 + 1] ^ (iArr11[(i27 >>> 24) & 255] << 24)) ^ (iArr11[(i29 >>> 16) & 255] << 16)) ^ (iArr11[(i31 >>> 8) & 255] << 8);
        int i33 = iArr4[i24];
        iArr5[c3] = i32 ^ iArr11[i33 & 255];
        int i34 = ((iArr[i4 + 2] ^ (iArr11[(i29 >>> 24) & 255] << 24)) ^ (iArr11[(i31 >>> 16) & 255] << 16)) ^ (iArr11[(i33 >>> 8) & 255] << 8);
        int i35 = iArr4[c3];
        iArr5[2] = i34 ^ iArr11[i35 & 255];
        iArr5[3] = iArr11[iArr4[2] & 255] ^ (((iArr[i4 + 3] ^ (iArr11[(i31 >>> 24) & 255] << 24)) ^ (iArr11[(i33 >>> 16) & 255] << 16)) ^ (iArr11[(i35 >>> 8) & 255] << 8));
        for (int i36 = i24; i36 < 4; i36++) {
            int i37 = iArr5[i36];
            bArr[i24] = (byte) (i37 >>> 24);
            bArr[i24 + 1] = (byte) (i37 >>> 16);
            int i38 = i24 + 3;
            bArr[i24 + 2] = (byte) (i37 >>> 8);
            i24 += 4;
            bArr[i38] = (byte) i37;
        }
    }

    public static int m4685(int i, int i2, int[] iArr, int[] iArr2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        return iArr[(iArr2[i] + iArr2[i2]) % 255];
    }

    public static int m4686(byte[] bArr, int i, int i2, int[] iArr, int[] iArr2) {
        int i3;
        int i4;
        int i5 = i2 * 8;
        if (i5 == 128) {
            i3 = 10;
        } else if (i5 == 192) {
            i3 = 12;
        } else if (i5 != 256) {
            i3 = 10;
        } else {
            i3 = 14;
        }
        for (int i6 = 0; i6 < (i5 >>> 5); i6++) {
            int i7 = (i6 * 4) + i;
            iArr[i6] = (bArr[i7 + 3] & 255) | ((bArr[i7] << 24) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i7 + 1] << 16) & 16711680) | ((bArr[i7 + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
        }
        if (i5 == 128) {
            int i8 = 0;
            i4 = 0;
            while (i8 < 10) {
                int i9 = i4 + 4;
                int i10 = iArr[i4] ^ f2162[i8];
                int[] iArr3 = f2157;
                int i11 = i4 + 3;
                int i12 = iArr[i11];
                int i13 = (((i10 ^ (iArr3[(i12 >>> 16) & 255] << 24)) ^ (iArr3[(i12 >>> 8) & 255] << 16)) ^ (iArr3[i12 & 255] << 8)) ^ iArr3[(i12 >>> 24) & 255];
                iArr[i9] = i13;
                int i14 = i13 ^ iArr[i4 + 1];
                iArr[i4 + 5] = i14;
                int i15 = i14 ^ iArr[i4 + 2];
                iArr[i4 + 6] = i15;
                iArr[i4 + 7] = i15 ^ iArr[i11];
                i8++;
                i4 = i9;
            }
        } else if (i5 == 192) {
            int i16 = 0;
            i4 = 0;
            while (i16 < 8) {
                int i17 = i4 + 6;
                int i18 = iArr[i4] ^ f2162[i16];
                int[] iArr4 = f2157;
                int i19 = i4 + 5;
                int i20 = iArr[i19];
                int i21 = (((i18 ^ (iArr4[(i20 >>> 16) & 255] << 24)) ^ (iArr4[(i20 >>> 8) & 255] << 16)) ^ (iArr4[i20 & 255] << 8)) ^ iArr4[(i20 >>> 24) & 255];
                iArr[i17] = i21;
                int i22 = i21 ^ iArr[i4 + 1];
                iArr[i4 + 7] = i22;
                int i23 = i22 ^ iArr[i4 + 2];
                iArr[i4 + 8] = i23;
                int i24 = i23 ^ iArr[i4 + 3];
                iArr[i4 + 9] = i24;
                int i25 = i24 ^ iArr[i4 + 4];
                iArr[i4 + 10] = i25;
                iArr[i4 + 11] = i25 ^ iArr[i19];
                i16++;
                i4 = i17;
            }
        } else if (i5 != 256) {
            i4 = 0;
        } else {
            int i26 = 0;
            i4 = 0;
            while (i26 < 7) {
                int i27 = i4 + 8;
                int i28 = iArr[i4] ^ f2162[i26];
                int[] iArr5 = f2157;
                int i29 = i4 + 7;
                int i30 = iArr[i29];
                int i31 = (((i28 ^ (iArr5[(i30 >>> 16) & 255] << 24)) ^ (iArr5[(i30 >>> 8) & 255] << 16)) ^ (iArr5[i30 & 255] << 8)) ^ iArr5[(i30 >>> 24) & 255];
                iArr[i27] = i31;
                int i32 = i31 ^ iArr[i4 + 1];
                iArr[i4 + 9] = i32;
                int i33 = i32 ^ iArr[i4 + 2];
                iArr[i4 + 10] = i33;
                int i34 = i33 ^ iArr[i4 + 3];
                iArr[i4 + 11] = i34;
                int i35 = iArr5[i34 & 255] ^ (((iArr[i4 + 4] ^ (iArr5[(i34 >>> 24) & 255] << 24)) ^ (iArr5[(i34 >>> 16) & 255] << 16)) ^ (iArr5[(i34 >>> 8) & 255] << 8));
                iArr[i4 + 12] = i35;
                int i36 = i35 ^ iArr[i4 + 5];
                iArr[i4 + 13] = i36;
                int i37 = i36 ^ iArr[i4 + 6];
                iArr[i4 + 14] = i37;
                iArr[i4 + 15] = i37 ^ iArr[i29];
                i26++;
                i4 = i27;
            }
        }
        iArr2[0] = iArr[i4];
        iArr2[1] = iArr[i4 + 1];
        int i38 = i4 + 3;
        iArr2[2] = iArr[i4 + 2];
        int i39 = 4;
        int i40 = i4 + 4;
        iArr2[3] = iArr[i38];
        for (int i41 = 1; i41 < i3; i41++) {
            int[] iArr6 = f2164;
            int i42 = iArr[i40 - 8];
            int i43 = iArr6[(i42 >>> 24) & 255];
            int[] iArr7 = f2156;
            int i44 = i43 ^ iArr7[(i42 >>> 16) & 255];
            int[] iArr8 = f2161;
            int i45 = i44 ^ iArr8[(i42 >>> 8) & 255];
            int[] iArr9 = f2166;
            iArr2[i39] = iArr9[i42 & 255] ^ i45;
            int i46 = iArr[i40 - 7];
            iArr2[i39 + 1] = iArr9[i46 & 255] ^ ((iArr6[(i46 >>> 24) & 255] ^ iArr7[(i46 >>> 16) & 255]) ^ iArr8[(i46 >>> 8) & 255]);
            int i47 = i39 + 3;
            int i48 = iArr[i40 - 6];
            iArr2[i39 + 2] = iArr9[i48 & 255] ^ ((iArr6[(i48 >>> 24) & 255] ^ iArr7[(i48 >>> 16) & 255]) ^ iArr8[(i48 >>> 8) & 255]);
            i39 += 4;
            int i49 = iArr[i40 - 5];
            iArr2[i47] = iArr9[i49 & 255] ^ ((iArr6[(i49 >>> 24) & 255] ^ iArr7[(i49 >>> 16) & 255]) ^ iArr8[(i49 >>> 8) & 255]);
            i40 -= 4;
        }
        iArr2[i39] = iArr[i40 - 8];
        iArr2[i39 + 1] = iArr[i40 - 7];
        iArr2[i39 + 2] = iArr[i40 - 6];
        iArr2[i39 + 3] = iArr[i40 - 5];
        return i3;
    }

    public static void m4687(byte[] bArr, int[] iArr, int i) {
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < 4) {
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            int i8 = i5 + 3;
            int i9 = ((bArr[i5 + 1] << 16) & 16711680) | ((bArr[i5] << 24) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i5 + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            i5 += 4;
            iArr2[i3] = i7 ^ (i9 | (bArr[i8] & 255));
            i3++;
            i4 = i6;
        }
        int[] iArr4 = iArr2;
        int[] iArr5 = iArr3;
        int i10 = 1;
        while (i10 < i) {
            int i11 = iArr[i4];
            int[] iArr6 = f2169;
            int i12 = i11 ^ iArr6[(iArr4[i2] >>> 24) & 255];
            int[] iArr7 = f2158;
            int i13 = iArr4[3];
            int i14 = i12 ^ iArr7[(i13 >>> 16) & 255];
            int[] iArr8 = f2170;
            int i15 = i2;
            int i16 = iArr4[2];
            int i17 = iArr8[(i16 >>> 8) & 255] ^ i14;
            int[] iArr9 = f2167;
            int i18 = iArr4[1];
            iArr5[i15] = i17 ^ iArr9[i18 & 255];
            int i19 = iArr6[(i18 >>> 24) & 255] ^ iArr[i4 + 1];
            int i20 = iArr4[i15];
            iArr5[1] = ((i19 ^ iArr7[(i20 >>> 16) & 255]) ^ iArr8[(i13 >>> 8) & 255]) ^ iArr9[i16 & 255];
            int i21 = i4 + 3;
            int i22 = iArr6[(i16 >>> 24) & 255] ^ iArr[i4 + 2];
            int i23 = iArr4[1];
            iArr5[2] = ((i22 ^ iArr7[(i23 >>> 16) & 255]) ^ iArr8[(i20 >>> 8) & 255]) ^ iArr9[i13 & 255];
            i4 += 4;
            iArr5[3] = (((iArr[i21] ^ iArr6[(i13 >>> 24) & 255]) ^ iArr7[(iArr4[2] >>> 16) & 255]) ^ iArr8[(i23 >>> 8) & 255]) ^ iArr9[i20 & 255];
            i10++;
            int[] iArr10 = iArr4;
            iArr4 = iArr5;
            iArr5 = iArr10;
            i2 = i15;
        }
        int i24 = i2;
        int i25 = iArr[i4];
        int[] iArr11 = f2163;
        int i26 = i25 ^ (iArr11[(iArr4[i24] >>> 24) & 255] << 24);
        int i27 = iArr4[3];
        int i28 = i26 ^ (iArr11[(i27 >>> 16) & 255] << 16);
        int i29 = iArr4[2];
        int i30 = i28 ^ (iArr11[(i29 >>> 8) & 255] << 8);
        int i31 = iArr4[1];
        iArr5[i24] = i30 ^ iArr11[i31 & 255];
        int i32 = iArr[i4 + 1] ^ (iArr11[(i31 >>> 24) & 255] << 24);
        int i33 = iArr4[i24];
        iArr5[1] = ((i32 ^ (iArr11[(i33 >>> 16) & 255] << 16)) ^ (iArr11[(i27 >>> 8) & 255] << 8)) ^ iArr11[i29 & 255];
        int i34 = iArr[i4 + 2] ^ (iArr11[(i29 >>> 24) & 255] << 24);
        int i35 = iArr4[1];
        iArr5[2] = ((i34 ^ (iArr11[(i35 >>> 16) & 255] << 16)) ^ (iArr11[(i33 >>> 8) & 255] << 8)) ^ iArr11[i27 & 255];
        iArr5[3] = (((iArr11[(iArr4[2] >>> 16) & 255] << 16) ^ (iArr[i4 + 3] ^ (iArr11[(i27 >>> 24) & 255] << 24))) ^ (iArr11[(i35 >>> 8) & 255] << 8)) ^ iArr11[i33 & 255];
        for (int i36 = i24; i36 < 4; i36++) {
            int i37 = iArr5[i36];
            bArr[i24] = (byte) (i37 >>> 24);
            bArr[i24 + 1] = (byte) (i37 >>> 16);
            int i38 = i24 + 3;
            bArr[i24 + 2] = (byte) (i37 >>> 8);
            i24 += 4;
            bArr[i38] = (byte) i37;
        }
    }
}
