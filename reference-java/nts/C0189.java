package nts;

import androidx.appcompat.app.AppCompatDelegate;

public class C0189 {

    public boolean f662;

    public byte[] f663;

    public int f664;

    public byte[] f665;

    public byte[] f666;

    public int f667;

    public long f668;

    public long f669;

    public boolean f671;

    public byte[] f672;

    public C0349 f673 = new C0349();

    public C0649 f670 = new C0649();

    public C0189() {
        this.f664 = 0;
        this.f669 = 0L;
        this.f662 = true;
        this.f663 = new byte[16];
        this.f667 = 128;
        this.f672 = null;
        this.f665 = null;
        this.f666 = null;
        this.f668 = 0L;
        this.f671 = false;
        this.f673.m4416();
        this.f670.m5864();
        this.f664 = 0;
        this.f669 = 0L;
        this.f662 = true;
        this.f663 = new byte[16];
        this.f667 = 128;
        this.f672 = null;
        this.f665 = null;
        this.f666 = null;
        this.f668 = 0L;
        this.f671 = false;
    }

    public void m3627(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, long j, boolean z) {
        this.f666 = bArr;
        this.f665 = bArr2;
        this.f672 = bArr3;
        this.f663 = bArr4;
        this.f667 = i;
        this.f668 = j;
        this.f662 = z;
        this.f670.m5864();
    }

    public void m3626(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        this.f665 = bArr;
        this.f672 = bArr2;
        this.f663 = bArr3;
        this.f667 = i;
        this.f673.m4416();
        this.f670.m5864();
        this.f669 = 0L;
        this.f664 = 0;
    }

