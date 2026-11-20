package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;

public class C0552 extends AbstractC0317 {

    public int[] f3151 = new int[4];

    public int[] f3152 = new int[2];

    public byte[] f3153 = new byte[64];

    public C0552() {
        this.f1703 = 128;
        mo3250();
    }

    public Object clone() throws CloneNotSupportedException {
        C0552 c0552 = new C0552();
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f3151;
            if (i2 >= iArr.length) {
                break;
            }
            c0552.f3151[i2] = iArr[i2];
            i2++;
        }
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.f3152;
            if (i3 >= iArr2.length) {
                break;
            }
            c0552.f3152[i3] = iArr2[i3];
            i3++;
        }
        while (true) {
            byte[] bArr = this.f3153;
            if (i >= bArr.length) {
                return c0552;
            }
            c0552.f3153[i] = bArr[i];
            i++;
        }
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (!C0320.f1715) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0558.m5481("\u000b\u0003qe+0`%+?>()*<,2y19K_\u0011\nZ\u001f\u0011\u0005\u0004\u0012\u0013\u0010\u0006\u0016\bC", 0, 18, 84));
        }
        int[] iArr = this.f3152;
        int i4 = iArr[0];
        int i5 = (i4 >>> 3) & 63;
        int i6 = i2 << 3;
        int i7 = i4 + i6;
        iArr[0] = i7;
        if ((((long) i7) & 4294967295L) < i6) {
            iArr[1] = iArr[1] + 1;
        }
        iArr[1] = iArr[1] + (i2 >>> 29);
        int i8 = 64 - i5;
        if (i2 >= i8) {
            System.arraycopy(bArr, i, this.f3153, i5, i8);
            m5440(this.f3153);
            byte[] bArr2 = new byte[64];
            while (i8 + 63 < i2) {
                System.arraycopy(bArr, i8 + i, bArr2, 0, 64);
                m5440(bArr2);
                i8 += 64;
            }
            i5 = 0;
            i3 = i8;
        }
        System.arraycopy(bArr, i + i3, this.f3153, i5, i2 - i3);
    }

    @Override
    public void mo3250() {
        int[] iArr = this.f3152;
        iArr[1] = 0;
        iArr[0] = 0;
        int[] iArr2 = this.f3151;
        iArr2[0] = 1732584193;
        iArr2[1] = -271733879;
        iArr2[2] = -1732584194;
        iArr2[3] = 271733878;
        int i = 0;
        while (true) {
            byte[] bArr = this.f3153;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = 0;
            i++;
        }
    }

    public final byte[] m5441(int[] iArr) {
        int length = iArr.length * 4;
        byte[] bArr = new byte[length];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = iArr[i2];
            bArr[i] = (byte) i3;
            bArr[i + 1] = (byte) (i3 >>> 8);
            int i4 = i + 3;
            bArr[i + 2] = (byte) (i3 >>> 16);
            i += 4;
            bArr[i4] = (byte) (i3 >>> 24);
            i2++;
        }
        return bArr;
    }

    @Override
    public byte[] mo3413() {
        if (C0320.f1715) {
            byte[] bArrM5441 = m5441(this.f3152);
            int i = (this.f3152[0] >>> 3) & 63;
            int i2 = i < 56 ? 56 - i : 120 - i;
            byte[] bArr = new byte[i2];
            bArr[0] = -128;
            for (int i3 = 1; i3 < i2; i3++) {
                bArr[i3] = 0;
            }
            mo3412(bArr, 0, i2);
            mo3412(bArrM5441, 0, bArrM5441.length);
            this.f1702 = m5441(this.f3151);
            return this.f1702;
        }
        throw new C0414(TypedValues.TransitionType.TYPE_TO, C0558.m5481("\u000b\u0003qe+0`%+?>()*<,2y19K_\u0011\nZ\u001f\u0011\u0005\u0004\u0012\u0013\u0010\u0006\u0016\bC", 18, 18, 124));
    }

    public final void m5440(byte[] bArr) {
        int[] iArr = this.f3151;
        boolean z = false;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int length = bArr.length / 4;
        int[] iArr2 = new int[length];
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            boolean z2 = z;
            int i7 = i6 + 3;
            int i8 = (bArr[i6] & 255) | ((bArr[i6 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[i6 + 2] << 16) & 16711680);
            i6 += 4;
            iArr2[i5] = i8 | ((bArr[i7] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK);
            i5++;
            z = z2;
        }
        boolean z3 = z;
        int iM5882 = C0663.m5882((i2 & i3) | ((~i2) & i4), iArr2[z3 ? 1 : 0], -680876936, i);
        int i9 = ((iM5882 >>> 25) | (iM5882 << 7)) + i2;
        int iM5883 = C0663.m5882((i9 & i2) | ((~i9) & i3), iArr2[1], -389564586, i4);
        int i10 = ((iM5883 >>> 20) | (iM5883 << 12)) + i9;
        int iM5884 = C0663.m5882((i10 & i9) | ((~i10) & i2), iArr2[2], 606105819, i3);
        int i11 = ((iM5884 >>> 15) | (iM5884 << 17)) + i10;
        int iM5885 = C0663.m5882((i11 & i10) | ((~i11) & i9), iArr2[3], -1044525330, i2);
        int i12 = ((iM5885 >>> 10) | (iM5885 << 22)) + i11;
        int iM5886 = C0663.m5882((i12 & i11) | ((~i12) & i10), iArr2[4], -176418897, i9);
        int i13 = ((iM5886 >>> 25) | (iM5886 << 7)) + i12;
        int iM5887 = C0663.m5882((i13 & i12) | ((~i13) & i11), iArr2[5], 1200080426, i10);
        int i14 = ((iM5887 >>> 20) | (iM5887 << 12)) + i13;
        int iM5888 = C0663.m5882((i14 & i13) | ((~i14) & i12), iArr2[6], -1473231341, i11);
        int i15 = ((iM5888 >>> 15) | (iM5888 << 17)) + i14;
        int iM5889 = C0663.m5882((i15 & i14) | ((~i15) & i13), iArr2[7], -45705983, i12);
        int i16 = ((iM5889 >>> 10) | (iM5889 << 22)) + i15;
        int iM58810 = C0663.m5882((i16 & i15) | ((~i16) & i14), iArr2[8], 1770035416, i13);
        int i17 = ((iM58810 >>> 25) | (iM58810 << 7)) + i16;
        int iM58811 = C0663.m5882((i17 & i16) | ((~i17) & i15), iArr2[9], -1958414417, i14);
        int i18 = ((iM58811 >>> 20) | (iM58811 << 12)) + i17;
        int iM58812 = C0663.m5882((i18 & i17) | ((~i18) & i16), iArr2[10], -42063, i15);
        int i19 = ((iM58812 >>> 15) | (iM58812 << 17)) + i18;
        int iM58813 = C0663.m5882((i19 & i18) | ((~i19) & i17), iArr2[11], -1990404162, i16);
        int i20 = ((iM58813 >>> 10) | (iM58813 << 22)) + i19;
        int iM58814 = C0663.m5882((i20 & i19) | ((~i20) & i18), iArr2[12], 1804603682, i17);
        int i21 = ((iM58814 >>> 25) | (iM58814 << 7)) + i20;
        int iM58815 = C0663.m5882((i21 & i20) | ((~i21) & i19), iArr2[13], -40341101, i18);
        int i22 = ((iM58815 >>> 20) | (iM58815 << 12)) + i21;
        int i23 = ~i22;
        int iM58816 = C0663.m5882((i22 & i21) | (i23 & i20), iArr2[14], -1502002290, i19);
        int i24 = ((iM58816 >>> 15) | (iM58816 << 17)) + i22;
        int i25 = ~i24;
        int iM58817 = C0663.m5882((i24 & i22) | (i25 & i21), iArr2[15], 1236535329, i20);
        int i26 = ((iM58817 >>> 10) | (iM58817 << 22)) + i24;
        int iM58818 = C0663.m5882((i26 & i22) | (i23 & i24), iArr2[1], -165796510, i21);
        int i27 = ((iM58818 >>> 27) | (iM58818 << 5)) + i26;
        int iM58819 = C0663.m5882((i27 & i24) | (i26 & i25), iArr2[6], -1069501632, i22);
        int i28 = ((iM58819 >>> 23) | (iM58819 << 9)) + i27;
        int iM58820 = C0663.m5882((i28 & i26) | ((~i26) & i27), iArr2[11], 643717713, i24);
        int i29 = ((iM58820 >>> 18) | (iM58820 << 14)) + i28;
        int iM58821 = C0663.m5882((i29 & i27) | ((~i27) & i28), iArr2[z3 ? 1 : 0], -373897302, i26);
        int i30 = ((iM58821 >>> 12) | (iM58821 << 20)) + i29;
        int iM58822 = C0663.m5882((i30 & i28) | ((~i28) & i29), iArr2[5], -701558691, i27);
        int i31 = ((iM58822 >>> 27) | (iM58822 << 5)) + i30;
        int iM58823 = C0663.m5882((i31 & i29) | ((~i29) & i30), iArr2[10], 38016083, i28);
        int i32 = ((iM58823 >>> 23) | (iM58823 << 9)) + i31;
        int iM58824 = C0663.m5882((i32 & i30) | ((~i30) & i31), iArr2[15], -660478335, i29);
        int i33 = ((iM58824 >>> 18) | (iM58824 << 14)) + i32;
        int iM58825 = C0663.m5882((i33 & i31) | ((~i31) & i32), iArr2[4], -405537848, i30);
        int i34 = ((iM58825 >>> 12) | (iM58825 << 20)) + i33;
        int iM58826 = C0663.m5882((i34 & i32) | ((~i32) & i33), iArr2[9], 568446438, i31);
        int i35 = ((iM58826 >>> 27) | (iM58826 << 5)) + i34;
        int iM58827 = C0663.m5882((i35 & i33) | ((~i33) & i34), iArr2[14], -1019803690, i32);
        int i36 = ((iM58827 >>> 23) | (iM58827 << 9)) + i35;
        int iM58828 = C0663.m5882((i36 & i34) | ((~i34) & i35), iArr2[3], -187363961, i33);
        int i37 = ((iM58828 >>> 18) | (iM58828 << 14)) + i36;
        int iM58829 = C0663.m5882((i37 & i35) | ((~i35) & i36), iArr2[8], 1163531501, i34);
        int i38 = ((iM58829 >>> 12) | (iM58829 << 20)) + i37;
        int iM58830 = C0663.m5882((i38 & i36) | ((~i36) & i37), iArr2[13], -1444681467, i35);
        int i39 = ((iM58830 >>> 27) | (iM58830 << 5)) + i38;
        int iM58831 = C0663.m5882((i39 & i37) | ((~i37) & i38), iArr2[2], -51403784, i36);
        int i40 = ((iM58831 >>> 23) | (iM58831 << 9)) + i39;
        int iM58832 = C0663.m5882((i40 & i38) | ((~i38) & i39), iArr2[7], 1735328473, i37);
        int i41 = ((iM58832 >>> 18) | (iM58832 << 14)) + i40;
        int iM58833 = C0663.m5882((i41 & i39) | ((~i39) & i40), iArr2[12], -1926607734, i38);
        int i42 = ((iM58833 >>> 12) | (iM58833 << 20)) + i41;
        int iM58834 = C0663.m5882((i42 ^ i41) ^ i40, iArr2[5], -378558, i39);
        int i43 = ((iM58834 >>> 28) | (iM58834 << 4)) + i42;
        int iM58835 = C0663.m5882((i43 ^ i42) ^ i41, iArr2[8], -2022574463, i40);
        int i44 = ((iM58835 >>> 21) | (iM58835 << 11)) + i43;
        int iM58836 = C0663.m5882((i44 ^ i43) ^ i42, iArr2[11], 1839030562, i41);
        int i45 = ((iM58836 >>> 16) | (iM58836 << 16)) + i44;
        int iM58837 = C0663.m5882((i45 ^ i44) ^ i43, iArr2[14], -35309556, i42);
        int i46 = ((iM58837 >>> 9) | (iM58837 << 23)) + i45;
        int iM58838 = C0663.m5882((i46 ^ i45) ^ i44, iArr2[1], -1530992060, i43);
        int i47 = ((iM58838 >>> 28) | (iM58838 << 4)) + i46;
        int iM58839 = C0663.m5882((i47 ^ i46) ^ i45, iArr2[4], 1272893353, i44);
        int i48 = ((iM58839 >>> 21) | (iM58839 << 11)) + i47;
        int iM58840 = C0663.m5882((i48 ^ i47) ^ i46, iArr2[7], -155497632, i45);
        int i49 = ((iM58840 >>> 16) | (iM58840 << 16)) + i48;
        int iM58841 = C0663.m5882((i49 ^ i48) ^ i47, iArr2[10], -1094730640, i46);
        int i50 = ((iM58841 >>> 9) | (iM58841 << 23)) + i49;
        int iM58842 = C0663.m5882((i50 ^ i49) ^ i48, iArr2[13], 681279174, i47);
        int i51 = ((iM58842 >>> 28) | (iM58842 << 4)) + i50;
        int iM58843 = C0663.m5882((i51 ^ i50) ^ i49, iArr2[z3 ? 1 : 0], -358537222, i48);
        int i52 = ((iM58843 >>> 21) | (iM58843 << 11)) + i51;
        int iM58844 = C0663.m5882((i52 ^ i51) ^ i50, iArr2[3], -722521979, i49);
        int i53 = ((iM58844 >>> 16) | (iM58844 << 16)) + i52;
        int iM58845 = C0663.m5882((i53 ^ i52) ^ i51, iArr2[6], 76029189, i50);
        int i54 = ((iM58845 >>> 9) | (iM58845 << 23)) + i53;
        int iM58846 = C0663.m5882((i54 ^ i53) ^ i52, iArr2[9], -640364487, i51);
        int i55 = ((iM58846 >>> 28) | (iM58846 << 4)) + i54;
        int iM58847 = C0663.m5882((i55 ^ i54) ^ i53, iArr2[12], -421815835, i52);
        int i56 = ((iM58847 >>> 21) | (iM58847 << 11)) + i55;
        int iM58848 = C0663.m5882((i56 ^ i55) ^ i54, iArr2[15], 530742520, i53);
        int i57 = ((iM58848 >>> 16) | (iM58848 << 16)) + i56;
        int iM58849 = C0663.m5882((i57 ^ i56) ^ i55, iArr2[2], -995338651, i54);
        int i58 = ((iM58849 >>> 9) | (iM58849 << 23)) + i57;
        int iM58850 = C0663.m5882(((~i56) | i58) ^ i57, iArr2[z3 ? 1 : 0], -198630844, i55);
        int i59 = ((iM58850 >>> 26) | (iM58850 << 6)) + i58;
        int iM58851 = C0663.m5882(((~i57) | i59) ^ i58, iArr2[7], 1126891415, i56);
        int i60 = ((iM58851 >>> 22) | (iM58851 << 10)) + i59;
        int iM58852 = C0663.m5882(((~i58) | i60) ^ i59, iArr2[14], -1416354905, i57);
        int i61 = ((iM58852 >>> 17) | (iM58852 << 15)) + i60;
        int iM58853 = C0663.m5882(((~i59) | i61) ^ i60, iArr2[5], -57434055, i58);
        int i62 = ((iM58853 >>> 11) | (iM58853 << 21)) + i61;
        int iM58854 = C0663.m5882(((~i60) | i62) ^ i61, iArr2[12], 1700485571, i59);
        int i63 = ((iM58854 >>> 26) | (iM58854 << 6)) + i62;
        int iM58855 = C0663.m5882(((~i61) | i63) ^ i62, iArr2[3], -1894986606, i60);
        int i64 = ((iM58855 >>> 22) | (iM58855 << 10)) + i63;
        int iM58856 = C0663.m5882(((~i62) | i64) ^ i63, iArr2[10], -1051523, i61);
        int i65 = ((iM58856 >>> 17) | (iM58856 << 15)) + i64;
        int iM58857 = C0663.m5882(((~i63) | i65) ^ i64, iArr2[1], -2054922799, i62);
        int i66 = ((iM58857 >>> 11) | (iM58857 << 21)) + i65;
        int iM58858 = C0663.m5882(((~i64) | i66) ^ i65, iArr2[8], 1873313359, i63);
        int i67 = ((iM58858 >>> 26) | (iM58858 << 6)) + i66;
        int iM58859 = C0663.m5882(((~i65) | i67) ^ i66, iArr2[15], -30611744, i64);
        int i68 = ((iM58859 >>> 22) | (iM58859 << 10)) + i67;
        int iM58860 = C0663.m5882(((~i66) | i68) ^ i67, iArr2[6], -1560198380, i65);
        int i69 = ((iM58860 >>> 17) | (iM58860 << 15)) + i68;
        int iM58861 = C0663.m5882(((~i67) | i69) ^ i68, iArr2[13], 1309151649, i66);
        int i70 = ((iM58861 >>> 11) | (iM58861 << 21)) + i69;
        int iM58862 = C0663.m5882(((~i68) | i70) ^ i69, iArr2[4], -145523070, i67);
        int i71 = ((iM58862 >>> 26) | (iM58862 << 6)) + i70;
        int iM58863 = C0663.m5882(((~i69) | i71) ^ i70, iArr2[11], -1120210379, i68);
        int i72 = ((iM58863 >>> 22) | (iM58863 << 10)) + i71;
        int iM58864 = C0663.m5882(((~i70) | i72) ^ i71, iArr2[2], 718787259, i69);
        int i73 = ((iM58864 >>> 17) | (iM58864 << 15)) + i72;
        int iM58865 = C0663.m5882(((~i71) | i73) ^ i72, iArr2[9], -343485551, i70);
        int[] iArr3 = this.f3151;
        iArr3[z3 ? 1 : 0] = iArr3[z3 ? 1 : 0] + i71;
        iArr3[1] = iArr3[1] + ((iM58865 >>> 11) | (iM58865 << 21)) + i73;
        iArr3[2] = iArr3[2] + i73;
        iArr3[3] = iArr3[3] + i72;
    }
}
