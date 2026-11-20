package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.primitives.SignedBytes;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Utf8;

public class C0163 extends AbstractC0645 {

    public static final byte[] f515;

    public static final String f517;

    public static final String f518;

    public static final byte[] f520;

    public static final String f521;

    public static byte[] f522;

    public static final byte[] f523;

    public static final byte[] f525;

    public static final String f526;

    public static final String f528;

    public static final String f529;

    public static final String f516 = C0642.m5844(0, 17, 122);

    public static final String f519 = C0642.m5844(17, 4, 80);

    public static final String f524 = C0642.m5844(21, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);

    public static final String f527 = C0642.m5844(25, 7, 7);

    public C0158 f532 = new C0158();

    public int f530 = 0;

    public boolean f531 = false;

    public boolean f534 = false;

    public byte[] f536 = f522;

    public boolean f533 = false;

    public boolean f535 = false;

    static {
        C0642.m5844(32, 16, 40);
        f518 = C0642.m5844(48, 8, 14);
        C0642.m5844(56, 10, 38);
        C0642.m5844(66, 10, 102);
        C0642.m5844(76, 10, 55);
        C0642.m5844(86, 5, 40);
        C0642.m5844(91, 39, 58);
        f522 = new byte[0];
        f528 = C0642.m5844(1948, 24, 104);
        f517 = C0642.m5844(1972, 31, 10);
        C0642.m5844(2003, 31, 15);
        f529 = C0642.m5844(2034, 30, 47);
        f526 = C0642.m5844(2064, 23, 95);
        f521 = C0642.m5844(2087, 28, WebSocketProtocol.PAYLOAD_SHORT);
        f523 = new byte[]{83, 105, 103, 69, 100, 50, 53, 53, 49, 57, 32, 110, 111, 32, 69, 100, 50, 53, 53, 49, 57, 32, 99, 111, 108, 108, 105, 115, 105, 111, 110, 115, 0};
        f515 = new byte[]{83, 105, 103, 69, 100, 50, 53, 53, 49, 57, 32, 110, 111, 32, 69, 100, 50, 53, 53, 49, 57, 32, 99, 111, 108, 108, 105, 115, 105, 111, 110, 115, 1};
        f520 = new byte[]{83, 105, 103, 69, 100, 52, 52, 56, 0};
        f525 = new byte[]{83, 105, 103, 69, 100, 52, 52, 56, 1};
    }

    public static byte[] m3472(byte[] bArr) {
        int length = bArr.length / 2;
        byte[] bArr2 = new byte[length];
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(bArr, length, bArr3, 0, length);
        return C0308.m4266(bArr2, bArr3);
    }

