package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;

public class C0462 extends AbstractC0095 {
    public static byte[] m5104(byte[] bArr) {
        int length = bArr.length / 2;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public void m5109(byte[] bArr, byte[] bArr2, C0561 c0561) {
        m5108(bArr, c0561, true);
        String strM5535 = c0561.f3169.m5535();
        if (!C0259.m3856(strM5535)) {
            if (!strM5535.equals(C0554.f3154)) {
                throw new C0414(102, C0128.m3242(TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 34, 19));
            }
            C0132 c0132 = new C0132(null, new Object());
            c0132.f266 = C0132.f260;
            c0132.f268 = bArr2;
            try {
                c0132.f262 = true;
                c0132.f265.m4169();
                c0132.m3251(true);
                c0132.f262 = false;
                bArr2 = c0132.f265.m4182();
            } catch (Throwable th) {
                c0132.f262 = false;
                throw th;
            }
        }
        C0387 c0387 = new C0387();
        c0561.f3169.m3145(c0387);
        int i = c0561.f3169.m5538() ? 12 : 16;
        if (c0561.f3166.m4533() <= 0) {
            C0558.m5501(c0561.f3166, i);
        } else if (i != c0561.f3166.m4533()) {
            throw new C0414(117, C0128.m3242(0, 11, 3));
        }
        if (c0561.f3169.m5538()) {
            C0392 c0392 = new C0392(this, this);
            c0392.f2041 = 6;
            c0392.m4597();
            c0392.f2007.m4543(bArr);
            c0392.m4617(c0561.f3166.m4554());
            c0392.m4627(c0387.m4554());
            c0392.f2038 = 128;
            c0392.m4600(bArr2);
            c0392.m4603();
            c0561.f3167.m4543(c0392.m4608());
            c0561.f3165.m4543(c0392.f2005.m4554());
            return;
        }
        if (!c0561.f3169.m5546()) {
            throw new C0414(RNMBXStyleValue.InterpolationModeIdentity, C0128.m3242(11, 33, 101));
        }
        int length = bArr.length;
        if (length != 32 && length != 48 && length != 64) {
            throw new C0414(106, C0128.m3242(535, 17, 61));
        }
        byte[] bArrM4554 = c0561.f3166.m4554();
        byte[] bArr3 = new byte[8];
        m5105(c0387.m4533() * 8, bArr3, 0);
        byte[] bArrM5104 = m5104(bArr);
        byte[] bArrM5106 = m5106(bArr);
        C0392 c0393 = new C0392(null, new Object());
        c0393.f2016 = 0;
        c0393.f2041 = 0;
        c0393.m4617(bArrM4554);
        c0393.m4597();
        c0393.f2007.m4543(bArrM5106);
        c0393.m4597();
        c0393.f2034.m4543(bArr2);
        c0393.m4603();
        byte[] bArrM4608 = c0393.m4608();
        int i2 = length / 2;
        c0561.f3165.m4537(m5107(bArrM5104, c0387.m4554(), bArrM4554, bArrM4608, bArr3, i2), i2);
        c0561.f3167.m4543(bArrM4608);
    }

    public byte[] m5110(byte[] bArr, C0561 c0561) {
        byte[] bArrM4608;
        boolean z;
        C0387 c0387 = new C0387();
        m5108(bArr, c0561, false);
        c0561.f3169.m3145(c0387);
        if (c0561.f3169.m5538()) {
            try {
                C0392 c0392 = new C0392(this, this);
                c0392.f2041 = 6;
                c0392.m4597();
                c0392.f2007.m4543(bArr);
                c0392.m4617(c0561.f3166.m4554());
                c0392.m4627(c0387.m4554());
                c0392.f2005.m4543(c0561.f3165.m4554());
                c0392.m4600(c0561.f3167.m4554());
                c0392.m4601();
                bArrM4608 = c0392.m4608();
            } catch (Exception e) {
                throw new C0414(115, C0128.m3242(44, 18, 2) + C0414.m4672(e));
            }
        } else if (c0561.f3169.m5546()) {
            byte[] bArrM4554 = c0561.f3166.m4554();
            byte[] bArrM4555 = c0561.f3167.m4554();
            byte[] bArrM4556 = c0561.f3165.m4554();
            int length = bArr.length;
            if (length != 32 && length != 48 && length != 64) {
                throw new C0414(106, C0128.m3242(552, 17, 82));
            }
            byte[] bArrM5104 = m5104(bArr);
            byte[] bArrM5106 = m5106(bArr);
            byte[] bArr2 = new byte[8];
            m5105(c0387.m4533() * 8, bArr2, 0);
            C0392 c0393 = new C0392(null, new Object());
            c0393.f2016 = 0;
            c0393.f2041 = 0;
            c0393.m4597();
            c0393.f2046.m4543(bArrM4554);
            c0393.m4597();
            c0393.f2007.m4543(bArrM5106);
            c0393.m4597();
            c0393.f2034.m4543(bArrM4555);
            try {
                c0393.m4601();
                z = true;
            } catch (C0414 unused) {
                z = false;
            }
            int i = length / 2;
            if (bArrM4556.length != i) {
                z = false;
            }
            byte[] bArrM5107 = m5107(bArrM5104, c0387.m4554(), bArrM4554, bArrM4555, bArr2, i);
            for (int i2 = 0; i2 < i; i2++) {
                if (bArrM5107[i2] != bArrM4556[i2]) {
                    z = false;
                }
            }
            if (z) {
                bArrM4608 = c0393.m4608();
            } else {
                throw new C0414(115, C0128.m3242(569, 40, 46));
            }
        } else {
            throw new C0414(RNMBXStyleValue.InterpolationModeIdentity, C0128.m3242(62, 33, RNMBXStyleValue.InterpolationModeIdentity));
        }
        String strM5535 = c0561.f3169.m5535();
        if (strM5535.length() <= 0) {
            return bArrM4608;
        }
        if (strM5535.equals(C0554.f3154)) {
            try {
                C0132 c0132 = new C0132(null, new Object());
                c0132.f266 = C0132.f260;
                c0132.f268 = bArrM4608;
                try {
                    c0132.f262 = true;
                    c0132.f265.m4169();
                    c0132.m3252();
                    return c0132.f265.m4182();
                } finally {
                    c0132.f262 = false;
                }
            } catch (C0414 e2) {
                throw new C0414(102, C0128.m3242(677, 30, 112) + e2.getMessage());
            }
        }
        throw new C0414(102, C0128.m3242(643, 34, 122));
    }

    public final void m5108(byte[] bArr, C0561 c0561, boolean z) {
        if (!z) {
            if (c0561.f3169.m5541()) {
                if (c0561.f3168.m4533() > 0) {
                    throw new C0414(101, C0128.m3242(95, 102, 54));
                }
            } else if (!c0561.f3169.m5544() && c0561.f3168.m4533() <= 0) {
                throw new C0414(101, C0128.m3242(197, 66, 73));
            }
            if (c0561.f3166.m4533() > 0) {
                if (c0561.f3167.m4533() > 0) {
                    if (c0561.f3165.m4533() <= 0) {
                        throw new C0414(101, C0128.m3242(382, 71, 110));
                    }
                } else {
                    throw new C0414(101, C0128.m3242(TypedValues.AttributesType.TYPE_PIVOT_TARGET, 64, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                }
            } else {
                throw new C0414(101, C0128.m3242(263, 55, SyslogConstants.LOG_CLOCK));
            }
        }
        if (bArr == null || c0561.f3169.m5534() != bArr.length) {
            throw new C0414(101, C0128.m3242(453, 82, 97));
        }
    }

    public static byte[] m5106(byte[] bArr) {
        int length = bArr.length / 2;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, bArr.length / 2, bArr2, 0, length);
        return bArr2;
    }

    public static byte[] m5107(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i) {
        C0104 c0104 = new C0104(null, new Object());
        if (i == 16) {
            c0104.m3147(13);
        } else if (i == 24) {
            c0104.m3147(14);
        } else {
            c0104.m3147(15);
        }
        c0104.f137 = false;
        c0104.f139.m4543(bArr);
        c0104.m3154(bArr2, false);
        c0104.m3154(bArr3, false);
        c0104.m3154(bArr4, false);
        return c0104.m3154(bArr5, true);
    }

    public static void m5105(long j, byte[] bArr, int i) {
        for (int i2 = 7; i2 >= 0; i2--) {
            bArr[i + i2] = (byte) (255 & j);
            j >>>= 8;
        }
    }
}
