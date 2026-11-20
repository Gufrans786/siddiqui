package org.bouncycastle.jce.provider;

import ch.qos.logback.core.joran.action.Action;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERConstructedOctetString;
import org.bouncycastle.asn1.BEROutputStream;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DEROutputStream;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.pkcs.AuthenticatedSafe;
import org.bouncycastle.asn1.pkcs.CertBag;
import org.bouncycastle.asn1.pkcs.ContentInfo;
import org.bouncycastle.asn1.pkcs.EncryptedData;
import org.bouncycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.MacData;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Pfx;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.SafeBag;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
import org.bouncycastle.asn1.x509.DigestInfo;
import org.bouncycastle.asn1.x509.SubjectKeyIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.jce.interfaces.BCKeyStore;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

public class JDKPKCS12KeyStore extends KeyStoreSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers, BCKeyStore {
    static final int CERTIFICATE = 1;
    static final int KEY = 2;
    static final int KEY_PRIVATE = 0;
    static final int KEY_PUBLIC = 1;
    static final int KEY_SECRET = 2;
    private static final int MIN_ITERATIONS = 1024;
    static final int NULL = 0;
    private static final int SALT_SIZE = 20;
    static final int SEALED = 4;
    static final int SECRET = 3;
    private static final Provider bcProvider = new BouncyCastleProvider();
    private DERObjectIdentifier certAlgorithm;
    private CertificateFactory certFact;
    private IgnoresCaseHashtable certs;
    private DERObjectIdentifier keyAlgorithm;
    private IgnoresCaseHashtable keys;
    private Hashtable localIds = new Hashtable();
    private Hashtable chainCerts = new Hashtable();
    private Hashtable keyCerts = new Hashtable();
    protected SecureRandom random = new SecureRandom();

    public static class BCPKCS12KeyStore extends JDKPKCS12KeyStore {
        public BCPKCS12KeyStore() {
            super(JDKPKCS12KeyStore.bcProvider, pbeWithSHAAnd3_KeyTripleDES_CBC, pbewithSHAAnd40BitRC2_CBC);
        }
    }

    public static class BCPKCS12KeyStore3DES extends JDKPKCS12KeyStore {
        public BCPKCS12KeyStore3DES() {
            super(JDKPKCS12KeyStore.bcProvider, pbeWithSHAAnd3_KeyTripleDES_CBC, pbeWithSHAAnd3_KeyTripleDES_CBC);
        }
    }

    private class CertId {
        byte[] id;

        CertId(PublicKey publicKey) {
            this.id = JDKPKCS12KeyStore.this.createSubjectKeyId(publicKey).getKeyIdentifier();
        }

