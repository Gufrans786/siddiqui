package nts;

import android.R;

public class C0628 extends AbstractC0317 {

    public static final long[] f3464 = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};

    public static final int[] f3463 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3, 11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4, 7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8, 9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13, 2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9, 12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11, 13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10, 6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5, 10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3};

    public int f3465 = 64;

    public byte[] f3466 = null;

    public byte[] f3469 = new byte[128];

    public long[] f3472 = new long[8];

    public long[] f3467 = new long[2];

    public int f3468 = 0;

    public long[] f3470 = new long[16];

    public long[] f3471 = new long[16];

    public C0628() {
        mo3250();
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        while (i < i2) {
            int i3 = this.f3468;
            if (i3 == 128) {
                long[] jArr = this.f3467;
                long j = i3;
                long j2 = jArr[0] + j;
                jArr[0] = j2;
                if (j2 < j) {
                    jArr[1] = jArr[1] + 1;
                }
                m5731(0);
                this.f3468 = 0;
            }
            byte[] bArr2 = this.f3469;
            int i4 = this.f3468;
            this.f3468 = i4 + 1;
            bArr2[i4] = bArr[i];
            i++;
        }
    }

    @Override
    public void mo3250() {
        for (int i = 0; i < 8; i++) {
            this.f3472[i] = f3464[i];
        }
        byte[] bArr = this.f3466;
        int length = bArr == null ? 0 : bArr.length;
        long[] jArr = this.f3472;
        jArr[0] = jArr[0] ^ ((long) (((length << 8) ^ R.attr.theme) ^ this.f3465));
        long[] jArr2 = this.f3467;
        jArr2[0] = 0;
        jArr2[1] = 0;
        this.f3468 = 0;
        for (int i2 = length; i2 < 128; i2++) {
            this.f3469[i2] = 0;
        }
        if (length > 0) {
            byte[] bArr2 = this.f3466;
            mo3412(bArr2, 0, bArr2.length);
            this.f3468 = 128;
        }
    }

    public final void m5731(int i) {
        this.f3470 = new long[16];
        this.f3471 = new long[16];
        for (int i2 = 0; i2 < 8; i2++) {
            long[] jArr = this.f3470;
            jArr[i2] = this.f3472[i2];
            jArr[i2 + 8] = f3464[i2];
        }
        long[] jArr2 = this.f3470;
        long j = jArr2[12];
        long[] jArr3 = this.f3467;
        jArr2[12] = j ^ jArr3[0];
        jArr2[13] = jArr3[1] ^ jArr2[13];
        if (i > 0) {
            jArr2[14] = ~jArr2[14];
        }
        for (int i3 = 0; i3 < 16; i3++) {
            long[] jArr4 = this.f3471;
            byte[] bArr = this.f3469;
            int i4 = i3 * 8;
            jArr4[i3] = ((long) (bArr[i4] & 255)) ^ (((((((((long) (bArr[i4 + 7] & 255)) << 56) ^ (((long) (bArr[i4 + 6] & 255)) << 48)) ^ (((long) (bArr[i4 + 5] & 255)) << 40)) ^ (((long) (bArr[i4 + 4] & 255)) << 32)) ^ (((long) (bArr[i4 + 3] & 255)) << 24)) ^ (((long) (bArr[i4 + 2] & 255)) << 16)) ^ (((long) (bArr[i4 + 1] & 255)) << 8));
        }
        for (int i5 = 0; i5 < 12; i5++) {
            long[] jArr5 = this.f3471;
            int[] iArr = f3463;
            int i6 = i5 * 16;
            m5732(0, 4, 8, 12, jArr5[iArr[i6]], jArr5[iArr[i6 + 1]]);
            long[] jArr6 = this.f3471;
            m5732(1, 5, 9, 13, jArr6[iArr[i6 + 2]], jArr6[iArr[i6 + 3]]);
            long[] jArr7 = this.f3471;
            m5732(2, 6, 10, 14, jArr7[iArr[i6 + 4]], jArr7[iArr[i6 + 5]]);
            long[] jArr8 = this.f3471;
            m5732(3, 7, 11, 15, jArr8[iArr[i6 + 6]], jArr8[iArr[i6 + 7]]);
            long[] jArr9 = this.f3471;
            m5732(0, 5, 10, 15, jArr9[iArr[i6 + 8]], jArr9[iArr[i6 + 9]]);
            long[] jArr10 = this.f3471;
            m5732(1, 6, 11, 12, jArr10[iArr[i6 + 10]], jArr10[iArr[i6 + 11]]);
            long[] jArr11 = this.f3471;
            m5732(2, 7, 8, 13, jArr11[iArr[i6 + 12]], jArr11[iArr[i6 + 13]]);
            long[] jArr12 = this.f3471;
            m5732(3, 4, 9, 14, jArr12[iArr[i6 + 14]], jArr12[iArr[i6 + 15]]);
        }
        for (int i7 = 0; i7 < 8; i7++) {
            long[] jArr13 = this.f3472;
            long j2 = jArr13[i7];
            long[] jArr14 = this.f3470;
            jArr13[i7] = j2 ^ (jArr14[i7] ^ jArr14[i7 + 8]);
        }
    }

    @Override
    public byte[] mo3413() {
        long[] jArr = this.f3467;
        long j = jArr[0];
        long j2 = this.f3468;
        long j3 = j + j2;
        jArr[0] = j3;
        if (j3 < j2) {
            jArr[1] = jArr[1] + 1;
        }
        while (true) {
            int i = this.f3468;
            if (i >= 128) {
                break;
            }
            byte[] bArr = this.f3469;
            this.f3468 = i + 1;
            bArr[i] = 0;
        }
        m5731(1);
        byte[] bArr2 = new byte[this.f3465];
        for (int i2 = 0; i2 < this.f3465; i2++) {
            bArr2[i2] = (byte) ((this.f3472[i2 >> 3] >> ((i2 & 7) * 8)) & 255);
        }
        return bArr2;
    }

    public final void m5732(int i, int i2, int i3, int i4, long j, long j2) {
        long[] jArr = this.f3470;
        long j3 = jArr[i] + jArr[i2] + j;
        jArr[i] = j3;
        long j4 = jArr[i4] ^ j3;
        jArr[i4] = j4;
        long j5 = (j4 << 32) ^ ((j4 >> 32) & 4294967295L);
        jArr[i4] = j5;
        long j6 = jArr[i3] + j5;
        jArr[i3] = j6;
        long j7 = jArr[i2] ^ j6;
        jArr[i2] = j7;
        long j8 = (j7 << 40) ^ ((j7 >> 24) & 1099511627775L);
        jArr[i2] = j8;
        long j9 = jArr[i] + j8 + j2;
        jArr[i] = j9;
        long j10 = jArr[i4] ^ j9;
        jArr[i4] = j10;
        long j11 = (j10 << 48) ^ ((j10 >> 16) & 281474976710655L);
        jArr[i4] = j11;
        long j12 = jArr[i3] + j11;
        jArr[i3] = j12;
        long j13 = jArr[i2] ^ j12;
        jArr[i2] = j13;
        jArr[i2] = (j13 << 1) ^ (((j13 >> 56) & 255) >> 7);
    }
}
