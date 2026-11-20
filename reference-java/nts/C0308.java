package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import io.grpc.internal.GrpcUtil;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.security.Signature;
import java.util.Random;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0308 {

    public static C0571 f1649 = new C0571(C0642.m5849(0, 239, 40), 4);

    public static AbstractC0317 m4214(String str) throws C0537 {
        return AbstractC0116.f198.mo3186(str);
    }

    public static int m4215(String str) {
        if (C0259.m3872(str, C0642.m5849(295, 4, 56))) {
            return SyslogConstants.LOG_LOCAL4;
        }
        if (str.equalsIgnoreCase(C0642.m5849(299, 6, 76)) || str.equalsIgnoreCase(C0642.m5849(305, 7, 79))) {
            return 256;
        }
        if (str.equalsIgnoreCase(C0642.m5849(312, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)) || str.equalsIgnoreCase(C0642.m5849(TypedValues.AttributesType.TYPE_PIVOT_TARGET, 7, 5))) {
            return 224;
        }
        if (str.equalsIgnoreCase(C0642.m5849(325, 6, 101)) || str.equalsIgnoreCase(C0642.m5849(331, 7, 24))) {
            return BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT;
        }
        if (str.equalsIgnoreCase(C0642.m5849(338, 6, 112)) || str.equalsIgnoreCase(C0642.m5849(344, 7, 59))) {
            return 512;
        }
        return str.equalsIgnoreCase(C0642.m5849(351, 3, 97)) ? 128 : -1;
    }

    public static int m4216(AbstractC0313 abstractC0313) throws C0537 {
        return abstractC0313.f1691;
    }

    public static SecureRandom m4219(String str) {
        try {
            if (C0320.f1718) {
                if (str == null) {
                    str = C0642.m5849(446, 7, 13);
                }
                return SecureRandom.getInstance(str, C0642.m5849(453, 6, 70));
            }
            if (str == null) {
                str = C0642.m5849(459, 8, 50);
            }
            return SecureRandom.getInstance(str);
        } catch (Exception e) {
            throw new C0414(e.getMessage());
        }
    }

    public static AbstractC0313 m4220(String str) throws C0537 {
        C0548 c0548 = new C0548(str, f1649.f3187.matcher(str));
        if (c0548.f3143) {
            return AbstractC0116.f198.mo3185(c0548.m5432(1));
        }
        throw new C0537(C0663.m5885(375, 19, 60, C0663.m5890(354, 21, 105, new StringBuilder(), str)));
    }

    public static int m4221(AbstractC0317 abstractC0317) {
        return abstractC0317.f1703;
    }

    public static int m4231(AbstractC0313 abstractC0313) {
        return abstractC0313.f1689;
    }

    public static byte[] m4218(byte[] bArr) {
        if (bArr[0] != 0) {
            return bArr;
        }
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 1, bArr2, 0, length);
        return bArr2;
    }

    public static byte[] m4230(AbstractC0313 abstractC0313) throws C0537 {
        return abstractC0313.f1683;
    }

    public static void m4244(AbstractC0313 abstractC0313, byte[] bArr) throws C0537 {
        if (abstractC0313 instanceof AbstractC0444) {
            ((AbstractC0444) abstractC0313).mo3994(bArr);
        } else {
            abstractC0313.mo3994(bArr);
        }
    }

    public static void m4225(AbstractC0313 abstractC0313, byte[] bArr) throws C0537 {
        if (abstractC0313 instanceof AbstractC0444) {
            ((AbstractC0444) abstractC0313).mo3267(bArr);
        } else {
            abstractC0313.mo3267(bArr);
        }
    }

    public static AbstractC0317 m4217(String str) throws C0537 {
        return AbstractC0116.f198.mo3189(str);
    }

    public static byte[] m4264(AbstractC0317 abstractC0317) {
        return abstractC0317.f1702;
    }

    public static void m4224(AbstractC0313 abstractC0313, int i) {
        abstractC0313.f1686 = i;
    }

    public static int m4232(AbstractC0645 abstractC0645) throws C0537 {
        return abstractC0645.f3626;
    }

    public static AbstractC0313 m4222(String str, int i) throws C0537 {
        C0548 c0548 = new C0548(str, f1649.f3187.matcher(str));
        if (c0548.f3143) {
            return AbstractC0116.m3183(i).mo3185(c0548.m5432(1));
        }
        throw new C0537(C0663.m5885(415, 19, 24, C0663.m5890(394, 21, 12, new StringBuilder(), str)));
    }

    public static void m4243(AbstractC0313 abstractC0313, int i) {
        abstractC0313.f1690 = i;
    }

    public static Object m4234(AbstractC0645 abstractC0645, boolean z) throws C0537 {
        BigInteger bigInteger;
        if (abstractC0645 instanceof C0367) {
            return ((C0367) abstractC0645).m4446(z);
        }
        if (abstractC0645 instanceof C0506) {
            C0506 c0506 = (C0506) abstractC0645;
            if (c0506.f2844 == null) {
                c0506.f2849 = new BigInteger(C0465.m5123(1257, 5, WebSocketProtocol.PAYLOAD_SHORT));
                SecureRandom secureRandom = new SecureRandom();
                while (true) {
                    c0506.f2843 = new BigInteger(c0506.f3626 / 2, 100, secureRandom);
                    c0506.f2847 = new BigInteger(c0506.f3626 / 2, 100, secureRandom);
                    if (c0506.f2843.compareTo(c0506.f2847) < 0) {
                        BigInteger bigInteger2 = c0506.f2843;
                        c0506.f2843 = c0506.f2847;
                        c0506.f2847 = bigInteger2;
                    }
                    c0506.f2844 = c0506.f2843.multiply(c0506.f2847);
                    if (c0506.f2844.bitLength() == c0506.f3626) {
                        BigInteger bigIntegerSubtract = c0506.f2843.subtract(BigInteger.ONE);
                        BigInteger bigIntegerSubtract2 = c0506.f2847.subtract(BigInteger.ONE);
                        BigInteger bigIntegerMultiply = bigIntegerSubtract.multiply(bigIntegerSubtract2);
                        if (c0506.f2849.gcd(bigIntegerMultiply).equals(BigInteger.ONE)) {
                            c0506.f2842 = c0506.f2849.modInverse(bigIntegerMultiply);
                            c0506.f2845 = c0506.f2849.modInverse(bigIntegerSubtract);
                            c0506.f2846 = c0506.f2849.modInverse(bigIntegerSubtract2);
                            c0506.f2850 = c0506.f2847.modInverse(c0506.f2843);
                        }
                        if ((c0506.f2842.bitLength() + 7) / 8 == c0506.f3626 / 8) {
                            break;
                        }
                    }
                }
            }
            C0145 c0145 = new C0145();
            c0145.f334 = c0506.f2844.toByteArray();
            c0145.f336 = m4262(c0506.f2849);
            c0145.f331 = m4262(c0506.f2843);
            c0145.f333 = m4262(c0506.f2847);
            c0145.f329 = m4262(c0506.f2845);
            c0145.f330 = m4262(c0506.f2846);
            c0145.f332 = m4262(c0506.f2850);
            if (z) {
                c0145.f335 = m4262(c0506.f2842);
            }
            return c0145;
        }
        if (abstractC0645 instanceof C0110) {
            C0110 c0110 = (C0110) abstractC0645;
            if (c0110.f144 == null) {
                Random random = new Random();
                int i = c0110.f3626;
                int i2 = (i < 512 || i > 4096 || i % 64 != 0) ? 0 : i < 2048 ? SyslogConstants.LOG_LOCAL4 : 256;
                BigInteger bigIntegerPow = C0110.f143.pow(i2 - 1);
                BigInteger bigIntegerSubtract3 = C0110.f143.pow(i2).subtract(BigInteger.ONE);
                BigInteger bigIntegerPow2 = C0110.f143.pow(c0110.f3626 - 1);
                BigInteger bigIntegerSubtract4 = C0110.f143.pow(c0110.f3626).subtract(BigInteger.ONE);
                do {
                    c0110.f149 = m4236(bigIntegerPow, bigIntegerSubtract3, BigInteger.ZERO, BigInteger.ONE, random);
                    c0110.f146 = m4236(bigIntegerPow2, bigIntegerSubtract4, BigInteger.ONE, c0110.f149, random);
                    bigInteger = c0110.f146;
                } while (bigInteger == null);
                BigInteger bigIntegerDivide = bigInteger.subtract(BigInteger.ONE).divide(c0110.f149);
                for (BigInteger bigIntegerAdd = C0110.f143; bigIntegerAdd.compareTo(c0110.f146.subtract(BigInteger.ONE)) < 0; bigIntegerAdd = bigIntegerAdd.add(BigInteger.ONE)) {
                    c0110.f144 = bigIntegerAdd.modPow(bigIntegerDivide, c0110.f146);
                    if (c0110.f144.compareTo(BigInteger.ONE) > 0) {
                        break;
                    }
                }
                c0110.f148 = new BigInteger(i2, random);
                while (true) {
                    if (c0110.f148.compareTo(BigInteger.ZERO) > 0 && c0110.f148.compareTo(c0110.f149) < 0) {
                        break;
                    }
                    c0110.f148 = new BigInteger(i2, random);
                }
                c0110.f145 = c0110.f144.modPow(c0110.f148, c0110.f146);
            }
            C0130 c0130 = new C0130();
            c0130.f259 = m4262(c0110.f146);
            c0130.f258 = m4262(c0110.f149);
            c0130.f256 = m4262(c0110.f144);
            BigInteger bigInteger3 = c0110.f145;
            if (bigInteger3 != null) {
                c0130.f257 = m4262(bigInteger3);
            }
            if (z) {
                c0130.f255 = m4262(c0110.f148);
            }
            return c0130;
        }
        if (abstractC0645 instanceof C0201) {
            C0201 c0201 = (C0201) abstractC0645;
            if (c0201.f719 == null) {
                Random random2 = new Random();
                BigInteger bigInteger4 = new BigInteger(c0201.f3626 - 1, 100, random2);
                c0201.f718 = new BigInteger(c0201.f3626, 100, random2);
                while (true) {
                    c0201.f719 = new BigInteger(c0201.f3626 / 2, random2);
                    BigInteger bigIntegerModPow = c0201.f719.modPow(new BigInteger(2, random2), c0201.f718);
                    BigInteger bigIntegerModPow2 = c0201.f719.modPow(bigInteger4, c0201.f718);
                    if (bigIntegerModPow.intValue() != 1 && bigIntegerModPow2.intValue() != 1) {
                        break;
                    }
                }
                do {
                    c0201.f717 = new BigInteger(c0201.f3626, random2);
                } while (c0201.f717.compareTo(c0201.f718.subtract(BigInteger.ONE)) >= 0);
                c0201.f716 = c0201.f719.modPow(c0201.f717, c0201.f718);
            }
            C0347 c0347 = new C0347();
            m4262(c0201.f718);
            m4262(c0201.f719);
            m4262(c0201.f716);
            if (z) {
                m4262(c0201.f717);
            }
            return c0347;
        }
        if (abstractC0645 instanceof C0163) {
            return ((C0163) abstractC0645).m3481(z);
        }
        throw new C0537(C0642.m5849(267, 28, 70));
    }

    public static byte[] m4227(int i) {
        byte[] bArr = new byte[i];
        m4246(bArr, 0, i);
        return bArr;
    }

    public static void m4226(byte[] bArr) {
        m4246(bArr, 0, bArr.length);
    }

    public static byte[] m4229(Object obj, byte[] bArr, boolean z) throws C0537 {
        String strM5849 = C0642.m5849(589, 7, 7);
        if (obj instanceof C0145) {
            AbstractC0645 abstractC0645M4239 = m4239(C0642.m5849(596, 3, 77));
            if (AbstractC0116.m3182()) {
                C0367 c0367 = (C0367) abstractC0645M4239;
                c0367.m4443(obj);
                return c0367.m4444(bArr, z, null, null, null);
            }
            C0506 c0506 = (C0506) abstractC0645M4239;
            c0506.m5191((C0145) obj);
            return c0506.m5190(bArr, z, null, null, null);
        }
        if (obj instanceof C0130) {
            strM5849 = C0642.m5849(599, 3, 116);
        }
        throw new C0537(C0663.m5885(613, 51, 54, C0663.m5890(TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, 11, 82, new StringBuilder(), strM5849)));
    }

    public static byte[] m4228(int i, String str, byte[] bArr, byte[] bArr2, int i2) throws C0537 {
        if (AbstractC0116.m3182()) {
            if (C0259.m3881(bArr)) {
                return m4255(i, str, C0259.m3853(bArr).toCharArray(), bArr2, i2);
            }
            throw new C0537(C0642.m5849(739, 39, 43));
        }
        return m4254(i, str, bArr, bArr2, i2);
    }

    public static AbstractC0403 m4223(String str) throws C0537 {
        return AbstractC0116.f198.mo3187(str);
    }

    public static void m4245(AbstractC0403 abstractC0403, byte[] bArr) throws C0537 {
        abstractC0403.mo4637(bArr);
    }

    public static void m4246(byte[] bArr, int i, int i2) {
        AbstractC0264 abstractC0264M4237;
        try {
            abstractC0264M4237 = m4237();
        } catch (C0537 unused) {
            abstractC0264M4237 = null;
        }
        m4242(abstractC0264M4237, bArr, i, i2);
    }

    public static AbstractC0317 m4238(String str, int i) throws C0537 {
        return AbstractC0116.m3183(i).mo3189(str);
    }

    public static byte[] m4261(String str, byte[] bArr) throws C0537 {
        return m4217(str).m4301(bArr, 0, bArr.length);
    }

    public static void m4242(AbstractC0264 abstractC0264, byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, bArr.length - i);
        byte[] bArr2 = new byte[iMin];
        abstractC0264.mo3180(bArr2);
        System.arraycopy(bArr2, 0, bArr, i, iMin);
    }

    public static byte[] m4257(Object obj, byte[] bArr, String str) throws C0537 {
        if (AbstractC0116.m3182()) {
            String strM5849 = C0642.m5849(467, 3, 17);
            if (obj instanceof C0130) {
                strM5849 = C0642.m5849(470, 3, 121);
            } else if (obj instanceof C0158) {
                strM5849 = C0642.m5849(473, 5, 64);
            }
            C0367 c0367 = (C0367) m4239(strM5849);
            c0367.m4443(obj);
            try {
                c0367.m4448(str, true, false, -1);
                c0367.m4449(bArr, 0, bArr.length);
                return c0367.m4452();
            } catch (C0537 e) {
                throw new C0537(e.getMessage());
            }
        }
        if (obj instanceof C0158) {
            C0158 c0158 = (C0158) obj;
            if (c0158.m3439() && C0259.m3856(str)) {
                C0163 c0163 = (C0163) m4239(C0642.m5849(478, 5, 56));
                c0163.f535 = false;
                c0163.m3478(c0158);
                if (c0163.f532.m3439()) {
                    return c0163.m3486(bArr);
                }
                return c0163.m3477(new C0235().m4300(bArr));
            }
        }
        return m4258(obj, m4217(str).m4300(bArr), str, false);
    }

    public static byte[] m4258(Object obj, byte[] bArr, String str, boolean z) throws C0537 {
        return m4259(obj, bArr, str, z, str, -1, false, true);
    }

    public static byte[] m4259(Object obj, byte[] bArr, String str, boolean z, String str2, int i, boolean z2, boolean z3) throws C0537 {
        C0163 c0163;
        byte[] bArrM4262;
        byte[] bArrM4263;
        if (AbstractC0116.m3182()) {
            String strM5849 = C0642.m5849(483, 3, 41);
            if (obj instanceof C0130) {
                strM5849 = C0642.m5849(486, 3, 121);
            } else if (obj instanceof C0158) {
                strM5849 = C0642.m5849(489, 5, 117);
            }
            C0367 c0367 = (C0367) m4239(strM5849);
            c0367.m4443(obj);
            try {
                if (c0367.f1927 == null) {
                    c0367.f1927 = Signature.getInstance(C0164.m3490(500, 8, 0) + c0367.f1928, C0164.m3490(TypedValues.PositionType.TYPE_CURVE_FIT, 6, 22));
                }
                c0367.f1927.initSign(c0367.f1931);
                if (c0367.f1928.equals(C0164.m3490(SyslogConstants.SYSLOG_PORT, 3, 93))) {
                    if (!z) {
                        c0367.f1927.update(c0367.m4453(str));
                    } else {
                        throw new C0537(C0164.m3490(517, 41, 74));
                    }
                }
                c0367.f1927.update(bArr);
                byte[] bArrSign = c0367.f1927.sign();
                return (c0367.f1928.equals(C0164.m3490(558, 5, 117)) && c0367.f1929 == 0) ? C0163.m3474(bArrSign, c0367.f1932) : bArrSign;
            } catch (Exception e) {
                throw new C0537(e.getMessage());
            }
        }
        if (obj instanceof C0145) {
            C0506 c0506 = (C0506) m4239(C0642.m5849(494, 3, 81));
            c0506.m5191((C0145) obj);
            if (z3) {
                if (z) {
                    return c0506.m5196(bArr, str, str2, i);
                }
                return c0506.m5198(bArr, C0506.m5188(str));
            }
            if (z) {
                return c0506.m5196(bArr, C0506.f2826, str2, i);
            }
            return c0506.m5198(bArr, C0506.f2826);
        }
        if (obj instanceof C0130) {
            C0110 c0110 = (C0110) m4239(C0642.m5849(497, 3, 74));
            c0110.m3156((C0130) obj);
            if (z2) {
                c0110.f147 = 1;
            }
            if (bArr != null) {
                if (str != null && (str.equals(C0642.m5845(132, 4, 50)) || str.equals(C0642.m5845(SyslogConstants.LOG_LOCAL1, 13, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)) || str.equals(C0642.m5845(CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, 6, 12)) || str.equals(C0642.m5845(ModuleDescriptor.MODULE_VERSION, 22, 79)) || str.equals(C0642.m5845(177, 6, 80)) || str.equals(C0642.m5845(183, 22, 15)) || str.equals(C0642.m5845(205, 6, 127)) || str.equals(C0642.m5845(211, 22, 7)) || str.equals(C0642.m5845(233, 6, 113)) || str.equals(C0642.m5845(239, 22, 0)) || str.equals(C0642.m5845(261, 9, 97)))) {
                    if (c0110.f144 != null) {
                        if (c0110.f148 != null) {
                            int iBitLength = c0110.f149.bitLength() / 8;
                            while (true) {
                                BigInteger bigInteger = new BigInteger(1, m4227(iBitLength));
                                if (!bigInteger.equals(BigInteger.ZERO) && bigInteger.compareTo(c0110.f149) < 0) {
                                    BigInteger bigInteger2 = new BigInteger(1, bArr);
                                    BigInteger bigIntegerMod = c0110.f144.modPow(bigInteger, c0110.f146).mod(c0110.f149);
                                    BigInteger bigIntegerMod2 = bigInteger.modInverse(c0110.f149).multiply(bigInteger2.add(c0110.f148.multiply(bigIntegerMod))).mod(c0110.f149);
                                    bArrM4262 = m4262(bigIntegerMod);
                                    bArrM4263 = m4262(bigIntegerMod2);
                                    if (bArrM4262.length == iBitLength && bArrM4263.length == iBitLength) {
                                        break;
                                    }
                                }
                            }
                            int i2 = c0110.f147;
                            if (i2 != 0) {
                                if (i2 == 1) {
                                    return m4266(bArrM4262, bArrM4263);
                                }
                                throw new C0537(C0642.m5845(64, 24, 47));
                            }
                            byte[] bArr2 = new byte[bArrM4262.length + bArrM4263.length];
                            System.arraycopy(bArrM4262, 0, bArr2, 0, bArrM4262.length);
                            System.arraycopy(bArrM4263, 0, bArr2, bArrM4262.length, bArrM4263.length);
                            return bArr2;
                        }
                        throw new C0537(C0642.m5845(30, 34, 35));
                    }
                    throw new C0537(C0642.m5845(7, 23, 117));
                }
                throw new C0537(C0642.m5845(RotationOptions.ROTATE_270, 74, 17));
            }
            throw new C0304(C0642.m5845(125, 7, 10));
        }
        if (obj instanceof C0158) {
            C0158 c0158 = (C0158) obj;
            if (c0158.m3439()) {
                c0163 = (C0163) m4239(C0642.m5849(500, 5, WebSocketProtocol.PAYLOAD_SHORT));
            } else {
                c0163 = (C0163) m4239(C0642.m5849(TypedValues.PositionType.TYPE_SIZE_PERCENT, 5, 85));
            }
            c0163.m3478(c0158);
            if (z2) {
                c0163.f530 = 1;
            }
            return c0163.m3477(bArr);
        }
        throw new C0537(C0663.m5885(522, 29, 34, new StringBuilder().append(C0642.m5849(TypedValues.PositionType.TYPE_POSITION_TYPE, 12, 60)).append(obj.toString())));
    }

    public static boolean m4248(Object obj, byte[] bArr, byte[] bArr2, String str) {
        return m4249(obj, bArr, bArr2, str, false);
    }

    public static boolean m4249(Object obj, byte[] bArr, byte[] bArr2, String str, boolean z) {
        try {
            if (AbstractC0116.m3182()) {
                String strM5849 = C0642.m5849(551, 3, 62);
                if (obj instanceof C0130) {
                    strM5849 = C0642.m5849(554, 3, 14);
                } else if (obj instanceof C0158) {
                    strM5849 = C0642.m5849(557, 5, 54);
                }
                C0367 c0367 = (C0367) m4239(strM5849);
                c0367.m4443(obj);
                try {
                    c0367.m4448(str, false, z, -1);
                    c0367.m4449(bArr2, 0, bArr2.length);
                    return c0367.f1928.equals(C0164.m3490(495, 5, 65)) ? c0367.m4450(bArr) : c0367.m4450(m4218(bArr));
                } catch (Exception e) {
                    throw new C0537(e.getMessage());
                }
            }
            if (obj instanceof C0158) {
                C0158 c0158 = (C0158) obj;
                if (c0158.m3439() && C0259.m3856(str)) {
                    C0163 c0163 = (C0163) m4239(C0642.m5849(562, 5, 15));
                    c0163.f535 = false;
                    c0163.m3478(c0158);
                    if (c0163.f532.m3439()) {
                        return c0163.m3485(bArr2, bArr);
                    }
                    return c0163.m3480(new C0235().m4300(bArr2), bArr);
                }
            }
            return m4250(obj, bArr, m4217(str).m4300(bArr2), str, z, str, -1, true);
        } catch (C0537 unused) {
            return false;
        }
    }

    public static boolean m4250(Object obj, byte[] bArr, byte[] bArr2, String str, boolean z, String str2, int i, boolean z2) {
        try {
            if (AbstractC0116.m3182()) {
                String strM5849 = C0642.m5849(567, 3, 23);
                if (obj instanceof C0145) {
                    strM5849 = C0642.m5849(570, 3, 97);
                } else if (obj instanceof C0158) {
                    strM5849 = C0642.m5849(573, 5, 112);
                }
                C0367 c0367 = (C0367) m4239(strM5849);
                c0367.m4443(obj);
                return c0367.m4451(bArr2, str, bArr, false);
            }
            if (obj instanceof C0145) {
                C0506 c0506 = (C0506) m4239(C0642.m5849(578, 3, 102));
                c0506.m5191((C0145) obj);
                return c0506.m5193(bArr2, str, bArr, z, str2, i, z2);
            }
            if (obj instanceof C0158) {
                C0163 c0163 = (C0163) m4239(C0642.m5849(581, 5, WebSocketProtocol.PAYLOAD_SHORT));
                c0163.m3478((C0158) obj);
                return c0163.m3480(bArr2, bArr);
            }
            C0110 c0110 = (C0110) m4239(C0642.m5849(586, 3, 82));
            c0110.m3156((C0130) obj);
            return c0110.m3157(bArr2, str, bArr);
        } catch (C0537 unused) {
            return false;
        }
    }

    public static byte[] m4260(Object obj, byte[] bArr, boolean z) throws C0537 {
        String strM5849 = C0642.m5849(664, 7, 36);
        if (obj instanceof C0145) {
            AbstractC0645 abstractC0645M4239 = m4239(C0642.m5849(671, 3, 16));
            if (abstractC0645M4239 instanceof C0367) {
                C0367 c0367 = (C0367) abstractC0645M4239;
                c0367.m4443(obj);
                return c0367.m4456(bArr, z, (byte[]) null, (Object) null, (String) null);
            }
            C0506 c0506 = (C0506) abstractC0645M4239;
            c0506.m5191((C0145) obj);
            return c0506.m5197(bArr, z, (byte[]) null, (Object) null, (String) null);
        }
        if (obj instanceof C0130) {
            strM5849 = C0642.m5849(674, 3, 115);
        }
        throw new C0537(C0663.m5885(688, 51, 11, C0663.m5890(677, 11, 127, new StringBuilder(), strM5849)));
    }

    public static byte[] m4253(int i, String str, String str2, byte[] bArr, int i2) throws C0537 {
        if (AbstractC0116.m3182()) {
            return m4255(i, str, str2.toCharArray(), bArr, i2);
        }
        return m4254(i, str, C0259.m3883(str2), bArr, i2);
    }

    public static byte[] m4255(int i, String str, char[] cArr, byte[] bArr, int i2) throws C0537 {
        if (cArr.length >= 14) {
            try {
                return SecretKeyFactory.getInstance(C0642.m5849(TypedValues.Custom.TYPE_COLOR, 10, 51) + str, C0642.m5849(912, 6, 13)).generateSecret(new PBEKeySpec(cArr, bArr, i, i2 * 8)).getEncoded();
            } catch (Exception e) {
                throw new C0537(e.getMessage());
            }
        }
        throw new C0537(C0663.m5885(895, 7, 116, new StringBuilder().append(C0642.m5849(778, 117, 3)).append(cArr.length)));
    }

    public static byte[] m4254(int i, String str, byte[] bArr, byte[] bArr2, int i2) throws C0537 {
        C0270 c0270 = new C0270();
        c0270.f1378 = str;
        int i3 = 8;
        c0270.f1373 = i2 * 8;
        c0270.f1377 = bArr;
        c0270.f1376 = i;
        c0270.f1375 = bArr2;
        AbstractC0403 abstractC0403M4223 = m4223(c0270.f1378);
        byte[] bArr3 = c0270.f1377;
        byte[] bArr4 = c0270.f1375;
        int i4 = c0270.f1376;
        int i5 = c0270.f1373 / 8;
        int iM4221 = m4221(abstractC0403M4223) / 8;
        c0270.f1374 = new byte[i5];
        if (i5 <= (Math.pow(2.0d, 32.0d) - 1.0d) * ((double) iM4221)) {
            if (bArr3 == null) {
                bArr3 = C0270.f1372;
            }
            if (bArr4 == null) {
                bArr4 = C0270.f1372;
            }
            int i6 = 0;
            int i7 = (i5 / iM4221) + (i5 % iM4221 > 0 ? 1 : 0);
            byte[] bArr5 = new byte[i7 * iM4221];
            int i8 = 0;
            int i9 = 0;
            while (i8 < i7) {
                i8++;
                byte[] bArr6 = new byte[bArr4.length + 4];
                System.arraycopy(bArr4, i6, bArr6, i6, bArr4.length);
                bArr6[bArr4.length] = (byte) ((i8 & ViewCompat.MEASURED_STATE_MASK) >> 24);
                bArr6[bArr4.length + 1] = (byte) ((16711680 & i8) >> 16);
                bArr6[bArr4.length + 2] = (byte) ((65280 & i8) >> i3);
                bArr6[bArr4.length + 3] = (byte) (i8 & 255);
                int iM4222 = m4221(abstractC0403M4223) / i3;
                byte[] bArr7 = new byte[iM4222];
                int i10 = i6;
                while (i10 < i4) {
                    abstractC0403M4223.mo3250();
                    abstractC0403M4223.mo4637(bArr3);
                    int i11 = i10;
                    abstractC0403M4223.mo3122(bArr6, i6, bArr6.length);
                    bArr6 = abstractC0403M4223.f1702;
                    for (int i12 = i6; i12 < iM4222; i12++) {
                        bArr7[i12] = (byte) (bArr7[i12] ^ bArr6[i12]);
                    }
                    i10 = i11 + 1;
                    i6 = 0;
                }
                System.arraycopy(bArr7, i6, bArr5, i9, iM4222);
                i9 += iM4221;
                i3 = 8;
            }
            int i13 = i6;
            System.arraycopy(bArr5, i13, c0270.f1374, i13, i5);
            return c0270.f1374;
        }
        throw new C0414(200, C0177.m3558(8, 20, 8));
    }

    public static byte[] m4263(C0158 c0158, C0158 c0159) throws C0537 {
        if (c0158 != null) {
            if (c0158.f488 == c0159.f488) {
                if (AbstractC0116.m3182()) {
                    return C0367.m4442(c0158, c0159, null, false, false, null);
                }
                return C0163.m3475(c0158.m3440() ? c0158.f491 : c0158.f486, c0159, false);
            }
            throw new C0537(C0642.m5849(960, 41, 64));
        }
        throw new C0537(C0642.m5849(918, 42, 49));
    }

    public static Object m4233(int i) throws C0537 {
        AbstractC0645 abstractC0645M4239 = m4239(C0642.m5849(1001, 4, 76));
        if (AbstractC0116.m3182()) {
            C0367 c0367 = (C0367) abstractC0645M4239;
            c0367.f1932 = i;
            return c0367.m4446(true);
        }
        C0163 c0163 = (C0163) abstractC0645M4239;
        c0163.f535 = false;
        c0163.f532.f488 = i;
        return c0163.m3481(true);
    }

    public static byte[] m4262(BigInteger bigInteger) {
        return m4218(bigInteger.toByteArray());
    }

    public static void m4240(C0130 c0130) {
        int i;
        int length = (((c0130.f259.length * 8) + 8) / 64) * 64;
        int i2 = length / 8;
        c0130.f257 = m4256(i2, c0130.f257);
        c0130.f256 = m4256(i2, c0130.f256);
        c0130.f259 = m4256(i2, c0130.f259);
        if (length < 2048) {
            i = SyslogConstants.LOG_LOCAL4;
        } else if (length < 3072) {
            byte[] bArr = c0130.f258;
            if (bArr.length > 33 || bArr.length < 31) {
                i = 224;
            } else {
                i = 256;
            }
        } else {
            i = 256;
        }
        int i3 = i / 8;
        c0130.f258 = m4256(i3, c0130.f258);
        c0130.f255 = m4256(i3, c0130.f255);
    }

    public static void m4241(C0145 c0145) {
        byte[] bArr = c0145.f334;
        if (bArr == null) {
            return;
        }
        int length = ((bArr.length - (bArr.length % 8)) + (bArr.length % 8 < 4 ? 0 : 8)) * 8;
        int i = length / 8;
        c0145.f334 = m4256(i, c0145.f334);
        c0145.f335 = m4256(i, c0145.f335);
        int i2 = length / 16;
        c0145.f331 = m4256(i2, c0145.f331);
        c0145.f333 = m4256(i2, c0145.f333);
        c0145.f330 = m4256(i2, c0145.f330);
        c0145.f332 = m4256(i2, c0145.f332);
        c0145.f329 = m4256(i2, c0145.f329);
    }

    public static byte[] m4256(int i, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = i - bArr.length;
        if (length == 0) {
            return bArr;
        }
        int length2 = bArr.length + length;
        byte[] bArr2 = new byte[length2];
        if (length > 0) {
            System.arraycopy(bArr, 0, bArr2, length, bArr.length);
            return bArr2;
        }
        System.arraycopy(bArr, -length, bArr2, 0, length2);
        return bArr2;
    }

    public static boolean m4252(C0509[] c0509Arr, int i) {
        for (C0509 c0509 : c0509Arr) {
            int i2 = c0509.f2860;
            if (i >= i2 && i <= c0509.f2859 && (i - i2) % c0509.f2858 == 0) {
                return true;
            }
        }
        return false;
    }

    public static void m4247(C0509[] c0509Arr) throws C0537 {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (C0509 c0509 : c0509Arr) {
            if (i2 == 0 || c0509.f2860 < i2) {
                i2 = c0509.f2860;
            }
            if (i3 == 0 || c0509.f2859 > i3) {
                i3 = c0509.f2859;
            }
            if (i == 0) {
                i = c0509.f2858;
            }
        }
        throw new C0537(C0642.m5849(1005, 40, 29) + i + C0642.m5849(1045, 14, 38) + i2 + C0642.m5849(1059, 5, 32) + i3 + ".");
    }

    public static BigInteger m4235(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) throws C0537 {
        BigInteger bigIntegerGcd = bigInteger3.gcd(bigInteger4);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        if (!bigIntegerGcd.equals(BigInteger.ONE)) {
            if (bigInteger.compareTo(bigIntegerGcd) > 0 || bigIntegerGcd.compareTo(bigInteger2) > 0) {
                return null;
            }
            return bigIntegerGcd;
        }
        if (bigInteger4.testBit(0)) {
            return m4235(bigInteger, bigInteger2, BigInteger.ONE.subtract(bigInteger3).multiply(bigInteger4).mod(bigIntegerValueOf).add(bigInteger3), bigInteger4.multiply(bigIntegerValueOf));
        }
        BigInteger bigIntegerAdd = bigInteger3.subtract(bigInteger).mod(bigInteger4).add(bigInteger);
        if (bigIntegerAdd.compareTo(bigInteger2) == 1) {
            return null;
        }
        C0587 c0587 = new C0587(bigIntegerAdd, bigInteger2, bigInteger4);
        for (BigInteger bigIntegerM5570 = c0587.m5570(); bigIntegerM5570 != null; bigIntegerM5570 = c0587.m5570()) {
            if (bigIntegerM5570.isProbablePrime(20)) {
                return bigIntegerM5570;
            }
        }
        return null;
    }

    public static BigInteger m4236(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, Random random) throws C0537 {
        BigInteger bigInteger5;
        BigInteger bigIntegerM4235;
        int i = 0;
        do {
            i++;
            if (i == 16) {
                BigInteger bigIntegerM4236 = m4235(bigInteger, bigInteger2, bigInteger3, bigInteger4);
                if (bigIntegerM4236 == null) {
                    return null;
                }
                if (m4235(bigIntegerM4236, bigInteger2, bigInteger3, bigInteger4) == null) {
                    return bigIntegerM4236;
                }
            }
            BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger);
            do {
                bigInteger5 = new BigInteger(bigIntegerSubtract.bitLength(), random);
            } while (bigInteger5.compareTo(bigIntegerSubtract) > 0);
            BigInteger bigIntegerAdd = bigInteger5.add(bigInteger);
            BigInteger bigIntegerAdd2 = bigIntegerAdd.add(bigInteger4.multiply(BigInteger.valueOf(bigInteger2.bitLength())));
            if (bigIntegerAdd2.compareTo(bigInteger2) > 0) {
                bigIntegerAdd2 = bigInteger2;
            }
            bigIntegerM4235 = m4235(bigIntegerAdd, bigIntegerAdd2, bigInteger3, bigInteger4);
        } while (bigIntegerM4235 == null);
        return bigIntegerM4235;
    }

    public static boolean m4251(byte[] bArr, C0620 c0620) {
        int i;
        int i2;
        int i3;
        int i4;
        int length = bArr == null ? 0 : bArr.length;
        if (length < 6 || bArr[0] != 48) {
            return false;
        }
        int i5 = bArr[1];
        int i6 = i5 & 255;
        if ((i5 & 128) > 0) {
            int i7 = i5 & 127;
            if (i7 > 4) {
                return false;
            }
            i6 = 0;
            int i8 = 0;
            i = 2;
            while (i8 < i7) {
                if (i >= length) {
                    return false;
                }
                i6 = (i6 << 8) | (bArr[i] & 255);
                i8++;
                i++;
            }
        } else {
            i = 2;
        }
        if (i6 + i > length) {
            return false;
        }
        int i9 = i + 1;
        if (bArr[i] != 2 || (i4 = (i2 = i + 2) + (i3 = bArr[i9] & 255)) > length) {
            return false;
        }
        c0620.f3436 = new byte[i3];
        System.arraycopy(bArr, i2, c0620.f3436, 0, i3);
        if (i4 >= length) {
            return false;
        }
        int i10 = i4 + 1;
        if (bArr[i4] != 2) {
            return false;
        }
        int i11 = i4 + 2;
        int i12 = bArr[i10] & 255;
        if (i11 + i12 > length) {
            return false;
        }
        c0620.f3435 = new byte[i12];
        System.arraycopy(bArr, i11, c0620.f3435, 0, i12);
        return true;
    }

    public static byte[] m4265(byte[] bArr) {
        int length = bArr.length;
        if (length > 1 && (bArr[0] & 255) >= 128) {
            byte[] bArr2 = new byte[length + 1];
            System.arraycopy(bArr, 0, bArr2, 1, length);
            return bArr2;
        }
        if (length <= 2 || bArr[0] != 0 || (bArr[1] & 255) >= 128) {
            return bArr;
        }
        int i = length - 1;
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr, 1, bArr3, 0, i);
        return bArr3;
    }

    public static byte[] m4266(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        byte[] bArrM4265 = m4265(bArr);
        byte[] bArrM4266 = m4265(bArr2);
        int length = bArrM4265.length + bArrM4266.length;
        int i = length + 4;
        int i2 = 1;
        if ((i & 128) > 0) {
            bArr3 = new byte[length + 7];
            bArr3[0] = 48;
            bArr3[1] = -127;
            i2 = 2;
        } else {
            bArr3 = new byte[length + 6];
            bArr3[0] = 48;
        }
        bArr3[i2] = (byte) (i & 255);
        int i3 = i2 + 2;
        bArr3[i2 + 1] = 2;
        int i4 = i2 + 3;
        bArr3[i3] = (byte) (bArrM4265.length & 255);
        System.arraycopy(bArrM4265, 0, bArr3, i4, bArrM4265.length);
        int length2 = i4 + bArrM4265.length;
        bArr3[length2] = 2;
        bArr3[length2 + 1] = (byte) (bArrM4266.length & 255);
        System.arraycopy(bArrM4266, 0, bArr3, length2 + 2, bArrM4266.length);
        return bArr3;
    }

    public static AbstractC0645 m4239(String str) throws C0537 {
        return AbstractC0116.f198.mo3191(str);
    }

    public static AbstractC0264 m4237() throws C0537 {
        int i;
        int i2;
        int i3;
        AbstractC0116 abstractC0116 = AbstractC0116.f198;
        if (C0320.f1713 == 2) {
            i = 9;
            i2 = 91;
            i3 = 434;
        } else {
            i = 3;
            i2 = 33;
            i3 = GrpcUtil.DEFAULT_PORT_SSL;
        }
        return abstractC0116.mo3188(C0642.m5849(i3, i, i2));
    }
}