    public byte[] m3628(byte[] bArr, int i, int i2) throws Exception {
        byte[] bArr2 = this.f663;
        boolean z = this.f662;
        if (i + i2 <= bArr.length) {
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr, i, bArr3, 0, i2);
            byte[] bArrM3629 = m3629(bArr3, z);
            if (this.f664 == 2) {
                if (!this.f671) {
                    byte[] bArr4 = new byte[8];
                    int i3 = (int) (this.f669 % 16);
                    if (i3 > 0) {
                        int i4 = 16 - i3;
                        this.f670.m5865(new byte[i4], 0, i4);
                    }
                    m3625(bArr4, this.f672.length);
                    this.f670.m5865(bArr4, 0, 8);
                    m3625(bArr4, this.f669);
                    this.f670.m5865(bArr4, 0, 8);
                }
                C0649 c0649 = this.f670;
                int i5 = c0649.f3633;
                if (i5 > 0) {
                    byte[] bArr5 = c0649.f3630;
                    c0649.f3633 = i5 + 1;
                    bArr5[i5] = 1;
                    for (int i6 = c0649.f3633; i6 < 16; i6++) {
                        c0649.f3630[i6] = 0;
                    }
                    c0649.m5866(c0649.f3630, 16, 0, 0, c0649);
                }
                int[] iArr = c0649.f3632;
                long j = (((long) iArr[0]) & 4294967295L) + 5;
                int i7 = (int) j;
                long j2 = (((long) iArr[1]) & 4294967295L) + (j >> 32);
                int i8 = (int) j2;
                long j3 = (((long) iArr[2]) & 4294967295L) + (j2 >> 32);
                int i9 = (int) j3;
                long j4 = (((long) iArr[3]) & 4294967295L) + (j3 >> 32);
                int i10 = (int) j4;
                int i11 = 0 - ((iArr[4] + ((int) (j4 >> 32))) >> 2);
                int i12 = i7 & i11;
                int i13 = i8 & i11;
                int i14 = i9 & i11;
                int i15 = i10 & i11;
                int i16 = ~i11;
                int i17 = i12 | (iArr[0] & i16);
                iArr[0] = i17;
                iArr[1] = i13 | (iArr[1] & i16);
                iArr[2] = (iArr[2] & i16) | i14;
                iArr[3] = i15 | (i16 & iArr[3]);
                int[] iArr2 = c0649.f3635;
                long j5 = (((long) i17) & 4294967295L) + (((long) iArr2[0]) & 4294967295L);
                iArr[0] = (int) j5;
                long j6 = (((long) iArr[1]) & 4294967295L) + (j5 >> 32) + (((long) iArr2[1]) & 4294967295L);
                iArr[1] = (int) j6;
                long j7 = (((long) iArr[2]) & 4294967295L) + (j6 >> 32) + (((long) iArr2[2]) & 4294967295L);
                iArr[2] = (int) j7;
                iArr[3] = (int) ((((long) iArr[3]) & 4294967295L) + (j7 >> 32) + (((long) iArr2[3]) & 4294967295L));
                byte[] bArr6 = new byte[16];
                int i18 = 0;
                int i19 = 0;
                while (i18 < 16) {
                    int i20 = iArr[i19];
                    bArr6[i18] = (byte) (i20 & 255);
                    bArr6[i18 + 1] = (byte) ((i20 >> 8) & 255);
                    int i21 = i18 + 3;
                    bArr6[i18 + 2] = (byte) ((i20 >> 16) & 255);
                    i18 += 4;
                    bArr6[i21] = (byte) ((i20 >> 24) & 255);
                    i19++;
                }
                c0649.f3631 = bArr6;
                c0649.f3631 = c0649.f3631;
                if (z) {
                    if (this.f663 == null) {
                        this.f663 = new byte[this.f667 / 8];
                    }
                    System.arraycopy(this.f670.m5868(), 0, this.f663, 0, this.f667 / 8);
                } else if (bArr2 != null && bArr2.length != 0) {
                    if (!C0259.m3896(bArr2, this.f670.m5868())) {
                        throw new C0414(2001, C0177.m3550(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 38, 91));
                    }
                } else {
                    throw new C0537(C0177.m3550(93, 15, 33));
                }
                this.f664 = 0;
                return bArrM3629;
            }
            throw new C0537(C0177.m3550(76, 17, 75));
        }
        throw new Exception(C0177.m3550(18, 58, 49));
    }

    public final byte[] m3629(byte[] bArr, boolean z) throws Exception {
        if (this.f664 != 2) {
            byte[] bArr2 = new byte[64];
            this.f673.m4418(this.f666, this.f665, this.f668);
            this.f673.m4417(bArr2);
            C0649 c0649 = this.f670;
            c0649.m5867(bArr2, 0, 16, c0649.f3634);
            c0649.m5867(bArr2, 16, 16, c0649.f3635);
            int[] iArr = c0649.f3634;
            iArr[0] = iArr[0] & 268435455;
            iArr[1] = iArr[1] & 268435452;
            iArr[2] = iArr[2] & 268435452;
            iArr[3] = 268435452 & iArr[3];
            this.f664 = 0;
            byte[] bArr3 = this.f672;
            int length = bArr3.length % 16;
            this.f670.m5865(bArr3, 0, bArr3.length);
            if (length > 0 && !this.f671) {
                int i = 16 - length;
                this.f670.m5865(new byte[i], 0, i);
            }
            this.f664 = 1;
        }
        if (this.f664 == 1) {
            this.f664 = 2;
        }
        if (this.f664 == 2) {
            if (bArr == null) {
                bArr = new byte[0];
            }
            this.f669 += (long) bArr.length;
            if (z) {
                this.f673.m4417(bArr);
                this.f670.m5865(bArr, 0, bArr.length);
                return bArr;
            }
            this.f670.m5865(bArr, 0, bArr.length);
            this.f673.m4417(bArr);
            return bArr;
        }
        throw new C0537(C0177.m3550(0, 18, 110));
    }

    public static void m3625(byte[] bArr, long j) {
        int i = (int) (j >> 32);
        if (bArr == null || bArr.length < 8) {
            bArr = new byte[8];
        }
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i2] = (byte) (j >> (i2 * 8));
        }
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[i3 + 4] = (byte) (i >> (i3 * 8));
        }
    }
}
