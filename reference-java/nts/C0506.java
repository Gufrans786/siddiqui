package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.math.BigInteger;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0506 extends AbstractC0584 {

    public static final byte[] f2836 = {-38, 57, -93, -18, 94, 107, 75, Ascii.CR, 50, 85, -65, -17, -107, 96, Ascii.CAN, -112, -81, -40, 7, 9};

    public static final byte[] f2839 = {-47, 74, 2, -116, 42, 58, 43, -55, 71, 97, 2, -69, 40, -126, 52, -60, Ascii.NAK, -94, -80, Ascii.US, -126, -114, -90, 42, -59, -77, -28, 47};

    public static final byte[] f2830 = {-29, -80, -60, 66, -104, -4, Ascii.FS, Ascii.DC4, -102, -5, -12, -56, -103, 111, -71, 36, 39, -82, 65, -28, 100, -101, -109, 76, -92, -107, -103, Ascii.ESC, 120, 82, -72, 85};

    public static final byte[] f2834 = {56, -80, 96, -89, 81, -84, -106, 56, 76, -39, 50, 126, -79, -79, -29, 106, 33, -3, -73, 17, Ascii.DC4, -66, 7, 67, 76, Ascii.FF, -57, -65, 99, -10, -31, -38, 39, 78, -34, -65, -25, 111, 101, -5, -43, Ascii.SUB, -46, -15, 72, -104, -71, 91};

    public static final byte[] f2840 = {-49, -125, -31, 53, 126, -17, -72, -67, -15, 84, 40, 80, -42, 109, -128, 7, -42, 32, -28, 5, Ascii.VT, 87, Ascii.NAK, -36, -125, -12, -87, 33, -45, 108, -23, -50, 71, -48, -47, 60, 93, -123, -14, -80, -1, -125, Ascii.CAN, -46, -121, 126, -20, 47, 99, -71, 49, -67, 71, 65, 122, -127, -91, 56, 50, 122, -7, 39, -38, 62};

    public static final byte[] f2829 = {48, 32, 48, Ascii.FF, 6, 8, 42, -122, 72, -122, -9, Ascii.CR, 2, 2, 5, 0, 4, 16};

    public static final byte[] f2841 = {48, 32, 48, Ascii.FF, 6, 8, 42, -122, 72, -122, -9, Ascii.CR, 2, 5, 5, 0, 4, 16};

    public static final byte[] f2838 = {48, 33, 48, 9, 6, 5, 43, Ascii.SO, 3, 2, Ascii.SUB, 5, 0, 4, Ascii.DC4};

    public static final byte[] f2833 = {48, 49, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 1, 5, 0, 4, 32};

    public static final byte[] f2835 = {48, 65, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 2, 5, 0, 4, 48};

    public static final byte[] f2828 = {48, 81, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 3, 5, 0, 4, SignedBytes.MAX_POWER_OF_TWO};

    public static final byte[] f2832 = {48, 45, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 4, 5, 0, 4, Ascii.FS};

    public static final byte[] f2837 = {48, 33, 48, 9, 6, 5, 43, 36, 3, 2, 1, 5, 0, 4, Ascii.DC4};

    public static final byte[] f2827 = {36};

    public static final byte[] f2826 = new byte[0];

    public static final String f2831 = C0465.m5123(0, WebSocketProtocol.PAYLOAD_SHORT, 89);

    public BigInteger f2844 = null;

    public BigInteger f2849 = null;

    public BigInteger f2842 = null;

    public BigInteger f2843 = null;

    public BigInteger f2847 = null;

    public BigInteger f2850 = null;

    public BigInteger f2845 = null;

    public BigInteger f2846 = null;

    public boolean f2848 = false;

    public C0506() {
        this.f3625 = new C0509[]{new C0509(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT, 4096, 8)};
        this.f3626 = 1024;
    }

    public static byte[] m5188(String str) throws C0537 {
        if (str != null) {
            str = str.toUpperCase();
        }
        if (str == null || str.equals(C0465.m5123(CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 4, 62))) {
            return f2838;
        }
        if (str.equals(C0465.m5123(CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 3, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
            return f2841;
        }
        if (str.equals(C0465.m5123(150, 3, 47))) {
            return f2829;
        }
        if (str.equals(C0465.m5123(153, 6, 24))) {
            return f2833;
        }
        if (str.equals(C0465.m5123(159, 6, 50))) {
            return f2835;
        }
        if (str.equals(C0465.m5123(165, 6, 60))) {
            return f2828;
        }
        if (str.equals(C0465.m5123(171, 6, 2))) {
            return f2832;
        }
        if (str.equals(C0465.m5123(177, 9, 12)) || str.equals(C0465.m5123(186, 10, WebSocketProtocol.PAYLOAD_SHORT))) {
            return f2837;
        }
        if (str.equals(C0465.m5123(196, 7, 98))) {
            return f2827;
        }
        throw new C0537(C0465.m5123(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, 17, 116));
    }

    public final byte[] m5189(byte[] bArr) throws C0537 {
        if (this.f2844 == null || this.f2849 == null) {
            throw new C0537(C0465.m5123(244, 49, 44));
        }
        byte[] bArrM4262 = C0308.m4262(new BigInteger(1, bArr).modPow(this.f2849, this.f2844));
        int length = bArrM4262.length;
        int i = this.f3626 / 8;
        if (length >= i) {
            return bArrM4262;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArrM4262, 0, bArr2, i - bArrM4262.length, bArrM4262.length);
        return bArr2;
    }

    public byte[] m5190(byte[] bArr, boolean z, byte[] bArr2, Object obj, String str) throws C0537 {
        AbstractC0317 abstractC0317M5187;
        int iM4221;
        byte[] bArrM4300;
        if (!z) {
            if (bArr != null) {
                BigInteger bigInteger = this.f2844;
                if (bigInteger != null) {
                    int iBitLength = (bigInteger.bitLength() + 7) / 8;
                    if (bArr.length <= iBitLength - 11) {
                        byte[] bArr3 = new byte[iBitLength];
                        bArr3[1] = 2;
                        C0308.m4246(bArr3, 2, (iBitLength - bArr.length) - 3);
                        for (int i = 2; i < (iBitLength - bArr.length) - 1; i++) {
                            if (bArr3[i] == 0) {
                                bArr3[i] = 1;
                            }
                        }
                        System.arraycopy(bArr, 0, bArr3, iBitLength - bArr.length, bArr.length);
                        return m5189(bArr3);
                    }
                    throw new C0537(C0465.m5123(650, 17, 106));
                }
                throw new C0537(C0465.m5123(627, 23, 47));
            }
            throw new C0304(C0465.m5123(624, 3, 116));
        }
        if (bArr != null) {
            if (this.f2844 != null) {
                if (obj != null) {
                    abstractC0317M5187 = m5187(obj);
                    iM4221 = C0308.m4221(abstractC0317M5187) / 8;
                } else {
                    abstractC0317M5187 = null;
                    iM4221 = 20;
                }
                int iBitLength2 = (this.f2844.bitLength() + 7) / 8;
                int i2 = iM4221 * 2;
                if (bArr.length <= (iBitLength2 - i2) - 2) {
                    int i3 = (iBitLength2 - iM4221) - 1;
                    byte[] bArr4 = new byte[i3];
                    if (bArr2 == null || bArr2.length <= 0) {
                        if (iM4221 == 20) {
                            bArrM4300 = f2836;
                        } else if (iM4221 == 28) {
                            bArrM4300 = f2839;
                        } else if (iM4221 == 32) {
                            bArrM4300 = f2830;
                        } else if (iM4221 == 48) {
                            bArrM4300 = f2834;
                        } else if (iM4221 == 64) {
                            bArrM4300 = f2840;
                        } else {
                            bArrM4300 = f2836;
                        }
                    } else if (abstractC0317M5187 != null) {
                        bArrM4300 = abstractC0317M5187.m4300(bArr2);
                    } else {
                        bArrM4300 = f2836;
                    }
                    System.arraycopy(bArrM4300, 0, bArr4, 0, bArrM4300.length);
                    int length = (((iBitLength2 - bArr.length) - i2) - 2) + iM4221;
                    bArr4[length] = 1;
                    System.arraycopy(bArr, 0, bArr4, length + 1, bArr.length);
                    C0650 c0650 = new C0650();
                    if (!C0259.m3856(str)) {
                        try {
                            c0650.m5869(str);
                        } catch (Exception e) {
                            throw new C0537(e.getMessage());
                        }
                    }
                    byte[] bArrM4227 = C0308.m4227(iM4221);
                    byte[] bArrM5870 = c0650.m5870(bArrM4227, i3);
                    for (int i4 = 0; i4 < i3; i4++) {
                        bArr4[i4] = (byte) (bArr4[i4] ^ bArrM5870[i4]);
                    }
                    byte[] bArrM5871 = c0650.m5870(bArr4, iM4221);
                    for (int i5 = 0; i5 < iM4221; i5++) {
                        bArrM4227[i5] = (byte) (bArrM4227[i5] ^ bArrM5871[i5]);
                    }
                    byte[] bArr5 = new byte[iBitLength2];
                    System.arraycopy(bArrM4227, 0, bArr5, 1, iM4221);
                    System.arraycopy(bArr4, 0, bArr5, iM4221 + 1, i3);
                    return m5189(bArr5);
                }
                throw new C0537(C0465.m5123(TypedValues.MotionType.TYPE_PATHMOTION_ARC, 17, 105));
            }
            throw new C0537(C0465.m5123(584, 23, 1));
        }
        throw new C0304(C0465.m5123(581, 3, 53));
    }

    public static AbstractC0317 m5187(Object obj) throws C0537 {
        if (obj != null) {
            if (obj instanceof String) {
                return C0308.m4217((String) obj);
            }
            if (obj instanceof AbstractC0317) {
                return (AbstractC0317) obj;
            }
            throw new IllegalArgumentException(C0465.m5123(224, 20, 25));
        }
        throw new C0304(C0465.m5123(220, 4, 57));
    }

    public final byte[] m5194(byte[] bArr) throws C0537 {
        BigInteger bigInteger;
        byte[] byteArray;
        BigInteger bigInteger2;
        if ((this.f2842 != null && this.f2844 != null) || (this.f2843 != null && this.f2847 != null && this.f2850 != null)) {
            BigInteger bigInteger3 = new BigInteger(1, bArr);
            BigInteger bigInteger4 = this.f2845;
            if (bigInteger4 != null && this.f2846 != null && (bigInteger2 = this.f2843) != null && this.f2847 != null && this.f2850 != null) {
                BigInteger bigIntegerModPow = bigInteger3.modPow(bigInteger4, bigInteger2);
                BigInteger bigIntegerModPow2 = bigInteger3.modPow(this.f2846, this.f2847);
                byteArray = bigIntegerModPow2.add(this.f2847.multiply(bigIntegerModPow.subtract(bigIntegerModPow2).multiply(this.f2850).mod(this.f2843))).toByteArray();
            } else {
                BigInteger bigInteger5 = this.f2842;
                if (bigInteger5 != null && (bigInteger = this.f2844) != null) {
                    byteArray = bigInteger3.modPow(bigInteger5, bigInteger).toByteArray();
                } else {
                    throw new C0537(C0465.m5123(343, 50, 70));
                }
            }
            if (byteArray[0] != 0) {
                return byteArray;
            }
            int length = byteArray.length - 1;
            byte[] bArr2 = new byte[length];
            System.arraycopy(byteArray, 1, bArr2, 0, length);
            return bArr2;
        }
        throw new C0537(C0465.m5123(293, 50, 97));
    }

    public byte[] m5197(byte[] bArr, boolean z, byte[] bArr2, Object obj, String str) throws C0537 {
        AbstractC0317 abstractC0317M5187;
        int iM4221;
        byte[] bArrM4300;
        if (!z) {
            if (bArr != null) {
                BigInteger bigInteger = this.f2844;
                if (bigInteger != null) {
                    int iBitLength = (bigInteger.bitLength() + 7) / 8;
                    if (iBitLength >= 11) {
                        byte[] bArrM5194 = m5194(bArr);
                        if (bArrM5194.length <= iBitLength) {
                            if ((bArrM5194[0] & 255) <= 2) {
                                int i = 1;
                                while (i < bArrM5194.length && bArrM5194[i] != 0) {
                                    i++;
                                }
                                if (i >= 9) {
                                    if (i != bArrM5194.length) {
                                        int length = (bArrM5194.length - i) - 1;
                                        byte[] bArr3 = new byte[length];
                                        System.arraycopy(bArrM5194, i + 1, bArr3, 0, length);
                                        return bArr3;
                                    }
                                    throw new C0537(f2831);
                                }
                                throw new C0537(f2831);
                            }
                            throw new C0537(f2831);
                        }
                        throw new C0537(C0465.m5123(554, 27, 86));
                    }
                    throw new C0537(C0465.m5123(517, 37, 3));
                }
                throw new C0537(C0465.m5123(494, 23, 32));
            }
            throw new C0304(C0465.m5123(491, 3, 32));
        }
        if (bArr != null) {
            if (this.f2844 != null) {
                if (obj != null) {
                    abstractC0317M5187 = m5187(obj);
                    iM4221 = C0308.m4221(abstractC0317M5187) / 8;
                } else {
                    abstractC0317M5187 = null;
                    iM4221 = 20;
                }
                int iBitLength2 = (this.f2844.bitLength() + 7) / 8;
                if (iBitLength2 >= (iM4221 * 2) + 2) {
                    byte[] bArrM5195 = m5194(bArr);
                    if (bArrM5195.length <= iBitLength2) {
                        byte[] bArr4 = new byte[iBitLength2];
                        System.arraycopy(bArrM5195, 0, bArr4, iBitLength2 - bArrM5195.length, bArrM5195.length);
                        C0650 c0650 = new C0650();
                        if (!C0259.m3856(str)) {
                            try {
                                c0650.m5869(str);
                            } catch (Exception e) {
                                throw new C0537(e.getMessage());
                            }
                        }
                        int i2 = iBitLength2 - iM4221;
                        int i3 = i2 - 1;
                        byte[] bArr5 = new byte[i3];
                        System.arraycopy(bArr4, iM4221 + 1, bArr5, 0, i3);
                        byte[] bArrM5870 = c0650.m5870(bArr5, iM4221);
                        byte[] bArr6 = new byte[iM4221];
                        int i4 = 0;
                        while (i4 < iM4221) {
                            int i5 = i4 + 1;
                            bArr6[i4] = (byte) (bArr4[i5] ^ bArrM5870[i4]);
                            i4 = i5;
                        }
                        byte[] bArrM5871 = c0650.m5870(bArr6, i3);
                        for (int i6 = 0; i6 < i3; i6++) {
                            bArr5[i6] = (byte) (bArr5[i6] ^ bArrM5871[i6]);
                        }
                        byte b = bArr4[0];
                        if (bArr2 == null || bArr2.length <= 0) {
                            if (iM4221 == 20) {
                                bArrM4300 = f2836;
                            } else if (iM4221 == 28) {
                                bArrM4300 = f2839;
                            } else if (iM4221 == 32) {
                                bArrM4300 = f2830;
                            } else if (iM4221 == 48) {
                                bArrM4300 = f2834;
                            } else if (iM4221 == 64) {
                                bArrM4300 = f2840;
                            } else {
                                bArrM4300 = f2836;
                            }
                        } else if (abstractC0317M5187 != null) {
                            bArrM4300 = abstractC0317M5187.m4300(bArr2);
                        } else {
                            bArrM4300 = f2836;
                        }
                        int i7 = 0;
                        int i8 = b;
                        while (i7 < iM4221) {
                            int i9 = i8 | (bArr5[i7] ^ bArrM4300[i7]);
                            i7++;
                            i8 = i9;
                        }
                        while (iM4221 < i2 - 2 && bArr5[iM4221] == 0) {
                            iM4221++;
                        }
                        if (((bArr5[iM4221] ^ 1) | i8) == 0) {
                            int i10 = iM4221 + 1;
                            int i11 = i3 - i10;
                            byte[] bArr7 = new byte[i11];
                            System.arraycopy(bArr5, i10, bArr7, 0, i11);
                            return bArr7;
                        }
                        throw new C0537(C0465.m5123(464, 27, 4));
                    }
                    throw new C0537(C0465.m5123(437, 27, 17));
                }
                throw new C0537(C0465.m5123(419, 18, 18));
            }
            throw new C0537(C0465.m5123(396, 23, 58));
        }
        throw new C0304(C0465.m5123(393, 3, 104));
    }

    public void m5191(C0145 c0145) throws C0537 {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4;
        BigInteger bigInteger5;
        byte[] bArr = c0145.f334;
        if (bArr != null) {
            BigInteger bigInteger6 = new BigInteger(1, bArr);
            if (!bigInteger6.equals(BigInteger.ZERO)) {
                if (c0145.f336 == null && c0145.f335 == null) {
                    throw new C0537(C0465.m5123(744, 67, 1));
                }
                byte[] bArr2 = c0145.f336;
                if (bArr2 != null) {
                    bigInteger = new BigInteger(1, bArr2);
                    if (bigInteger.equals(BigInteger.ZERO)) {
                        throw new C0537(C0465.m5123(811, 47, 46));
                    }
                } else {
                    bigInteger = null;
                }
                byte[] bArr3 = c0145.f335;
                if (bArr3 != null) {
                    bigInteger2 = new BigInteger(1, bArr3);
                    if (bigInteger2.equals(BigInteger.ZERO)) {
                        throw new C0537(C0465.m5123(858, 39, 13));
                    }
                } else {
                    bigInteger2 = null;
                }
                if (this.f2848 && !C0308.m4252(this.f3625, bigInteger6.bitLength())) {
                    C0308.m4247(this.f3625);
                    throw null;
                }
                this.f3626 = bigInteger6.bitLength();
                this.f2844 = bigInteger6;
                this.f2849 = bigInteger;
                this.f2842 = bigInteger2;
                byte[] bArr4 = c0145.f331;
                if (bArr4 != null && bArr4.length > 0) {
                    this.f2843 = new BigInteger(1, bArr4);
                }
                byte[] bArr5 = c0145.f333;
                if (bArr5 != null && bArr5.length > 0) {
                    this.f2847 = new BigInteger(1, bArr5);
                }
                byte[] bArr6 = c0145.f329;
                if (bArr6 != null && bArr6.length > 0) {
                    this.f2845 = new BigInteger(1, bArr6);
                } else {
                    BigInteger bigInteger7 = this.f2842;
                    if (bigInteger7 != null && (bigInteger3 = this.f2843) != null) {
                        this.f2845 = bigInteger7.mod(bigInteger3.subtract(BigInteger.ONE));
                    }
                }
                byte[] bArr7 = c0145.f330;
                if (bArr7 != null && bArr7.length > 0) {
                    this.f2846 = new BigInteger(1, bArr7);
                } else {
                    BigInteger bigInteger8 = this.f2842;
                    if (bigInteger8 != null && (bigInteger4 = this.f2847) != null) {
                        this.f2846 = bigInteger8.mod(bigInteger4.subtract(BigInteger.ONE));
                    }
                }
                byte[] bArr8 = c0145.f332;
                if (bArr8 != null && bArr8.length > 0) {
                    this.f2850 = new BigInteger(1, bArr8);
                    return;
                }
                BigInteger bigInteger9 = this.f2843;
                if (bigInteger9 == null || (bigInteger5 = this.f2847) == null) {
                    return;
                }
                this.f2850 = bigInteger5.modInverse(bigInteger9);
                return;
            }
            throw new C0537(C0465.m5123(698, 46, 52));
        }
        throw new C0537(C0465.m5123(667, 31, 53));
    }

    public final byte[] m5198(byte[] bArr, byte[] bArr2) throws C0537 {
        if (bArr != null) {
            if (bArr2.length > 0 && bArr.length != bArr2[bArr2.length - 1]) {
                throw new C0537(C0465.m5123(TypedValues.Custom.TYPE_BOOLEAN, 18, 77));
            }
            BigInteger bigInteger = this.f2844;
            if (bigInteger != null) {
                int iBitLength = (bigInteger.bitLength() + 7) / 8;
                if (iBitLength >= bArr2.length + bArr.length + 11) {
                    byte[] bArr3 = new byte[iBitLength];
                    bArr3[1] = 1;
                    int i = 2;
                    if (bArr2 != f2827) {
                        int length = (iBitLength - bArr2.length) - bArr.length;
                        while (i < length - 1) {
                            bArr3[i] = -1;
                            i++;
                        }
                        System.arraycopy(bArr2, 0, bArr3, length, bArr2.length);
                        System.arraycopy(bArr, 0, bArr3, length + bArr2.length, bArr.length);
                    } else {
                        int length2 = iBitLength - bArr.length;
                        while (i < length2 - 1) {
                            bArr3[i] = -1;
                            i++;
                        }
                        System.arraycopy(bArr, 0, bArr3, length2, bArr.length);
                    }
                    return m5195(m5194(bArr3), iBitLength);
                }
                throw new C0537(C0465.m5123(945, 34, 5));
            }
            throw new C0537(C0465.m5123(922, 23, 73));
        }
        throw new C0304(C0465.m5123(897, 7, 93));
    }

    public final byte[] m5195(byte[] bArr, int i) {
        if (bArr.length >= i) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, i - bArr.length, bArr.length);
        return bArr2;
    }

    public final byte[] m5196(byte[] bArr, Object obj, String str, int i) throws C0537 {
        if (str == null || str.length() == 0) {
            throw new C0304(C0465.m5123(979, 11, 107));
        }
        if (bArr != null) {
            BigInteger bigInteger = this.f2844;
            if (bigInteger != null) {
                int iBitLength = bigInteger.bitLength();
                AbstractC0317 abstractC0317M5187 = m5187(obj);
                int i2 = (iBitLength + 6) / 8;
                if (i < 0) {
                    i = C0308.m4221(abstractC0317M5187) / 8;
                }
                if (i2 >= bArr.length + i + 2) {
                    byte[] bArrM4227 = new byte[0];
                    if (i > 0) {
                        bArrM4227 = C0308.m4227(i);
                    }
                    byte[] bArr2 = new byte[bArr.length];
                    byte[] bArr3 = {0, 0, 0, 0, 0, 0, 0, 0};
                    abstractC0317M5187.mo3412(bArr3, 0, 8);
                    System.arraycopy(bArr3, 0, bArr2, 0, 8);
                    int length = bArr.length;
                    abstractC0317M5187.mo3412(bArr, 0, length);
                    System.arraycopy(bArr, 0, bArr2, 0, length);
                    abstractC0317M5187.mo3122(bArrM4227, 0, bArrM4227.length);
                    byte[] bArr4 = abstractC0317M5187.f1702;
                    int length2 = (i2 - bArr.length) - 1;
                    C0650 c0650 = new C0650();
                    try {
                        c0650.m5869(str);
                        byte[] bArrM5870 = c0650.m5870(bArr4, length2);
                        byte[] bArr5 = new byte[length2];
                        int i3 = length2 - i;
                        bArr5[i3 - 1] = 1;
                        System.arraycopy(bArrM4227, 0, bArr5, i3, i);
                        for (int i4 = 0; i4 < length2; i4++) {
                            bArr5[i4] = (byte) (bArr5[i4] ^ bArrM5870[i4]);
                        }
                        int iBitLength2 = (this.f2844.bitLength() - 1) & 7;
                        if (iBitLength2 > 0) {
                            bArr5[0] = (byte) (((byte) (255 >> (8 - iBitLength2))) & bArr5[0]);
                        }
                        int length3 = bArr4.length + length2;
                        byte[] bArr6 = new byte[length3 + 1];
                        System.arraycopy(bArr5, 0, bArr6, 0, length2);
                        System.arraycopy(bArr4, 0, bArr6, length2, bArr4.length);
                        bArr6[length3] = PSSSigner.TRAILER_IMPLICIT;
                        return m5195(m5194(bArr6), (this.f2844.bitLength() + 7) / 8);
                    } catch (Exception e) {
                        throw new C0537(e.getMessage());
                    }
                }
                throw new C0537(C0465.m5123(PointerIconCompat.TYPE_GRAB, 34, 23));
            }
            throw new C0537(C0465.m5123(997, 23, 62));
        }
        throw new C0304(C0465.m5123(990, 7, 51));
    }

    public final boolean m5192(byte[] bArr, Object obj, String str, byte[] bArr2, int i) throws C0537 {
        byte b;
        if (bArr == null) {
            throw new C0304(C0465.m5123(1084, 7, 95));
        }
        if (bArr2 != null) {
            if (str != null && str.length() != 0) {
                BigInteger bigInteger = this.f2844;
                if (bigInteger != null) {
                    int i2 = 8;
                    int iBitLength = (bigInteger.bitLength() + 7) / 8;
                    if (bArr2.length == iBitLength) {
                        byte[] bArrM5195 = m5195(m5189(bArr2), iBitLength);
                        int iBitLength2 = this.f2844.bitLength();
                        AbstractC0317 abstractC0317M5187 = m5187(obj);
                        int length = bArr.length;
                        int i3 = (iBitLength2 + 6) / 8;
                        int iM4221 = i < 0 ? C0308.m4221(abstractC0317M5187) / 8 : i;
                        if (i3 >= bArr.length + iM4221 + 2 && bArrM5195[bArrM5195.length - 1] == -68) {
                            int iBitLength3 = 7 & (this.f2844.bitLength() - 1);
                            if ((bArrM5195[0] & (255 << iBitLength3)) == 0) {
                                int i4 = i3 - length;
                                int i5 = i4 - 1;
                                byte[] bArr3 = new byte[i5];
                                byte[] bArr4 = new byte[length];
                                System.arraycopy(bArrM5195, 0, bArr3, 0, i5);
                                System.arraycopy(bArrM5195, i5, bArr4, 0, length);
                                C0650 c0650 = new C0650();
                                try {
                                    c0650.m5869(str);
                                    byte[] bArrM5870 = c0650.m5870(bArr4, i5);
                                    byte[] bArr5 = new byte[i5];
                                    int i6 = 0;
                                    while (i6 < i5) {
                                        bArr5[i6] = (byte) (bArr3[i6] ^ bArrM5870[i6]);
                                        i6++;
                                        i2 = i2;
                                    }
                                    int i7 = i2;
                                    if (iBitLength3 > 0) {
                                        bArr5[0] = (byte) (bArr5[0] & ((byte) (255 >> (8 - iBitLength3))));
                                    }
                                    int i8 = 0;
                                    while (true) {
                                        b = bArr5[i8];
                                        if (b != 0 || i8 >= i4 - 2) {
                                            break;
                                        }
                                        i8++;
                                    }
                                    int i9 = i8 + 1;
                                    if (b == 1 && (iM4221 <= 0 || i5 - i9 == iM4221)) {
                                        byte[] bArr6 = new byte[iM4221];
                                        System.arraycopy(bArr5, i5 - iM4221, bArr6, 0, iM4221);
                                        byte[] bArr7 = new byte[i7];
                                        
                                        bArr7[0] = 0;
                                        bArr7[1] = 0;
                                        bArr7[2] = 0;
                                        bArr7[3] = 0;
                                        bArr7[4] = 0;
                                        bArr7[5] = 0;
                                        bArr7[6] = 0;
                                        bArr7[7] = 0;
                                        byte[] bArr8 = new byte[length];
                                        abstractC0317M5187.mo3250();
                                        abstractC0317M5187.mo3412(bArr7, 0, i7);
                                        System.arraycopy(bArr7, 0, bArr8, 0, i7);
                                        int length2 = bArr.length;
                                        abstractC0317M5187.mo3412(bArr, 0, length2);
                                        System.arraycopy(bArr, 0, bArr8, 0, length2);
                                        abstractC0317M5187.mo3122(bArr6, 0, iM4221);
                                        byte[] bArr9 = abstractC0317M5187.f1702;
                                        for (int i10 = 0; i10 < length; i10++) {
                                            if (bArr4[i10] == bArr9[i10]) {
                                            }
                                        }
                                        return true;
                                    }
                                } catch (Exception e) {
                                    throw new C0537(e.getMessage());
                                }
                            }
                        }
                        return false;
                    }
                    throw new C0537(C0465.m5123(1137, 18, 89));
                }
                throw new C0537(C0465.m5123(1114, 23, 22));
            }
            throw new C0304(C0465.m5123(1103, 11, 30));
        }
        throw new C0304(C0465.m5123(1091, 12, 89));
    }

    public boolean m5193(byte[] bArr, String str, byte[] bArr2, boolean z, String str2, int i, boolean z2) throws C0537 {
        int length;
        int i2;
        if (z) {
            return m5192(bArr, str, str2, bArr2, i);
        }
        byte[] bArrM5188 = m5188(str);
        if (bArr == null) {
            throw new C0304(C0465.m5123(1155, 7, 82));
        }
        if (bArr2 != null) {
            if (bArr.length == bArrM5188[bArrM5188.length - 1]) {
                BigInteger bigInteger = this.f2844;
                if (bigInteger != null) {
                    int iBitLength = (bigInteger.bitLength() + 7) / 8;
                    if (iBitLength >= bArrM5188.length + bArr.length + 11) {
                        byte[] bArrM5195 = m5195(m5189(bArr2), iBitLength);
                        if (bArrM5195[0] == 0 && bArrM5195[1] == 1) {
                            int length2 = (iBitLength - bArrM5188.length) - bArr.length;
                            int i3 = length2 - 1;
                            for (int i4 = 2; i4 < i3; i4++) {
                                if (bArrM5195[i4] == -1) {
                                }
                            }
                            if (z2 && bArrM5188 != f2827) {
                                if (bArrM5195[i3] == 0) {
                                    for (int i5 = 0; i5 < bArrM5188.length; i5++) {
                                        if (bArrM5188[i5] == bArrM5195[length2 + i5]) {
                                        }
                                    }
                                    length = length2 + bArrM5188.length;
                                    i2 = 0;
                                    while (i2 < bArr.length) {
                                        if (bArrM5195[length] != bArr[i2]) {
                                            i2++;
                                            length++;
                                        }
                                    }
                                    return true;
                                }
                            } else {
                                length = length2 + bArrM5188.length;
                                i2 = 0;
                                while (i2 < bArr.length) {
                                    if (bArrM5195[length] != bArr[i2]) {
                                        i2++;
                                        length++;
                                    }
                                }
                                return true;
                            }
                        }
                        return false;
                    }
                    throw new C0537(C0465.m5123(1215, 37, 84));
                }
                throw new C0537(C0465.m5123(1192, 23, 61));
            }
            throw new C0537(C0465.m5123(1174, 18, 101));
        }
        throw new C0304(C0465.m5123(1162, 12, 33));
    }
}
