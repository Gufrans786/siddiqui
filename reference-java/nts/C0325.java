package nts;

import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

public class C0325 {

    public static boolean f1737 = false;

    public static C0145 f1738;

    public static Object f1739 = new Object();

    public byte[] f1740;

    public byte[] f1741;

    public boolean f1742;

    public byte[] f1743;

    public int f1744;

    public byte[] f1745;

    public short f1746;

    public byte[] f1749;

    public byte[] f1750;

    public AbstractC0453 f1751;

    public int f1752;

    public C0335 f1753;

    public int f1754;

    public byte[] f1755;

    public short f1756;

    public byte[] f1758;

    public C0145 f1760;

    public byte[] f1761;

    public byte[] f1762;

    public byte[] f1765;

    public byte[] f1766;

    public boolean f1767 = true;

    public boolean f1759 = false;

    public C0335 f1747 = null;

    public int f1748 = 0;

    public boolean f1763 = false;

    public C0567 f1757 = new C0567();

    public C0567 f1764 = new C0567();

    public static C0145 m4315() throws C0537 {
        if (!f1737) {
            synchronized (f1739) {
                if (!f1737) {
                    AbstractC0645 abstractC0645M4239 = C0308.m4239(C0128.m3224(43, 3, 123));
                    if (!C0308.m4252(abstractC0645M4239.f3625, 512)) {
                        C0308.m4247(abstractC0645M4239.f3625);
                        throw null;
                    }
                    abstractC0645M4239.f3626 = 512;
                    f1738 = (C0145) C0308.m4234(abstractC0645M4239, true);
                    f1737 = true;
                }
            }
        }
        return f1738;
    }

    public static boolean m4316(int i) {
        return i == 772;
    }

    public boolean m4317() {
        return this.f1746 == 771;
    }

    public boolean m4318() {
        return m4316(this.f1746);
    }

    public boolean m4321() {
        return this.f1746 == 768;
    }

    public boolean m4322() {
        if (!this.f1757.f3183.m5230()) {
            return false;
        }
        C0335 c0335 = this.f1753;
        if (c0335 != null) {
            try {
                return new BigInteger(1, m4325(c0335).f334).bitLength() > 512;
            } catch (C0537 unused) {
            }
        }
        return true;
    }

    public boolean m4324() {
        return this.f1746 >= 769;
    }

    public boolean m4327() {
        return this.f1746 >= 770;
    }

    public void m4329() {
        this.f1748 = this.f1757.f3183.m5232(this.f1746);
    }

    public void m4332(C0145 c0145) {
        this.f1760 = c0145;
        this.f1763 = true;
    }

    public void m4320(byte[] bArr, byte[] bArr2) throws C0537 {
        if (this.f1767) {
            this.f1757.m5518(bArr2);
            this.f1764.m5518(bArr);
        } else {
            this.f1757.m5518(bArr);
            this.f1764.m5518(bArr2);
        }
    }

    public void m4323(byte[] bArr, byte[] bArr2) throws C0537 {
        if (this.f1767) {
            this.f1757.f3183.m5234(bArr, bArr2);
        } else {
            this.f1764.f3183.m5234(bArr, bArr2);
        }
    }

    public void m4326(byte[] bArr, byte[] bArr2) throws C0537 {
        if (this.f1767) {
            this.f1764.f3183.m5234(bArr, bArr2);
        } else {
            this.f1757.f3183.m5234(bArr, bArr2);
        }
    }

    public int m4330() {
        C0145 c0145M4325;
        AbstractC0453 abstractC0453 = this.f1751;
        if (abstractC0453 != null) {
            return abstractC0453.f2588;
        }
        if (m4322()) {
            return 512;
        }
        try {
            if (this.f1767) {
                c0145M4325 = m4319(this.f1747);
            } else {
                c0145M4325 = m4325(this.f1753);
            }
            return new BigInteger(1, c0145M4325.f334).bitLength();
        } catch (Exception unused) {
            return 0;
        }
    }

