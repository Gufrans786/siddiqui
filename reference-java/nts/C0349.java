package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0349 {

    public static final int[] f1864 = {1634760805, 857760878, 2036477234, 1797285236};

    public int[] f1868 = new int[16];

    public int[] f1867 = new int[16];

    public byte[] f1865 = new byte[64];

    public int f1866 = 0;

    public C0349() {
        m4416();
    }

    public static int m4413(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    public void m4416() {
        for (int i = 0; i < 16; i++) {
            int[] iArr = this.f1868;
            this.f1867[i] = 0;
            iArr[i] = 0;
        }
        for (int i2 = 0; i2 < 64; i2++) {
            this.f1865[i2] = 0;
        }
        this.f1866 = 0;
    }

    public void m4418(byte[] bArr, byte[] bArr2, long j) {
        int[] iArr = this.f1868;
        System.arraycopy(f1864, 0, iArr, 0, 4);
        iArr[4] = m4414(bArr, 0);
        iArr[5] = m4414(bArr, 4);
        iArr[6] = m4414(bArr, 8);
        iArr[7] = m4414(bArr, 12);
        iArr[8] = m4414(bArr, 16);
        iArr[9] = m4414(bArr, 20);
        iArr[10] = m4414(bArr, 24);
        iArr[11] = m4414(bArr, 28);
        if (bArr2.length == 12) {
            iArr[12] = (int) j;
            iArr[13] = m4414(bArr2, 0);
            iArr[14] = m4414(bArr2, 4);
            iArr[15] = m4414(bArr2, 8);
            return;
        }
        if (bArr2.length == 8) {
            iArr[12] = (int) (j >>> 32);
            iArr[13] = (int) j;
            iArr[14] = m4414(bArr2, 0);
            iArr[15] = m4414(bArr2, 4);
        }
    }

    public void m4417(byte[] bArr) throws C0537 {
        m4415(bArr, this.f1868, this.f1867, this.f1865, this.f1866);
        int length = this.f1866 + bArr.length;
        this.f1866 = length;
        this.f1866 = length % 64;
    }

    public static int m4414(byte[] bArr, int i) {
        return ((bArr[i + 3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | (bArr[i] & 255) | ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[i + 2] << 16) & 16711680);
    }

    public static void m4415(byte[] bArr, int[] iArr, int[] iArr2, byte[] bArr2, int i) throws C0537 {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = (i2 + i) % 64;
            if (i3 == 0) {
                System.arraycopy(iArr, 0, iArr2, 0, 16);
                for (int i4 = 20; i4 > 0; i4 -= 2) {
                    int i5 = iArr2[0] + iArr2[4];
                    iArr2[0] = i5;
                    int iM4413 = m4413(i5 ^ iArr2[12], 16);
                    iArr2[12] = iM4413;
                    int i6 = iArr2[8] + iM4413;
                    iArr2[8] = i6;
                    int iM4414 = m4413(iArr2[4] ^ i6, 12);
                    iArr2[4] = iM4414;
                    int i7 = iArr2[0] + iM4414;
                    iArr2[0] = i7;
                    int iM4415 = m4413(iArr2[12] ^ i7, 8);
                    iArr2[12] = iM4415;
                    int i8 = iArr2[8] + iM4415;
                    iArr2[8] = i8;
                    iArr2[4] = m4413(iArr2[4] ^ i8, 7);
                    int i9 = iArr2[1] + iArr2[5];
                    iArr2[1] = i9;
                    int iM4416 = m4413(iArr2[13] ^ i9, 16);
                    iArr2[13] = iM4416;
                    int i10 = iArr2[9] + iM4416;
                    iArr2[9] = i10;
                    int iM4417 = m4413(iArr2[5] ^ i10, 12);
                    iArr2[5] = iM4417;
                    int i11 = iArr2[1] + iM4417;
                    iArr2[1] = i11;
                    int iM4418 = m4413(iArr2[13] ^ i11, 8);
                    iArr2[13] = iM4418;
                    int i12 = iArr2[9] + iM4418;
                    iArr2[9] = i12;
                    iArr2[5] = m4413(iArr2[5] ^ i12, 7);
                    int i13 = iArr2[2] + iArr2[6];
                    iArr2[2] = i13;
                    int iM4419 = m4413(iArr2[14] ^ i13, 16);
                    iArr2[14] = iM4419;
                    int i14 = iArr2[10] + iM4419;
                    iArr2[10] = i14;
                    int iM44110 = m4413(iArr2[6] ^ i14, 12);
                    iArr2[6] = iM44110;
                    int i15 = iArr2[2] + iM44110;
                    iArr2[2] = i15;
                    int iM44111 = m4413(iArr2[14] ^ i15, 8);
                    iArr2[14] = iM44111;
                    int i16 = iArr2[10] + iM44111;
                    iArr2[10] = i16;
                    iArr2[6] = m4413(iArr2[6] ^ i16, 7);
                    int i17 = iArr2[3] + iArr2[7];
                    iArr2[3] = i17;
                    int iM44112 = m4413(iArr2[15] ^ i17, 16);
                    iArr2[15] = iM44112;
                    int i18 = iArr2[11] + iM44112;
                    iArr2[11] = i18;
                    int iM44113 = m4413(iArr2[7] ^ i18, 12);
                    iArr2[7] = iM44113;
                    int i19 = iArr2[3] + iM44113;
                    iArr2[3] = i19;
                    int iM44114 = m4413(iArr2[15] ^ i19, 8);
                    iArr2[15] = iM44114;
                    int i20 = iArr2[11] + iM44114;
                    iArr2[11] = i20;
                    iArr2[7] = m4413(iArr2[7] ^ i20, 7);
                    int i21 = iArr2[0] + iArr2[5];
                    iArr2[0] = i21;
                    int iM44115 = m4413(iArr2[15] ^ i21, 16);
                    iArr2[15] = iM44115;
                    int i22 = iArr2[10] + iM44115;
                    iArr2[10] = i22;
                    int iM44116 = m4413(iArr2[5] ^ i22, 12);
                    iArr2[5] = iM44116;
                    int i23 = iArr2[0] + iM44116;
                    iArr2[0] = i23;
                    int iM44117 = m4413(iArr2[15] ^ i23, 8);
                    iArr2[15] = iM44117;
                    int i24 = iArr2[10] + iM44117;
                    iArr2[10] = i24;
                    iArr2[5] = m4413(iArr2[5] ^ i24, 7);
                    int i25 = iArr2[1] + iArr2[6];
                    iArr2[1] = i25;
                    int iM44118 = m4413(i25 ^ iArr2[12], 16);
                    iArr2[12] = iM44118;
                    int i26 = iArr2[11] + iM44118;
                    iArr2[11] = i26;
                    int iM44119 = m4413(iArr2[6] ^ i26, 12);
                    iArr2[6] = iM44119;
                    int i27 = iArr2[1] + iM44119;
                    iArr2[1] = i27;
                    int iM44120 = m4413(iArr2[12] ^ i27, 8);
                    iArr2[12] = iM44120;
                    int i28 = iArr2[11] + iM44120;
                    iArr2[11] = i28;
                    iArr2[6] = m4413(iArr2[6] ^ i28, 7);
                    int i29 = iArr2[2] + iArr2[7];
                    iArr2[2] = i29;
                    int iM44121 = m4413(i29 ^ iArr2[13], 16);
                    iArr2[13] = iM44121;
                    int i30 = iArr2[8] + iM44121;
                    iArr2[8] = i30;
                    int iM44122 = m4413(iArr2[7] ^ i30, 12);
                    iArr2[7] = iM44122;
                    int i31 = iArr2[2] + iM44122;
                    iArr2[2] = i31;
                    int iM44123 = m4413(iArr2[13] ^ i31, 8);
                    iArr2[13] = iM44123;
                    int i32 = iArr2[8] + iM44123;
                    iArr2[8] = i32;
                    iArr2[7] = m4413(iArr2[7] ^ i32, 7);
                    int i33 = iArr2[3] + iArr2[4];
                    iArr2[3] = i33;
                    int iM44124 = m4413(i33 ^ iArr2[14], 16);
                    iArr2[14] = iM44124;
                    int i34 = iArr2[9] + iM44124;
                    iArr2[9] = i34;
                    int iM44125 = m4413(iArr2[4] ^ i34, 12);
                    iArr2[4] = iM44125;
                    int i35 = iArr2[3] + iM44125;
                    iArr2[3] = i35;
                    int iM44126 = m4413(iArr2[14] ^ i35, 8);
                    iArr2[14] = iM44126;
                    int i36 = iArr2[9] + iM44126;
                    iArr2[9] = i36;
                    iArr2[4] = m4413(iArr2[4] ^ i36, 7);
                }
                for (int i37 = 0; i37 < 16; i37++) {
                    int i38 = iArr2[i37] + iArr[i37];
                    int i39 = i37 * 4;
                    bArr2[i39] = (byte) i38;
                    bArr2[i39 + 1] = (byte) (i38 >>> 8);
                    bArr2[i39 + 2] = (byte) (i38 >>> 16);
                    bArr2[i39 + 3] = (byte) (i38 >>> 24);
                }
                int i40 = iArr[12] + 1;
                iArr[12] = i40;
                if (i40 == 0) {
                    throw new C0537(C0558.m5481("c^P\u0014pZPsW_\u001d_TOWLBT\u0005KUGSFCAZ\u0002", 0, 28, 43));
                }
            }
            bArr[i2] = (byte) (bArr2[i3] ^ bArr[i2]);
        }
    }
}
