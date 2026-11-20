package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imageutils.TiffUtil;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Enumeration;
import java.util.Set;
import java.util.Vector;

public class C0265 extends C0283 implements InterfaceC0224 {

    public KeyStore f1274 = null;

    public X509Certificate f1275 = null;

    public String f1273 = "";

    public byte[] f1272 = C0320.f1706;

    public C0265() {
        new Vector();
    }

    @Override
    public Certificate[] getCertificateChain(String str) {
        if (this.f1473 >= 6) {
            return super.getCertificateChain(str);
        }
        try {
            return this.f1274.getCertificateChain(str);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public String mo3692(String str, byte[] bArr) {
        if (this.f1473 >= 6) {
            return super.mo3692(str, bArr);
        }
        X509Certificate x509CertificateM3944 = m3944("", "", str, bArr);
        byte[] encoded = C0320.f1706;
        PublicKey publicKey = x509CertificateM3944 != null ? x509CertificateM3944.getPublicKey() : null;
        if (publicKey != null) {
            encoded = publicKey.getEncoded();
        }
        return C0259.m3882(C0259.m3878(encoded, C0128.m3234(370, 10, 6)));
    }

    @Override
    public PrivateKey mo3694(String str) {
        if (this.f1473 >= 6) {
            return super.mo3694(str);
        }
        if (str == null) {
            return null;
        }
        try {
            if (!this.f1274.isKeyEntry(str)) {
                return null;
            }
            char[] charArray = C0320.f1707;
            String str2 = this.f1273;
            if (str2 != null && str2.length() > 0) {
                charArray = this.f1273.toCharArray();
            }
            return (PrivateKey) this.f1274.getKey(str, charArray);
        } catch (UnrecoverableKeyException e) {
            int i = this.f1473;
            if (i == 4 || i == 5) {
                throw new C0414(289, C0671.f3694 + C0128.m3234(380, 25, 115) + e.getMessage());
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public X509Certificate mo3696() {
        byte[] bArr;
        if (this.f1275 == null && (bArr = this.f1479) != null && bArr.length > 0) {
            this.f1275 = C0671.m5942(bArr);
        }
        return this.f1275;
    }

    @Override
    public void mo3701(X509Certificate x509Certificate) {
        this.f1275 = x509Certificate;
    }

    @Override
    public int mo3698() {
        if (this.f1473 >= 6) {
            return super.mo3698();
        }
        return this.f1275 != null ? -1 : 0;
    }

    @Override
    public C0590 mo3697(String str, byte[] bArr) {
        this.f1474 = str;
        this.f1479 = C0259.m3845(bArr);
        if (this.f1473 >= 6) {
            return m4061("", "", str, bArr, null);
        }
        String algorithm = "";
        X509Certificate x509CertificateM3944 = m3944("", "", str, bArr);
        this.f1275 = x509CertificateM3944;
        C0590 c0590 = new C0590();
        if (x509CertificateM3944 == null) {
            return c0590;
        }
        byte[] encoded = C0320.f1706;
        try {
            encoded = x509CertificateM3944.getEncoded();
        } catch (Exception unused) {
        }
        c0590.m5573(encoded);
        C0671.m5951(C0128.m3234(343, 3, 86), encoded);
        c0590.f3268 = C0671.m5951(C0128.m3234(346, 4, 31), encoded);
        c0590.f3271 = C0671.m5951(C0128.m3234(350, 6, 16), encoded);
        c0590.f3274 = C0394.m4630(x509CertificateM3944.getNotBefore(), C0394.f2058);
        c0590.f3266 = C0394.m4630(x509CertificateM3944.getNotAfter(), C0394.f2058);
        Vector vector = new Vector();
        Set<String> criticalExtensionOIDs = x509CertificateM3944.getCriticalExtensionOIDs();
        if (criticalExtensionOIDs != null) {
            for (String str2 : criticalExtensionOIDs) {
                vector.add(new C0236(str2, x509CertificateM3944.getExtensionValue(str2), true));
            }
        }
        Set<String> nonCriticalExtensionOIDs = x509CertificateM3944.getNonCriticalExtensionOIDs();
        if (nonCriticalExtensionOIDs != null) {
            for (String str3 : nonCriticalExtensionOIDs) {
                vector.add(new C0236(str3, x509CertificateM3944.getExtensionValue(str3), false));
            }
        }
        c0590.f3277 = vector;
        c0590.f3272 = x509CertificateM3944.getIssuerDN().toString();
        c0590.f3273 = x509CertificateM3944.getIssuerX500Principal().getName(C0128.m3234(356, 7, 115));
        try {
            KeyStore keyStore = this.f1274;
            if (keyStore != null) {
                c0590.f3264 = keyStore.getCertificateAlias(x509CertificateM3944);
                if (this.f1274.getProvider() != null && "BC".equals(this.f1274.getProvider().getName())) {
                    Enumeration<String> enumerationAliases = this.f1274.aliases();
                    if (enumerationAliases.hasMoreElements()) {
                        c0590.f3264 = enumerationAliases.nextElement();
                    }
                }
            }
        } catch (Exception unused2) {
        }
        PublicKey publicKey = x509CertificateM3944.getPublicKey();
        if (publicKey != null) {
            publicKey.getEncoded();
        }
        if (publicKey != null) {
            algorithm = publicKey.getAlgorithm();
        }
        c0590.f3265 = algorithm;
        PublicKey publicKey2 = x509CertificateM3944.getPublicKey();
        if (publicKey2 instanceof RSAPublicKey) {
            ((RSAPublicKey) publicKey2).getModulus().bitLength();
        } else if (publicKey2 instanceof DSAPublicKey) {
            ((DSAPublicKey) publicKey2).getY().bitLength();
        }
        if (x509CertificateM3944.getSerialNumber().signum() < 0) {
            c0590.f3269 = new BigInteger(1, x509CertificateM3944.getSerialNumber().toByteArray()).toString(16);
        } else {
            c0590.f3269 = x509CertificateM3944.getSerialNumber().toString(16);
        }
        c0590.f3278 = x509CertificateM3944.getSigAlgName();
        c0590.f3267 = x509CertificateM3944.getSubjectDN().toString();
        c0590.f3270 = x509CertificateM3944.getSubjectX500Principal().getName(C0128.m3234(363, 7, 19));
        Integer.toString(x509CertificateM3944.getVersion());
        return c0590;
    }

    @Override
    public C0335[] mo3703(String str) {
        if (this.f1473 >= 6) {
            return super.mo3703(str);
        }
        Vector vector = new Vector();
        Certificate[] certificateChain = getCertificateChain(str);
        for (Certificate certificate : certificateChain) {
            if (certificate instanceof X509Certificate) {
                vector.add(new C0335(this.f1473, this.f1272, this.f1477, ((X509Certificate) certificateChain[0]).getSubjectDN().getName(), C0212.f791));
            }
        }
        return (C0335[]) vector.toArray(new C0335[0]);
    }

    @Override
    public boolean mo3693(String str) {
        if (this.f1473 >= 6) {
            return super.mo3693(str);
        }
        try {
            return this.f1274.isKeyEntry(str);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void mo3700(int i, byte[] bArr, String str) {
        InputStream fileInputStream;
        if (i >= 6) {
            super.mo3700(i, bArr, str);
            return;
        }
        char[] charArray = null;
        this.f1274 = null;
        this.f1275 = null;
        if (i >= 2) {
            if (i == 2) {
                try {
                    fileInputStream = new FileInputStream(C0259.m3853(bArr));
                } catch (Exception e) {
                    throw new C0414(271, C0128.m3234(99, 31, 46) + C0414.m4672(e));
                }
            } else if (i == 3) {
                if (C0259.m3880(bArr)) {
                    bArr = C0259.m3900(1, bArr, 0, bArr.length);
                }
                fileInputStream = new ByteArrayInputStream(bArr);
            } else if (i == 4) {
                fileInputStream = new FileInputStream(C0259.m3853(bArr));
            } else if (i != 5) {
                fileInputStream = null;
            } else {
                if (C0259.m3880(bArr)) {
                    bArr = C0259.m3900(1, bArr, 0, bArr.length);
                }
                fileInputStream = new ByteArrayInputStream(bArr);
            }
            try {
                try {
                    this.f1274 = C0671.m5963(i, this.f1478);
                    if (str != null && str.length() > 0) {
                        charArray = str.toCharArray();
                    } else if (i == 2 || i == 3) {
                        throw new C0414(271, C0128.m3234(130, 113, 115));
                    }
                    this.f1274.load(fileInputStream, charArray);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    this.f1473 = i;
                    this.f1272 = bArr;
                    this.f1477 = str;
                    this.f1478 = this.f1478;
                    return;
                } catch (Exception e2) {
                    throw new C0414(271, C0128.m3234(243, 31, 67) + C0414.m4672(e2));
                }
            } catch (Throwable th) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }
        throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3234(24, 65, 74) + i + C0128.m3234(89, 10, 63));
    }

    public X509Certificate m3944(String str, String str2, String str3, byte[] bArr) {
        if (this.f1274 == null) {
            X509Certificate x509Certificate = this.f1275;
            if (x509Certificate != null && x509Certificate.getSubjectDN().getName().equals(str3) && str.length() == 0 && str2.length() == 0 && bArr.length == 0) {
                return this.f1275;
            }
            return null;
        }
        if ((str == null || str.length() == 0 || str2 == null || str2.length() == 0) && ((str3 == null || str3.length() == 0) && (bArr == null || bArr.length == 0))) {
            return null;
        }
        if (str3 != null) {
            str3 = C0671.m5950(str3).toLowerCase();
        }
        try {
            Enumeration<String> enumerationAliases = this.f1274.aliases();
            while (enumerationAliases.hasMoreElements()) {
                String strNextElement = enumerationAliases.nextElement();
                if (this.f1274.isKeyEntry(strNextElement) || this.f1274.isCertificateEntry(strNextElement)) {
                    Certificate certificate = this.f1274.getCertificate(strNextElement);
                    if (certificate != null && (certificate instanceof X509Certificate)) {
                        X509Certificate x509Certificate2 = (X509Certificate) certificate;
                        if (str != null && str.length() > 0 && str2 != null && str2.length() > 0) {
                            if (!str.equals(x509Certificate2.getIssuerDN().toString()) || !str2.equals(x509Certificate2.getSerialNumber().toString(16))) {
                                if (C0259.m3873(x509Certificate2.getEncoded(), bArr)) {
                                }
                            }
                        } else if (str3 == null || str3.length() <= 0 || (!str3.equals("*") && C0671.m5950(x509Certificate2.getSubjectDN().toString()).toLowerCase().indexOf(str3) < 0)) {
                            if (C0259.m3873(x509Certificate2.getEncoded(), bArr) && !C0301.m4164(x509Certificate2.getEncoded(), bArr)) {
                            }
                        }
                        return x509Certificate2;
                    }
                }
            }
            throw new C0414(272, C0128.m3234(309, 34, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
        } catch (Exception e) {
            throw new C0414(272, C0128.m3234(TiffUtil.TIFF_TAG_ORIENTATION, 35, 69) + C0414.m4672(e));
        }
    }

    @Override
    public String mo3695(String str) {
        if (this.f1473 >= 6) {
            super.mo3695(str);
            return "";
        }
        try {
            KeyStore keyStore = this.f1274;
            if (keyStore != null) {
                return keyStore.getCertificateAlias(keyStore.getCertificate(str));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public void mo3702(C0489 c0489) throws Exception {
        Enumeration<String> enumerationElements;
        C0489 c04810;
        if (this.f1473 >= 6) {
            super.mo3702(c0489);
            return;
        }
        KeyStore keyStore = this.f1274;
        if (keyStore != null) {
            enumerationElements = keyStore.aliases();
        } else {
            Vector vector = new Vector();
            X509Certificate x509Certificate = this.f1275;
            if (x509Certificate != null) {
                vector.addElement(x509Certificate);
            }
            enumerationElements = vector.elements();
        }
        while (enumerationElements.hasMoreElements()) {
            String strNextElement = enumerationElements.nextElement();
            KeyStore keyStore2 = this.f1274;
            Certificate certificate = keyStore2 != null ? keyStore2.getCertificate(strNextElement) : null;
            if (certificate instanceof X509Certificate) {
                C0335 c0335 = new C0335(this.f1473, this.f1272, this.f1477, ((X509Certificate) certificate).getSubjectDN().getName(), C0212.f791);
                byte[] bArrM4377 = c0335.m4377();
                String strM4368 = c0335.m4368();
                String strM4363 = c0335.m4363();
                C0590 c0590 = c0335.f1804;
                c04810 = c0489;
                c04810.m5170(bArrM4377, strM4368, strM4363, c0590 == null ? "" : c0590.f3269, c0335.m4374());
            } else {
                c04810 = c0489;
            }
            c0489 = c04810;
        }
    }

    @Override
    public void mo3392(boolean z) {
        if (z) {
            this.f1274 = null;
            this.f1275 = null;
        }
    }

    @Override
    public PublicKey mo3699(String str, byte[] bArr) {
        if (this.f1473 >= 6) {
            return super.mo3699(str, bArr);
        }
        X509Certificate x509Certificate = this.f1275;
        if (x509Certificate != null) {
            return x509Certificate.getPublicKey();
        }
        return null;
    }
}