    public byte[] m4328(byte[] bArr) throws C0537 {
        DSAParams params;
        C0335 c0335 = this.f1753;
        if (c0335.m4371() == 1) {
            String strM3224 = C0128.m3224(162, 7, 60);
            if (this.f1748 == 1) {
                strM3224 = C0128.m3224(169, 6, 69);
            }
            if (this.f1748 == 2) {
                strM3224 = C0128.m3224(175, 6, 114);
            }
            C0145 c0145M4325 = m4325(c0335);
            if (m4318()) {
                strM3224 = C0208.m3679(this.f1744);
            }
            return C0308.m4258(c0145M4325, bArr, strM3224, m4335(this.f1744));
        }
        if (c0335.m4371() == 3) {
            String strM3225 = C0128.m3224(181, 7, 65);
            if (this.f1748 == 1) {
                strM3225 = C0128.m3224(188, 6, 50);
            }
            if (this.f1748 == 2) {
                strM3225 = C0128.m3224(194, 6, 83);
            }
            if (m4318()) {
                strM3225 = C0208.m3679(this.f1744);
            }
            return C0308.m4259((Object) m4331(c0335), bArr, strM3225, false, (String) null, 0, true, true);
        }
        if (m4318() && c0335.m4371() == 4) {
            return C0308.m4257(m4331(c0335), bArr, "");
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) c0335.m4367();
        C0130 c0130 = new C0130();
        if (dSAPrivateKey != null) {
            c0130.f255 = m4337(dSAPrivateKey.getX());
            params = dSAPrivateKey.getParams();
        } else {
            params = null;
        }
        if (params != null) {
            c0130.f259 = m4337(params.getP());
            c0130.f256 = m4337(params.getG());
            c0130.f258 = m4337(params.getQ());
        }
        byte[] bArrM4258 = C0308.m4258((Object) c0130, bArr, C0128.m3224(200, 4, 45), false);
        byte[] bArr2 = new byte[20];
        int length = bArrM4258.length - 20;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArrM4258, 0, bArr2, 0, 20);
        System.arraycopy(bArrM4258, 20, bArr3, 0, length);
        return C0308.m4266(bArr2, bArr3);
    }

    public static byte[] m4314(byte[] bArr) {
        if (bArr[0] != 0) {
            return bArr;
        }
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 1, bArr2, 0, length);
        return bArr2;
    }

    public final C0145 m4319(C0335 c0335) throws C0414 {
        if (c0335 != null && c0335.m4371() == 1) {
            if (this.f1763) {
                return this.f1760;
            }
            RSAPublicKey rSAPublicKey = (RSAPublicKey) c0335.m4361();
            C0145 c0145 = new C0145();
            if (rSAPublicKey != null) {
                c0145.f334 = m4337(rSAPublicKey.getModulus());
                c0145.f336 = m4337(rSAPublicKey.getPublicExponent());
            }
            return c0145;
        }
        throw new C0414(278, C0128.m3224(248, 27, 51));
    }

    public void m4334(byte[] bArr, byte[] bArr2) throws C0537 {
        if (this.f1767) {
            this.f1757.f3183.f2952 = bArr2;
            this.f1764.f3183.f2952 = bArr;
        } else {
            this.f1757.f3183.f2952 = bArr;
            this.f1764.f3183.f2952 = bArr2;
        }
    }

    public byte[] m4339(byte[] bArr) throws C0537 {
        int i = this.f1748;
        if (i == 0) {
            return C0308.m4214(C0128.m3224(12, 7, 61)).m4300(bArr);
        }
        if (i == 1) {
            return C0308.m4217(C0128.m3224(6, 6, 124)).m4300(bArr);
        }
        if (i == 2) {
            return C0308.m4217(C0128.m3224(0, 6, 10)).m4300(bArr);
        }
        throw new C0414(276, C0128.m3224(19, 24, 51));
    }

    public byte[] m4340(byte[] bArr, boolean z) throws C0537 {
        byte[] bArrM4339 = m4339(bArr);
        C0301 c0301 = new C0301();
        for (int i = 0; i < 64; i++) {
            c0301.m4177((byte) 32);
        }
        if (this.f1767) {
            if (z) {
                c0301.m4180(C0208.f761);
            } else {
                c0301.m4180(C0208.f739);
            }
        } else if (z) {
            c0301.m4180(C0208.f739);
        } else {
            c0301.m4180(C0208.f761);
        }
        c0301.m4177((byte) 0);
        c0301.m4180(bArrM4339);
        int i2 = z ? this.f1744 : this.f1754;
        if (i2 != 2055 && i2 != 2056) {
            return C0308.m4217(C0208.m3679(i2)).m4300(c0301.m4182());
        }
        return c0301.m4182();
    }

    public final C0145 m4325(C0335 c0335) throws C0414, C0537 {
        if (c0335 != null) {
            C0145 c0145 = new C0145();
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) c0335.m4367();
            c0145.f334 = m4337(rSAPrivateKey.getModulus());
            c0145.f335 = m4337(rSAPrivateKey.getPrivateExponent());
            if (rSAPrivateKey instanceof RSAPrivateCrtKey) {
                RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) rSAPrivateKey;
                c0145.f336 = m4337(rSAPrivateCrtKey.getPublicExponent());
                c0145.f331 = m4337(rSAPrivateCrtKey.getPrimeP());
                c0145.f333 = m4337(rSAPrivateCrtKey.getPrimeQ());
                c0145.f329 = m4337(rSAPrivateCrtKey.getPrimeExponentP());
                c0145.f330 = m4337(rSAPrivateCrtKey.getPrimeExponentQ());
                c0145.f332 = m4337(rSAPrivateCrtKey.getCrtCoefficient());
            }
            return c0145;
        }
        throw new C0414(278, C0128.m3224(204, 44, 43));
    }

    public byte[] m4338(boolean z) {
        if (z) {
            if (m4321()) {
                return this.f1767 ? C0208.f759 : C0208.f772;
            }
            return this.f1767 ? C0208.f738 : C0208.f744;
        }
        if (m4321()) {
            return this.f1767 ? C0208.f772 : C0208.f759;
        }
        return this.f1767 ? C0208.f744 : C0208.f738;
    }

    public void m4333(C0325 c0325) {
        this.f1749 = c0325.f1749;
        this.f1756 = c0325.f1756;
        this.f1759 = c0325.f1759;
        this.f1743 = c0325.f1743;
        this.f1760 = c0325.f1760;
        this.f1763 = c0325.f1763;
        this.f1753 = c0325.f1753;
        this.f1747 = c0325.f1747;
        this.f1746 = c0325.f1746;
        this.f1766 = c0325.f1766;
        this.f1741 = c0325.f1741;
        this.f1748 = c0325.f1748;
    }

    public byte[] m4342(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) throws Exception {
        if (bArr2.length > 0) {
            bArr3 = C0208.m3687(bArr2, bArr3);
        }
        return m4341(bArr, bArr3, i);
    }

    public byte[] m4341(byte[] bArr, byte[] bArr2, int i) throws Exception {
        int i2 = 1;
        if (m4321()) {
            if (!C0320.f1718) {
                AbstractC0317 abstractC0317M4214 = C0308.m4214(C0465.m5120(57, 3, 1));
                AbstractC0317 abstractC0317M4215 = C0308.m4214(C0465.m5120(60, 4, 125));
                byte[] bArr3 = new byte[i];
                byte[] bArr4 = new byte[100];
                byte b = 65;
                int length = 0;
                while (i > 0) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        bArr4[i3] = b;
                    }
                    abstractC0317M4215.mo3250();
                    abstractC0317M4215.mo3412(bArr4, 0, i2);
                    System.arraycopy(bArr4, 0, bArr4, 0, i2);
                    int length2 = bArr.length;
                    abstractC0317M4215.mo3412(bArr, 0, length2);
                    System.arraycopy(bArr, 0, bArr, 0, length2);
                    abstractC0317M4215.mo3122(bArr2, 0, bArr2.length);
                    byte[] bArr5 = abstractC0317M4215.f1702;
                    abstractC0317M4214.mo3250();
                    int length3 = bArr.length;
                    abstractC0317M4214.mo3412(bArr, 0, length3);
                    System.arraycopy(bArr, 0, bArr, 0, length3);
                    abstractC0317M4214.mo3122(bArr5, 0, bArr5.length);
                    byte[] bArr6 = abstractC0317M4214.f1702;
                    System.arraycopy(bArr6, 0, bArr3, length, bArr6.length);
                    i -= bArr6.length;
                    length += bArr6.length;
                    i2++;
                    b = (byte) (b + 1);
                }
                return bArr3;
            }
            throw new C0414(C0465.m5120(20, 37, 37));
        }
        int i4 = this.f1748;
        if (i4 == 1) {
            if (C0320.f1718) {
                return C0234.m3709(bArr, bArr2, i, 1);
            }
            AbstractC0403 abstractC0403M4223 = C0308.m4223(C0465.m5120(0, 10, 111));
            abstractC0403M4223.mo4637(bArr);
            return C0234.m3707(abstractC0403M4223, bArr2, i);
        }
        if (i4 == 2) {
            if (C0320.f1718) {
                return C0234.m3709(bArr, bArr2, i, 2);
            }
            AbstractC0403 abstractC0403M4224 = C0308.m4223(C0465.m5120(10, 10, 80));
            abstractC0403M4224.mo4637(bArr);
            return C0234.m3707(abstractC0403M4224, bArr2, i);
        }
        return C0234.m3708(bArr, bArr2, i);
    }

    public final boolean m4336(C0335 c0335, byte[] bArr, byte[] bArr2, String str, boolean z) throws Exception {
        DSAPublicKey dSAPublicKey;
        if (c0335.m4371() == 1) {
            return C0308.m4250((Object) m4319(c0335), bArr2, bArr, str, z, str, -1, true);
        }
        if (c0335.m4371() == 3) {
            return C0308.m4250((Object) m4331(c0335), bArr2, bArr, str, false, str, -1, true);
        }
        if (c0335.m4371() == 4) {
            return C0308.m4248(m4331(c0335), bArr2, bArr, "");
        }
        if (c0335.m4371() == 2 && (dSAPublicKey = (DSAPublicKey) c0335.m4361()) != null) {
            C0130 c0130 = new C0130();
            c0130.f257 = m4337(dSAPublicKey.getY());
            DSAParams params = dSAPublicKey.getParams();
            if (params != null) {
                c0130.f259 = m4337(params.getP());
                c0130.f256 = m4337(params.getG());
                c0130.f258 = m4337(params.getQ());
            }
            return C0308.m4250((Object) c0130, bArr2, bArr, str, false, str, -1, true);
        }
        throw new C0414(278, C0128.m3224(319, 27, 97));
    }

    public final C0158 m4331(C0335 c0335) {
        if (c0335.m4371() == 4) {
            return (C0158) C0671.m5908(c0335);
        }
        return (C0158) C0671.m5927(c0335);
    }

    public final byte[] m4337(BigInteger bigInteger) {
        if (bigInteger == null) {
            return null;
        }
        return m4314(new BigInteger(1, bigInteger.toByteArray()).toByteArray());
    }

    public final boolean m4335(int i) {
        if (m4318()) {
            return i == 2052 || i == 2053 || i == 2054;
        }
        return false;
    }
}
