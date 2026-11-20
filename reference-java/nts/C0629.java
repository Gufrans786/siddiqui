package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0629 extends AbstractC0317 {

    public int[] f3473 = new int[4];

    public byte[] f3474 = new byte[64];

    public int[] f3476 = new int[16];

    public int f3477 = 0;

    public long f3475 = 0;

    public C0629() {
        this.f1703 = 128;
        mo3250();
    }

    public final void m5733() {
        int[] iArr = this.f3473;
        int i = iArr[0];
        boolean z = true;
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = 0;
        int i6 = 0;
        while (i5 < 16) {
            int[] iArr2 = this.f3476;
            byte[] bArr = this.f3474;
            boolean z2 = z;
            int i7 = i6 + 3;
            int i8 = (bArr[i6] & 255) | ((bArr[i6 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[i6 + 2] << 16) & 16711680);
            i6 += 4;
            iArr2[i5] = i8 | ((bArr[i7] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK);
            i5++;
            z = z2;
        }
        boolean z3 = z;
        int i9 = (i2 & i3) | ((~i2) & i4);
        int[] iArr3 = this.f3476;
        int i10 = iArr3[0];
        int i11 = i9 + i10 + i;
        int i12 = (i11 << 3) | (i11 >>> 29);
        int i13 = ((i12 & i2) | ((~i12) & i3)) + iArr3[z3 ? 1 : 0] + i4;
        int i14 = (i13 << 7) | (i13 >>> 25);
        int i15 = ((i14 & i12) | ((~i14) & i2)) + iArr3[2] + i3;
        int i16 = (i15 >>> 21) | (i15 << 11);
        int i17 = ((i16 & i14) | ((~i16) & i12)) + iArr3[3] + i2;
        int i18 = (i17 << 19) | (i17 >>> 13);
        int i19 = ((i18 & i16) | ((~i18) & i14)) + iArr3[4] + i12;
        int i20 = (i19 << 3) | (i19 >>> 29);
        int i21 = ((i20 & i18) | ((~i20) & i16)) + iArr3[5] + i14;
        int i22 = (i21 << 7) | (i21 >>> 25);
        int i23 = ((i22 & i20) | ((~i22) & i18)) + iArr3[6] + i16;
        int i24 = (i23 << 11) | (i23 >>> 21);
        int i25 = (((~i24) & i20) | (i24 & i22)) + iArr3[7] + i18;
        int i26 = (i25 << 19) | (i25 >>> 13);
        int i27 = ((i26 & i24) | ((~i26) & i22)) + iArr3[8] + i20;
        int i28 = (i27 << 3) | (i27 >>> 29);
        int i29 = ((i28 & i26) | ((~i28) & i24)) + iArr3[9] + i22;
        int i30 = (i29 << 7) | (i29 >>> 25);
        int i31 = ((i30 & i28) | ((~i30) & i26)) + iArr3[10] + i24;
        int i32 = (i31 << 11) | (i31 >>> 21);
        int i33 = ((i32 & i30) | ((~i32) & i28)) + iArr3[11] + i26;
        int i34 = (i33 << 19) | (i33 >>> 13);
        int i35 = ((i34 & i32) | ((~i34) & i30)) + iArr3[12] + i28;
        int i36 = (i35 << 3) | (i35 >>> 29);
        int i37 = ((i36 & i34) | ((~i36) & i32)) + iArr3[13] + i30;
        int i38 = (i37 << 7) | (i37 >>> 25);
        int i39 = ((i38 & i36) | ((~i38) & i34)) + iArr3[14] + i32;
        int i40 = (i39 << 11) | (i39 >>> 21);
        int i41 = i40 & i38;
        int i42 = (((~i40) & i36) | i41) + iArr3[15] + i34;
        int i43 = (i42 << 19) | (i42 >>> 13);
        int iM5882 = C0663.m5882(((i40 | i38) & i43) | i41, i10, 1518500249, i36);
        int i44 = (iM5882 >>> 29) | (iM5882 << 3);
        int iM5883 = C0663.m5882((i43 & i40) | ((i43 | i40) & i44), iArr3[4], 1518500249, i38);
        int i45 = (iM5883 >>> 27) | (iM5883 << 5);
        int iM5884 = C0663.m5882((i44 & i43) | ((i44 | i43) & i45), iArr3[8], 1518500249, i40);
        int i46 = (iM5884 >>> 23) | (iM5884 << 9);
        int iM5885 = C0663.m5882((i45 & i44) | ((i45 | i44) & i46), iArr3[12], 1518500249, i43);
        int i47 = (iM5885 >>> 19) | (iM5885 << 13);
        int iM5886 = C0663.m5882((i46 & i45) | ((i46 | i45) & i47), iArr3[z3 ? 1 : 0], 1518500249, i44);
        int i48 = (iM5886 >>> 29) | (iM5886 << 3);
        int iM5887 = C0663.m5882((i47 & i46) | ((i47 | i46) & i48), iArr3[5], 1518500249, i45);
        int i49 = (iM5887 >>> 27) | (iM5887 << 5);
        int iM5888 = C0663.m5882((i48 & i47) | ((i48 | i47) & i49), iArr3[9], 1518500249, i46);
        int i50 = (iM5888 >>> 23) | (iM5888 << 9);
        int iM5889 = C0663.m5882((i49 & i48) | ((i49 | i48) & i50), iArr3[13], 1518500249, i47);
        int i51 = (iM5889 >>> 19) | (iM5889 << 13);
        int iM58810 = C0663.m5882((i50 & i49) | ((i50 | i49) & i51), iArr3[2], 1518500249, i48);
        int i52 = (iM58810 >>> 29) | (iM58810 << 3);
        int iM58811 = C0663.m5882((i51 & i50) | ((i51 | i50) & i52), iArr3[6], 1518500249, i49);
        int i53 = (iM58811 >>> 27) | (iM58811 << 5);
        int iM58812 = C0663.m5882((i52 & i51) | ((i52 | i51) & i53), iArr3[10], 1518500249, i50);
        int i54 = (iM58812 >>> 23) | (iM58812 << 9);
        int iM58813 = C0663.m5882((i53 & i52) | ((i53 | i52) & i54), iArr3[14], 1518500249, i51);
        int i55 = (iM58813 >>> 19) | (iM58813 << 13);
        int iM58814 = C0663.m5882((i54 & i53) | ((i54 | i53) & i55), iArr3[3], 1518500249, i52);
        int i56 = (iM58814 >>> 29) | (iM58814 << 3);
        int iM58815 = C0663.m5882((i55 & i54) | ((i55 | i54) & i56), iArr3[7], 1518500249, i53);
        int i57 = (iM58815 >>> 27) | (iM58815 << 5);
        int iM58816 = C0663.m5882((i56 & i55) | ((i56 | i55) & i57), iArr3[11], 1518500249, i54);
        int i58 = (iM58816 >>> 23) | (iM58816 << 9);
        int iM58817 = C0663.m5882(((i57 | i56) & i58) | (i57 & i56), iArr3[15], 1518500249, i55);
        int i59 = (iM58817 >>> 19) | (iM58817 << 13);
        int iM58818 = C0663.m5882((i59 ^ i58) ^ i57, iArr3[0], 1859775393, i56);
        int i60 = (iM58818 >>> 29) | (iM58818 << 3);
        int iM58819 = C0663.m5882((i60 ^ i59) ^ i58, iArr3[8], 1859775393, i57);
        int i61 = (iM58819 >>> 23) | (iM58819 << 9);
        int iM58820 = C0663.m5882((i61 ^ i60) ^ i59, iArr3[4], 1859775393, i58);
        int i62 = (iM58820 >>> 21) | (iM58820 << 11);
        int iM58821 = C0663.m5882((i62 ^ i61) ^ i60, iArr3[12], 1859775393, i59);
        int i63 = (iM58821 >>> 17) | (iM58821 << 15);
        int iM58822 = C0663.m5882((i63 ^ i62) ^ i61, iArr3[2], 1859775393, i60);
        int i64 = (iM58822 >>> 29) | (iM58822 << 3);
        int iM58823 = C0663.m5882((i64 ^ i63) ^ i62, iArr3[10], 1859775393, i61);
        int i65 = (iM58823 >>> 23) | (iM58823 << 9);
        int iM58824 = C0663.m5882((i65 ^ i64) ^ i63, iArr3[6], 1859775393, i62);
        int i66 = (iM58824 >>> 21) | (iM58824 << 11);
        int iM58825 = C0663.m5882((i66 ^ i65) ^ i64, iArr3[14], 1859775393, i63);
        int i67 = (iM58825 >>> 17) | (iM58825 << 15);
        int iM58826 = C0663.m5882((i67 ^ i66) ^ i65, iArr3[z3 ? 1 : 0], 1859775393, i64);
        int i68 = (iM58826 >>> 29) | (iM58826 << 3);
        int iM58827 = C0663.m5882((i68 ^ i67) ^ i66, iArr3[9], 1859775393, i65);
        int i69 = (iM58827 >>> 23) | (iM58827 << 9);
        int iM58828 = C0663.m5882((i69 ^ i68) ^ i67, iArr3[5], 1859775393, i66);
        int i70 = (iM58828 >>> 21) | (iM58828 << 11);
        int iM58829 = C0663.m5882((i70 ^ i69) ^ i68, iArr3[13], 1859775393, i67);
        int i71 = (iM58829 >>> 17) | (iM58829 << 15);
        int iM58830 = C0663.m5882((i71 ^ i70) ^ i69, iArr3[3], 1859775393, i68);
        int i72 = (iM58830 >>> 29) | (iM58830 << 3);
        int iM58831 = C0663.m5882((i72 ^ i71) ^ i70, iArr3[11], 1859775393, i69);
        int i73 = (iM58831 >>> 23) | (iM58831 << 9);
        int iM58832 = C0663.m5882((i73 ^ i72) ^ i71, iArr3[7], 1859775393, i70);
        int i74 = (iM58832 >>> 21) | (iM58832 << 11);
        int iM58833 = C0663.m5882((i74 ^ i73) ^ i72, iArr3[15], 1859775393, i71);
        int[] iArr4 = this.f3473;
        iArr4[0] = iArr4[0] + i72;
        iArr4[z3 ? 1 : 0] = iArr4[z3 ? 1 : 0] + ((iM58833 >>> 17) | (iM58833 << 15));
        iArr4[2] = iArr4[2] + i74;
        iArr4[3] = iArr4[3] + i73;
        this.f3477 = 0;
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int iMin = Math.min(i2, 64 - this.f3477);
            System.arraycopy(bArr, i, this.f3474, this.f3477, iMin);
            i2 -= iMin;
            i += iMin;
            this.f3475 += (long) iMin;
            int i3 = this.f3477 + iMin;
            this.f3477 = i3;
            if (i3 == 64) {
                m5733();
            }
        }
    }

    @Override
    public void mo3250() {
        this.f3477 = 0;
        this.f3475 = 0;
        int[] iArr = this.f3473;
        iArr[0] = 1732584193;
        iArr[1] = -271733879;
        iArr[2] = -1732584194;
        iArr[3] = 271733878;
    }

    @Override
    public byte[] mo3413() {
        byte[] bArr = this.f3474;
        int i = this.f3477;
        int i2 = i + 1;
        this.f3477 = i2;
        bArr[i] = -128;
        if (i2 > 56) {
            while (true) {
                int i3 = this.f3477;
                if (i3 >= 64) {
                    break;
                }
                this.f3474[i3] = 0;
                this.f3477 = i3 + 1;
            }
            m5733();
        }
        while (true) {
            int i4 = this.f3477;
            if (i4 >= 56) {
                break;
            }
            this.f3474[i4] = 0;
            this.f3477 = i4 + 1;
        }
        this.f3475 *= 8;
        while (true) {
            int i5 = this.f3477;
            if (i5 >= 64) {
                break;
            }
            byte[] bArr2 = this.f3474;
            int i6 = i5 + 1;
            this.f3477 = i6;
            long j = this.f3475;
            bArr2[i5] = (byte) (255 & j);
            int i7 = i5 + 2;
            this.f3477 = i7;
            bArr2[i6] = (byte) (j >>> 8);
            int i8 = i5 + 3;
            this.f3477 = i8;
            bArr2[i7] = (byte) (j >>> 16);
            this.f3477 = i5 + 4;
            bArr2[i8] = (byte) (j >>> 24);
            this.f3475 = j >>> 32;
        }
        m5733();
        this.f1702 = new byte[16];
        int i9 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            byte[] bArr3 = this.f1702;
            int[] iArr = this.f3473;
            int i11 = iArr[i10];
            bArr3[i9] = (byte) (i11 & 255);
            bArr3[i9 + 1] = (byte) (i11 >>> 8);
            int i12 = i9 + 3;
            bArr3[i9 + 2] = (byte) (i11 >>> 16);
            i9 += 4;
            bArr3[i12] = (byte) (i11 >>> 24);
            iArr[i10] = 0;
        }
        return this.f1702;
    }
}