        CertId(byte[] bArr) {
            this.id = bArr;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CertId) {
                return Arrays.areEqual(this.id, ((CertId) obj).id);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.id);
        }
    }

    public static class DefPKCS12KeyStore extends JDKPKCS12KeyStore {
        public DefPKCS12KeyStore() {
            super(null, pbeWithSHAAnd3_KeyTripleDES_CBC, pbewithSHAAnd40BitRC2_CBC);
        }
    }

    public static class DefPKCS12KeyStore3DES extends JDKPKCS12KeyStore {
        public DefPKCS12KeyStore3DES() {
            super(null, pbeWithSHAAnd3_KeyTripleDES_CBC, pbeWithSHAAnd3_KeyTripleDES_CBC);
        }
    }

    private static class IgnoresCaseHashtable {
        private Hashtable keys;
        private Hashtable orig;

        private IgnoresCaseHashtable() {
            this.orig = new Hashtable();
            this.keys = new Hashtable();
        }

        public Enumeration elements() {
            return this.orig.elements();
        }

        public Object get(String str) {
            String str2 = (String) this.keys.get(Strings.toLowerCase(str));
            if (str2 == null) {
                return null;
            }
            return this.orig.get(str2);
        }

        public Enumeration keys() {
            return this.orig.keys();
        }

        public void put(String str, Object obj) {
            String lowerCase = Strings.toLowerCase(str);
            String str2 = (String) this.keys.get(lowerCase);
            if (str2 != null) {
                this.orig.remove(str2);
            }
            this.keys.put(lowerCase, str);
            this.orig.put(str, obj);
        }

        public Object remove(String str) {
            String str2 = (String) this.keys.remove(Strings.toLowerCase(str));
            if (str2 == null) {
                return null;
            }
            return this.orig.remove(str2);
        }
    }

    public JDKPKCS12KeyStore(Provider provider, DERObjectIdentifier dERObjectIdentifier, DERObjectIdentifier dERObjectIdentifier2) {
        this.keys = new IgnoresCaseHashtable();
        this.certs = new IgnoresCaseHashtable();
        this.keyAlgorithm = dERObjectIdentifier;
        this.certAlgorithm = dERObjectIdentifier2;
        try {
            this.certFact = provider != null ? CertificateFactory.getInstance("X.509", provider) : CertificateFactory.getInstance("X.509");
        } catch (Exception e) {
            throw new IllegalArgumentException("can't create cert factory - " + e.toString());
        }
    }

    private static byte[] calculatePbeMac(DERObjectIdentifier dERObjectIdentifier, byte[] bArr, int i, char[] cArr, boolean z, byte[] bArr2) throws Exception {
        String id = dERObjectIdentifier.getId();
        Provider provider = bcProvider;
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(id, provider);
        PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i);
        JCEPBEKey jCEPBEKey = (JCEPBEKey) secretKeyFactory.generateSecret(new PBEKeySpec(cArr));
        jCEPBEKey.setTryWrongPKCS12Zero(z);
        Mac mac = Mac.getInstance(dERObjectIdentifier.getId(), provider);
        mac.init(jCEPBEKey, pBEParameterSpec);
        mac.update(bArr2);
        return mac.doFinal();
    }

    public SubjectKeyIdentifier createSubjectKeyId(PublicKey publicKey) {
        try {
            return new SubjectKeyIdentifier(new SubjectPublicKeyInfo((ASN1Sequence) ASN1Object.fromByteArray(publicKey.getEncoded())));
        } catch (Exception unused) {
            throw new RuntimeException("error creating key");
        }
    }

    private void doStore(OutputStream outputStream, char[] cArr, boolean z) throws IOException {
        boolean z2;
        boolean z3;
        boolean z4;
        if (cArr == null) {
            throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Enumeration enumerationKeys = this.keys.keys();
        while (enumerationKeys.hasMoreElements()) {
            byte[] bArr = new byte[20];
            this.random.nextBytes(bArr);
            String str = (String) enumerationKeys.nextElement();
            PrivateKey privateKey = (PrivateKey) this.keys.get(str);
            PKCS12PBEParams pKCS12PBEParams = new PKCS12PBEParams(bArr, 1024);
            EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(new AlgorithmIdentifier(this.keyAlgorithm, pKCS12PBEParams.getDERObject()), wrapKey(this.keyAlgorithm.getId(), privateKey, pKCS12PBEParams, cArr));
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            if (privateKey instanceof PKCS12BagAttributeCarrier) {
                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) privateKey;
                DERBMPString dERBMPString = (DERBMPString) pKCS12BagAttributeCarrier.getBagAttribute(pkcs_9_at_friendlyName);
                if (dERBMPString == null || !dERBMPString.getString().equals(str)) {
                    pKCS12BagAttributeCarrier.setBagAttribute(pkcs_9_at_friendlyName, new DERBMPString(str));
                }
                if (pKCS12BagAttributeCarrier.getBagAttribute(pkcs_9_at_localKeyId) == null) {
                    pKCS12BagAttributeCarrier.setBagAttribute(pkcs_9_at_localKeyId, createSubjectKeyId(engineGetCertificate(str).getPublicKey()));
                }
                Enumeration bagAttributeKeys = pKCS12BagAttributeCarrier.getBagAttributeKeys();
                z4 = false;
                while (bagAttributeKeys.hasMoreElements()) {
                    DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) bagAttributeKeys.nextElement();
                    ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
                    aSN1EncodableVector3.add(dERObjectIdentifier);
                    aSN1EncodableVector3.add(new DERSet(pKCS12BagAttributeCarrier.getBagAttribute(dERObjectIdentifier)));
                    aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector3));
                    z4 = true;
                }
            } else {
                z4 = false;
            }
            if (!z4) {
                ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
                Certificate certificateEngineGetCertificate = engineGetCertificate(str);
                aSN1EncodableVector4.add(pkcs_9_at_localKeyId);
                aSN1EncodableVector4.add(new DERSet(createSubjectKeyId(certificateEngineGetCertificate.getPublicKey())));
                aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector4));
                ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
                aSN1EncodableVector5.add(pkcs_9_at_friendlyName);
                aSN1EncodableVector5.add(new DERSet(new DERBMPString(str)));
                aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector5));
            }
            aSN1EncodableVector.add(new SafeBag(pkcs8ShroudedKeyBag, encryptedPrivateKeyInfo.getDERObject(), new DERSet(aSN1EncodableVector2)));
        }
        BERConstructedOctetString bERConstructedOctetString = new BERConstructedOctetString(new DERSequence(aSN1EncodableVector).getDEREncoded());
        byte[] bArr2 = new byte[20];
        this.random.nextBytes(bArr2);
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier(this.certAlgorithm, new PKCS12PBEParams(bArr2, 1024).getDERObject());
        Hashtable hashtable = new Hashtable();
        Enumeration enumerationKeys2 = this.keys.keys();
        while (enumerationKeys2.hasMoreElements()) {
            try {
                String str2 = (String) enumerationKeys2.nextElement();
                Certificate certificateEngineGetCertificate2 = engineGetCertificate(str2);
                CertBag certBag = new CertBag(x509Certificate, new DEROctetString(certificateEngineGetCertificate2.getEncoded()));
                ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
                if (certificateEngineGetCertificate2 instanceof PKCS12BagAttributeCarrier) {
                    PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) certificateEngineGetCertificate2;
                    DERBMPString dERBMPString2 = (DERBMPString) pKCS12BagAttributeCarrier2.getBagAttribute(pkcs_9_at_friendlyName);
                    if (dERBMPString2 == null || !dERBMPString2.getString().equals(str2)) {
                        pKCS12BagAttributeCarrier2.setBagAttribute(pkcs_9_at_friendlyName, new DERBMPString(str2));
                    }
                    if (pKCS12BagAttributeCarrier2.getBagAttribute(pkcs_9_at_localKeyId) == null) {
                        pKCS12BagAttributeCarrier2.setBagAttribute(pkcs_9_at_localKeyId, createSubjectKeyId(certificateEngineGetCertificate2.getPublicKey()));
                    }
                    Enumeration bagAttributeKeys2 = pKCS12BagAttributeCarrier2.getBagAttributeKeys();
                    z3 = false;
                    while (bagAttributeKeys2.hasMoreElements()) {
                        DERObjectIdentifier dERObjectIdentifier2 = (DERObjectIdentifier) bagAttributeKeys2.nextElement();
                        AlgorithmIdentifier algorithmIdentifier2 = algorithmIdentifier;
                        ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
                        aSN1EncodableVector8.add(dERObjectIdentifier2);
                        aSN1EncodableVector8.add(new DERSet(pKCS12BagAttributeCarrier2.getBagAttribute(dERObjectIdentifier2)));
                        aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector8));
                        z3 = true;
                        algorithmIdentifier = algorithmIdentifier2;
                    }
                } else {
                    z3 = false;
                }
                AlgorithmIdentifier algorithmIdentifier3 = algorithmIdentifier;
                if (!z3) {
                    ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
                    aSN1EncodableVector9.add(pkcs_9_at_localKeyId);
                    aSN1EncodableVector9.add(new DERSet(createSubjectKeyId(certificateEngineGetCertificate2.getPublicKey())));
                    aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector9));
                    ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
                    aSN1EncodableVector10.add(pkcs_9_at_friendlyName);
                    aSN1EncodableVector10.add(new DERSet(new DERBMPString(str2)));
                    aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector10));
                }
                aSN1EncodableVector6.add(new SafeBag(certBag, certBag.getDERObject(), new DERSet(aSN1EncodableVector7)));
                hashtable.put(certificateEngineGetCertificate2, certificateEngineGetCertificate2);
                algorithmIdentifier = algorithmIdentifier3;
            } catch (CertificateEncodingException e) {
                throw new IOException("Error encoding certificate: " + e.toString());
            }
        }
        AlgorithmIdentifier algorithmIdentifier4 = algorithmIdentifier;
        Enumeration enumerationKeys3 = this.certs.keys();
        while (enumerationKeys3.hasMoreElements()) {
            try {
                String str3 = (String) enumerationKeys3.nextElement();
                Certificate certificate = (Certificate) this.certs.get(str3);
                if (this.keys.get(str3) == null) {
                    CertBag certBag2 = new CertBag(x509Certificate, new DEROctetString(certificate.getEncoded()));
                    ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
                    if (certificate instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) certificate;
                        DERBMPString dERBMPString3 = (DERBMPString) pKCS12BagAttributeCarrier3.getBagAttribute(pkcs_9_at_friendlyName);
                        if (dERBMPString3 == null || !dERBMPString3.getString().equals(str3)) {
                            pKCS12BagAttributeCarrier3.setBagAttribute(pkcs_9_at_friendlyName, new DERBMPString(str3));
                        }
                        Enumeration bagAttributeKeys3 = pKCS12BagAttributeCarrier3.getBagAttributeKeys();
                        z2 = false;
                        while (bagAttributeKeys3.hasMoreElements()) {
                            DERObjectIdentifier dERObjectIdentifier3 = (DERObjectIdentifier) bagAttributeKeys3.nextElement();
                            if (!dERObjectIdentifier3.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
                                aSN1EncodableVector12.add(dERObjectIdentifier3);
                                aSN1EncodableVector12.add(new DERSet(pKCS12BagAttributeCarrier3.getBagAttribute(dERObjectIdentifier3)));
                                aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector12));
                                z2 = true;
                            }
                        }
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
                        aSN1EncodableVector13.add(pkcs_9_at_friendlyName);
                        aSN1EncodableVector13.add(new DERSet(new DERBMPString(str3)));
                        aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector13));
                    }
                    aSN1EncodableVector6.add(new SafeBag(certBag, certBag2.getDERObject(), new DERSet(aSN1EncodableVector11)));
                    hashtable.put(certificate, certificate);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException("Error encoding certificate: " + e2.toString());
            }
        }
        Enumeration enumerationKeys4 = this.chainCerts.keys();
        while (enumerationKeys4.hasMoreElements()) {
            try {
                Certificate certificate2 = (Certificate) this.chainCerts.get((CertId) enumerationKeys4.nextElement());
                if (hashtable.get(certificate2) == null) {
                    CertBag certBag3 = new CertBag(x509Certificate, new DEROctetString(certificate2.getEncoded()));
                    ASN1EncodableVector aSN1EncodableVector14 = new ASN1EncodableVector();
                    if (certificate2 instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier4 = (PKCS12BagAttributeCarrier) certificate2;
                        Enumeration bagAttributeKeys4 = pKCS12BagAttributeCarrier4.getBagAttributeKeys();
                        while (bagAttributeKeys4.hasMoreElements()) {
                            DERObjectIdentifier dERObjectIdentifier4 = (DERObjectIdentifier) bagAttributeKeys4.nextElement();
                            if (!dERObjectIdentifier4.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                ASN1EncodableVector aSN1EncodableVector15 = new ASN1EncodableVector();
                                aSN1EncodableVector15.add(dERObjectIdentifier4);
                                aSN1EncodableVector15.add(new DERSet(pKCS12BagAttributeCarrier4.getBagAttribute(dERObjectIdentifier4)));
                                aSN1EncodableVector14.add(new DERSequence(aSN1EncodableVector15));
                            }
                        }
                    }
                    aSN1EncodableVector6.add(new SafeBag(certBag, certBag3.getDERObject(), new DERSet(aSN1EncodableVector14)));
                }
            } catch (CertificateEncodingException e3) {
                throw new IOException("Error encoding certificate: " + e3.toString());
            }
        }
        AuthenticatedSafe authenticatedSafe = new AuthenticatedSafe(new ContentInfo[]{new ContentInfo(data, bERConstructedOctetString), new ContentInfo(encryptedData, new EncryptedData(data, algorithmIdentifier4, new BERConstructedOctetString(cryptData(true, algorithmIdentifier4, cArr, false, new DERSequence(aSN1EncodableVector6).getDEREncoded()))).getDERObject())});
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        (z ? new DEROutputStream(byteArrayOutputStream) : new BEROutputStream(byteArrayOutputStream)).writeObject(authenticatedSafe);
        ContentInfo contentInfo = new ContentInfo(data, new BERConstructedOctetString(byteArrayOutputStream.toByteArray()));
        byte[] bArr3 = new byte[20];
        this.random.nextBytes(bArr3);
        try {
            (z ? new DEROutputStream(outputStream) : new BEROutputStream(outputStream)).writeObject(new Pfx(contentInfo, new MacData(new DigestInfo(new AlgorithmIdentifier(id_SHA1, new DERNull()), calculatePbeMac(id_SHA1, bArr3, 1024, cArr, false, ((ASN1OctetString) contentInfo.getContent()).getOctets())), bArr3, 1024)));
        } catch (Exception e4) {
            throw new IOException("error constructing MAC: " + e4.toString());
        }
    }

    protected byte[] cryptData(boolean z, AlgorithmIdentifier algorithmIdentifier, char[] cArr, boolean z2, byte[] bArr) throws IOException {
        String id = algorithmIdentifier.getObjectId().getId();
        PKCS12PBEParams pKCS12PBEParams = new PKCS12PBEParams((ASN1Sequence) algorithmIdentifier.getParameters());
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            Provider provider = bcProvider;
            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(id, provider);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
            JCEPBEKey jCEPBEKey = (JCEPBEKey) secretKeyFactory.generateSecret(pBEKeySpec);
            jCEPBEKey.setTryWrongPKCS12Zero(z2);
            Cipher cipher = Cipher.getInstance(id, provider);
            cipher.init(z ? 1 : 2, jCEPBEKey, pBEParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            throw new IOException("exception decrypting data - " + e.toString());
        }
    }

    @Override
    public Enumeration engineAliases() {
        Hashtable hashtable = new Hashtable();
        Enumeration enumerationKeys = this.certs.keys();
        while (enumerationKeys.hasMoreElements()) {
            hashtable.put(enumerationKeys.nextElement(), "cert");
        }
        Enumeration enumerationKeys2 = this.keys.keys();
        while (enumerationKeys2.hasMoreElements()) {
            String str = (String) enumerationKeys2.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, Action.KEY_ATTRIBUTE);
            }
        }
        return hashtable.keys();
    }

    @Override
    public boolean engineContainsAlias(String str) {
        return (this.certs.get(str) == null && this.keys.get(str) == null) ? false : true;
    }

    @Override
    public void engineDeleteEntry(String str) throws KeyStoreException {
        Key key = (Key) this.keys.remove(str);
        Certificate certificate = (Certificate) this.certs.remove(str);
        if (certificate != null) {
            this.chainCerts.remove(new CertId(certificate.getPublicKey()));
        }
        if (key != null) {
            String str2 = (String) this.localIds.remove(str);
            if (str2 != null) {
                certificate = (Certificate) this.keyCerts.remove(str2);
            }
            if (certificate != null) {
                this.chainCerts.remove(new CertId(certificate.getPublicKey()));
            }
        }
        if (certificate == null && key == null) {
            throw new KeyStoreException("no such entry as " + str);
        }
    }

    @Override
    public Certificate engineGetCertificate(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificate.");
        }
        Certificate certificate = (Certificate) this.certs.get(str);
        if (certificate != null) {
            return certificate;
        }
        String str2 = (String) this.localIds.get(str);
        return (Certificate) (str2 != null ? this.keyCerts.get(str2) : this.keyCerts.get(str));
    }

    @Override
    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration enumerationElements = this.certs.elements();
        Enumeration enumerationKeys = this.certs.keys();
        while (enumerationElements.hasMoreElements()) {
            Certificate certificate2 = (Certificate) enumerationElements.nextElement();
            String str = (String) enumerationKeys.nextElement();
            if (certificate2.equals(certificate)) {
                return str;
            }
        }
        Enumeration enumerationElements2 = this.keyCerts.elements();
        Enumeration enumerationKeys2 = this.keyCerts.keys();
        while (enumerationElements2.hasMoreElements()) {
            Certificate certificate3 = (Certificate) enumerationElements2.nextElement();
            String str2 = (String) enumerationKeys2.nextElement();
            if (certificate3.equals(certificate)) {
                return str2;
            }
        }
        return null;
    }

    @Override
    public Certificate[] engineGetCertificateChain(String str) {
        Certificate certificate;
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificateChain.");
        }
        Certificate[] certificateArr = null;
        if (!engineIsKeyEntry(str)) {
            return null;
        }
        Certificate certificateEngineGetCertificate = engineGetCertificate(str);
        if (certificateEngineGetCertificate != null) {
            Vector vector = new Vector();
            while (certificateEngineGetCertificate != null) {
                X509Certificate x509Certificate = (X509Certificate) certificateEngineGetCertificate;
                byte[] extensionValue = x509Certificate.getExtensionValue(X509Extensions.AuthorityKeyIdentifier.getId());
                if (extensionValue != null) {
                    try {
                        AuthorityKeyIdentifier authorityKeyIdentifier = new AuthorityKeyIdentifier((ASN1Sequence) new ASN1InputStream(((ASN1OctetString) new ASN1InputStream(extensionValue).readObject()).getOctets()).readObject());
                        if (authorityKeyIdentifier.getKeyIdentifier() != null) {
                            certificate = (Certificate) this.chainCerts.get(new CertId(authorityKeyIdentifier.getKeyIdentifier()));
                        } else {
                            certificate = null;
                        }
                    } catch (IOException e) {
                        throw new RuntimeException(e.toString());
                    }
                } else {
                    certificate = null;
                }
                if (certificate == null) {
                    Principal issuerDN = x509Certificate.getIssuerDN();
                    if (!issuerDN.equals(x509Certificate.getSubjectDN())) {
                        Enumeration enumerationKeys = this.chainCerts.keys();
                        while (enumerationKeys.hasMoreElements()) {
                            X509Certificate x509Certificate2 = (X509Certificate) this.chainCerts.get(enumerationKeys.nextElement());
                            if (x509Certificate2.getSubjectDN().equals(issuerDN)) {
                                try {
                                    x509Certificate.verify(x509Certificate2.getPublicKey());
                                    certificate = x509Certificate2;
                                    break;
                                } catch (Exception unused) {
                                    continue;
                                }
                            }
                        }
                    }
                }
                vector.addElement(certificateEngineGetCertificate);
                certificateEngineGetCertificate = certificate != certificateEngineGetCertificate ? certificate : null;
            }
            int size = vector.size();
            certificateArr = new Certificate[size];
            for (int i = 0; i != size; i++) {
                certificateArr[i] = (Certificate) vector.elementAt(i);
            }
        }
        return certificateArr;
    }

    @Override
    public Date engineGetCreationDate(String str) {
        return new Date();
    }

    @Override
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        if (str != null) {
            return (Key) this.keys.get(str);
        }
        throw new IllegalArgumentException("null alias passed to getKey.");
    }

    @Override
    public boolean engineIsCertificateEntry(String str) {
        return this.certs.get(str) != null && this.keys.get(str) == null;
    }

    @Override
    public boolean engineIsKeyEntry(String str) {
        return this.keys.get(str) != null;
    }

    @Override
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
        char[] cArr2;
        boolean z;
        boolean z2;
        int i;
        SafeBag safeBag;
        CertBag certBag;
        Certificate certificateGenerateCertificate;
        ASN1OctetString aSN1OctetString;
        String string;
        Enumeration objects;
        DERObjectIdentifier dERObjectIdentifier;
        DERObject dERObject;
        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier;
        DEREncodable bagAttribute;
        ContentInfo[] contentInfo;
        int i2;
        ContentInfo[] contentInfoArr;
        boolean z3;
        ASN1Sequence aSN1Sequence;
        int i3;
        SafeBag safeBag2;
        ASN1Sequence aSN1Sequence2;
        boolean z4;
        PrivateKey privateKeyCreatePrivateKeyFromPrivateKeyInfo;
        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2;
        Enumeration objects2;
        ASN1OctetString aSN1OctetString2;
        String string2;
        String str;
        DERObjectIdentifier dERObjectIdentifier2;
        ASN1Set aSN1Set;
        DERObject dERObject2;
        DEREncodable bagAttribute2;
        PrivateKey privateKeyUnwrapKey;
        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3;
        Enumeration objects3;
        ASN1OctetString aSN1OctetString3;
        String string3;
        String str2;
        DERObjectIdentifier dERObjectIdentifier3;
        ASN1Set aSN1Set2;
        DERObject dERObject3;
        DEREncodable bagAttribute3;
        ASN1Sequence aSN1Sequence3;
        int i4;
        SafeBag safeBag3;
        ContentInfo[] contentInfoArr2;
        PrivateKey privateKeyUnwrapKey2;
        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier4;
        String str3;
        ASN1OctetString aSN1OctetString4;
        String str4;
        Enumeration objects4;
        String str5;
        DERObjectIdentifier dERObjectIdentifier4;
        ASN1Set aSN1Set3;
        DERObject dERObject4;
        DEREncodable bagAttribute4;
        if (inputStream == null) {
            return;
        }
        if (cArr == null) {
            throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        bufferedInputStream.mark(10);
        if (bufferedInputStream.read() != 48) {
            throw new IOException("stream does not represent a PKCS12 key store");
        }
        bufferedInputStream.reset();
        Pfx pfx = new Pfx((ASN1Sequence) new ASN1InputStream(bufferedInputStream).readObject());
        ContentInfo authSafe = pfx.getAuthSafe();
        Vector vector = new Vector();
        int i5 = 0;
        if (pfx.getMacData() != null) {
            MacData macData = pfx.getMacData();
            DigestInfo mac = macData.getMac();
            AlgorithmIdentifier algorithmId = mac.getAlgorithmId();
            byte[] salt = macData.getSalt();
            int iIntValue = macData.getIterationCount().intValue();
            byte[] octets = ((ASN1OctetString) authSafe.getContent()).getOctets();
            try {
                cArr2 = cArr;
                byte[] bArrCalculatePbeMac = calculatePbeMac(algorithmId.getObjectId(), salt, iIntValue, cArr2, false, octets);
                byte[] digest = mac.getDigest();
                if (!Arrays.constantTimeAreEqual(bArrCalculatePbeMac, digest)) {
                    if (cArr2.length > 0) {
                        throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                    }
                    if (!Arrays.constantTimeAreEqual(calculatePbeMac(algorithmId.getObjectId(), salt, iIntValue, cArr2, true, octets), digest)) {
                        throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                    }
                    z = true;
                }
                this.keys = new IgnoresCaseHashtable();
                this.localIds = new Hashtable();
                if (authSafe.getContentType().equals(data)) {
                    contentInfo = new AuthenticatedSafe((ASN1Sequence) new ASN1InputStream(((ASN1OctetString) authSafe.getContent()).getOctets()).readObject()).getContentInfo();
                    i2 = 0;
                    z2 = false;
                    while (i2 != contentInfo.length) {
                        if (contentInfo[i2].getContentType().equals(data)) {
                            aSN1Sequence3 = (ASN1Sequence) new ASN1InputStream(((ASN1OctetString) contentInfo[i2].getContent()).getOctets()).readObject();
                            i4 = i5;
                            while (i4 != aSN1Sequence3.size()) {
                                safeBag3 = new SafeBag((ASN1Sequence) aSN1Sequence3.getObjectAt(i4));
                                if (safeBag3.getBagId().equals(pkcs8ShroudedKeyBag)) {
                                    EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo((ASN1Sequence) safeBag3.getBagValue());
                                    privateKeyUnwrapKey2 = unwrapKey(encryptedPrivateKeyInfo.getEncryptionAlgorithm(), encryptedPrivateKeyInfo.getEncryptedData(), cArr2, z);
                                    pKCS12BagAttributeCarrier4 = (PKCS12BagAttributeCarrier) privateKeyUnwrapKey2;
                                    if (safeBag3.getBagAttributes() != null) {
                                        objects4 = safeBag3.getBagAttributes().getObjects();
                                        str5 = null;
                                        aSN1OctetString4 = null;
                                        while (objects4.hasMoreElements()) {
                                            ASN1Sequence aSN1Sequence4 = (ASN1Sequence) objects4.nextElement();
                                            dERObjectIdentifier4 = (DERObjectIdentifier) aSN1Sequence4.getObjectAt(i5);
                                            ContentInfo[] contentInfoArr3 = contentInfo;
                                            aSN1Set3 = (ASN1Set) aSN1Sequence4.getObjectAt(1);
                                            if (aSN1Set3.size() > 0) {
                                                dERObject4 = (DERObject) aSN1Set3.getObjectAt(0);
                                                bagAttribute4 = pKCS12BagAttributeCarrier4.getBagAttribute(dERObjectIdentifier4);
                                                if (bagAttribute4 != null) {
                                                    pKCS12BagAttributeCarrier4.setBagAttribute(dERObjectIdentifier4, dERObject4);
                                                } else if (!bagAttribute4.getDERObject().equals(dERObject4)) {
                                                    throw new IOException("attempt to add existing attribute with different value");
                                                }
                                            } else {
                                                dERObject4 = null;
                                            }
                                            if (dERObjectIdentifier4.equals(pkcs_9_at_friendlyName)) {
                                                String string4 = ((DERBMPString) dERObject4).getString();
                                                this.keys.put(string4, privateKeyUnwrapKey2);
                                                str5 = string4;
                                            } else if (dERObjectIdentifier4.equals(pkcs_9_at_localKeyId)) {
                                                aSN1OctetString4 = (ASN1OctetString) dERObject4;
                                            }
                                            contentInfo = contentInfoArr3;
                                            i5 = 0;
                                        }
                                        contentInfoArr2 = contentInfo;
                                        str3 = str5;
                                    } else {
                                        contentInfoArr2 = contentInfo;
                                        str3 = null;
                                        aSN1OctetString4 = null;
                                    }
                                    if (aSN1OctetString4 != null) {
                                        str4 = new String(Hex.encode(aSN1OctetString4.getOctets()));
                                        if (str3 == null) {
                                            this.keys.put(str4, privateKeyUnwrapKey2);
                                        } else {
                                            this.localIds.put(str3, str4);
                                        }
                                    } else {
                                        this.keys.put("unmarked", privateKeyUnwrapKey2);
                                        z2 = true;
                                    }
                                } else {
                                    contentInfoArr2 = contentInfo;
                                    if (safeBag3.getBagId().equals(certBag)) {
                                        vector.addElement(safeBag3);
                                    } else {
                                        System.out.println("extra in data " + safeBag3.getBagId());
                                        System.out.println(ASN1Dump.dumpAsString(safeBag3));
                                    }
                                }
                                i4++;
                                contentInfo = contentInfoArr2;
                                i5 = 0;
                            }
                            contentInfoArr = contentInfo;
                        } else {
                            contentInfoArr = contentInfo;
                            if (contentInfoArr[i2].getContentType().equals(encryptedData)) {
                                EncryptedData encryptedData = new EncryptedData((ASN1Sequence) contentInfoArr[i2].getContent());
                                boolean z5 = z;
                                byte[] bArrCryptData = cryptData(false, encryptedData.getEncryptionAlgorithm(), cArr, z5, encryptedData.getContent().getOctets());
                                z = z5;
                                cArr2 = cArr;
                                aSN1Sequence = (ASN1Sequence) ASN1Object.fromByteArray(bArrCryptData);
                                i3 = 0;
                                while (i3 != aSN1Sequence.size()) {
                                    safeBag2 = new SafeBag((ASN1Sequence) aSN1Sequence.getObjectAt(i3));
                                    if (safeBag2.getBagId().equals(certBag)) {
                                        vector.addElement(safeBag2);
                                        aSN1Sequence2 = aSN1Sequence;
                                        z4 = z;
                                    } else if (safeBag2.getBagId().equals(pkcs8ShroudedKeyBag)) {
                                        EncryptedPrivateKeyInfo encryptedPrivateKeyInfo2 = new EncryptedPrivateKeyInfo((ASN1Sequence) safeBag2.getBagValue());
                                        privateKeyUnwrapKey = unwrapKey(encryptedPrivateKeyInfo2.getEncryptionAlgorithm(), encryptedPrivateKeyInfo2.getEncryptedData(), cArr2, z);
                                        pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) privateKeyUnwrapKey;
                                        objects3 = safeBag2.getBagAttributes().getObjects();
                                        aSN1OctetString3 = null;
                                        string3 = null;
                                        while (objects3.hasMoreElements()) {
                                            ASN1Sequence aSN1Sequence5 = (ASN1Sequence) objects3.nextElement();
                                            ASN1Sequence aSN1Sequence6 = aSN1Sequence;
                                            dERObjectIdentifier3 = (DERObjectIdentifier) aSN1Sequence5.getObjectAt(0);
                                            boolean z6 = z;
                                            aSN1Set2 = (ASN1Set) aSN1Sequence5.getObjectAt(1);
                                            if (aSN1Set2.size() > 0) {
                                                dERObject3 = (DERObject) aSN1Set2.getObjectAt(0);
                                                bagAttribute3 = pKCS12BagAttributeCarrier3.getBagAttribute(dERObjectIdentifier3);
                                                if (bagAttribute3 != null) {
                                                    pKCS12BagAttributeCarrier3.setBagAttribute(dERObjectIdentifier3, dERObject3);
                                                } else if (!bagAttribute3.getDERObject().equals(dERObject3)) {
                                                    throw new IOException("attempt to add existing attribute with different value");
                                                }
                                            } else {
                                                dERObject3 = null;
                                            }
                                            if (dERObjectIdentifier3.equals(pkcs_9_at_friendlyName)) {
                                                string3 = ((DERBMPString) dERObject3).getString();
                                                this.keys.put(string3, privateKeyUnwrapKey);
                                            } else if (dERObjectIdentifier3.equals(pkcs_9_at_localKeyId)) {
                                                aSN1OctetString3 = (ASN1OctetString) dERObject3;
                                            }
                                            aSN1Sequence = aSN1Sequence6;
                                            z = z6;
                                        }
                                        aSN1Sequence2 = aSN1Sequence;
                                        z4 = z;
                                        str2 = new String(Hex.encode(aSN1OctetString3.getOctets()));
                                        if (string3 == null) {
                                            this.keys.put(str2, privateKeyUnwrapKey);
                                        } else {
                                            this.localIds.put(string3, str2);
                                        }
                                    } else {
                                        aSN1Sequence2 = aSN1Sequence;
                                        z4 = z;
                                        if (safeBag2.getBagId().equals(keyBag)) {
                                            privateKeyCreatePrivateKeyFromPrivateKeyInfo = JDKKeyFactory.createPrivateKeyFromPrivateKeyInfo(new PrivateKeyInfo((ASN1Sequence) safeBag2.getBagValue()));
                                            pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) privateKeyCreatePrivateKeyFromPrivateKeyInfo;
                                            objects2 = safeBag2.getBagAttributes().getObjects();
                                            aSN1OctetString2 = null;
                                            string2 = null;
                                            while (objects2.hasMoreElements()) {
                                                ASN1Sequence aSN1Sequence7 = (ASN1Sequence) objects2.nextElement();
                                                dERObjectIdentifier2 = (DERObjectIdentifier) aSN1Sequence7.getObjectAt(0);
                                                aSN1Set = (ASN1Set) aSN1Sequence7.getObjectAt(1);
                                                if (aSN1Set.size() > 0) {
                                                    dERObject2 = (DERObject) aSN1Set.getObjectAt(0);
                                                    bagAttribute2 = pKCS12BagAttributeCarrier2.getBagAttribute(dERObjectIdentifier2);
                                                    if (bagAttribute2 != null) {
                                                        pKCS12BagAttributeCarrier2.setBagAttribute(dERObjectIdentifier2, dERObject2);
                                                    } else if (!bagAttribute2.getDERObject().equals(dERObject2)) {
                                                        throw new IOException("attempt to add existing attribute with different value");
                                                    }
                                                } else {
                                                    dERObject2 = null;
                                                }
                                                if (dERObjectIdentifier2.equals(pkcs_9_at_friendlyName)) {
                                                    string2 = ((DERBMPString) dERObject2).getString();
                                                    this.keys.put(string2, privateKeyCreatePrivateKeyFromPrivateKeyInfo);
                                                } else if (dERObjectIdentifier2.equals(pkcs_9_at_localKeyId)) {
                                                    aSN1OctetString2 = (ASN1OctetString) dERObject2;
                                                }
                                            }
                                            str = new String(Hex.encode(aSN1OctetString2.getOctets()));
                                            if (string2 == null) {
                                                this.keys.put(str, privateKeyCreatePrivateKeyFromPrivateKeyInfo);
                                            } else {
                                                this.localIds.put(string2, str);
                                            }
                                        } else {
                                            System.out.println("extra in encryptedData " + safeBag2.getBagId());
                                            System.out.println(ASN1Dump.dumpAsString(safeBag2));
                                        }
                                    }
                                    i3++;
                                    aSN1Sequence = aSN1Sequence2;
                                    z = z4;
                                }
                            } else {
                                z3 = z;
                                System.out.println("extra " + contentInfoArr[i2].getContentType().getId());
                                System.out.println("extra " + ASN1Dump.dumpAsString(contentInfoArr[i2].getContent()));
                            }
                            i2++;
                            z = z3;
                            contentInfo = contentInfoArr;
                            i5 = 0;
                        }
                        z3 = z;
                        i2++;
                        z = z3;
                        contentInfo = contentInfoArr;
                        i5 = 0;
                    }
                } else {
                    z2 = false;
                }
                this.certs = new IgnoresCaseHashtable();
                this.chainCerts = new Hashtable();
                this.keyCerts = new Hashtable();
                for (i = 0; i != vector.size(); i++) {
                    safeBag = (SafeBag) vector.elementAt(i);
                    certBag = new CertBag((ASN1Sequence) safeBag.getBagValue());
                    if (certBag.getCertId().equals(x509Certificate)) {
                        throw new RuntimeException("Unsupported certificate type: " + certBag.getCertId());
                    }
                    try {
                        certificateGenerateCertificate = this.certFact.generateCertificate(new ByteArrayInputStream(((ASN1OctetString) certBag.getCertValue()).getOctets()));
                        if (safeBag.getBagAttributes() != null) {
                            objects = safeBag.getBagAttributes().getObjects();
                            aSN1OctetString = null;
                            string = null;
                            while (objects.hasMoreElements()) {
                                ASN1Sequence aSN1Sequence8 = (ASN1Sequence) objects.nextElement();
                                dERObjectIdentifier = (DERObjectIdentifier) aSN1Sequence8.getObjectAt(0);
                                dERObject = (DERObject) ((ASN1Set) aSN1Sequence8.getObjectAt(1)).getObjectAt(0);
                                if (certificateGenerateCertificate instanceof PKCS12BagAttributeCarrier) {
                                    pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) certificateGenerateCertificate;
                                    bagAttribute = pKCS12BagAttributeCarrier.getBagAttribute(dERObjectIdentifier);
                                    if (bagAttribute != null) {
                                        pKCS12BagAttributeCarrier.setBagAttribute(dERObjectIdentifier, dERObject);
                                    } else if (!bagAttribute.getDERObject().equals(dERObject)) {
                                        throw new IOException("attempt to add existing attribute with different value");
                                    }
                                }
                                if (dERObjectIdentifier.equals(pkcs_9_at_friendlyName)) {
                                    string = ((DERBMPString) dERObject).getString();
                                } else if (dERObjectIdentifier.equals(pkcs_9_at_localKeyId)) {
                                    aSN1OctetString = (ASN1OctetString) dERObject;
                                }
                            }
                        } else {
                            aSN1OctetString = null;
                            string = null;
                        }
                        this.chainCerts.put(new CertId(certificateGenerateCertificate.getPublicKey()), certificateGenerateCertificate);
                        if (z2) {
                            if (aSN1OctetString != null) {
                                this.keyCerts.put(new String(Hex.encode(aSN1OctetString.getOctets())), certificateGenerateCertificate);
                            }
                            if (string != null) {
                                this.certs.put(string, certificateGenerateCertificate);
                            }
                        } else if (this.keyCerts.isEmpty()) {
                            String str6 = new String(Hex.encode(createSubjectKeyId(certificateGenerateCertificate.getPublicKey()).getKeyIdentifier()));
                            this.keyCerts.put(str6, certificateGenerateCertificate);
                            IgnoresCaseHashtable ignoresCaseHashtable = this.keys;
                            ignoresCaseHashtable.put(str6, ignoresCaseHashtable.remove("unmarked"));
                        }
                    } catch (Exception e) {
                        throw new RuntimeException(e.toString());
                    }
                }
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new IOException("error constructing MAC: " + e3.toString());
            }
        }
        cArr2 = cArr;
        z = false;
        this.keys = new IgnoresCaseHashtable();
        this.localIds = new Hashtable();
        if (authSafe.getContentType().equals(data)) {
            contentInfo = new AuthenticatedSafe((ASN1Sequence) new ASN1InputStream(((ASN1OctetString) authSafe.getContent()).getOctets()).readObject()).getContentInfo();
            i2 = 0;
            z2 = false;
            while (i2 != contentInfo.length) {
                if (contentInfo[i2].getContentType().equals(data)) {
                    aSN1Sequence3 = (ASN1Sequence) new ASN1InputStream(((ASN1OctetString) contentInfo[i2].getContent()).getOctets()).readObject();
                    i4 = i5;
                    while (i4 != aSN1Sequence3.size()) {
                        safeBag3 = new SafeBag((ASN1Sequence) aSN1Sequence3.getObjectAt(i4));
                        if (safeBag3.getBagId().equals(pkcs8ShroudedKeyBag)) {
                            EncryptedPrivateKeyInfo encryptedPrivateKeyInfo3 = new EncryptedPrivateKeyInfo((ASN1Sequence) safeBag3.getBagValue());
                            privateKeyUnwrapKey2 = unwrapKey(encryptedPrivateKeyInfo3.getEncryptionAlgorithm(), encryptedPrivateKeyInfo3.getEncryptedData(), cArr2, z);
                            pKCS12BagAttributeCarrier4 = (PKCS12BagAttributeCarrier) privateKeyUnwrapKey2;
                            if (safeBag3.getBagAttributes() != null) {
                                objects4 = safeBag3.getBagAttributes().getObjects();
                                str5 = null;
                                aSN1OctetString4 = null;
                                while (objects4.hasMoreElements()) {
                                    ASN1Sequence aSN1Sequence9 = (ASN1Sequence) objects4.nextElement();
                                    dERObjectIdentifier4 = (DERObjectIdentifier) aSN1Sequence9.getObjectAt(i5);
                                    ContentInfo[] contentInfoArr4 = contentInfo;
                                    aSN1Set3 = (ASN1Set) aSN1Sequence9.getObjectAt(1);
                                    if (aSN1Set3.size() > 0) {
                                        dERObject4 = (DERObject) aSN1Set3.getObjectAt(0);
                                        bagAttribute4 = pKCS12BagAttributeCarrier4.getBagAttribute(dERObjectIdentifier4);
                                        if (bagAttribute4 != null) {
                                            pKCS12BagAttributeCarrier4.setBagAttribute(dERObjectIdentifier4, dERObject4);
                                        } else if (!bagAttribute4.getDERObject().equals(dERObject4)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    } else {
                                        dERObject4 = null;
                                    }
                                    if (dERObjectIdentifier4.equals(pkcs_9_at_friendlyName)) {
                                        String string5 = ((DERBMPString) dERObject4).getString();
                                        this.keys.put(string5, privateKeyUnwrapKey2);
                                        str5 = string5;
                                    } else if (dERObjectIdentifier4.equals(pkcs_9_at_localKeyId)) {
                                        aSN1OctetString4 = (ASN1OctetString) dERObject4;
                                    }
                                    contentInfo = contentInfoArr4;
                                    i5 = 0;
                                }
                                contentInfoArr2 = contentInfo;
                                str3 = str5;
                            } else {
                                contentInfoArr2 = contentInfo;
                                str3 = null;
                                aSN1OctetString4 = null;
                            }
                            if (aSN1OctetString4 != null) {
                                str4 = new String(Hex.encode(aSN1OctetString4.getOctets()));
                                if (str3 == null) {
                                    this.keys.put(str4, privateKeyUnwrapKey2);
                                } else {
                                    this.localIds.put(str3, str4);
                                }
                            } else {
                                this.keys.put("unmarked", privateKeyUnwrapKey2);
                                z2 = true;
                            }
                        } else {
                            contentInfoArr2 = contentInfo;
                            if (safeBag3.getBagId().equals(certBag)) {
                                vector.addElement(safeBag3);
                            } else {
                                System.out.println("extra in data " + safeBag3.getBagId());
                                System.out.println(ASN1Dump.dumpAsString(safeBag3));
                            }
                        }
                        i4++;
                        contentInfo = contentInfoArr2;
                        i5 = 0;
                    }
                    contentInfoArr = contentInfo;
                } else {
                    contentInfoArr = contentInfo;
                    if (contentInfoArr[i2].getContentType().equals(encryptedData)) {
                        EncryptedData encryptedData2 = new EncryptedData((ASN1Sequence) contentInfoArr[i2].getContent());
                        boolean z7 = z;
                        byte[] bArrCryptData2 = cryptData(false, encryptedData2.getEncryptionAlgorithm(), cArr, z7, encryptedData2.getContent().getOctets());
                        z = z7;
                        cArr2 = cArr;
                        aSN1Sequence = (ASN1Sequence) ASN1Object.fromByteArray(bArrCryptData2);
                        i3 = 0;
                        while (i3 != aSN1Sequence.size()) {
                            safeBag2 = new SafeBag((ASN1Sequence) aSN1Sequence.getObjectAt(i3));
                            if (safeBag2.getBagId().equals(certBag)) {
                                vector.addElement(safeBag2);
                                aSN1Sequence2 = aSN1Sequence;
                                z4 = z;
                            } else if (safeBag2.getBagId().equals(pkcs8ShroudedKeyBag)) {
                                EncryptedPrivateKeyInfo encryptedPrivateKeyInfo4 = new EncryptedPrivateKeyInfo((ASN1Sequence) safeBag2.getBagValue());
                                privateKeyUnwrapKey = unwrapKey(encryptedPrivateKeyInfo4.getEncryptionAlgorithm(), encryptedPrivateKeyInfo4.getEncryptedData(), cArr2, z);
                                pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) privateKeyUnwrapKey;
                                objects3 = safeBag2.getBagAttributes().getObjects();
                                aSN1OctetString3 = null;
                                string3 = null;
                                while (objects3.hasMoreElements()) {
                                    ASN1Sequence aSN1Sequence10 = (ASN1Sequence) objects3.nextElement();
                                    ASN1Sequence aSN1Sequence11 = aSN1Sequence;
                                    dERObjectIdentifier3 = (DERObjectIdentifier) aSN1Sequence10.getObjectAt(0);
                                    boolean z8 = z;
                                    aSN1Set2 = (ASN1Set) aSN1Sequence10.getObjectAt(1);
                                    if (aSN1Set2.size() > 0) {
                                        dERObject3 = (DERObject) aSN1Set2.getObjectAt(0);
                                        bagAttribute3 = pKCS12BagAttributeCarrier3.getBagAttribute(dERObjectIdentifier3);
                                        if (bagAttribute3 != null) {
                                            pKCS12BagAttributeCarrier3.setBagAttribute(dERObjectIdentifier3, dERObject3);
                                        } else if (!bagAttribute3.getDERObject().equals(dERObject3)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    } else {
                                        dERObject3 = null;
                                    }
                                    if (dERObjectIdentifier3.equals(pkcs_9_at_friendlyName)) {
                                        string3 = ((DERBMPString) dERObject3).getString();
                                        this.keys.put(string3, privateKeyUnwrapKey);
                                    } else if (dERObjectIdentifier3.equals(pkcs_9_at_localKeyId)) {
                                        aSN1OctetString3 = (ASN1OctetString) dERObject3;
                                    }
                                    aSN1Sequence = aSN1Sequence11;
                                    z = z8;
                                }
                                aSN1Sequence2 = aSN1Sequence;
                                z4 = z;
                                str2 = new String(Hex.encode(aSN1OctetString3.getOctets()));
                                if (string3 == null) {
                                    this.keys.put(str2, privateKeyUnwrapKey);
                                } else {
                                    this.localIds.put(string3, str2);
                                }
                            } else {
                                aSN1Sequence2 = aSN1Sequence;
                                z4 = z;
                                if (safeBag2.getBagId().equals(keyBag)) {
                                    privateKeyCreatePrivateKeyFromPrivateKeyInfo = JDKKeyFactory.createPrivateKeyFromPrivateKeyInfo(new PrivateKeyInfo((ASN1Sequence) safeBag2.getBagValue()));
                                    pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) privateKeyCreatePrivateKeyFromPrivateKeyInfo;
                                    objects2 = safeBag2.getBagAttributes().getObjects();
                                    aSN1OctetString2 = null;
                                    string2 = null;
                                    while (objects2.hasMoreElements()) {
                                        ASN1Sequence aSN1Sequence12 = (ASN1Sequence) objects2.nextElement();
                                        dERObjectIdentifier2 = (DERObjectIdentifier) aSN1Sequence12.getObjectAt(0);
                                        aSN1Set = (ASN1Set) aSN1Sequence12.getObjectAt(1);
                                        if (aSN1Set.size() > 0) {
                                            dERObject2 = (DERObject) aSN1Set.getObjectAt(0);
                                            bagAttribute2 = pKCS12BagAttributeCarrier2.getBagAttribute(dERObjectIdentifier2);
                                            if (bagAttribute2 != null) {
                                                pKCS12BagAttributeCarrier2.setBagAttribute(dERObjectIdentifier2, dERObject2);
                                            } else if (!bagAttribute2.getDERObject().equals(dERObject2)) {
                                                throw new IOException("attempt to add existing attribute with different value");
                                            }
                                        } else {
                                            dERObject2 = null;
                                        }
                                        if (dERObjectIdentifier2.equals(pkcs_9_at_friendlyName)) {
                                            string2 = ((DERBMPString) dERObject2).getString();
                                            this.keys.put(string2, privateKeyCreatePrivateKeyFromPrivateKeyInfo);
                                        } else if (dERObjectIdentifier2.equals(pkcs_9_at_localKeyId)) {
                                            aSN1OctetString2 = (ASN1OctetString) dERObject2;
                                        }
                                    }
                                    str = new String(Hex.encode(aSN1OctetString2.getOctets()));
                                    if (string2 == null) {
                                        this.keys.put(str, privateKeyCreatePrivateKeyFromPrivateKeyInfo);
                                    } else {
                                        this.localIds.put(string2, str);
                                    }
                                } else {
                                    System.out.println("extra in encryptedData " + safeBag2.getBagId());
                                    System.out.println(ASN1Dump.dumpAsString(safeBag2));
                                }
                            }
                            i3++;
                            aSN1Sequence = aSN1Sequence2;
                            z = z4;
                        }
                    } else {
                        z3 = z;
                        System.out.println("extra " + contentInfoArr[i2].getContentType().getId());
                        System.out.println("extra " + ASN1Dump.dumpAsString(contentInfoArr[i2].getContent()));
                    }
                    i2++;
                    z = z3;
                    contentInfo = contentInfoArr;
                    i5 = 0;
                }
                z3 = z;
                i2++;
                z = z3;
                contentInfo = contentInfoArr;
                i5 = 0;
            }
        } else {
            z2 = false;
        }
        this.certs = new IgnoresCaseHashtable();
        this.chainCerts = new Hashtable();
        this.keyCerts = new Hashtable();
        while (i != vector.size()) {
            safeBag = (SafeBag) vector.elementAt(i);
            certBag = new CertBag((ASN1Sequence) safeBag.getBagValue());
            if (certBag.getCertId().equals(x509Certificate)) {
                throw new RuntimeException("Unsupported certificate type: " + certBag.getCertId());
            }
            certificateGenerateCertificate = this.certFact.generateCertificate(new ByteArrayInputStream(((ASN1OctetString) certBag.getCertValue()).getOctets()));
            if (safeBag.getBagAttributes() != null) {
                objects = safeBag.getBagAttributes().getObjects();
                aSN1OctetString = null;
                string = null;
                while (objects.hasMoreElements()) {
                    ASN1Sequence aSN1Sequence13 = (ASN1Sequence) objects.nextElement();
                    dERObjectIdentifier = (DERObjectIdentifier) aSN1Sequence13.getObjectAt(0);
                    dERObject = (DERObject) ((ASN1Set) aSN1Sequence13.getObjectAt(1)).getObjectAt(0);
                    if (certificateGenerateCertificate instanceof PKCS12BagAttributeCarrier) {
                        pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) certificateGenerateCertificate;
                        bagAttribute = pKCS12BagAttributeCarrier.getBagAttribute(dERObjectIdentifier);
                        if (bagAttribute != null) {
                            pKCS12BagAttributeCarrier.setBagAttribute(dERObjectIdentifier, dERObject);
                        } else if (!bagAttribute.getDERObject().equals(dERObject)) {
                            throw new IOException("attempt to add existing attribute with different value");
                        }
                    }
                    if (dERObjectIdentifier.equals(pkcs_9_at_friendlyName)) {
                        string = ((DERBMPString) dERObject).getString();
                    } else if (dERObjectIdentifier.equals(pkcs_9_at_localKeyId)) {
                        aSN1OctetString = (ASN1OctetString) dERObject;
                    }
                }
            } else {
                aSN1OctetString = null;
                string = null;
            }
            this.chainCerts.put(new CertId(certificateGenerateCertificate.getPublicKey()), certificateGenerateCertificate);
            if (z2) {
                if (aSN1OctetString != null) {
                    this.keyCerts.put(new String(Hex.encode(aSN1OctetString.getOctets())), certificateGenerateCertificate);
                }
                if (string != null) {
                    this.certs.put(string, certificateGenerateCertificate);
                }
            } else if (this.keyCerts.isEmpty()) {
                String str7 = new String(Hex.encode(createSubjectKeyId(certificateGenerateCertificate.getPublicKey()).getKeyIdentifier()));
                this.keyCerts.put(str7, certificateGenerateCertificate);
                IgnoresCaseHashtable ignoresCaseHashtable2 = this.keys;
                ignoresCaseHashtable2.put(str7, ignoresCaseHashtable2.remove("unmarked"));
            }
        }
    }

    @Override
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        if (this.keys.get(str) != null) {
            throw new KeyStoreException("There is a key entry with the name " + str + ".");
        }
        this.certs.put(str, certificate);
        this.chainCerts.put(new CertId(certificate.getPublicKey()), certificate);
    }

    @Override
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        if ((key instanceof PrivateKey) && certificateArr == null) {
            throw new KeyStoreException("no certificate chain for private key");
        }
        if (this.keys.get(str) != null) {
            engineDeleteEntry(str);
        }
        this.keys.put(str, key);
        this.certs.put(str, certificateArr[0]);
        for (int i = 0; i != certificateArr.length; i++) {
            this.chainCerts.put(new CertId(certificateArr[i].getPublicKey()), certificateArr[i]);
        }
    }

    @Override
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new RuntimeException("operation not supported");
    }

    @Override
    public int engineSize() {
        Hashtable hashtable = new Hashtable();
        Enumeration enumerationKeys = this.certs.keys();
        while (enumerationKeys.hasMoreElements()) {
            hashtable.put(enumerationKeys.nextElement(), "cert");
        }
        Enumeration enumerationKeys2 = this.keys.keys();
        while (enumerationKeys2.hasMoreElements()) {
            String str = (String) enumerationKeys2.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, Action.KEY_ATTRIBUTE);
            }
        }
        return hashtable.size();
    }

    @Override
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException {
        doStore(outputStream, cArr, false);
    }

    @Override
    public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, IOException, CertificateException {
        char[] password;
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'param' arg cannot be null");
        }
        if (!(loadStoreParameter instanceof JDKPKCS12StoreParameter)) {
            throw new IllegalArgumentException("No support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
        JDKPKCS12StoreParameter jDKPKCS12StoreParameter = (JDKPKCS12StoreParameter) loadStoreParameter;
        KeyStore.ProtectionParameter protectionParameter = loadStoreParameter.getProtectionParameter();
        if (protectionParameter == null) {
            password = null;
        } else {
            if (!(protectionParameter instanceof KeyStore.PasswordProtection)) {
                throw new IllegalArgumentException("No support for protection parameter of type " + protectionParameter.getClass().getName());
            }
            password = ((KeyStore.PasswordProtection) protectionParameter).getPassword();
        }
        doStore(jDKPKCS12StoreParameter.getOutputStream(), password, jDKPKCS12StoreParameter.isUseDEREncoding());
    }

    @Override
    public void setRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    protected PrivateKey unwrapKey(AlgorithmIdentifier algorithmIdentifier, byte[] bArr, char[] cArr, boolean z) throws IOException {
        String id = algorithmIdentifier.getObjectId().getId();
        PKCS12PBEParams pKCS12PBEParams = new PKCS12PBEParams((ASN1Sequence) algorithmIdentifier.getParameters());
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            Provider provider = bcProvider;
            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(id, provider);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
            SecretKey secretKeyGenerateSecret = secretKeyFactory.generateSecret(pBEKeySpec);
            ((JCEPBEKey) secretKeyGenerateSecret).setTryWrongPKCS12Zero(z);
            Cipher cipher = Cipher.getInstance(id, provider);
            cipher.init(4, secretKeyGenerateSecret, pBEParameterSpec);
            return (PrivateKey) cipher.unwrap(bArr, "", 2);
        } catch (Exception e) {
            throw new IOException("exception unwrapping private key - " + e.toString());
        }
    }

    protected byte[] wrapKey(String str, Key key, PKCS12PBEParams pKCS12PBEParams, char[] cArr) throws IOException {
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            Provider provider = bcProvider;
            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(str, provider);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
            Cipher cipher = Cipher.getInstance(str, provider);
            cipher.init(3, secretKeyFactory.generateSecret(pBEKeySpec), pBEParameterSpec);
            return cipher.wrap(key);
        } catch (Exception e) {
            throw new IOException("exception encrypting data - " + e.toString());
        }
    }
}
