package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.util.Vector;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0133 extends C0357 {

    public static final String[] f273 = {C0164.m3509(93, 10, 12), C0164.m3509(RNMBXStyleValue.InterpolationModeIdentity, 10, SyslogConstants.LOG_CLOCK), C0164.m3509(113, 16, 121), C0164.m3509(129, 17, 47), C0164.m3509(CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA, 7, 117)};

    public C0517 f278;

    public boolean f274 = true;

    public int f277 = 0;

    public int f279 = 0;

    public int f275 = 0;

    public Vector f276 = new Vector();

    public C0133(C0517 c0517) {
        this.f278 = c0517;
    }

    public static byte[] m3258(int i, int i2) {
        C0301 c0301 = new C0301();
        int i3 = (1 << i2) - 1;
        if (i < i3) {
            c0301.m4177((byte) (i & 255));
        } else {
            c0301.m4177((byte) (i3 & 255));
            int i4 = i - i3;
            while (i4 >= 128) {
                c0301.m4177((byte) (((i4 % 128) + 128) & 255));
                i4 /= 128;
            }
            c0301.m4177((byte) (i4 & 255));
        }
        return c0301.m4182();
    }

    public boolean m3259() {
        return (this.f1895 & 1) == 1;
    }

    public static String m3256(C0382 c0382) {
        boolean z = (c0382.m4485(c0382.f1970) & 128) == 128;
        int iM3255 = m3255(c0382, 7);
        if (z) {
            return C0498.m5182(c0382.m4484(iM3255));
        }
        return C0259.m3853(c0382.m4484(iM3255));
    }

    @Override
    public byte[] mo3261() {
        int i;
        int i2;
        byte[] bArrM3258;
        C0382 c0382 = new C0382();
        int i3 = this.f277;
        if (i3 > 0) {
            c0382.m4487(i3);
            this.f1895 |= 8;
        }
        if ((this.f1895 & 32) == 32) {
            c0382.m4503(this.f275);
            c0382.m4487(this.f279);
        }
        boolean z = this.f274;
        C0517 c0517 = this.f278;
        Vector vector = c0517.f2976;
        C0638 c0638 = c0517.f2977;
        C0531 c0531 = c0638.f3506;
        String str = c0638.f3505;
        int i4 = 1;
        String[] strArrM3907 = str.length() > 0 ? C0259.m3907(str, ",", true) : new String[0];
        C0382 c0383 = new C0382();
        int i5 = 0;
        while (i5 < vector.size()) {
            String lowerCase = ((C0654) vector.get(i5)).f3642.toLowerCase();
            String str2 = ((C0654) vector.get(i5)).f3641;
            int i6 = 0;
            while (true) {
                if (i6 >= strArrM3907.length) {
                    i = 0;
                    break;
                }
                if (lowerCase.equalsIgnoreCase(strArrM3907[i6])) {
                    i = i4;
                    break;
                }
                i6++;
            }
            int i7 = i4;
            while (true) {
                if (i7 >= c0531.f3101.size()) {
                    i7 = -1;
                    break;
                }
                if (((C0654) c0531.f3101.get(i7)).f3642.equals(lowerCase) && ((C0654) c0531.f3101.get(i7)).f3641.equals(str2)) {
                    break;
                }
                i7++;
            }
            if (i7 != -1) {
                byte[] bArrM3259 = m3258(i7, 7);
                bArrM3259[0] = (byte) (bArrM3259[0] | 128);
                c0383.m4500(bArrM3259);
            } else {
                int i8 = i4;
                while (true) {
                    if (i8 >= c0531.f3101.size()) {
                        i8 = -1;
                        break;
                    }
                    if (((C0654) c0531.f3101.get(i8)).f3642.equals(lowerCase)) {
                        break;
                    }
                    i8++;
                }
                if (i8 != -1) {
                    if (i != 0) {
                        bArrM3258 = m3258(i8, 4);
                        bArrM3258[0] = (byte) (bArrM3258[0] & Ascii.SI);
                    } else {
                        byte[] bArrM32510 = m3258(i8, 6);
                        bArrM32510[0] = (byte) (64 | bArrM32510[0]);
                        bArrM3258 = bArrM32510;
                    }
                    c0383.m4500(bArrM3258);
                    i2 = 7;
                } else {
                    if (i != 0) {
                        c0383.m4509((byte) 0);
                    } else {
                        c0383.m4509(SignedBytes.MAX_POWER_OF_TWO);
                    }
                    if (z) {
                        byte[] bArrM5184 = C0498.m5184(lowerCase);
                        int length = bArrM5184.length;
                        byte[] bArrM32511 = m3258(length, 7);
                        bArrM32511[0] = (byte) (bArrM32511[0] | 128);
                        c0383.m4500(bArrM32511);
                        c0383.m4501(bArrM5184, 0, length);
                        i2 = 7;
                    } else {
                        i2 = 7;
                        c0383.m4500(m3258(lowerCase.length(), 7));
                        c0383.m4500(C0259.m3883(lowerCase));
                    }
                }
                if (z) {
                    byte[] bArrM5185 = C0498.m5184(str2);
                    int length2 = bArrM5185.length;
                    byte[] bArrM32512 = m3258(length2, i2);
                    bArrM32512[0] = (byte) (bArrM32512[0] | 128);
                    c0383.m4500(bArrM32512);
                    c0383.m4501(bArrM5185, 0, length2);
                } else {
                    c0383.m4500(m3258(str2.length(), i2));
                    c0383.m4500(C0259.m3883(str2));
                }
                if (i == 0) {
                    c0531.m5407(lowerCase, str2);
                    c0531.m5406(4096);
                }
            }
            i5++;
            i4 = 1;
        }
        c0382.m4500(c0383.m4502());
        int i9 = this.f277;
        if (i9 > 0) {
            c0382.m4500(new byte[i9]);
        }
        this.f1897 = 1;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        C0382 c0382 = new C0382(this.f1894);
        if ((this.f1895 & 8) == 8) {
            int iM4496 = c0382.m4496() & 255;
            this.f277 = iM4496;
            if (iM4496 >= this.f1898) {
                throw new C0414(1, C0164.m3509(161, 75, 92));
            }
        }
        if ((this.f1895 & 32) == 32) {
            this.f275 = c0382.m4506();
            this.f279 = c0382.m4496() & 255;
        }
        byte[] bArrM4504 = c0382.m4504();
        this.f276 = m3257(bArrM4504, 0, bArrM4504.length - this.f277, this.f278);
    }

    public static int m3255(C0382 c0382, int i) {
        byte bM4496;
        int i2 = (1 << i) - 1;
        int iM4496 = c0382.m4496() & 255 & i2;
        if (iM4496 < i2) {
            return iM4496;
        }
        int i3 = 0;
        do {
            bM4496 = c0382.m4496();
            iM4496 += (bM4496 & 127) * (1 << i3);
            i3 += 7;
        } while ((bM4496 & 128) == 128);
        return iM4496;
    }

    public static Vector m3257(byte[] bArr, int i, int i2, C0517 c0517) {
        String str;
        String strM3256;
        String strM3257;
        String strM3258;
        String strM3259;
        C0531 c0531 = c0517.f2977.f3497;
        Vector vector = new Vector();
        C0382 c0382 = new C0382(bArr);
        while (true) {
            int i3 = c0382.f1970;
            if (i3 + i >= i2) {
                return vector;
            }
            byte bM4485 = c0382.m4485(i3);
            if ((bM4485 & 128) == 128) {
                int iM3255 = m3255(c0382, 7);
                str = c0531.m5404(iM3255).f3642;
                strM3256 = c0531.m5404(iM3255).f3641;
            } else if ((bM4485 & SignedBytes.MAX_POWER_OF_TWO) == 64) {
                if (bM4485 != 64) {
                    strM3257 = c0531.m5404(m3255(c0382, 6)).f3642;
                } else {
                    c0382.m4496();
                    strM3257 = m3256(c0382);
                }
                str = strM3257;
                strM3256 = m3256(c0382);
                c0531.m5407(str, strM3256);
                c0531.m5406(c0517.f2977.f3500);
            } else if ((bM4485 & 16) == 16) {
                if (bM4485 != 16) {
                    strM3258 = c0531.m5404(m3255(c0382, 4)).f3642;
                } else {
                    c0382.m4496();
                    strM3258 = m3256(c0382);
                }
                str = strM3258;
                strM3256 = m3256(c0382);
            } else if ((bM4485 & Ascii.SI) == bM4485) {
                if (bM4485 != 0) {
                    strM3259 = c0531.m5404(m3255(c0382, 4)).f3642;
                } else {
                    c0382.m4496();
                    strM3259 = m3256(c0382);
                }
                str = strM3259;
                strM3256 = m3256(c0382);
            } else if ((bM4485 & 32) != 32) {
                str = "";
                strM3256 = "";
            } else {
                int iM3256 = m3255(c0382, 5);
                c0517.f2977.f3500 = iM3256;
                c0531.m5406(iM3256);
                c0517.f2977.m5754(C0164.m3509(236, 60, 76) + iM3256 + ".", C0639.f3523);
            }
            vector.add(new C0654(str, strM3256));
        }
    }
}
