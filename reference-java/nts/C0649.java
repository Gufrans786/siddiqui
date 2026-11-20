package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0649 {

    public int[] f3635 = new int[4];

    public int[] f3634 = new int[4];

    public int[] f3632 = new int[5];

    public int f3633 = 0;

    public byte[] f3630 = new byte[16];

    public byte[] f3631 = new byte[0];

    public C0649() {
        m5864();
    }

    public void m5864() {
        this.f3633 = 0;
        for (int i = 0; i < 16; i++) {
            this.f3630[i] = 0;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            int[] iArr = this.f3635;
            this.f3634[i2] = 0;
            iArr[i2] = 0;
        }
        for (int i3 = 0; i3 < 5; i3++) {
            this.f3632[i3] = 0;
        }
        this.f3631 = new byte[0];
    }

    public byte[] m5868() {
        return this.f3631;
    }

    public void m5865(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (bArr == null) {
            throw new C0304(C0558.m5481("}yo{", 0, 4, 29));
        }
        if (i2 == 0) {
            return;
        }
        int i5 = this.f3633;
        if (i5 > 0) {
            int i6 = 16 - i5;
            if (i2 < i6) {
                System.arraycopy(bArr, i, this.f3630, i5, i2);
                this.f3633 += i2;
                return;
            } else {
                System.arraycopy(bArr, i, this.f3630, i5, i6);
                m5866(this.f3630, 16, 0, 1, this);
                i4 = i2 - i6;
                i3 = i + i6;
            }
        } else {
            i3 = i;
            i4 = i2;
        }
        int i7 = i4 % 16;
        int i8 = i4 - i7;
        if (i8 >= 16) {
            m5866(bArr, i8, i3, 1, this);
            i3 += i8;
        }
        if (i7 > 0) {
            System.arraycopy(bArr, i3, this.f3630, 0, i7);
        }
        this.f3633 = i7;
    }

    public final void m5867(byte[] bArr, int i, int i2, int[] iArr) {
        int i3 = i2 + i;
        int i4 = 0;
        while (i < i3) {
            int i5 = ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i] & 255);
            int i6 = i + 3;
            int i7 = i5 | ((bArr[i + 2] << 16) & 16711680);
            i += 4;
            iArr[i4] = i7 | ((bArr[i6] << 24) & ViewCompat.MEASURED_STATE_MASK);
            i4++;
        }
    }

    public final void m5866(byte[] bArr, int i, int i2, int i3, C0649 c0649) {
        C0649 c06410 = c0649;
        int[] iArr = c06410.f3634;
        char c = 1;
        int i4 = iArr[1];
        int i5 = i4 + (i4 >>> 2);
        char c2 = 2;
        int i6 = iArr[2];
        int i7 = i6 + (i6 >>> 2);
        char c3 = 3;
        int i8 = iArr[3];
        int i9 = i8 + (i8 >>> 2);
        int i10 = i;
        int i11 = i2;
        while (i10 >= 16) {
            int i12 = ((bArr[i11 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i11] & 255) | ((bArr[i11 + 2] << 16) & 16711680) | ((bArr[i11 + 3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK);
            int[] iArr2 = c06410.f3632;
            char c4 = c;
            char c5 = c3;
            int i13 = i10;
            long j = (((long) iArr2[0]) & 4294967295L) + (((long) i12) & 4294967295L);
            int i14 = (int) j;
            iArr2[0] = i14;
            long j2 = (((long) iArr2[c4]) & 4294967295L) + (j >>> 32) + (((long) (((bArr[i11 + 5] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i11 + 4] & 255) | ((bArr[i11 + 6] << 16) & 16711680) | ((bArr[i11 + 7] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK))) & 4294967295L);
            int i15 = (int) j2;
            iArr2[c4] = i15;
            long j3 = (((long) iArr2[c2]) & 4294967295L) + (j2 >>> 32) + (((long) (((bArr[i11 + 9] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i11 + 8] & 255) | ((bArr[i11 + 10] << 16) & 16711680) | ((bArr[i11 + 11] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK))) & 4294967295L);
            int i16 = (int) j3;
            iArr2[c2] = i16;
            int i17 = i11 + 15;
            int i18 = ((bArr[i11 + 13] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i11 + 12] & 255) | ((bArr[i11 + 14] << 16) & 16711680);
            i11 += 16;
            long j4 = (((long) iArr2[c5]) & 4294967295L) + (j3 >>> 32) + (((long) (i18 | ((bArr[i17] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK))) & 4294967295L);
            int i19 = (int) j4;
            iArr2[c5] = i19;
            int i20 = ((int) (j4 >>> 32)) + i3 + iArr2[4];
            iArr2[4] = i20;
            int[] iArr3 = c06410.f3634;
            int i21 = iArr3[0];
            char c6 = c2;
            int i22 = i7;
            long j5 = i9;
            long j6 = ((((long) i15) & 4294967295L) * j5) + ((((long) i14) & 4294967295L) * ((long) i21));
            long j7 = i22;
            int i23 = i9;
            long j8 = i5;
            long j9 = ((((long) i19) & 4294967295L) * j8) + ((((long) i16) & 4294967295L) * j7) + j6;
            int i24 = iArr3[c4];
            int i25 = i5;
            long j10 = (((long) i20) * j8) + ((((long) i19) & 4294967295L) * j7) + ((((long) i16) & 4294967295L) * j5) + (((long) i21) * (((long) i15) & 4294967295L)) + ((((long) i14) & 4294967295L) * ((long) i24));
            int i26 = iArr3[c6];
            long j11 = (((long) i20) * j7) + ((((long) i19) & 4294967295L) * j5) + (((long) i21) * (((long) i16) & 4294967295L)) + (((long) i24) * (((long) i15) & 4294967295L)) + (((long) i26) * (((long) i14) & 4294967295L));
            long j12 = (((long) i20) * j5) + (((long) i21) * (((long) i19) & 4294967295L)) + ((((long) i16) & 4294967295L) * ((long) i24)) + ((((long) i15) & 4294967295L) * ((long) i26)) + (((long) iArr3[c5]) * (((long) i14) & 4294967295L));
            int i27 = i20 * i21;
            iArr2[4] = i27;
            int i28 = (int) j9;
            iArr2[0] = i28;
            long j13 = j10 + (j9 >>> 32);
            int i29 = (int) j13;
            iArr2[c4] = i29;
            long j14 = j11 + (j13 >>> 32);
            int i30 = (int) j14;
            iArr2[c6] = i30;
            long j15 = j12 + (j14 >>> 32);
            int i31 = (int) j15;
            iArr2[c5] = i31;
            int i32 = i27 + ((int) (j15 >>> 32));
            iArr2[4] = i32;
            int i33 = (i32 >>> 2) + (i32 & (-4));
            int i34 = i32 & 3;
            iArr2[4] = i34;
            int i35 = i28 + i33;
            iArr2[0] = i35;
            int i36 = (i35 ^ ((i33 ^ (i35 - i33)) | (i35 ^ i33))) >>> 31;
            int i37 = i29 + i36;
            iArr2[c4] = i37;
            int i38 = (((i36 ^ (i37 - i36)) | (i37 ^ i36)) ^ i37) >>> 31;
            int i39 = i30 + i38;
            iArr2[c6] = i39;
            int i40 = (((i38 ^ (i39 - i38)) | (i39 ^ i38)) ^ i39) >>> 31;
            int i41 = i31 + i40;
            iArr2[c5] = i41;
            iArr2[4] = i34 + ((((i40 ^ (i41 - i40)) | (i41 ^ i40)) ^ i41) >>> 31);
            i10 = i13 - 16;
            c06410 = c0649;
            c = c4;
            c3 = c5;
            c2 = c6;
            i9 = i23;
            i7 = i22;
            i5 = i25;
        }
    }
}
