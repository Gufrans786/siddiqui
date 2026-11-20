package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0635 {

    public static final int[] f3485 = {1634760805, 857760878, 2036477234, 1797285236};

    public static final int[] f3486 = {1634760805, 824206446, 2036477238, 1797285236};

    public int[] f3491 = new int[16];

    public int[] f3490 = new int[16];

    public byte[] f3488 = new byte[64];

    public int f3489 = 0;

    public int f3487 = 20;

    public static int m5734(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    public void m5738(byte[] bArr, byte[] bArr2, long j, int i, int i2) throws C0537 {
        int[] iArr = this.f3491;
        boolean z = i2 == 1;
        if (!z && bArr.length != 32 && bArr.length != 16) {
            throw new C0537(C0177.m3553(0, 37, 98));
        }
        if (z && bArr.length != 32) {
            throw new C0537(C0177.m3553(37, 31, 64));
        }
        if (!z && bArr2.length != 8) {
            throw new C0537(C0177.m3553(68, 34, 26));
        }
        if (z && bArr2.length != 24) {
            throw new C0537(C0177.m3553(102, 36, 127));
        }
        boolean z2 = bArr.length == 16;
        for (int i3 = 0; i3 < 4; i3++) {
            iArr[i3 * 5] = z2 ? f3486[i3] : f3485[i3];
        }
        iArr[1] = m5735(bArr, 0);
        iArr[2] = m5735(bArr, 4);
        iArr[3] = m5735(bArr, 8);
        iArr[4] = m5735(bArr, 12);
        iArr[11] = m5735(bArr, z2 ? 0 : 16);
        iArr[12] = m5735(bArr, z2 ? 4 : 20);
        iArr[13] = m5735(bArr, z2 ? 8 : 24);
        iArr[14] = m5735(bArr, z2 ? 12 : 28);
        iArr[6] = m5735(bArr2, 0);
        iArr[7] = m5735(bArr2, 4);
        int i4 = (int) j;
        iArr[8] = i4;
        int i5 = (int) (j >>> 32);
        iArr[9] = i5;
        if (z) {
            iArr[8] = m5735(bArr2, 8);
            iArr[9] = m5735(bArr2, 12);
            int[] iArr2 = new int[16];
            m5736(20, iArr, iArr2, new byte[64]);
            iArr[1] = iArr2[0] - iArr[0];
            iArr[2] = iArr2[5] - iArr[5];
            iArr[3] = iArr2[10] - iArr[10];
            iArr[4] = iArr2[15] - iArr[15];
            iArr[11] = iArr2[6] - iArr[6];
            iArr[12] = iArr2[7] - iArr[7];
            iArr[13] = iArr2[8] - iArr[8];
            iArr[14] = iArr2[9] - iArr[9];
            iArr[6] = m5735(bArr2, 16);
            iArr[7] = m5735(bArr2, 20);
            iArr[8] = i4;
            iArr[9] = i5;
        }
        this.f3487 = i;
    }

    public void m5737(byte[] bArr) throws Exception {
        int[] iArr = this.f3491;
        int[] iArr2 = this.f3490;
        byte[] bArr2 = this.f3488;
        int i = this.f3489;
        int i2 = this.f3487;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            int i4 = (i3 + i) % 64;
            if (i4 == 0) {
                m5736(i2, iArr, iArr2, bArr2);
                int i5 = iArr[8] + 1;
                iArr[8] = i5;
                if (i5 == 0) {
                    iArr[9] = iArr[9] + 1;
                }
            }
            bArr[i3] = (byte) (bArr2[i4] ^ bArr[i3]);
        }
        this.f3489 = (this.f3489 + bArr.length) & 63;
    }

    public static void m5736(int i, int[] iArr, int[] iArr2, byte[] bArr) {
        int i2 = 0;
        System.arraycopy(iArr, 0, iArr2, 0, 16);
        int i3 = i;
        while (i3 > 0) {
            int iM5734 = iArr2[4] ^ m5734(iArr2[i2] + iArr2[12], 7);
            iArr2[4] = iM5734;
            int iM5735 = m5734(iM5734 + iArr2[i2], 9) ^ iArr2[8];
            iArr2[8] = iM5735;
            int iM5736 = m5734(iM5735 + iArr2[4], 13) ^ iArr2[12];
            iArr2[12] = iM5736;
            iArr2[i2] = m5734(iM5736 + iArr2[8], 18) ^ iArr2[i2];
            int iM5737 = iArr2[9] ^ m5734(iArr2[5] + iArr2[1], 7);
            iArr2[9] = iM5737;
            int iM5738 = m5734(iM5737 + iArr2[5], 9) ^ iArr2[13];
            iArr2[13] = iM5738;
            int iM5739 = m5734(iM5738 + iArr2[9], 13) ^ iArr2[1];
            iArr2[1] = iM5739;
            iArr2[5] = m5734(iM5739 + iArr2[13], 18) ^ iArr2[5];
            int i4 = i2;
            int iM57310 = m5734(iArr2[10] + iArr2[6], 7) ^ iArr2[14];
            iArr2[14] = iM57310;
            int iM57311 = iArr2[2] ^ m5734(iM57310 + iArr2[10], 9);
            iArr2[2] = iM57311;
            int iM57312 = iArr2[6] ^ m5734(iM57311 + iArr2[14], 13);
            iArr2[6] = iM57312;
            iArr2[10] = iArr2[10] ^ m5734(iM57312 + iArr2[2], 18);
            int iM57313 = iArr2[3] ^ m5734(iArr2[15] + iArr2[11], 7);
            iArr2[3] = iM57313;
            int iM57314 = m5734(iM57313 + iArr2[15], 9) ^ iArr2[7];
            iArr2[7] = iM57314;
            int iM57315 = m5734(iM57314 + iArr2[3], 13) ^ iArr2[11];
            iArr2[11] = iM57315;
            iArr2[15] = m5734(iM57315 + iArr2[7], 18) ^ iArr2[15];
            int iM57316 = iArr2[1] ^ m5734(iArr2[i4] + iArr2[3], 7);
            iArr2[1] = iM57316;
            int iM57317 = m5734(iM57316 + iArr2[i4], 9) ^ iArr2[2];
            iArr2[2] = iM57317;
            int iM57318 = m5734(iM57317 + iArr2[1], 13) ^ iArr2[3];
            iArr2[3] = iM57318;
            iArr2[i4] = m5734(iM57318 + iArr2[2], 18) ^ iArr2[i4];
            int iM57319 = iArr2[6] ^ m5734(iArr2[5] + iArr2[4], 7);
            iArr2[6] = iM57319;
            int iM57320 = m5734(iM57319 + iArr2[5], 9) ^ iArr2[7];
            iArr2[7] = iM57320;
            int iM57321 = m5734(iM57320 + iArr2[6], 13) ^ iArr2[4];
            iArr2[4] = iM57321;
            iArr2[5] = m5734(iM57321 + iArr2[7], 18) ^ iArr2[5];
            int iM57322 = iArr2[11] ^ m5734(iArr2[10] + iArr2[9], 7);
            iArr2[11] = iM57322;
            int iM57323 = m5734(iM57322 + iArr2[10], 9) ^ iArr2[8];
            iArr2[8] = iM57323;
            int iM57324 = m5734(iM57323 + iArr2[11], 13) ^ iArr2[9];
            iArr2[9] = iM57324;
            iArr2[10] = m5734(iM57324 + iArr2[8], 18) ^ iArr2[10];
            int iM57325 = iArr2[12] ^ m5734(iArr2[15] + iArr2[14], 7);
            iArr2[12] = iM57325;
            int iM57326 = m5734(iM57325 + iArr2[15], 9) ^ iArr2[13];
            iArr2[13] = iM57326;
            int iM57327 = m5734(iM57326 + iArr2[12], 13) ^ iArr2[14];
            iArr2[14] = iM57327;
            iArr2[15] = m5734(iM57327 + iArr2[13], 18) ^ iArr2[15];
            i3 -= 2;
            i2 = i4;
        }
        while (i2 < 16) {
            int i5 = iArr2[i2] + iArr[i2];
            iArr2[i2] = i5;
            int i6 = i2 * 4;
            bArr[i6] = (byte) i5;
            bArr[i6 + 1] = (byte) (i5 >>> 8);
            bArr[i6 + 2] = (byte) (i5 >>> 16);
            bArr[i6 + 3] = (byte) (i5 >>> 24);
            i2++;
        }
    }

    public static int m5735(byte[] bArr, int i) {
        return ((bArr[i + 3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | (bArr[i] & 255) | ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[i + 2] << 16) & 16711680);
    }
}