    public byte[] m3477(byte[] bArr) throws C0537 {
        C0184 c0184;
        int i;
        C0184 c0185;
        C0184 c0186;
        C0184 c0187;
        C0184 c0188;
        C0184 c0189;
        C0184 c01810;
        C0184 c01811;
        if (this.f532.m3439()) {
            if (this.f533) {
                return m3486(bArr);
            }
            throw new C0414(C0642.m5844(237, 39, 36));
        }
        if (bArr == null) {
            throw new C0304(C0642.m5844(276, 7, 75));
        }
        C0158 c0158 = this.f532;
        if (c0158.f490 == null || c0158.f487 == null) {
            throw new C0537(C0642.m5844(283, 37, 27));
        }
        if (c0158.f491 == null) {
            throw new C0537(C0642.m5844(320, 34, 70));
        }
        if (this.f535) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5844(924, 16, 80));
        }
        C0253 c0253M3435 = c0158.m3435();
        byte[] bArr2 = c0253M3435.f1226;
        byte[] bArr3 = c0253M3435.f1239;
        byte[] bArr4 = this.f532.f491;
        byte[] bArr5 = c0253M3435.f1235;
        byte[] bArr6 = c0253M3435.f1227;
        byte[] bArr7 = c0253M3435.f1233;
        byte[] bArr8 = c0253M3435.f1225;
        int i2 = c0253M3435.f1237;
        int i3 = c0253M3435.f1231;
        if (bArr2 == null || bArr2.length == 0 || bArr3 == null || bArr3.length == 0 || bArr4 == null || bArr4.length == 0 || bArr5 == null || bArr5.length == 0 || bArr6 == null || bArr6.length == 0 || bArr7 == null || bArr7.length == 0 || bArr8 == null || bArr8.length == 0) {
            throw new C0537(C0642.m5844(1071, 17, 95));
        }
        m3482();
        C0184 c01812 = new C0184();
        int i4 = i2;
        C0184 c01813 = new C0184();
        C0184 c01814 = new C0184();
        C0184 c01815 = new C0184();
        C0184 c01816 = new C0184();
        C0184 c01817 = new C0184();
        int i5 = i3;
        C0184 c01818 = new C0184();
        C0184 c01819 = new C0184();
        C0184 c01820 = new C0184();
        C0184 c01821 = new C0184();
        C0184 c01822 = new C0184();
        char c = 17;
        C0184 c01823 = new C0184();
        C0184 c01824 = new C0184();
        C0184 c01825 = new C0184();
        C0184 c01826 = new C0184();
        int i6 = 0;
        C0184.m3593(bArr3, 0, bArr3.length, c01818);
        C0184.m3593(bArr2, 0, bArr2.length, c01817);
        C0253.m3802(bArr7, c01818, c01813);
        C0253.m3802(bArr8, c01818, c01814);
        C0253.m3802(bArr5, c01818, c01815);
        C0253.m3802(bArr6, c01818, c01816);
        int iM3587 = (C0184.m3587(c01817) + 7) >> 3;
        C0184.m3593(bArr, 0, bArr.length, c01812);
        C0184.m3593(bArr4, 0, bArr4.length, c01819);
        int i7 = 1;
        if (this.f530 == 1 && this.f534) {
            c0184 = c01826;
            if (C0184.m3577(c01812, c01817)) {
                C0184.m3575(c01812, c01817, c0184);
                C0184.m3589(c01812, c0184);
            }
        } else {
            c0184 = c01826;
            int length = (bArr.length << 3) - C0184.m3587(c01817);
            if (length > 0) {
                C0184.m3580(c01812, length);
            }
        }
        while (true) {
            C0184 c01827 = c01824;
            C0184.m3582(c01827, (iM3587 + 3) >> 2);
            C0184.m3575(c01827, c01817, c0184);
            if (C0184.m3576(c0184)) {
                int i8 = c0184.f625;
                if (i8 > 768) {
                    throw new C0537(C0184.f622);
                }
                c01827.f625 = i8;
                if (c0184.f625 == 0) {
                    i = i6;
                    c0185 = c01813;
                    c0186 = c01816;
                } else {
                    int[] iArr = c0184.f624;
                    i = i6;
                    c0185 = c01813;
                    c0186 = c01816;
                    if ((((long) iArr[i]) & 4294967295L) > 4294967295L - (((long) i7) & 4294967295L)) {
                        c01827.f624[i] = iArr[i] + i7;
                        int i9 = i7;
                        while (i9 < c0184.f625 && c0184.f624[i9] == -1) {
                            c01827.f624[i9] = i;
                            i9++;
                        }
                        if (i9 < c0184.f625) {
                            c01827.f624[i9] = c0184.f624[i9] + i7;
                        } else {
                            int i10 = c01827.f625;
                            if (i10 >= 768) {
                                throw new C0537(C0184.f622);
                            }
                            c01827.f624[i9] = i7;
                            c01827.f625 = i10 + 1;
                        }
                    } else {
                        c01827.f624[i] = iArr[i] + i7;
                        for (int i11 = i7; i11 < c0184.f625; i11++) {
                            c01827.f624[i11] = c0184.f624[i11];
                        }
                    }
                }
            } else {
                i = i6;
                c0185 = c01813;
                c0186 = c01816;
                C0184.m3589(c01827, c0184);
            }
            int i12 = i5;
            if (i12 == 24577) {
                c01813 = c0185;
                C0184 c01828 = c01818;
                c0188 = c01817;
                C0261.m3933(c01813, c01814, c01828, c01815, c01827, i4, c01822, c01823);
                c0187 = c01828;
                c01810 = c01822;
                c01811 = c01823;
                c0189 = c01827;
            } else {
                C0184 c01829 = c01817;
                c0187 = c01818;
                c0188 = c01829;
                c01813 = c0185;
                if (i12 != 24578) {
                    throw new C0537(C0642.m5844(1088, 17, 91));
                }
                C0184 c01830 = c01815;
                C0184 c01831 = c01823;
                C0184 c01832 = c01822;
                int i13 = i4;
                C0261.m3934(c01813, c01814, c01830, c0186, c0187, c01827, i13, c01832, c01831);
                c0189 = c01827;
                i4 = i13;
                c01810 = c01832;
                c01815 = c01830;
                c01811 = c01831;
            }
            C0184 c01833 = c01820;
            C0184.m3575(c01810, c0188, c01833);
            if (!C0184.m3576(c01833)) {
                C0184.m3592(c0189, c0188, c0184, c01825);
                C0184.m3581(c01819, c01833, c01811);
                C0184.m3590(c01811, c01812, c01810);
                C0184.m3581(c01810, c01825, c01811);
                C0184.m3575(c01811, c0188, c01821);
                byte[] bArrM3942 = C0261.m3942(c01833, iM3587);
                byte[] bArrM3943 = C0261.m3942(c01821, iM3587);
                if (this.f530 != 0) {
                    return C0308.m4266(bArrM3942, bArrM3943);
                }
                byte[] bArr9 = new byte[bArrM3942.length + bArrM3943.length];
                int i14 = i;
                System.arraycopy(bArrM3942, i14, bArr9, i14, bArrM3942.length);
                System.arraycopy(bArrM3943, i14, bArr9, bArrM3942.length, bArrM3943.length);
                return bArr9;
            }
            C0184 c01834 = c0187;
            c01817 = c0188;
            c01818 = c01834;
            i5 = i12;
            c01816 = c0186;
            c01824 = c0189;
            c01820 = c01833;
            c01822 = c01810;
            c01823 = c01811;
            i6 = i;
            i7 = 1;
            c = 17;
            c01812 = c01812;
        }
    }

    public void m3478(C0158 c0158) throws C0537 {
        if (!c0158.m3438(this.f531)) {
            throw new C0537(C0642.m5844(200, 37, 96));
        }
        this.f532.m3445(c0158, true);
    }

    public void m3483(int i) {
        this.f532.f488 = i;
    }

    public C0158 m3481(boolean z) throws C0537 {
        C0158 c0158;
        C0184 c0184;
        int iM3801;
        C0184 c0185;
        C0184 c0186;
        if (!this.f532.m3432()) {
            if (this.f535) {
                if (this.f532.m3440()) {
                    throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5844(956, 16, 39));
                }
                throw new C0414(C0642.m5844(173, 27, 2));
            }
            int i = this.f532.f488;
            if (i == 0 || i == 1 || i == 2 || i == 7 || i == 8 || i == 9 || i == 10) {
                c0158 = new C0158();
                c0158.f488 = i;
                C0253 c0253M3435 = c0158.m3435();
                C0184 c0187 = new C0184();
                C0184 c0188 = new C0184();
                C0184 c0189 = new C0184();
                C0184 c01810 = new C0184();
                C0184 c01811 = new C0184();
                C0184 c01812 = new C0184();
                C0184 c01813 = new C0184();
                C0184 c01814 = new C0184();
                C0184 c01815 = new C0184();
                C0184 c01816 = new C0184();
                byte[] bArr = c0253M3435.f1239;
                C0184.m3593(bArr, 0, bArr.length, c01812);
                byte[] bArr2 = c0253M3435.f1226;
                C0184.m3593(bArr2, 0, bArr2.length, c01811);
                C0253.m3802(c0253M3435.f1233, c01812, c0187);
                C0253.m3802(c0253M3435.f1225, c01812, c0188);
                C0253.m3802(c0253M3435.f1235, c01812, c0189);
                C0253.m3802(c0253M3435.f1227, c01812, c01810);
                do {
                    C0184.m3582(c01816, c01811.f625);
                    C0184.m3575(c01816, c01811, c01813);
                } while (C0184.m3576(c01813));
                int iM3802 = (C0253.m3801(c0253M3435.f1226) + 7) >>> 3;
                int i2 = c0253M3435.f1231;
                if (i2 == 24577) {
                    iM3801 = (C0253.m3801(c0253M3435.f1239) + 7) >>> 3;
                    c0185 = c01814;
                    c0186 = c01815;
                    C0261.m3933(c0187, c0188, c01812, c0189, c01813, c0253M3435.f1237, c0185, c0186);
                    c0184 = c01813;
                } else {
                    c0184 = c01813;
                    if (i2 != 24578) {
                        throw new C0537(C0642.m5840(134, 17, 72));
                    }
                    iM3801 = (C0253.m3801(c0253M3435.f1239) + 6) >>> 3;
                    C0261.m3934(c0187, c0188, c0189, c01810, c01812, c0184, c0253M3435.f1237, c01814, c01815);
                    c0185 = c01814;
                    c0186 = c01815;
                }
                c0158.f491 = C0261.m3942(c0184, iM3802);
                c0158.f490 = C0261.m3942(c0185, iM3801);
                c0158.f487 = C0261.m3942(c0186, iM3801);
            } else {
                c0158 = new C0158();
                c0158.f488 = i;
                int iM3427 = c0158.m3427();
                c0158.f486 = new byte[iM3427];
                c0158.f485 = new byte[iM3427];
                C0308.m4226(c0158.f486);
                if (c0158.m3433()) {
                    byte[] bArr3 = c0158.f486;
                    bArr3[0] = (byte) (bArr3[0] & 248);
                    byte b = (byte) (bArr3[31] | SignedBytes.MAX_POWER_OF_TWO);
                    bArr3[31] = b;
                    bArr3[31] = (byte) (b & 127);
                } else if (c0158.m3436()) {
                    byte[] bArr4 = c0158.f486;
                    bArr4[0] = (byte) (bArr4[0] & 252);
                    bArr4[55] = (byte) (bArr4[55] | 128);
                }
                if (c0158.m3431()) {
                    C0158.m3425(c0158.f486, c0158.f485);
                } else if (c0158.m3434()) {
                    C0158.m3421(c0158.f486, c0158.f485);
                } else if (c0158.m3433()) {
                    C0158.m3416(c0158.f486, c0158.f485);
                } else {
                    if (!c0158.m3436()) {
                        throw new C0414(C0642.m5840(151, 24, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                    }
                    C0158.m3418(c0158.f486, c0158.f485);
                }
            }
            this.f532 = c0158;
        }
        C0158 c0159 = new C0158();
        c0159.m3445(this.f532, z);
        return c0159;
    }

    public boolean m3480(byte[] bArr, byte[] bArr2) throws C0537 {
        C0184 c0184;
        C0184 c0185;
        if (this.f532.m3439()) {
            if (this.f533) {
                return m3485(bArr, bArr2);
            }
            throw new C0414(C0642.m5844(354, 39, 99));
        }
        if (bArr == null) {
            throw new C0304(C0642.m5844(393, 7, 80));
        }
        if (bArr2 != null) {
            C0158 c0158 = this.f532;
            if (c0158.f490 != null && c0158.f487 != null) {
                if (!this.f535) {
                    C0253 c0253M3435 = c0158.m3435();
                    m3482();
                    C0620 c0620 = new C0620();
                    boolean zM4251 = C0308.m4251(bArr2, c0620);
                    if (!zM4251) {
                        int length = bArr2.length >> 1;
                        int length2 = bArr2.length - length;
                        if (length2 <= 0) {
                            return false;
                        }
                        c0620.f3436 = new byte[length];
                        c0620.f3435 = new byte[length2];
                        System.arraycopy(bArr2, 0, c0620.f3436, 0, length);
                        System.arraycopy(bArr2, length, c0620.f3435, 0, length2);
                    }
                    byte[] bArr3 = c0253M3435.f1226;
                    byte[] bArr4 = c0253M3435.f1239;
                    byte[] bArr5 = c0253M3435.f1235;
                    byte[] bArr6 = c0253M3435.f1227;
                    byte[] bArr7 = c0253M3435.f1233;
                    byte[] bArr8 = c0253M3435.f1225;
                    C0158 c0159 = this.f532;
                    byte[] bArr9 = c0159.f490;
                    byte[] bArr10 = c0159.f487;
                    int i = c0253M3435.f1237;
                    int i2 = c0253M3435.f1231;
                    if (bArr3 != null && bArr3.length != 0 && bArr4 != null && bArr4.length != 0 && bArr5 != null && bArr5.length != 0 && bArr6 != null && bArr6.length != 0 && bArr7 != null && bArr7.length != 0 && bArr8 != null && bArr8.length != 0 && bArr9 != null && bArr9.length != 0 && bArr10 != null && bArr10.length != 0) {
                        C0184 c0186 = new C0184();
                        C0184 c0187 = new C0184();
                        C0184 c0188 = new C0184();
                        C0184 c0189 = new C0184();
                        C0184 c01810 = new C0184();
                        C0184 c01811 = new C0184();
                        C0184 c01812 = new C0184();
                        C0184 c01813 = new C0184();
                        C0184 c01814 = new C0184();
                        C0184 c01815 = new C0184();
                        C0184 c01816 = new C0184();
                        C0184 c01817 = new C0184();
                        C0184 c01818 = new C0184();
                        C0184 c01819 = new C0184();
                        C0184 c01820 = new C0184();
                        C0184 c01821 = new C0184();
                        C0184 c01822 = new C0184();
                        C0184 c01823 = new C0184();
                        C0184 c01824 = new C0184();
                        C0184.m3593(bArr4, 0, bArr4.length, c01812);
                        C0184.m3593(bArr3, 0, bArr3.length, c01811);
                        C0253.m3802(bArr7, c01812, c0187);
                        C0253.m3802(bArr8, c01812, c0188);
                        C0253.m3802(bArr5, c01812, c0189);
                        C0253.m3802(bArr6, c01812, c01810);
                        int iM3587 = (C0184.m3587(c01812) + 7) >> 3;
                        if (bArr9.length <= iM3587 && bArr10.length <= iM3587) {
                            C0253.m3802(bArr9, c01812, c01813);
                            C0253.m3802(bArr10, c01812, c01814);
                            C0184.m3593(bArr, 0, bArr.length, c0186);
                            byte[] bArr11 = c0620.f3436;
                            C0184.m3593(bArr11, 0, bArr11.length, c01815);
                            byte[] bArr12 = c0620.f3435;
                            C0184.m3593(bArr12, 0, bArr12.length, c01816);
                            if (!zM4251 && this.f534) {
                                c0184 = c01824;
                                if (C0184.m3577(c0186, c01811)) {
                                    C0184.m3575(c0186, c01811, c0184);
                                    C0184.m3589(c0186, c0184);
                                }
                            } else {
                                c0184 = c01824;
                                int length3 = (bArr.length << 3) - C0184.m3587(c01811);
                                if (length3 > 0) {
                                    C0184.m3580(c0186, length3);
                                }
                            }
                            if (!C0184.m3577(c01815, c01811) && !C0184.m3577(c01816, c01811) && !C0184.m3576(c01815) && !C0184.m3576(c01816)) {
                                C0184.m3592(c01816, c01811, c0184, c01817);
                                C0184.m3581(c01817, c0186, c0184);
                                C0184.m3575(c0184, c01811, c01822);
                                C0184.m3581(c01817, c01815, c0184);
                                C0184.m3575(c0184, c01811, c01823);
                                if (i2 == 24577) {
                                    C0261.m3933(c0187, c0188, c01812, c0189, c01822, i, c01818, c01819);
                                    c0185 = c0187;
                                    C0261.m3933(c01813, c01814, c01812, c0189, c01823, i, c01820, c01821);
                                    if (c01818.f625 == 0) {
                                        C0184.m3589(c0185, c01820);
                                        C0184.m3589(c0188, c01821);
                                    } else if (c01820.f625 == 0) {
                                        C0184.m3589(c0185, c01818);
                                        C0184.m3589(c0188, c01819);
                                    } else {
                                        C0184 c01825 = new C0184();
                                        C0184 c01826 = new C0184();
                                        C0184 c01827 = new C0184();
                                        C0184 c01828 = new C0184();
                                        C0184 c01829 = new C0184();
                                        C0184 c01830 = new C0184();
                                        C0261.m3910(c01820, c01818, c01812, c01826);
                                        C0261.m3910(c01821, c01819, c01812, c01827);
                                        if (C0261.m3920(c01826, c01812)) {
                                            if (C0261.m3920(c01827, c01812) && c01818.f625 != 0 && !C0261.m3920(c01819, c01812)) {
                                                C0184 c01831 = new C0184();
                                                C0184 c01832 = new C0184();
                                                C0184 c01833 = new C0184();
                                                C0184 c01834 = new C0184();
                                                C0184 c01835 = new C0184();
                                                C0261.m3932(c01818, c01818, c01812, c01834, c01835, i, c01831);
                                                C0261.m3913(c01831, c01831, c01812, c01832);
                                                C0261.m3913(c01832, c01831, c01812, c01833);
                                                C0261.m3913(c01833, c0189, c01812, c01832);
                                                C0261.m3913(c01819, c01819, c01812, c01831);
                                                C0261.m3916(c01832, c01831, c01812, c01833);
                                                C0261.m3932(c01833, c01833, c01812, c01834, c01835, i, c01831);
                                                C0261.m3913(c01818, c01818, c01812, c01832);
                                                C0261.m3910(c01831, c01832, c01812, c0185);
                                                C0261.m3910(c01818, c0185, c01812, c01831);
                                                C0261.m3932(c01833, c01831, c01812, c01834, c01835, i, c01832);
                                                C0261.m3910(c01832, c01819, c01812, c0188);
                                            } else {
                                                c0185.f625 = 0;
                                            }
                                        } else {
                                            C0261.m3916(c01827, c01826, c01812, c01828);
                                            C0261.m3932(c01828, c01828, c01812, c01829, c01830, i, c01826);
                                            C0261.m3910(c01826, c01818, c01812, c01825);
                                            C0261.m3910(c01825, c01820, c01812, c0185);
                                            C0261.m3910(c01818, c0185, c01812, c01826);
                                            C0261.m3932(c01828, c01826, c01812, c01829, c01830, i, c01825);
                                            C0261.m3910(c01825, c01819, c01812, c0188);
                                        }
                                    }
                                } else {
                                    c0185 = c0187;
                                    if (i2 == 24578) {
                                        C0261.m3934(c0185, c0188, c0189, c01810, c01812, c01822, i, c01818, c01819);
                                        C0261.m3934(c01813, c01814, c0189, c01810, c01812, c01823, i, c01820, c01821);
                                        if (c01820.f625 == 0) {
                                            C0184.m3589(c0185, c01818);
                                            C0184.m3589(c0188, c01819);
                                        } else if (c01818.f625 == 0) {
                                            C0184.m3589(c0185, c01820);
                                            C0184.m3589(c0188, c01821);
                                        } else {
                                            C0184 c01836 = new C0184();
                                            C0184 c01837 = new C0184();
                                            C0184 c01838 = new C0184();
                                            C0184 c01839 = new C0184();
                                            if (C0261.m3911(c01818, c01820, c01812) == 0) {
                                                if (C0261.m3911(c01819, c01821, c01812) == 0 && c01818.f625 != 0 && !C0261.m3920(c01818, c01812)) {
                                                    C0184 c01840 = new C0184();
                                                    C0184 c01841 = new C0184();
                                                    C0184 c01842 = new C0184();
                                                    C0261.m3918(c01819, c01818, c01812, c01840);
                                                    C0261.m3929(c01818, c01840, c01812, c01840);
                                                    C0261.m3926(c01840, c01812, i, c01841);
                                                    C0261.m3929(c01840, c01841, c01812, c0185);
                                                    C0261.m3929(c0185, c0189, c01812, c0185);
                                                    C0261.m3926(c01818, c01812, i, c0188);
                                                    C0261.m3928(c01840, c0185, c01812, i, c01842, c01841);
                                                    C0261.m3929(c0188, c01841, c01812, c0188);
                                                    C0261.m3929(c0188, c0185, c01812, c0188);
                                                } else {
                                                    c0185.f625 = 0;
                                                }
                                            } else {
                                                C0261.m3929(c01818, c01820, c01812, c01836);
                                                C0261.m3929(c01819, c01821, c01812, c01837);
                                                C0261.m3918(c01837, c01836, c01812, c01838);
                                                C0261.m3926(c01838, c01812, i, c0185);
                                                C0261.m3929(c0185, c01838, c01812, c0185);
                                                C0261.m3929(c0185, c01836, c01812, c0185);
                                                C0261.m3929(c0185, c0189, c01812, c0185);
                                                C0261.m3929(c01818, c0185, c01812, c01836);
                                                C0261.m3928(c01838, c01836, c01812, i, c01839, c0188);
                                                C0261.m3929(c0188, c0185, c01812, c0188);
                                                C0261.m3929(c0188, c01819, c01812, c0188);
                                            }
                                        }
                                    } else {
                                        throw new C0537(C0642.m5844(1122, 17, 82));
                                    }
                                }
                                if (c0185.f625 != 0) {
                                    C0184.m3575(c0185, c01811, c0184);
                                    return C0184.m3586(c0184, c01815);
                                }
                            }
                        }
                        return false;
                    }
                    throw new C0537(C0642.m5844(1105, 17, 118));
                }
                m3474(bArr2, c0158.f488);
                throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5844(940, 16, 37));
            }
            throw new C0537(C0642.m5844(412, 37, 91));
        }
        throw new C0304(C0642.m5844(400, 12, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
    }

    public final void m3484(C0158 c0158) throws C0537 {
        if (this.f532.m3428()) {
            if (c0158 != null && c0158.m3432()) {
                if (this.f532.f488 != c0158.f488) {
                    throw new C0537(C0642.m5844(630, 53, 117));
                }
                return;
            }
            throw new C0537(C0642.m5844(TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 24, 114));
        }
        throw new C0537(C0642.m5844(559, 47, 25));
    }

    public final void m3482() throws C0537 {
        C0253 c0253M3435;
        int i;
        int i2;
        int i3;
        if (this.f532.m3435() != null && (i = (c0253M3435 = this.f532.m3435()).f1234) >= 0 && i <= 80 && (((i2 = c0253M3435.f1231) == 24577 || i2 == 24578) && (i3 = c0253M3435.f1237) >= 24832 && i3 <= 24842 && c0253M3435.f1235.length != 0 && c0253M3435.f1227.length != 0 && c0253M3435.f1239.length != 0 && c0253M3435.f1226.length != 0 && c0253M3435.f1233.length != 0 && c0253M3435.f1225.length != 0)) {
            if (!this.f532.m3438(this.f531)) {
                throw new C0537(C0642.m5844(1053, 18, 97));
            }
            return;
        }
        throw new C0537(C0642.m5844(1029, 24, 4));
    }

    public static byte[] m3476(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws C0537 {
        byte[] bArr6 = new byte[bArr.length + bArr2.length + bArr3.length + (bArr4 != null ? bArr4.length : 0) + (bArr5 != null ? bArr5.length : 0)];
        System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr6, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr6, length2, bArr3.length);
        int length3 = length2 + bArr3.length;
        if (bArr4 != null) {
            System.arraycopy(bArr4, 0, bArr6, length3, bArr4.length);
            length3 += bArr4.length;
        }
        if (bArr5 != null) {
            System.arraycopy(bArr5, 0, bArr6, length3, bArr5.length);
        }
        return bArr6;
    }

    public static byte[] m3475(byte[] bArr, C0158 c0158, boolean z) throws C0537 {
        C0184 c0184;
        if (c0158.m3433()) {
            byte[] bArr2 = new byte[32];
            C0429.m4774(bArr, c0158.f485, bArr2);
            return bArr2;
        }
        if (c0158.m3436()) {
            byte[] bArr3 = new byte[56];
            C0429.m4730(bArr, c0158.f485, bArr3);
            return bArr3;
        }
        C0253 c0253M3435 = c0158.m3435();
        byte[] bArr4 = c0158.f490;
        byte[] bArr5 = c0158.f487;
        byte[] bArr6 = c0253M3435.f1226;
        byte[] bArr7 = c0253M3435.f1239;
        byte[] bArr8 = c0253M3435.f1235;
        byte[] bArr9 = c0253M3435.f1227;
        int i = c0253M3435.f1237;
        int i2 = c0253M3435.f1231;
        C0184 c0185 = new C0184();
        C0184 c0186 = new C0184();
        C0184 c0187 = new C0184();
        C0184 c0188 = new C0184();
        C0184 c0189 = new C0184();
        C0184 c01810 = new C0184();
        C0184 c01811 = new C0184();
        C0184 c01812 = new C0184();
        C0184 c01813 = new C0184();
        C0184.m3593(bArr4, 0, bArr4.length, c0185);
        C0184.m3593(bArr5, 0, bArr5.length, c0186);
        C0184.m3593(bArr6, 0, bArr6.length, c0189);
        C0184.m3593(bArr, 0, bArr.length, c01811);
        C0184.m3593(bArr7, 0, bArr7.length, c01810);
        C0184.m3593(bArr8, 0, bArr8.length, c0187);
        C0184.m3593(bArr9, 0, bArr9.length, c0188);
        if (z && c0253M3435.f1238 > 1) {
            C0184 c01814 = new C0184();
            C0184.m3589(c01814, c01811);
            for (int i3 = 2; i3 < c0253M3435.f1238; i3++) {
                C0184.m3590(c01811, c01814, c01811);
            }
        }
        if (i2 == 24577) {
            c0184 = c01812;
            C0261.m3933(c0185, c0186, c01810, c0187, c01811, i, c0184, c01813);
        } else if (i2 == 24578) {
            C0261.m3934(c0185, c0186, c0187, c0188, c01810, c01811, i, c01812, c01813);
            c0184 = c01812;
        } else {
            throw new C0537(C0642.m5844(1318, 17, 47));
        }
        byte[] bArrM3942 = C0261.m3942(c0184, c0184.f625 * 4);
        int iM3801 = ((c0253M3435.f1231 == 24578 ? c0253M3435.f1228 : C0253.m3801(c0253M3435.f1239)) + 7) >>> 3;
        if (bArrM3942.length <= iM3801) {
            return bArrM3942;
        }
        byte[] bArr10 = new byte[iM3801];
        System.arraycopy(bArrM3942, bArrM3942.length - iM3801, bArr10, 0, iM3801);
        return bArr10;
    }

    public static byte[] m3473(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        AbstractC0317 abstractC0317M4217;
        switch (i) {
            case 0:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1335, 4, 63));
                break;
            case 1:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1347, 6, 41));
                break;
            case 2:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1363, 6, 40));
                break;
            case 3:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1379, 6, 117));
                break;
            case 4:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1395, 3, RNMBXStyleValue.InterpolationModeIdentity));
                break;
            case 5:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1398, 3, 88));
                break;
            case 6:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1401, 3, 40));
                break;
            case 7:
                abstractC0317M4217 = C0308.m4223(C0642.m5844(1339, 8, 98));
                break;
            case 8:
                abstractC0317M4217 = C0308.m4223(C0642.m5844(1353, 10, 7));
                break;
            case 9:
                abstractC0317M4217 = C0308.m4223(C0642.m5844(1369, 10, 56));
                break;
            case 10:
                abstractC0317M4217 = C0308.m4223(C0642.m5844(1385, 10, 59));
                break;
            case 11:
                abstractC0317M4217 = C0308.m4223(C0642.m5844(1404, 7, 66));
                break;
            default:
                abstractC0317M4217 = C0308.m4217(C0642.m5844(1411, 4, 45));
                break;
        }
        if (i >= 7 && i <= 11) {
            ((AbstractC0403) abstractC0317M4217).mo4637(bArr4);
        }
        int length = bArr.length;
        abstractC0317M4217.mo3412(bArr, 0, length);
        System.arraycopy(bArr, 0, bArr, 0, length);
        int length2 = bArr2.length;
        abstractC0317M4217.mo3412(bArr2, 0, length2);
        System.arraycopy(bArr2, 0, bArr2, 0, length2);
        abstractC0317M4217.mo3122(bArr3, 0, bArr3.length);
        return C0308.m4264(abstractC0317M4217);
    }

    public byte[] m3486(byte[] bArr) throws C0537 {
        byte[] bArr2;
        byte[] bArrM4301;
        byte[] bArrM4302;
        if (!this.f535) {
            C0158 c0158 = this.f532;
            byte[] bArr3 = c0158.f486;
            if (bArr3 != null && (bArr2 = c0158.f485) != null && bArr3.length == bArr2.length) {
                if (c0158.m3431()) {
                    byte[] bArr4 = new byte[64];
                    if (this.f533) {
                        int length = bArr.length;
                        Boolean bool = true;
                        byte[] bArr5 = this.f536;
                        C0158 c0159 = this.f532;
                        byte[] bArr6 = c0159.f485;
                        byte[] bArr7 = c0159.f486;
                        if (bArr7.length == 32 && bArr6.length == 32) {
                            if (bArr5.length <= 255) {
                                C0198 c0198 = new C0198();
                                AbstractC0317 abstractC0317M4217 = C0308.m4217(C0642.m5844(2127, 6, 55));
                                if (!bool.booleanValue()) {
                                    bArrM4302 = abstractC0317M4217.m4301(bArr, 0, length);
                                    abstractC0317M4217.mo3250();
                                } else if (length == 64) {
                                    bArrM4302 = new byte[length];
                                    System.arraycopy(bArr, 0, bArrM4302, 0, length);
                                } else {
                                    throw new C0537(f526);
                                }
                                byte[] bArrM4303 = abstractC0317M4217.m4301(bArr7, 0, bArr7.length);
                                bArrM4303[0] = (byte) (bArrM4303[0] & 248);
                                bArrM4303[31] = (byte) ((bArrM4303[31] & Utf8.REPLACEMENT_BYTE) | 64);
                                abstractC0317M4217.mo3250();
                                byte[] bArr8 = f515;
                                abstractC0317M4217.mo3121(bArr8, 0, bArr8.length, bArr8, 0);
                                byte[] bArrM3897 = C0259.m3897(bArr5.length);
                                int length2 = bArrM3897.length;
                                abstractC0317M4217.mo3412(bArrM3897, 0, length2);
                                System.arraycopy(bArrM3897, 0, bArrM3897, 0, length2);
                                int length3 = bArr5.length;
                                abstractC0317M4217.mo3412(bArr5, 0, length3);
                                System.arraycopy(bArr5, 0, bArr5, 0, length3);
                                abstractC0317M4217.mo3412(bArrM4303, 32, 32);
                                System.arraycopy(bArrM4303, 32, bArrM4303, 32, 32);
                                abstractC0317M4217.mo3122(bArrM4302, 0, bArrM4302.length);
                                byte[] bArr9 = abstractC0317M4217.f1702;
                                C0429.m4768(bArr9);
                                C0429.m4726(c0198, bArr9);
                                C0429.m4771(bArr4, c0198);
                                abstractC0317M4217.mo3250();
                                abstractC0317M4217.mo3121(bArr8, 0, bArr8.length, bArr8, 0);
                                int length4 = bArrM3897.length;
                                abstractC0317M4217.mo3412(bArrM3897, 0, length4);
                                System.arraycopy(bArrM3897, 0, bArrM3897, 0, length4);
                                int length5 = bArr5.length;
                                abstractC0317M4217.mo3412(bArr5, 0, length5);
                                System.arraycopy(bArr5, 0, bArr5, 0, length5);
                                abstractC0317M4217.mo3412(bArr4, 0, 32);
                                System.arraycopy(bArr4, 0, bArr4, 0, 32);
                                abstractC0317M4217.mo3412(bArr6, 0, 32);
                                System.arraycopy(bArr6, 0, bArr6, 0, 32);
                                abstractC0317M4217.mo3122(bArrM4302, 0, bArrM4302.length);
                                byte[] bArr10 = abstractC0317M4217.f1702;
                                C0429.m4768(bArr10);
                                C0429.m4769(bArr4, 32, bArr10, bArrM4303, bArr9);
                                return bArr4;
                            }
                            throw new C0537(f521);
                        }
                        throw new C0537(f528);
                    }
                    byte[] bArr11 = this.f536;
                    if (bArr11 != null && bArr11.length != 0) {
                        int length6 = bArr.length;
                        C0158 c01510 = this.f532;
                        byte[] bArr12 = c01510.f485;
                        byte[] bArr13 = c01510.f486;
                        if (bArr13.length == 32 && bArr12.length == 32) {
                            if (bArr11.length != 0 && bArr11.length <= 255) {
                                C0198 c0199 = new C0198();
                                AbstractC0317 abstractC0317M4218 = C0308.m4217(C0642.m5844(2121, 6, WebSocketProtocol.PAYLOAD_SHORT));
                                byte[] bArrM4300 = abstractC0317M4218.m4300(bArr13);
                                bArrM4300[0] = (byte) (bArrM4300[0] & 248);
                                bArrM4300[31] = (byte) (64 | (bArrM4300[31] & Utf8.REPLACEMENT_BYTE));
                                abstractC0317M4218.mo3250();
                                byte[] bArr14 = f523;
                                abstractC0317M4218.mo3121(bArr14, 0, bArr14.length, bArr14, 0);
                                byte[] bArrM3898 = C0259.m3897(bArr11.length);
                                int length7 = bArrM3898.length;
                                abstractC0317M4218.mo3412(bArrM3898, 0, length7);
                                System.arraycopy(bArrM3898, 0, bArrM3898, 0, length7);
                                int length8 = bArr11.length;
                                abstractC0317M4218.mo3412(bArr11, 0, length8);
                                System.arraycopy(bArr11, 0, bArr11, 0, length8);
                                abstractC0317M4218.mo3412(bArrM4300, 32, 32);
                                System.arraycopy(bArrM4300, 32, bArrM4300, 32, 32);
                                abstractC0317M4218.mo3122(bArr, 0, length6);
                                byte[] bArr15 = abstractC0317M4218.f1702;
                                C0429.m4768(bArr15);
                                C0429.m4726(c0199, bArr15);
                                C0429.m4771(bArr4, c0199);
                                abstractC0317M4218.mo3250();
                                abstractC0317M4218.mo3121(bArr14, 0, bArr14.length, bArr14, 0);
                                int length9 = bArrM3898.length;
                                abstractC0317M4218.mo3412(bArrM3898, 0, length9);
                                System.arraycopy(bArrM3898, 0, bArrM3898, 0, length9);
                                int length10 = bArr11.length;
                                abstractC0317M4218.mo3412(bArr11, 0, length10);
                                System.arraycopy(bArr11, 0, bArr11, 0, length10);
                                abstractC0317M4218.mo3412(bArr4, 0, 32);
                                System.arraycopy(bArr4, 0, bArr4, 0, 32);
                                abstractC0317M4218.mo3412(bArr12, 0, 32);
                                System.arraycopy(bArr12, 0, bArr12, 0, 32);
                                abstractC0317M4218.mo3122(bArr, 0, length6);
                                byte[] bArr16 = abstractC0317M4218.f1702;
                                C0429.m4768(bArr16);
                                C0429.m4769(bArr4, 32, bArr16, bArrM4300, bArr15);
                                return bArr4;
                            }
                            throw new C0537(f521);
                        }
                        throw new C0537(f528);
                    }
                    int length11 = bArr.length;
                    C0158 c01511 = this.f532;
                    byte[] bArr17 = c01511.f485;
                    byte[] bArr18 = c01511.f486;
                    if (bArr18.length == 32 && bArr17.length == 32) {
                        C0198 c01910 = new C0198();
                        AbstractC0317 abstractC0317M4219 = C0308.m4217(C0642.m5844(2115, 6, 60));
                        byte[] bArrM4304 = abstractC0317M4219.m4301(bArr18, 0, bArr18.length);
                        bArrM4304[0] = (byte) (bArrM4304[0] & 248);
                        bArrM4304[31] = (byte) (64 | (bArrM4304[31] & Utf8.REPLACEMENT_BYTE));
                        abstractC0317M4219.mo3250();
                        abstractC0317M4219.mo3412(bArrM4304, 32, 32);
                        System.arraycopy(bArrM4304, 32, bArrM4304, 32, 32);
                        abstractC0317M4219.mo3122(bArr, 0, length11);
                        byte[] bArr19 = abstractC0317M4219.f1702;
                        C0429.m4768(bArr19);
                        C0429.m4726(c01910, bArr19);
                        C0429.m4771(bArr4, c01910);
                        abstractC0317M4219.mo3250();
                        abstractC0317M4219.mo3412(bArr4, 0, 32);
                        System.arraycopy(bArr4, 0, bArr4, 0, 32);
                        abstractC0317M4219.mo3412(bArr17, 0, 32);
                        System.arraycopy(bArr17, 0, bArr17, 0, 32);
                        abstractC0317M4219.mo3122(bArr, 0, length11);
                        byte[] bArr20 = abstractC0317M4219.f1702;
                        C0429.m4768(bArr20);
                        C0429.m4769(bArr4, 32, bArr20, bArrM4304, bArr19);
                        return bArr4;
                    }
                    throw new C0537(f528);
                }
                if (this.f532.m3434()) {
                    byte[] bArr21 = new byte[114];
                    if (this.f533) {
                        int length12 = bArr.length;
                        Boolean bool2 = true;
                        byte[] bArr22 = this.f536;
                        C0158 c01512 = this.f532;
                        byte[] bArr23 = c01512.f485;
                        byte[] bArr24 = c01512.f486;
                        if (bArr24.length == 57 && bArr23.length == 57) {
                            if (bArr22.length <= 255) {
                                C0310 c0310 = new C0310();
                                C0631 c0631 = new C0631();
                                if (!bool2.booleanValue()) {
                                    c0631.f1703 = 512;
                                    bArrM4301 = c0631.m4301(bArr, 0, length12);
                                } else if (length12 == 64) {
                                    bArrM4301 = new byte[length12];
                                    System.arraycopy(bArr, 0, bArrM4301, 0, length12);
                                } else {
                                    throw new C0537(f526);
                                }
                                c0631.mo3250();
                                c0631.f1703 = 912;
                                byte[] bArrM4305 = c0631.m4301(bArr24, 0, 57);
                                bArrM4305[0] = (byte) (bArrM4305[0] & 252);
                                bArrM4305[55] = (byte) (bArrM4305[55] | 128);
                                int[] iArr = new int[14];
                                C0429.m4722(iArr, bArrM4305);
                                c0631.mo3250();
                                c0631.f1703 = 912;
                                byte[] bArr25 = f525;
                                c0631.mo3121(bArr25, 0, bArr25.length, bArr25, 0);
                                byte[] bArrM3899 = C0259.m3897(bArr22.length);
                                int length13 = bArrM3899.length;
                                c0631.mo3412(bArrM3899, 0, length13);
                                System.arraycopy(bArrM3899, 0, bArrM3899, 0, length13);
                                int length14 = bArr22.length;
                                c0631.mo3412(bArr22, 0, length14);
                                System.arraycopy(bArr22, 0, bArr22, 0, length14);
                                c0631.mo3412(bArrM4305, 57, 57);
                                System.arraycopy(bArrM4305, 57, bArrM4305, 57, 57);
                                c0631.mo3122(bArrM4301, 0, bArrM4301.length);
                                byte[] bArrM4264 = C0308.m4264(c0631);
                                int[] iArr2 = new int[14];
                                C0429.m4780(iArr2, bArrM4264, bArrM4264.length);
                                C0429.m4758(c0310, iArr2);
                                C0429.m4772(bArr21, c0310);
                                c0631.mo3250();
                                c0631.f1703 = 912;
                                c0631.mo3121(bArr25, 0, bArr25.length, bArr25, 0);
                                int length15 = bArrM3899.length;
                                c0631.mo3412(bArrM3899, 0, length15);
                                System.arraycopy(bArrM3899, 0, bArrM3899, 0, length15);
                                int length16 = bArr22.length;
                                c0631.mo3412(bArr22, 0, length16);
                                System.arraycopy(bArr22, 0, bArr22, 0, length16);
                                c0631.mo3412(bArr21, 0, 57);
                                System.arraycopy(bArr21, 0, bArr21, 0, 57);
                                c0631.mo3412(bArr23, 0, 57);
                                System.arraycopy(bArr23, 0, bArr23, 0, 57);
                                c0631.mo3122(bArrM4301, 0, bArrM4301.length);
                                byte[] bArr26 = c0631.f1702;
                                int[] iArr3 = new int[14];
                                C0429.m4780(iArr3, bArr26, bArr26.length);
                                C0429.m4779(iArr2, 14, iArr3, 14, iArr, 14, -1);
                                byte[] bArr27 = new byte[56];
                                C0429.m4776(bArr27, iArr2, 56);
                                System.arraycopy(bArr27, 0, bArr21, 57, 56);
                                bArr21[113] = 0;
                                return bArr21;
                            }
                            throw new C0537(f521);
                        }
                        throw new C0537(f528);
                    }
                    int length17 = bArr.length;
                    byte[] bArr28 = this.f536;
                    C0158 c01513 = this.f532;
                    byte[] bArr29 = c01513.f485;
                    byte[] bArr30 = c01513.f486;
                    if (bArr30.length == 57 && bArr29.length == 57) {
                        if (bArr28.length <= 255) {
                            C0310 c0311 = new C0310();
                            C0631 c0632 = new C0631();
                            c0632.f1703 = 912;
                            byte[] bArrM4306 = c0632.m4301(bArr30, 0, 57);
                            bArrM4306[0] = (byte) (bArrM4306[0] & 252);
                            bArrM4306[55] = (byte) (bArrM4306[55] | 128);
                            int[] iArr4 = new int[14];
                            C0429.m4722(iArr4, bArrM4306);
                            c0632.mo3250();
                            c0632.f1703 = 912;
                            byte[] bArr31 = f520;
                            c0632.mo3121(bArr31, 0, bArr31.length, bArr31, 0);
                            byte[] bArrM38910 = C0259.m3897(bArr28.length);
                            int length18 = bArrM38910.length;
                            c0632.mo3412(bArrM38910, 0, length18);
                            System.arraycopy(bArrM38910, 0, bArrM38910, 0, length18);
                            int length19 = bArr28.length;
                            c0632.mo3412(bArr28, 0, length19);
                            System.arraycopy(bArr28, 0, bArr28, 0, length19);
                            c0632.mo3412(bArrM4306, 57, 57);
                            System.arraycopy(bArrM4306, 57, bArrM4306, 57, 57);
                            c0632.mo3122(bArr, 0, length17);
                            byte[] bArrM4265 = C0308.m4264(c0632);
                            int[] iArr5 = new int[14];
                            C0429.m4780(iArr5, bArrM4265, bArrM4265.length);
                            C0429.m4758(c0311, iArr5);
                            C0429.m4772(bArr21, c0311);
                            c0632.mo3250();
                            c0632.f1703 = 912;
                            c0632.mo3121(bArr31, 0, bArr31.length, bArr31, 0);
                            int length20 = bArrM38910.length;
                            c0632.mo3412(bArrM38910, 0, length20);
                            System.arraycopy(bArrM38910, 0, bArrM38910, 0, length20);
                            int length21 = bArr28.length;
                            c0632.mo3412(bArr28, 0, length21);
                            System.arraycopy(bArr28, 0, bArr28, 0, length21);
                            c0632.mo3412(bArr21, 0, 57);
                            System.arraycopy(bArr21, 0, bArr21, 0, 57);
                            c0632.mo3412(bArr29, 0, 57);
                            System.arraycopy(bArr29, 0, bArr29, 0, 57);
                            c0632.mo3122(bArr, 0, length17);
                            byte[] bArr32 = c0632.f1702;
                            int[] iArr6 = new int[14];
                            C0429.m4780(iArr6, bArr32, bArr32.length);
                            C0429.m4779(iArr5, 14, iArr6, 14, iArr4, 14, -1);
                            byte[] bArr33 = new byte[56];
                            C0429.m4776(bArr33, iArr5, 56);
                            System.arraycopy(bArr33, 0, bArr21, 57, 56);
                            bArr21[113] = 0;
                            return bArr21;
                        }
                        throw new C0537(f521);
                    }
                    throw new C0537(f528);
                }
                throw new C0537(C0642.m5844(1901, 17, 9));
            }
            throw new C0537(C0642.m5844(1884, 17, 50));
        }
        throw new C0537(C0642.m5844(1854, 30, 37));
    }

    public void m3479(byte[] bArr) {
        byte b;
        int i;
        int i2;
        Boolean bool = true;
        if (bArr[0] != 69 || bArr[1] != 67 || bArr[2] != 68 || ((b = bArr[3]) != 80 && b != 86)) {
            boolean z = bArr[3] % 2 == 0;
            int length = (bArr.length - 8) / (z ? 3 : 2);
            if (length == 32) {
                this.f532.f488 = 0;
            } else if (length == 48) {
                this.f532.f488 = 1;
            } else if (length == 66) {
                this.f532.f488 = 2;
            } else {
                throw new C0414(C0642.m5844(894, 14, 62));
            }
            C0158 c0158 = this.f532;
            c0158.f490 = new byte[length];
            c0158.f487 = new byte[length];
            byte[] bArr2 = c0158.f490;
            System.arraycopy(bArr, 8, bArr2, 0, bArr2.length);
            int i3 = length + 8;
            byte[] bArr3 = this.f532.f487;
            System.arraycopy(bArr, i3, bArr3, 0, bArr3.length);
            if (z) {
                C0158 c0159 = this.f532;
                c0159.f491 = new byte[length];
                byte[] bArr4 = c0159.f491;
                System.arraycopy(bArr, i3 + length, bArr4, 0, bArr4.length);
                return;
            }
            return;
        }
        int i4 = 20;
        if (b != 86 && b != 80) {
            throw new C0414(C0642.m5844(986, 20, 119));
        }
        Boolean boolValueOf = Boolean.valueOf(b == 86);
        int length2 = (bArr.length - 8) / (boolValueOf.booleanValue() ? 3 : 2);
        if (length2 == 32) {
            this.f532.f488 = 10;
        } else {
            if (length2 == 29) {
                this.f532.f488 = 9;
                i4 = 28;
            } else if (length2 == 24) {
                this.f532.f488 = 8;
            } else if (length2 == 21) {
                this.f532.f488 = 7;
            } else {
                throw new C0414(C0642.m5844(972, 14, 25));
            }
            C0158 c01510 = this.f532;
            c01510.f490 = new byte[i4];
            c01510.f487 = new byte[i4];
            byte[] bArr5 = c01510.f490;
            System.arraycopy(bArr, 8, bArr5, 0, bArr5.length);
            i = i4 + 8;
            if (bool.booleanValue()) {
                i = i4 + 9;
            }
            byte[] bArr6 = this.f532.f487;
            System.arraycopy(bArr, i, bArr6, 0, bArr6.length);
            if (boolValueOf.booleanValue()) {
                this.f532.f491 = new byte[i4];
                i2 = i + i4;
                if (bool.booleanValue()) {
                    i2 += 2;
                }
                byte[] bArr7 = this.f532.f491;
                System.arraycopy(bArr, i2, bArr7, 0, bArr7.length);
            }
        }
        bool = false;
        i4 = length2;
        C0158 c01511 = this.f532;
        c01511.f490 = new byte[i4];
        c01511.f487 = new byte[i4];
        byte[] bArr8 = c01511.f490;
        System.arraycopy(bArr, 8, bArr8, 0, bArr8.length);
        i = i4 + 8;
        if (bool.booleanValue()) {
            i = i4 + 9;
        }
        byte[] bArr9 = this.f532.f487;
        System.arraycopy(bArr, i, bArr9, 0, bArr9.length);
        if (boolValueOf.booleanValue()) {
            this.f532.f491 = new byte[i4];
            i2 = i + i4;
            if (bool.booleanValue()) {
                i2 += 2;
            }
            byte[] bArr10 = this.f532.f491;
            System.arraycopy(bArr, i2, bArr10, 0, bArr10.length);
        }
    }

    public boolean m3485(byte[] bArr, byte[] bArr2) throws C0537 {
        Boolean boolM4740;
        Boolean boolM4741;
        byte[] bArrM4301;
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        byte[] bArrM4302;
        if (!this.f535) {
            C0158 c0158 = this.f532;
            byte[] bArr3 = c0158.f485;
            if (bArr3 != null && bArr3.length == c0158.m3427()) {
                if (this.f532.m3431()) {
                    if (bArr2.length != 64) {
                        return false;
                    }
                    if (this.f533) {
                        int length = bArr.length;
                        Boolean bool4 = true;
                        byte[] bArr4 = this.f536;
                        byte[] bArr5 = this.f532.f485;
                        if (bArr5.length == 32) {
                            if (bArr2.length == 64) {
                                if (bArr4.length <= 255) {
                                    C0198 c0198 = new C0198();
                                    C0156 c0156 = new C0156();
                                    if ((bArr2[63] & 224) == 0 && C0429.m4787(c0198, bArr5)) {
                                        AbstractC0317 abstractC0317M4217 = C0308.m4217(C0642.m5844(2145, 6, 105));
                                        if (!bool4.booleanValue()) {
                                            bArrM4302 = abstractC0317M4217.m4301(bArr, 0, length);
                                            abstractC0317M4217.mo3250();
                                        } else if (length == 64) {
                                            bArrM4302 = new byte[length];
                                            System.arraycopy(bArr, 0, bArrM4302, 0, length);
                                        } else {
                                            throw new C0537(f526);
                                        }
                                        byte[] bArr6 = new byte[32];
                                        System.arraycopy(bArr2, 32, bArr6, 0, 32);
                                        byte[] bArrM3897 = C0259.m3897(bArr4.length);
                                        byte[] bArr7 = f515;
                                        abstractC0317M4217.mo3121(bArr7, 0, bArr7.length, bArr7, 0);
                                        int length2 = bArrM3897.length;
                                        abstractC0317M4217.mo3412(bArrM3897, 0, length2);
                                        System.arraycopy(bArrM3897, 0, bArrM3897, 0, length2);
                                        int length3 = bArr4.length;
                                        abstractC0317M4217.mo3412(bArr4, 0, length3);
                                        System.arraycopy(bArr4, 0, bArr4, 0, length3);
                                        abstractC0317M4217.mo3412(bArr2, 0, 32);
                                        System.arraycopy(bArr2, 0, bArr2, 0, 32);
                                        abstractC0317M4217.mo3412(bArr5, 0, 32);
                                        System.arraycopy(bArr5, 0, bArr5, 0, 32);
                                        abstractC0317M4217.mo3122(bArrM4302, 0, bArrM4302.length);
                                        byte[] bArr8 = abstractC0317M4217.f1702;
                                        C0429.m4768(bArr8);
                                        C0429.m4748(c0156, bArr8, c0198, bArr6);
                                        byte[] bArr9 = new byte[32];
                                        C0429.m4770(bArr9, c0156);
                                        for (int i = 0; i < 32; i++) {
                                            if (bArr9[i] != bArr2[i]) {
                                                bool3 = false;
                                            }
                                        }
                                        bool3 = true;
                                    } else {
                                        bool3 = false;
                                    }
                                    return bool3.booleanValue();
                                }
                                throw new C0537(f521);
                            }
                            throw new C0537(f529);
                        }
                        throw new C0537(f517);
                    }
                    byte[] bArr10 = this.f536;
                    if (bArr10 != null && bArr10.length != 0) {
                        int length4 = bArr.length;
                        byte[] bArr11 = this.f532.f485;
                        if (bArr11.length == 32) {
                            if (bArr2.length == 64) {
                                if (bArr10.length != 0 && bArr10.length <= 255) {
                                    C0198 c0199 = new C0198();
                                    C0156 c0157 = new C0156();
                                    AbstractC0317 abstractC0317M4218 = C0308.m4217(C0642.m5844(2139, 6, 94));
                                    if ((bArr2[63] & 224) == 0 && C0429.m4787(c0199, bArr11)) {
                                        byte[] bArr12 = new byte[32];
                                        System.arraycopy(bArr2, 32, bArr12, 0, 32);
                                        byte[] bArrM3898 = C0259.m3897(bArr10.length);
                                        byte[] bArr13 = f523;
                                        abstractC0317M4218.mo3121(bArr13, 0, bArr13.length, bArr13, 0);
                                        int length5 = bArrM3898.length;
                                        abstractC0317M4218.mo3412(bArrM3898, 0, length5);
                                        System.arraycopy(bArrM3898, 0, bArrM3898, 0, length5);
                                        int length6 = bArr10.length;
                                        abstractC0317M4218.mo3412(bArr10, 0, length6);
                                        System.arraycopy(bArr10, 0, bArr10, 0, length6);
                                        abstractC0317M4218.mo3412(bArr2, 0, 32);
                                        System.arraycopy(bArr2, 0, bArr2, 0, 32);
                                        abstractC0317M4218.mo3412(bArr11, 0, 32);
                                        System.arraycopy(bArr11, 0, bArr11, 0, 32);
                                        abstractC0317M4218.mo3122(bArr, 0, length4);
                                        byte[] bArr14 = abstractC0317M4218.f1702;
                                        C0429.m4768(bArr14);
                                        C0429.m4748(c0157, bArr14, c0199, bArr12);
                                        byte[] bArr15 = new byte[32];
                                        C0429.m4770(bArr15, c0157);
                                        for (int i2 = 0; i2 < 32; i2++) {
                                            if (bArr15[i2] != bArr2[i2]) {
                                                bool2 = false;
                                            }
                                        }
                                        bool2 = true;
                                    } else {
                                        bool2 = false;
                                    }
                                    return bool2.booleanValue();
                                }
                                throw new C0537(f521);
                            }
                            throw new C0537(f529);
                        }
                        throw new C0537(f517);
                    }
                    int length7 = bArr.length;
                    byte[] bArr16 = this.f532.f485;
                    if (bArr16.length == 32) {
                        if (bArr2.length == 64) {
                            C0198 c01910 = new C0198();
                            C0156 c0159 = new C0156();
                            AbstractC0317 abstractC0317M4219 = C0308.m4217(C0642.m5844(2133, 6, 81));
                            if ((bArr2[63] & 224) == 0 && C0429.m4787(c01910, bArr16)) {
                                byte[] bArr17 = new byte[32];
                                System.arraycopy(bArr2, 32, bArr17, 0, 32);
                                abstractC0317M4219.mo3412(bArr2, 0, 32);
                                System.arraycopy(bArr2, 0, bArr2, 0, 32);
                                abstractC0317M4219.mo3412(bArr16, 0, 32);
                                System.arraycopy(bArr16, 0, bArr16, 0, 32);
                                abstractC0317M4219.mo3122(bArr, 0, length7);
                                byte[] bArr18 = abstractC0317M4219.f1702;
                                C0429.m4768(bArr18);
                                C0429.m4748(c0159, bArr18, c01910, bArr17);
                                byte[] bArr19 = new byte[32];
                                C0429.m4770(bArr19, c0159);
                                for (int i3 = 0; i3 < 32; i3++) {
                                    if (bArr19[i3] != bArr2[i3]) {
                                        bool = false;
                                    }
                                }
                                bool = true;
                            } else {
                                bool = false;
                            }
                            return bool.booleanValue();
                        }
                        throw new C0537(f529);
                    }
                    throw new C0537(f517);
                }
                if (!this.f532.m3434() || bArr2.length != 114) {
                    return false;
                }
                if (this.f533) {
                    int length8 = bArr.length;
                    Boolean bool5 = true;
                    byte[] bArr20 = this.f536;
                    byte[] bArr21 = this.f532.f485;
                    if (bArr21.length == 57) {
                        if (bArr2.length == 114) {
                            if (bArr20.length <= 255) {
                                C0139 c0139 = new C0139();
                                C0139 c01310 = new C0139();
                                C0139 c01311 = new C0139();
                                C0305 c0305 = new C0305();
                                C0310 c0310 = new C0310();
                                C0310 c0311 = new C0310();
                                if (bArr2[113] == 0 && C0429.m4788(c0310, bArr21) && C0429.m4788(c0311, bArr2)) {
                                    byte[] bArr22 = new byte[57];
                                    int[] iArr = new int[14];
                                    System.arraycopy(bArr2, 57, bArr22, 0, 57);
                                    if (C0429.m4722(iArr, bArr22) == 0) {
                                        boolM4741 = false;
                                    } else {
                                        C0631 c0631 = new C0631();
                                        if (!bool5.booleanValue()) {
                                            c0631.f1703 = 512;
                                            bArrM4301 = c0631.m4301(bArr, 0, length8);
                                        } else if (length8 == 64) {
                                            bArrM4301 = new byte[length8];
                                            System.arraycopy(bArr, 0, bArrM4301, 0, length8);
                                        } else {
                                            throw new C0537(f526);
                                        }
                                        c0631.mo3250();
                                        c0631.f1703 = 912;
                                        byte[] bArr23 = f525;
                                        c0631.mo3121(bArr23, 0, bArr23.length, bArr23, 0);
                                        byte[] bArrM3899 = C0259.m3897(bArr20.length);
                                        int length9 = bArrM3899.length;
                                        c0631.mo3412(bArrM3899, 0, length9);
                                        System.arraycopy(bArrM3899, 0, bArrM3899, 0, length9);
                                        int length10 = bArr20.length;
                                        c0631.mo3412(bArr20, 0, length10);
                                        System.arraycopy(bArr20, 0, bArr20, 0, length10);
                                        c0631.mo3412(bArr2, 0, 57);
                                        System.arraycopy(bArr2, 0, bArr2, 0, 57);
                                        c0631.mo3412(bArr21, 0, 57);
                                        System.arraycopy(bArr21, 0, bArr21, 0, 57);
                                        c0631.mo3122(bArrM4301, 0, bArrM4301.length);
                                        byte[] bArrM4264 = C0308.m4264(c0631);
                                        int[] iArr2 = new int[14];
                                        C0429.m4780(iArr2, bArrM4264, bArrM4264.length);
                                        C0429.m4722(new int[14], bArr2);
                                        C0429.m4786(c01311, iArr, 448);
                                        C0429.m4744(c0139, c0310);
                                        C0429.m4746(c0139, iArr2);
                                        C0429.m4744(c01310, c0311);
                                        C0429.m4755(c0305, c01310);
                                        C0429.m4743(c0139, c0305);
                                        C0429.m4742(c01311);
                                        C0429.m4742(c0139);
                                        boolM4741 = C0429.m4740(c0139, c01311);
                                    }
                                } else {
                                    boolM4741 = false;
                                }
                                return boolM4741.booleanValue();
                            }
                            throw new C0537(f521);
                        }
                        throw new C0537(f529);
                    }
                    throw new C0537(f517);
                }
                int length11 = bArr.length;
                byte[] bArr24 = this.f536;
                byte[] bArr25 = this.f532.f485;
                if (bArr25.length == 57) {
                    if (bArr2.length == 114) {
                        if (bArr24.length <= 255) {
                            C0139 c01312 = new C0139();
                            C0139 c01313 = new C0139();
                            C0139 c01314 = new C0139();
                            C0305 c0306 = new C0305();
                            C0310 c0312 = new C0310();
                            C0310 c0313 = new C0310();
                            if (bArr2[113] == 0 && C0429.m4788(c0312, bArr25) && C0429.m4788(c0313, bArr2)) {
                                byte[] bArr26 = new byte[57];
                                int[] iArr3 = new int[14];
                                System.arraycopy(bArr2, 57, bArr26, 0, 57);
                                if (C0429.m4722(iArr3, bArr26) == 0) {
                                    boolM4740 = false;
                                } else {
                                    C0631 c0632 = new C0631();
                                    c0632.f1703 = 912;
                                    byte[] bArr27 = f520;
                                    c0632.mo3121(bArr27, 0, bArr27.length, bArr27, 0);
                                    byte[] bArrM38910 = C0259.m3897(bArr24.length);
                                    int length12 = bArrM38910.length;
                                    c0632.mo3412(bArrM38910, 0, length12);
                                    System.arraycopy(bArrM38910, 0, bArrM38910, 0, length12);
                                    int length13 = bArr24.length;
                                    c0632.mo3412(bArr24, 0, length13);
                                    System.arraycopy(bArr24, 0, bArr24, 0, length13);
                                    c0632.mo3412(bArr2, 0, 57);
                                    System.arraycopy(bArr2, 0, bArr2, 0, 57);
                                    c0632.mo3412(bArr25, 0, 57);
                                    System.arraycopy(bArr25, 0, bArr25, 0, 57);
                                    c0632.mo3122(bArr, 0, length11);
                                    byte[] bArrM4265 = C0308.m4264(c0632);
                                    int[] iArr4 = new int[14];
                                    C0429.m4780(iArr4, bArrM4265, bArrM4265.length);
                                    C0429.m4722(new int[14], bArr2);
                                    C0429.m4786(c01314, iArr3, 448);
                                    C0429.m4744(c01312, c0312);
                                    C0429.m4746(c01312, iArr4);
                                    C0429.m4744(c01313, c0313);
                                    C0429.m4755(c0306, c01313);
                                    C0429.m4743(c01312, c0306);
                                    C0429.m4742(c01314);
                                    C0429.m4742(c01312);
                                    boolM4740 = C0429.m4740(c01312, c01314);
                                }
                            } else {
                                boolM4740 = false;
                            }
                            return boolM4740.booleanValue();
                        }
                        throw new C0537(f521);
                    }
                    throw new C0537(f529);
                }
                throw new C0537(f517);
            }
            return false;
        }
        throw new C0537(C0642.m5844(1918, 30, 61));
    }

    public static byte[] m3474(byte[] bArr, int i) {
        C0620 c0620 = new C0620();
        if (!C0308.m4251(bArr, c0620)) {
            return bArr;
        }
        int iM3423 = C0158.m3423(i);
        c0620.f3436 = C0158.m3426(c0620.f3436, iM3423);
        c0620.f3435 = C0158.m3426(c0620.f3435, iM3423);
        byte[] bArr2 = c0620.f3436;
        byte[] bArr3 = new byte[bArr2.length + c0620.f3435.length];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        byte[] bArr4 = c0620.f3435;
        System.arraycopy(bArr4, 0, bArr3, c0620.f3436.length, bArr4.length);
        return bArr3;
    }
}
