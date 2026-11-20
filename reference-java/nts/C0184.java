package nts;

import com.google.android.material.internal.ViewUtils;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;

public class C0184 {

    public boolean f623;

    public int[] f624;

    public int f625;

    public static final String f622 = C0558.m5481("+\u0011\n\u0004\u0004\u0012C\u0016\u0002\u0003O\u0002\b\u001a\f\u000f#\u000f\u0013\r\u0010\u000b\u000e\u000eO\f\u0014L\u0011\u000f\u001b\u0007ImirUoAkjEazlonx5}d6\u007f\u007fg2tqor|u~tQ\u0005W}p_\u007fdvuxnKqUQun%mt&oow\"da\u007fblendA\u0015", 0, 16, 117);

    public static final String f619 = C0558.m5481("+\u0011\n\u0004\u0004\u0012C\u0016\u0002\u0003O\u0002\b\u001a\f\u000f#\u000f\u0013\r\u0010\u000b\u000e\u000eO\f\u0014L\u0011\u000f\u001b\u0007ImirUoAkjEazlonx5}d6\u007f\u007fg2tqor|u~tQ\u0005W}p_\u007fdvuxnKqUQun%mt&oow\"da\u007fblendA\u0015", 16, 16, RNMBXStyleValue.InterpolationModeIdentity);

    public static final C0184 f620 = new C0184(0);

    public static final C0184 f621 = new C0184(1);

    public C0184() {
        this(1);
    }

    public static void m3570(C0184 c0184) throws C0537 {
        int i;
        int i2 = c0184.f625;
        if (i2 > 768) {
            throw new C0537(f622);
        }
        int i3 = 0;
        c0184.f624[i2] = 0;
        while (true) {
            i = c0184.f625;
            if (i3 >= i) {
                break;
            }
            int[] iArr = c0184.f624;
            int i4 = i3 + 1;
            iArr[i3] = (iArr[i3] >>> 1) | (iArr[i4] << 31);
            i3 = i4;
        }
        int i5 = i - 1;
        if (c0184.f624[i5] != 0 || i <= 1) {
            return;
        }
        c0184.f625 = i5;
    }

    public static void m3573(C0184 c0184, C0184 c0185, C0184 c0186) {
        if (m3586(c0184, c0185)) {
            m3578(c0186);
            return;
        }
        int i = c0184.f625;
        int i2 = c0185.f625;
        int[] iArr = c0186.f624;
        int[] iArr2 = c0184.f624;
        int[] iArr3 = c0185.f624;
        int i3 = 0;
        long j = 0;
        while (i3 < i2) {
            j = ((((long) iArr2[i3]) & 4294967295L) - (((long) iArr3[i3]) & 4294967295L)) + (j >> 32);
            iArr[i3] = (int) j;
            i3++;
        }
        boolean z = (j >> 32) != 0;
        while (i3 < i && z) {
            int i4 = iArr2[i3] - 1;
            iArr[i3] = i4;
            z = i4 == -1;
            i3++;
        }
        while (i3 < i) {
            iArr[i3] = iArr2[i3];
            i3++;
        }
        c0186.f625 = i;
        while (true) {
            int[] iArr4 = c0186.f624;
            int i5 = c0186.f625;
            int i6 = i5 - 1;
            if (iArr4[i6] != 0 || i5 <= 1) {
                break;
            } else {
                c0186.f625 = i6;
            }
        }
        c0186.f623 = true;
    }

    public static int m3574(C0184 c0184, int i) {
        int i2 = i - 1;
        return (c0184.f624[i2 >> 5] >>> (i2 & 31)) & 1;
    }

    public static void m3578(C0184 c0184) {
        System.arraycopy(f620.f624, 0, c0184.f624, 0, ViewUtils.EDGE_TO_EDGE_FLAGS);
        c0184.f625 = 1;
    }

    public static void m3579(C0184 c0184) throws C0537 {
        int i = c0184.f625;
        if (i >= 768) {
            throw new C0537(f622);
        }
        c0184.f624[i] = 0;
        while (i >= 1) {
            int[] iArr = c0184.f624;
            iArr[i] = (iArr[i] << 1) | (iArr[i - 1] >>> 31);
            i--;
        }
        int[] iArr2 = c0184.f624;
        iArr2[0] = iArr2[0] << 1;
        int i2 = c0184.f625;
        if (iArr2[i2] != 0) {
            c0184.f625 = i2 + 1;
        }
    }

