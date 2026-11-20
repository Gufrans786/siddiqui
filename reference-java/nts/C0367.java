package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.facebook.imageutils.JfifUtil;
import com.facebook.imageutils.TiffUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.logging.type.LogSeverity;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.KeySpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import javax.crypto.spec.SecretKeySpec;

public class C0367 extends AbstractC0645 {

    public PublicKey f1926;

    public Signature f1927;

    public String f1928;

    public int f1929 = 1;

    public Cipher f1930;

    public PrivateKey f1931;

    public int f1932;

    public static final byte[] f1921 = {48, 33, 48, 9, 6, 5, 43, Ascii.SO, 3, 2, Ascii.SUB, 5, 0, 4, Ascii.DC4};

    public static final byte[] f1923 = {48, 49, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 1, 5, 0, 4, 32};

    public static final byte[] f1924 = {48, 65, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 2, 5, 0, 4, 48};

    public static final byte[] f1925 = {48, 81, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 3, 5, 0, 4, SignedBytes.MAX_POWER_OF_TWO};

    public static final byte[] f1922 = {48, 45, 48, Ascii.CR, 6, 9, 96, -122, 72, 1, 101, 3, 4, 2, 4, 5, 0, 4, Ascii.FS};

    public C0367(String str) {
        String upperCase = str.toUpperCase();
        this.f1928 = upperCase;
        if (upperCase.equals(C0164.m3490(74, 3, 62))) {
            this.f3625 = new C0509[]{new C0509(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT, 4096, 8)};
            this.f3626 = 2048;
        } else if (this.f1928.equals(C0164.m3490(77, 3, 20))) {
            this.f3625 = new C0509[]{new C0509(512, 4096, 64)};
            this.f3626 = 2048;
        }
    }

    public static BigInteger m4439(byte[] bArr) {
        if (m4441(bArr)) {
            return null;
        }
        return new BigInteger(1, bArr);
    }