    public static void m3582(C0184 c0184, int i) throws C0537 {
        if (i >= 768) {
            throw new C0537(f622);
        }
        AbstractC0264 abstractC0264M4237 = C0308.m4237();
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < i; i2++) {
            C0308.m4242(abstractC0264M4237, bArr, 0, 4);
            c0184.f624[i2] = (int) C0259.m3884(bArr, 0, 4);
        }
        c0184.f625 = i;
        c0184.f623 = true;
        System.arraycopy(f620.f624, 0, c0184.f624, i, 768 - i);
    }

    public static boolean m3584(int i, int i2) {
        return ((i < 0) ^ (i < i2)) ^ (i2 < 0);
    }

    public static void m3594(byte[] bArr, C0184 c0184) throws C0537 {
        m3593(bArr, 0, bArr.length, c0184);
    }

    public static boolean m3596(int i, int i2) {
        return ((i < 0) ^ (i > i2)) ^ (i2 < 0);
    }

    public C0184(int i) {
        int[] iArr = new int[ViewUtils.EDGE_TO_EDGE_FLAGS];
        this.f624 = iArr;
        iArr[0] = i;
        this.f625 = 1;
        this.f623 = true;
    }

    public static boolean m3576(C0184 c0184) {
        int i = c0184.f625;
        if (i >= 1 && (i != 1 || c0184.f624[0] != 0)) {
            for (int i2 = 0; i2 < c0184.f625; i2++) {
                if (c0184.f624[i2] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void m3593(byte[] bArr, int i, int i2, C0184 c0184) throws C0537 {
        int i3;
        if ((i2 >>> 2) > 768) {
            throw new C0537(f622);
        }
        c0184.f625 = i2 >> 2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i3 = c0184.f625;
            if (i5 >= i3) {
                break;
            }
            int i6 = i + i2;
            c0184.f624[i5] = (bArr[i6 - 1] & 255) | ((bArr[i6 - 4] & 255) << 24) | ((bArr[i6 - 3] & 255) << 16) | ((bArr[i6 - 2] & 255) << 8);
            i2 -= 4;
            i5++;
        }
        if (i2 > 0) {
            c0184.f625 = i3 + 1;
            c0184.f624[i3] = 0;
            while (i2 > 0) {
                int[] iArr = c0184.f624;
                int i7 = c0184.f625 - 1;
                int i8 = iArr[i7];
                iArr[i7] = i8 | ((bArr[(i + i2) - 1] & 255) << i4) | i8;
                i2--;
                i4 += 8;
            }
        }
        while (true) {
            int[] iArr2 = c0184.f624;
            int i9 = c0184.f625;
            int i10 = i9 - 1;
            if (iArr2[i10] != 0 || i9 <= 1) {
                return;
            } else {
                c0184.f625 = i10;
            }
        }
    }

    public static boolean m3577(C0184 c0184, C0184 c0185) {
        int i = c0184.f625;
        int i2 = c0185.f625;
        if (i != i2) {
            return i > i2;
        }
        int i3 = i - 1;
        while (i3 > 0 && c0184.f624[i3] == c0185.f624[i3]) {
            i3--;
        }
        return m3596(c0184.f624[i3], c0185.f624[i3]);
    }

    public static void m3571(C0184 c0184, C0184 c0185, C0184 c0186) throws C0537 {
        boolean z = c0184.f623;
        if (!z && c0185.f623) {
            c0184.f623 = true;
            m3590(c0184, c0185, c0186);
            c0184.f623 = false;
            c0186.f623 = false;
            return;
        }
        if (z && !c0185.f623) {
            c0185.f623 = true;
            m3590(c0184, c0185, c0186);
            c0185.f623 = false;
            c0186.f623 = true;
            return;
        }
        if (!z && !c0185.f623) {
            c0184.f623 = true;
            c0185.f623 = true;
            m3571(c0185, c0184, c0186);
            if (c0185 != c0186) {
                c0185.f623 = false;
            }
            if (c0184 != c0186) {
                c0184.f623 = false;
                return;
            }
            return;
        }
        if (m3577(c0185, c0184)) {
            m3573(c0185, c0184, c0186);
            c0186.f623 = false;
        } else {
            m3573(c0184, c0185, c0186);
        }
        if (c0184.f623 || c0185.f623) {
            return;
        }
        c0186.f623 = !c0186.f623;
    }

    public static void m3580(C0184 c0184, int i) throws C0537 {
        int i2;
        int i3;
        int i4;
        if (i == 0) {
            return;
        }
        int i5 = c0184.f625;
        if (i5 > 768) {
            throw new C0537(f622);
        }
        int i6 = i >>> 5;
        int i7 = i & 31;
        int i8 = 0;
        if (i6 > i5) {
            c0184.f625 = 1;
            c0184.f624[0] = 0;
            return;
        }
        if (i7 != 0) {
            while (true) {
                i2 = c0184.f625;
                i3 = i2 - i6;
                i4 = i3 - 1;
                if (i8 >= i4) {
                    break;
                }
                int[] iArr = c0184.f624;
                int i9 = i8 + i6;
                iArr[i8] = (iArr[i9] >>> i7) | (iArr[i9 + 1] << (32 - i7));
                i8++;
            }
            int[] iArr2 = c0184.f624;
            int i10 = iArr2[i2 - 1] >>> i7;
            iArr2[i4] = i10;
            if (i10 == 0) {
                c0184.f625 = i4;
                return;
            } else {
                c0184.f625 = i3;
                return;
            }
        }
        while (true) {
            int i11 = c0184.f625 - i6;
            if (i8 < i11) {
                int[] iArr3 = c0184.f624;
                iArr3[i8] = iArr3[i8 + i6];
                i8++;
            } else {
                c0184.f625 = i11;
                return;
            }
        }
    }

    public static void m3575(C0184 c0184, C0184 c0185, C0184 c0186) throws C0537 {
        int i;
        if (c0184.f625 <= 768 && (i = c0185.f625) <= 768 && i <= 768) {
            if (!m3576(c0185)) {
                C0184 c0187 = new C0184();
                m3578(c0186);
                for (int iM3587 = m3587(c0184); iM3587 >= 1; iM3587--) {
                    m3579(c0186);
                    int[] iArr = c0186.f624;
                    iArr[0] = iArr[0] | m3574(c0184, iM3587);
                    if (m3577(c0186, c0185)) {
                        m3571(c0186, c0185, c0187);
                        m3589(c0186, c0187);
                    } else if (m3586(c0186, c0185)) {
                        m3578(c0186);
                    }
                }
                return;
            }
            throw new C0537(f619);
        }
        throw new C0537(f622);
    }

    public static void m3583(C0184 c0184, C0184 c0185, C0184 c0186) {
        int i = 1;
        c0186.f623 = true;
        int[] iArr = c0184.f624;
        int[] iArr2 = c0185.f624;
        int[] iArr3 = c0186.f624;
        int i2 = c0184.f625;
        int i3 = c0185.f625;
        int i4 = 0;
        long j = 0;
        while (i4 < i3) {
            int i5 = i4;
            j = (((long) iArr[i4]) & 4294967295L) + (((long) iArr2[i4]) & 4294967295L) + (j >>> 32);
            iArr3[i5] = (int) j;
            i4 = i5 + 1;
            i = i;
        }
        int i6 = i;
        int i7 = i4;
        int i8 = (j >>> 32) != 0 ? i6 : 0;
        while (i7 < i2 && i8 != 0) {
            int i9 = iArr[i7] + 1;
            iArr3[i7] = i9;
            i8 = i9 == 0 ? i6 : 0;
            i7++;
        }
        while (i7 < i2) {
            iArr3[i7] = iArr[i7];
            i7++;
        }
        if (i8 != 0) {
            c0186.f624[i2] = i6;
            c0186.f625 = i2 + 1;
        } else {
            c0186.f625 = i2;
        }
        if (c0184.f623 || c0185.f623) {
            return;
        }
        c0186.f623 = false;
    }

    public static void m3588(C0184 c0184, int i, boolean z) throws C0537 {
        int i2;
        int i3 = c0184.f625;
        if (i3 > 768 || (i2 = i >>> 5) >= 768) {
            throw new C0537(f622);
        }
        if (z) {
            int[] iArr = c0184.f624;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        } else {
            int[] iArr2 = c0184.f624;
            iArr2[i2] = (~(1 << (i & 31))) & iArr2[i2];
        }
        if (i2 >= i3) {
            c0184.f625 = i2 + 1;
        }
    }

    public static void m3581(C0184 c0184, C0184 c0185, C0184 c0186) throws C0537 {
        if (c0184.f625 <= 768 && c0185.f625 <= 768) {
            if (!m3576(c0184) && !m3576(c0185)) {
                int i = c0184.f625;
                int i2 = c0185.f625;
                int[] iArr = c0184.f624;
                int[] iArr2 = c0185.f624;
                int[] iArr3 = c0186.f624;
                char c = 0;
                int i3 = 0;
                int i4 = 0;
                long j = 0;
                while (i3 < i2) {
                    long j2 = ((((long) iArr2[i3]) & 4294967295L) * (((long) iArr[c]) & 4294967295L)) + j;
                    iArr3[i4] = (int) j2;
                    j = j2 >>> 32;
                    i3++;
                    i4++;
                    c = 0;
                }
                iArr3[i4] = (int) j;
                int i5 = 1;
                while (i5 < i) {
                    int i6 = i5;
                    int i7 = 0;
                    long j3 = 0;
                    while (i7 < i2) {
                        long j4 = ((((long) iArr2[i7]) & 4294967295L) * (((long) iArr[i5]) & 4294967295L)) + (((long) iArr3[i6]) & 4294967295L) + j3;
                        iArr3[i6] = (int) j4;
                        j3 = j4 >>> 32;
                        i7++;
                        i6++;
                        i = i;
                        i2 = i2;
                    }
                    int i8 = i2;
                    iArr3[i8 + i5] = (int) j3;
                    i5++;
                    i = i;
                    i2 = i8;
                }
                c0186.f625 = i + i2;
                if (c0184.f623 ^ c0185.f623) {
                    c0186.f623 = false;
                } else {
                    c0186.f623 = true;
                }
                m3572(c0186);
                return;
            }
            m3578(c0186);
            return;
        }
        throw new C0537(f622);
    }

    public static void m3590(C0184 c0184, C0184 c0185, C0184 c0186) throws C0537 {
        int i;
        int i2 = c0184.f625;
        if (i2 <= 768 && (i = c0185.f625) <= 768) {
            boolean z = c0184.f623;
            if (z && !c0185.f623) {
                c0185.f623 = true;
                m3571(c0184, c0185, c0186);
                if (c0185 != c0186) {
                    c0185.f623 = false;
                    return;
                }
                return;
            }
            if (z || !c0185.f623) {
                if (i2 < i) {
                    m3583(c0185, c0184, c0186);
                    return;
                } else {
                    m3583(c0184, c0185, c0186);
                    return;
                }
            }
            c0184.f623 = true;
            m3571(c0185, c0184, c0186);
            if (c0184 != c0186) {
                c0184.f623 = false;
                return;
            }
            return;
        }
        throw new C0537(f622);
    }

    public static void m3572(C0184 c0184) throws C0537 {
        int i = c0184.f625;
        if (i <= 768) {
            int i2 = i - 1;
            while (i2 > 0 && c0184.f624[i2] == 0) {
                i2--;
            }
            c0184.f625 = i2 + 1;
            return;
        }
        throw new C0537(f622);
    }

    public static boolean m3586(C0184 c0184, C0184 c0185) {
        if (c0184.f625 != c0185.f625) {
            return false;
        }
        if ((c0184.f623 ^ c0185.f623) && (!m3576(c0184) || !m3576(c0185))) {
            return false;
        }
        for (int i = 0; i < c0184.f625; i++) {
            if (c0184.f624[i] != c0185.f624[i]) {
                return false;
            }
        }
        return true;
    }

    public static void m3595(C0184[] c0184Arr, C0184[] c0184Arr2) {
        C0184 c0184 = c0184Arr[0];
        c0184Arr[0] = c0184Arr2[0];
        c0184Arr2[0] = c0184;
    }

    public static boolean m3585(C0184 c0184) {
        return (c0184.f624[0] & 1) == 0;
    }

    public static boolean m3597(C0184 c0184, int i) {
        return i >= 0 && (c0184.f624[i >>> 5] & (1 << (i & 31))) != 0;
    }

    public static void m3589(C0184 c0184, C0184 c0185) {
        System.arraycopy(c0185.f624, 0, c0184.f624, 0, ViewUtils.EDGE_TO_EDGE_FLAGS);
        c0184.f625 = c0185.f625;
        c0184.f623 = c0185.f623;
    }

    public static int m3587(C0184 c0184) {
        int i = c0184.f625 - 1;
        while (i > 1 && c0184.f624[i] == 0) {
            i--;
        }
        int i2 = c0184.f624[i];
        int i3 = i << 5;
        while (m3596(i2, 0)) {
            i2 >>>= 1;
            i3++;
        }
        return i3;
    }

    public static void m3592(C0184 c0184, C0184 c0185, C0184 c0186, C0184 c0187) throws C0537 {
        char c;
        C0184 c0188;
        if (c0185.f625 <= 768 && c0184.f625 <= 768) {
            if (!m3576(c0185) && !m3576(c0184)) {
                C0184 c0189 = new C0184();
                C0184 c01810 = new C0184();
                C0184 c01811 = new C0184();
                C0184 c01812 = new C0184();
                C0184 c01813 = new C0184();
                C0184 c01814 = new C0184();
                C0184[] c0184Arr = {new C0184()};
                C0184[] c0184Arr2 = {new C0184()};
                C0184[] c0184Arr3 = {new C0184()};
                C0184[] c0184Arr4 = {new C0184()};
                C0184[] c0184Arr5 = {c01814};
                m3589(c0189, c0185);
                m3589(c01810, c0184);
                C0184[] c0184Arr6 = {c01813};
                char c2 = 0;
                C0184 c01815 = c0184Arr6[0];
                c01815.f625 = 1;
                c01815.f624[0] = 1;
                while (m3585(c0189) && m3585(c01810)) {
                    m3570(c0189);
                    m3570(c01810);
                    m3579(c0184Arr6[0]);
                }
                m3589(c01811, c0189);
                m3589(c01812, c01810);
                m3578(c0184Arr3[0]);
                m3578(c0184Arr4[0]);
                C0184 c01816 = c0184Arr5[0];
                c01816.f625 = 1;
                c01816.f624[0] = 1;
                while (true) {
                    if (m3585(c01811)) {
                        m3570(c01811);
                        if (m3585(c0184Arr2[c2]) && m3585(c0184Arr3[c2])) {
                            m3570(c0184Arr2[c2]);
                            m3570(c0184Arr3[c2]);
                        } else {
                            m3590(c0184Arr2[c2], c01810, c0184Arr[c2]);
                            m3595(c0184Arr2, c0184Arr);
                            m3570(c0184Arr2[c2]);
                            m3571(c0184Arr3[c2], c0189, c0184Arr[c2]);
                            m3595(c0184Arr3, c0184Arr);
                            m3570(c0184Arr3[c2]);
                        }
                    } else {
                        while (m3585(c01812)) {
                            m3570(c01812);
                            if (m3585(c0184Arr4[c2]) && m3585(c0184Arr5[c2])) {
                                m3570(c0184Arr4[c2]);
                                m3570(c0184Arr5[c2]);
                            } else {
                                m3590(c0184Arr4[c2], c01810, c0184Arr[c2]);
                                m3595(c0184Arr4, c0184Arr);
                                m3570(c0184Arr4[c2]);
                                m3571(c0184Arr5[c2], c0189, c0184Arr[c2]);
                                m3595(c0184Arr5, c0184Arr);
                                m3570(c0184Arr5[c2]);
                            }
                        }
                        if (!m3577(c01811, c01812) && !m3586(c01811, c01812)) {
                            m3571(c01812, c01811, c01812);
                            c = c2;
                            m3571(c0184Arr4[c2], c0184Arr2[c2], c0184Arr[c]);
                            m3595(c0184Arr4, c0184Arr);
                            m3571(c0184Arr5[c], c0184Arr3[c], c0184Arr[c]);
                            m3595(c0184Arr5, c0184Arr);
                        } else {
                            c = c2;
                            m3571(c01811, c01812, c01811);
                            m3571(c0184Arr2[c], c0184Arr4[c], c0184Arr[c]);
                            m3595(c0184Arr2, c0184Arr);
                            m3571(c0184Arr3[c], c0184Arr5[c], c0184Arr[c]);
                            m3595(c0184Arr3, c0184Arr);
                        }
                        if (m3576(c01811)) {
                            break;
                        } else {
                            c2 = c;
                        }
                    }
                }
                m3581(c0184Arr6[c], c01812, c0184Arr[c]);
                m3595(c0184Arr6, c0184Arr);
                C0184 c01817 = c0184Arr6[c];
                if (c01817 != c01813) {
                    c01813 = c01817;
                }
                while (true) {
                    c0188 = c0184Arr5[c];
                    if (c0188.f623) {
                        break;
                    }
                    m3590(c0188, c0185, c0184Arr[c]);
                    m3595(c0184Arr, c0184Arr5);
                }
                if (c01814 != c0188) {
                    c01814 = c0188;
                }
                m3589(c0186, c01813);
                m3589(c0187, c01814);
                return;
            }
            throw new C0537(f619);
        }
        throw new C0537(f622);
    }

    public static void m3591(C0184 c0184, C0184 c0185, C0184 c0186, int i, int i2, C0184 c0187) throws C0537 {
        int i3;
        C0184 c0188 = c0184;
        C0184 c0189 = c0185;
        if (c0188.f625 <= 768 && c0189.f625 <= 768 && c0186.f625 <= 768 && i2 < 768) {
            if (!m3576(c0186)) {
                char c = 0;
                int i4 = 0;
                while (true) {
                    i3 = i2 + 1;
                    if (i4 >= i3) {
                        break;
                    }
                    c0187.f624[i4] = 0;
                    i4++;
                }
                int i5 = c0189.f624[0];
                int i6 = 0;
                while (i6 < i2) {
                    int i7 = c0188.f624[i6];
                    int i8 = c0187.f624[c];
                    int i9 = ((i7 * i5) + i8) * i;
                    long j = ((long) i7) & 4294967295L;
                    long j2 = (((long) c0189.f624[c]) & 4294967295L) * j;
                    char c2 = c;
                    int i10 = i5;
                    long j3 = ((long) i9) & 4294967295L;
                    long j4 = (((long) c0186.f624[c2]) & 4294967295L) * j3;
                    int i11 = i6;
                    long j5 = ((long) 0) & 4294967295L;
                    long j6 = (j2 & 4294967295L) + (j4 & 4294967295L) + (((long) i8) & 4294967295L) + j5;
                    char c3 = CardNumberHelper.DIVIDER;
                    long j7 = (j6 >>> 32) + (j2 >>> 32) + (j4 >>> 32) + j5;
                    int i12 = (int) j7;
                    int i13 = (int) (j7 >>> 32);
                    int i14 = 1;
                    while (i14 < i2) {
                        long j8 = (((long) c0189.f624[i14]) & 4294967295L) * j;
                        char c4 = c3;
                        long j9 = (((long) c0186.f624[i14]) & 4294967295L) * j3;
                        int[] iArr = c0187.f624;
                        long j10 = (j8 & 4294967295L) + (j9 & 4294967295L) + (((long) iArr[i14]) & 4294967295L) + (((long) i12) & 4294967295L);
                        iArr[i14 - 1] = (int) j10;
                        long j11 = (j10 >>> c4) + (j8 >>> c4) + (j9 >>> c4) + (((long) i13) & 4294967295L);
                        i12 = (int) j11;
                        i13 = (int) (j11 >>> c4);
                        i14++;
                        c0189 = c0185;
                        c3 = c4;
                    }
                    int[] iArr2 = c0187.f624;
                    long j12 = (((long) iArr2[i2]) & 4294967295L) + (((long) i12) & 4294967295L);
                    iArr2[i2 - 1] = (int) j12;
                    iArr2[i2] = (int) ((j12 >>> c3) + (((long) i13) & 4294967295L));
                    i6 = i11 + 1;
                    c0188 = c0184;
                    c0189 = c0185;
                    i5 = i10;
                    c = 0;
                }
                c0187.f625 = i3;
                m3572(c0187);
                if (m3577(c0187, c0186)) {
                    m3571(c0187, c0186, c0187);
                }
                c0187.f625 = i2;
                return;
            }
            throw new C0537(f619);
        }
        throw new C0537(f622);
    }
}