    public void m4443(Object obj) throws C0537 {
        try {
            m4447(obj);
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    public Object m4446(boolean z) throws C0537 {
        String strM3490;
        KeyPairGenerator keyPairGenerator;
        if (this.f1926 == null) {
            if (this.f1928.equals(C0164.m3490(199, 4, 35)) || this.f1928.equals(C0164.m3490(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, 5, 8))) {
                int i = this.f1932;
                if (i == 0) {
                    strM3490 = C0164.m3490(676, 9, 72);
                } else if (i == 1) {
                    strM3490 = C0164.m3490(685, 9, 19);
                } else if (i == 2) {
                    strM3490 = C0164.m3490(694, 9, 88);
                } else if (i == 10) {
                    strM3490 = C0164.m3490(703, 9, 117);
                } else if (i == 9) {
                    strM3490 = C0164.m3490(712, 9, 77);
                } else if (i == 8) {
                    strM3490 = C0164.m3490(721, 9, 115);
                } else {
                    strM3490 = i == 7 ? C0164.m3490(730, 9, 37) : "";
                }
                ECGenParameterSpec eCGenParameterSpec = new ECGenParameterSpec(strM3490);
                try {
                    keyPairGenerator = KeyPairGenerator.getInstance(this.f1928, C0164.m3490(JfifUtil.MARKER_RST0, 6, 17));
                    keyPairGenerator.initialize(eCGenParameterSpec, SecureRandom.getInstance(C0164.m3490(214, 7, 35), C0164.m3490(221, 6, 87)));
                } catch (Exception e) {
                    throw new C0537(e.getMessage());
                }
            } else if (this.f1928.equals(C0164.m3490(227, 3, 122))) {
                RSAKeyGenParameterSpec rSAKeyGenParameterSpec = new RSAKeyGenParameterSpec(this.f3626, RSAKeyGenParameterSpec.F4);
                try {
                    keyPairGenerator = KeyPairGenerator.getInstance(this.f1928, C0164.m3490(230, 6, 118));
                    keyPairGenerator.initialize(rSAKeyGenParameterSpec, SecureRandom.getInstance(C0164.m3490(236, 7, 10), C0164.m3490(243, 6, 47)));
                } catch (Exception e2) {
                    throw new C0537(e2.getMessage());
                }
            } else if (this.f1928.equals(C0164.m3490(249, 3, 58))) {
                try {
                    keyPairGenerator = KeyPairGenerator.getInstance(this.f1928, C0164.m3490(252, 6, 57));
                    keyPairGenerator.initialize(this.f3626, SecureRandom.getInstance(C0164.m3490(258, 7, 76), C0164.m3490(265, 6, 18)));
                } catch (Exception e3) {
                    throw new C0537(e3.getMessage());
                }
            } else {
                keyPairGenerator = null;
            }
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            this.f1931 = keyPairGenerateKeyPair.getPrivate();
            this.f1926 = keyPairGenerateKeyPair.getPublic();
        }
        return m4445(z ? this.f1931 : null, this.f1926);
    }

    public static boolean m4441(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static String m4440(String str) {
        String upperCase = str.toUpperCase();
        if (upperCase.equals(C0164.m3490(739, 4, 83))) {
            return C0164.m3490(743, 5, 96);
        }
        if (upperCase.equals(C0164.m3490(748, 6, 49))) {
            return C0164.m3490(754, 7, 54);
        }
        if (upperCase.equals(C0164.m3490(761, 6, 113))) {
            return C0164.m3490(767, 7, 62);
        }
        if (upperCase.equals(C0164.m3490(774, 6, 38))) {
            return C0164.m3490(780, 7, 117);
        }
        return upperCase.equals(C0164.m3490(787, 6, 72)) ? C0164.m3490(793, 7, 59) : upperCase;
    }

    public byte[] m4444(byte[] bArr, boolean z, byte[] bArr2, Object obj, String str) throws C0537 {
        if (!this.f1928.equals(C0164.m3490(LogSeverity.EMERGENCY_VALUE, 3, 104))) {
            throw new C0537(C0164.m3490(803, 25, 32));
        }
        if (z) {
            try {
                String str2 = C0164.m3490(828, 17, 104) + str + C0164.m3490(845, 14, 80);
                Cipher cipher = this.f1930;
                if (cipher == null || !str2.equals(cipher.getAlgorithm())) {
                    this.f1930 = Cipher.getInstance(str2, C0164.m3490(859, 6, 59));
                }
                if (obj == null) {
                    this.f1930.init(3, this.f1926);
                } else {
                    this.f1930.init(3, this.f1926, new OAEPParameterSpec(m4440(obj.toString()), C0164.m3490(865, 4, 8), new MGF1ParameterSpec(m4440(str)), new PSource.PSpecified(bArr2)));
                }
                return this.f1930.wrap(new SecretKeySpec(bArr, C0164.m3490(869, 3, 8)));
            } catch (Exception e) {
                throw new C0537(e.getMessage());
            }
        }
        try {
            if (this.f1930 == null) {
                this.f1930 = Cipher.getInstance(C0164.m3490(872, 21, 74), C0164.m3490(893, 6, 76));
            }
            this.f1930.init(3, this.f1926);
            return this.f1930.wrap(new SecretKeySpec(bArr, C0164.m3490(899, 3, 34)));
        } catch (Exception e2) {
            throw new C0537(e2.getMessage());
        }
    }

    public final Object m4445(PrivateKey privateKey, PublicKey publicKey) {
        C0130 c0130 = null;
        if (privateKey == null && publicKey == null) {
            return null;
        }
        if (publicKey instanceof ECPublicKey) {
            C0158 c0158 = new C0158();
            if (privateKey != null) {
                c0158.f491 = C0158.m3426(((ECPrivateKey) privateKey).getS().toByteArray(), C0158.m3423(this.f1932));
            }
            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
            c0158.f490 = C0158.m3426(eCPublicKey.getW().getAffineX().toByteArray(), C0158.m3423(this.f1932));
            c0158.f487 = C0158.m3426(eCPublicKey.getW().getAffineY().toByteArray(), C0158.m3423(this.f1932));
            c0158.f488 = this.f1932;
            return c0158;
        }
        if (publicKey instanceof RSAPublicKey) {
            C0145 c0145 = new C0145();
            if (privateKey != null) {
                c0145.f335 = ((RSAPrivateKey) privateKey).getPrivateExponent().toByteArray();
            }
            RSAPublicKey rSAPublicKey = (RSAPublicKey) publicKey;
            c0145.f336 = rSAPublicKey.getPublicExponent().toByteArray();
            c0145.f334 = rSAPublicKey.getModulus().toByteArray();
            return c0145;
        }
        if (publicKey instanceof DSAPublicKey) {
            c0130 = new C0130();
            DSAPublicKey dSAPublicKey = (DSAPublicKey) publicKey;
            DSAParams params = dSAPublicKey.getParams();
            c0130.f259 = params.getP().toByteArray();
            c0130.f258 = params.getQ().toByteArray();
            c0130.f256 = params.getG().toByteArray();
            c0130.f257 = dSAPublicKey.getY().toByteArray();
            if (privateKey != null) {
                c0130.f255 = ((DSAPrivateKey) privateKey).getX().toByteArray();
            }
        }
        return c0130;
    }

    public final void m4447(Object obj) throws Exception {
        KeySpec keySpec;
        KeyFactory keyFactory;
        BigInteger bigIntegerM4439;
        BigInteger bigIntegerM44310;
        if (obj == null) {
            return;
        }
        KeySpec dSAPrivateKeySpec = null;
        if (obj instanceof C0145) {
            C0145 c0145 = (C0145) obj;
            keyFactory = KeyFactory.getInstance(C0164.m3490(271, 3, 85), C0164.m3490(TiffUtil.TIFF_TAG_ORIENTATION, 6, 13));
            RSAPublicKeySpec rSAPublicKeySpec = !m4441(c0145.f336) ? new RSAPublicKeySpec(m4439(c0145.f334), m4439(c0145.f336)) : null;
            if (!m4441(c0145.f335)) {
                if (!m4441(c0145.f336) && !m4441(c0145.f331) && !m4441(c0145.f333)) {
                    BigInteger bigIntegerM44311 = m4439(c0145.f335);
                    BigInteger bigIntegerM44312 = m4439(c0145.f331);
                    BigInteger bigIntegerM44313 = m4439(c0145.f333);
                    dSAPrivateKeySpec = new RSAPrivateCrtKeySpec(m4439(c0145.f334), m4439(c0145.f336), bigIntegerM44311, bigIntegerM44312, bigIntegerM44313, !m4441(c0145.f329) ? m4439(c0145.f329) : bigIntegerM44311.mod(bigIntegerM44312.subtract(BigInteger.ONE)), !m4441(c0145.f330) ? m4439(c0145.f330) : bigIntegerM44311.mod(bigIntegerM44313.subtract(BigInteger.ONE)), !m4441(c0145.f332) ? m4439(c0145.f332) : bigIntegerM44313.modInverse(bigIntegerM44312));
                } else {
                    dSAPrivateKeySpec = new RSAPrivateKeySpec(m4439(c0145.f334), m4439(c0145.f335));
                }
            }
            keySpec = dSAPrivateKeySpec;
            dSAPrivateKeySpec = rSAPublicKeySpec;
        } else if (obj instanceof C0158) {
            C0158 c0158 = (C0158) obj;
            keyFactory = KeyFactory.getInstance(C0164.m3490(280, 5, 59), C0164.m3490(285, 6, 71));
            if (m4441(c0158.f490) || m4441(c0158.f487)) {
                bigIntegerM4439 = null;
                bigIntegerM44310 = null;
            } else {
                bigIntegerM4439 = m4439(c0158.f490);
                bigIntegerM44310 = m4439(c0158.f487);
            }
            BigInteger bigIntegerM44314 = !m4441(c0158.f491) ? m4439(c0158.f491) : null;
            if ((bigIntegerM4439 != null && bigIntegerM44310 != null) || bigIntegerM44314 != null) {
                ECParameterSpec eCParameterSpecM5639 = C0612.m5639(c0158.f488);
                ECPublicKeySpec eCPublicKeySpec = (bigIntegerM4439 == null || bigIntegerM44310 == null) ? null : new ECPublicKeySpec(new ECPoint(bigIntegerM4439, bigIntegerM44310), eCParameterSpecM5639);
                dSAPrivateKeySpec = bigIntegerM44314 != null ? new ECPrivateKeySpec(bigIntegerM44314, eCParameterSpecM5639) : null;
                this.f1932 = c0158.f488;
                keySpec = dSAPrivateKeySpec;
                dSAPrivateKeySpec = eCPublicKeySpec;
            } else {
                throw new C0537(C0164.m3490(291, 50, 96));
            }
        } else if (obj instanceof C0130) {
            C0130 c0130 = (C0130) obj;
            BigInteger bigIntegerM44315 = !m4441(c0130.f259) ? m4439(c0130.f259) : null;
            BigInteger bigIntegerM44316 = !m4441(c0130.f258) ? m4439(c0130.f258) : null;
            BigInteger bigIntegerM44317 = !m4441(c0130.f256) ? m4439(c0130.f256) : null;
            BigInteger bigIntegerM44318 = !m4441(c0130.f257) ? m4439(c0130.f257) : null;
            BigInteger bigIntegerM44319 = !m4441(c0130.f255) ? m4439(c0130.f255) : null;
            if (bigIntegerM44315 == null || bigIntegerM44316 == null || bigIntegerM44317 == null) {
                throw new C0537(C0164.m3490(341, 47, 114));
            }
            if (bigIntegerM44318 == null && bigIntegerM44319 == null) {
                throw new C0537(C0164.m3490(388, 51, 114));
            }
            if (bigIntegerM44318 == null) {
                bigIntegerM44318 = bigIntegerM44317.modPow(bigIntegerM44319, bigIntegerM44315);
            }
            KeyFactory keyFactory2 = KeyFactory.getInstance(C0164.m3490(439, 3, 64), C0164.m3490(442, 6, 113));
            DSAPublicKeySpec dSAPublicKeySpec = new DSAPublicKeySpec(bigIntegerM44318, bigIntegerM44315, bigIntegerM44316, bigIntegerM44317);
            dSAPrivateKeySpec = bigIntegerM44319 != null ? new DSAPrivateKeySpec(bigIntegerM44319, bigIntegerM44315, bigIntegerM44316, bigIntegerM44317) : null;
            keyFactory = keyFactory2;
            keySpec = dSAPrivateKeySpec;
            dSAPrivateKeySpec = dSAPublicKeySpec;
        } else {
            keySpec = null;
            keyFactory = null;
        }
        if (dSAPrivateKeySpec != null) {
            this.f1926 = keyFactory.generatePublic(dSAPrivateKeySpec);
        }
        if (keySpec != null) {
            this.f1931 = keyFactory.generatePrivate(keySpec);
        }
    }

    public void m4448(String str, boolean z, boolean z2, int i) throws C0537 {
        try {
            if (z2) {
                String str2 = str + C0164.m3490(448, 14, 35);
                Signature signature = this.f1927;
                if (signature == null || !str2.equals(signature.getAlgorithm())) {
                    this.f1927 = Signature.getInstance(str2, C0164.m3490(462, 6, 46));
                }
                if (i < 0) {
                    i = C0308.m4215(str) / 8;
                }
                this.f1927.setParameter(new PSSParameterSpec(str, C0164.m3490(468, 4, 40), new MGF1ParameterSpec(str), i, PSSParameterSpec.DEFAULT.getTrailerField()));
            } else {
                String str3 = str + C0164.m3490(472, 4, 104) + this.f1928;
                Signature signature2 = this.f1927;
                if (signature2 == null || !str3.equals(signature2.getAlgorithm())) {
                    this.f1927 = Signature.getInstance(str3, C0164.m3490(476, 6, 24));
                }
            }
            if (z) {
                this.f1927.initSign(this.f1931);
            } else {
                this.f1927.initVerify(this.f1926);
            }
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    public void m4449(byte[] bArr, int i, int i2) throws C0537 {
        try {
            this.f1927.update(bArr, i, i2);
        } catch (SignatureException e) {
            throw new C0537(e.getMessage());
        }
    }

    public byte[] m4452() throws C0537 {
        try {
            byte[] bArrSign = this.f1927.sign();
            return (this.f1928.equals(C0164.m3490(482, 5, 97)) && this.f1929 == 0) ? C0163.m3474(bArrSign, this.f1932) : bArrSign;
        } catch (SignatureException e) {
            throw new C0537(e.getMessage());
        }
    }

    public boolean m4450(byte[] bArr) throws C0537 {
        try {
            if ((this.f1928.equals(C0164.m3490(487, 5, 107)) || this.f1928.equals(C0164.m3490(492, 3, 1))) && !C0308.m4251(bArr, new C0620())) {
                bArr = C0163.m3472(bArr);
            }
            return this.f1927.verify(bArr);
        } catch (SignatureException e) {
            throw new C0537(e.getMessage());
        }
    }

    public boolean m4451(byte[] bArr, String str, byte[] bArr2, boolean z) throws C0537 {
        try {
            if (this.f1927 == null) {
                this.f1927 = Signature.getInstance(C0164.m3490(563, 8, RNMBXStyleValue.InterpolationModeIdentity) + this.f1928, C0164.m3490(571, 6, 10));
            }
            this.f1927.initVerify(this.f1926);
            if (this.f1928.equals(C0164.m3490(577, 3, 8))) {
                if (!z) {
                    this.f1927.update(m4453(str));
                } else {
                    throw new C0537(C0164.m3490(580, 43, 15));
                }
            }
            if ((this.f1928.equals(C0164.m3490(623, 5, 53)) || this.f1928.equals(C0164.m3490(628, 3, 82))) && !C0308.m4251(bArr2, new C0620())) {
                bArr2 = C0163.m3472(bArr2);
            }
            this.f1927.update(bArr);
            return this.f1927.verify(C0308.m4218(bArr2));
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    public final byte[] m4453(String str) throws C0537 {
        if (!C0259.m3856(str)) {
            str = str.toUpperCase();
        }
        if (str != null && !str.equals(C0164.m3490(631, 4, 55))) {
            if (str.equals(C0164.m3490(635, 6, 47))) {
                return f1923;
            }
            if (str.equals(C0164.m3490(641, 6, 43))) {
                return f1924;
            }
            if (str.equals(C0164.m3490(647, 6, 121))) {
                return f1925;
            }
            if (str.equals(C0164.m3490(653, 6, 30))) {
                return f1922;
            }
            throw new C0537(C0164.m3490(659, 17, 7));
        }
        return f1921;
    }

    public byte[] m4456(byte[] bArr, boolean z, byte[] bArr2, Object obj, String str) throws C0537 {
        if (!this.f1928.equals(C0164.m3490(TypedValues.Custom.TYPE_COLOR, 3, 63))) {
            throw new C0537(C0164.m3490(TypedValues.Custom.TYPE_DIMENSION, 25, 80));
        }
        if (z) {
            try {
                String str2 = C0164.m3490(930, 17, 36) + str + C0164.m3490(947, 14, 8);
                Cipher cipher = this.f1930;
                if (cipher == null || !str2.equals(cipher.getAlgorithm())) {
                    this.f1930 = Cipher.getInstance(str2, C0164.m3490(961, 6, 30));
                }
                if (obj == null) {
                    this.f1930.init(4, this.f1931);
                } else {
                    this.f1930.init(4, this.f1931, new OAEPParameterSpec(m4440(obj.toString()), C0164.m3490(967, 4, 59), new MGF1ParameterSpec(m4440(str)), new PSource.PSpecified(bArr2)));
                }
                return this.f1930.unwrap(bArr, C0164.m3490(971, 3, 49), 3).getEncoded();
            } catch (Exception e) {
                throw new C0537(e.getMessage());
            }
        }
        try {
            if (this.f1930 == null) {
                this.f1930 = Cipher.getInstance(C0164.m3490(974, 21, 118), C0164.m3490(995, 6, 57));
            }
            this.f1930.init(4, this.f1931);
            return this.f1930.unwrap(bArr, C0164.m3490(1001, 3, 12), 3).getEncoded();
        } catch (Exception e2) {
            throw new C0537(e2.getMessage());
        }
    }

    public byte[] m4455(C0158 c0158, String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws C0537 {
        byte[] bArrM4442 = m4442((C0158) m4445(this.f1931, this.f1926), c0158, str, false, true, C0163.m3476(bArr, bArr2, bArr3, bArr4, bArr5));
        int iM4215 = C0308.m4215(str) / 8;
        if (iM4215 <= bArrM4442.length) {
            if (iM4215 == bArrM4442.length) {
                return bArrM4442;
            }
            byte[] bArr6 = new byte[iM4215];
            System.arraycopy(bArrM4442, 0, bArr6, 0, iM4215);
            return bArr6;
        }
        throw new C0537(C0164.m3490(1004, 38, 3));
    }

    public byte[] m4454(C0158 c0158, int i, byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537 {
        if (i != 12) {
            return C0163.m3473(i, bArr, m4442((C0158) m4445(this.f1931, this.f1926), c0158, "", false, false, null), bArr2, bArr3);
        }
        throw new C0537(C0164.m3490(1042, 30, 3));
    }

    public static byte[] m4442(C0158 c0158, C0158 c0159, String str, boolean z, boolean z2, byte[] bArr) throws C0537 {
        KeyAgreement keyAgreement;
        try {
            String strM3420 = C0158.m3420(c0158.f488);
            ECParameterSpec eCParameterSpecM5639 = C0612.m5639(c0158.f488);
            C0269 c0269 = new C0269(m4439(c0158.m3440() ? c0158.f491 : c0158.f485), m4439(c0158.f490), m4439(c0158.f487), eCParameterSpecM5639, strM3420);
            C0309 c0309 = new C0309(m4439(c0159.f490), m4439(c0159.f487), eCParameterSpecM5639, strM3420);
            if (z2) {
                keyAgreement = KeyAgreement.getInstance(C0164.m3490(1072, 9, 85) + str + C0164.m3490(1081, 4, 73), C0164.m3490(1085, 6, 121));
                keyAgreement.init(c0269, (AlgorithmParameterSpec) Class.forName(C0164.m3490(1118, 51, 93)).getConstructor(byte[].class).newInstance(bArr));
            } else {
                keyAgreement = KeyAgreement.getInstance(z ? C0164.m3490(1091, 5, 79) : C0164.m3490(1096, 4, 48), C0164.m3490(1100, 6, 62));
                keyAgreement.init(c0269);
            }
            keyAgreement.doPhase(c0309, true);
            return keyAgreement.generateSecret();
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }
}
