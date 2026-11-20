package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;

public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    @Override
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        X500Principal x500Principal;
        PublicKey cAPublicKey;
        HashSet hashSet;
        HashSet hashSet2;
        if (!(certPathParameters instanceof PKIXParameters)) {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
        }
        ExtendedPKIXParameters extendedPKIXParameters = certPathParameters instanceof ExtendedPKIXParameters ? (ExtendedPKIXParameters) certPathParameters : ExtendedPKIXParameters.getInstance((PKIXParameters) certPathParameters);
        if (extendedPKIXParameters.getTrustAnchors() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        int size = certificates.size();
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, 0);
        }
        Set<String> initialPolicies = extendedPKIXParameters.getInitialPolicies();
        int i = 1;
        try {
            TrustAnchor trustAnchorFindTrustAnchor = CertPathValidatorUtilities.findTrustAnchor((X509Certificate) certificates.get(certificates.size() - 1), extendedPKIXParameters.getTrustAnchors(), extendedPKIXParameters.getSigProvider());
            if (trustAnchorFindTrustAnchor == null) {
                throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
            }
            int i2 = size + 1;
            ArrayList[] arrayListArr = new ArrayList[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                arrayListArr[i3] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add("2.5.29.32.0");
            PKIXPolicyNode pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), "2.5.29.32.0", false);
            arrayListArr[0].add(pKIXPolicyNode);
            PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
            HashSet hashSet4 = new HashSet();
            int i4 = extendedPKIXParameters.isExplicitPolicyRequired() ? 0 : i2;
            int i5 = extendedPKIXParameters.isAnyPolicyInhibited() ? 0 : i2;
            if (extendedPKIXParameters.isPolicyMappingInhibited()) {
                i2 = 0;
            }
            X509Certificate trustedCert = trustAnchorFindTrustAnchor.getTrustedCert();
            try {
                if (trustedCert != null) {
                    X500Principal subjectPrincipal = CertPathValidatorUtilities.getSubjectPrincipal(trustedCert);
                    cAPublicKey = trustedCert.getPublicKey();
                    x500Principal = subjectPrincipal;
                } else {
                    x500Principal = new X500Principal(trustAnchorFindTrustAnchor.getCAName());
                    cAPublicKey = trustAnchorFindTrustAnchor.getCAPublicKey();
                }
                try {
                    AlgorithmIdentifier algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(cAPublicKey);
                    algorithmIdentifier.getObjectId();
                    algorithmIdentifier.getParameters();
                    if (extendedPKIXParameters.getTargetConstraints() != null && !extendedPKIXParameters.getTargetConstraints().match((X509Certificate) certificates.get(0))) {
                        throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                    }
                    List<PKIXCertPathChecker> certPathCheckers = extendedPKIXParameters.getCertPathCheckers();
                    Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
                    while (it.hasNext()) {
                        it.next().init(false);
                    }
                    int i6 = i5;
                    X509Certificate x509Certificate = trustedCert;
                    int iPrepareNextCertM = size;
                    int i7 = i2;
                    PublicKey publicKey = cAPublicKey;
                    PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNode;
                    int i8 = i4;
                    X500Principal x500Principal2 = x500Principal;
                    int size2 = certificates.size() - 1;
                    X509Certificate x509Certificate2 = null;
                    while (size2 >= 0) {
                        int i9 = size - size2;
                        X509Certificate x509Certificate3 = (X509Certificate) certificates.get(size2);
                        int size3 = certificates.size() - 1;
                        List<? extends Certificate> list = certificates;
                        PKIXNameConstraintValidator pKIXNameConstraintValidator2 = pKIXNameConstraintValidator;
                        Set<String> set = initialPolicies;
                        RFC3280CertPathUtilities.processCertA(certPath, extendedPKIXParameters, size2, publicKey, size2 == size3 ? i : 0, x500Principal2, x509Certificate);
                        PublicKey publicKey2 = publicKey;
                        X500Principal x500Principal3 = x500Principal2;
                        X509Certificate x509Certificate4 = x509Certificate;
                        ExtendedPKIXParameters extendedPKIXParameters2 = extendedPKIXParameters;
                        int i10 = size2;
                        RFC3280CertPathUtilities.processCertBC(certPath, i10, pKIXNameConstraintValidator2);
                        ArrayList[] arrayListArr2 = arrayListArr;
                        HashSet hashSet5 = hashSet4;
                        int i11 = i6;
                        PKIXPolicyNode pKIXPolicyNodeProcessCertE = RFC3280CertPathUtilities.processCertE(certPath, i10, RFC3280CertPathUtilities.processCertD(certPath, i10, hashSet5, pKIXPolicyNode2, arrayListArr2, i11));
                        RFC3280CertPathUtilities.processCertF(certPath, i10, pKIXPolicyNodeProcessCertE, i8);
                        if (i9 == size) {
                            i6 = i11;
                            publicKey = publicKey2;
                            x500Principal2 = x500Principal3;
                        } else {
                            if (x509Certificate3 != null && x509Certificate3.getVersion() == i) {
                                throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i10);
                            }
                            RFC3280CertPathUtilities.prepareNextCertA(certPath, i10);
                            pKIXPolicyNodeProcessCertE = RFC3280CertPathUtilities.prepareCertB(certPath, i10, arrayListArr2, pKIXPolicyNodeProcessCertE, i7);
                            RFC3280CertPathUtilities.prepareNextCertG(certPath, i10, pKIXNameConstraintValidator2);
                            int iPrepareNextCertH1 = RFC3280CertPathUtilities.prepareNextCertH1(certPath, i10, i8);
                            int iPrepareNextCertH2 = RFC3280CertPathUtilities.prepareNextCertH2(certPath, i10, i7);
                            int iPrepareNextCertH3 = RFC3280CertPathUtilities.prepareNextCertH3(certPath, i10, i11);
                            int iPrepareNextCertI1 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, i10, iPrepareNextCertH1);
                            int iPrepareNextCertI2 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, i10, iPrepareNextCertH2);
                            int iPrepareNextCertJ = RFC3280CertPathUtilities.prepareNextCertJ(certPath, i10, iPrepareNextCertH3);
                            RFC3280CertPathUtilities.prepareNextCertK(certPath, i10);
                            iPrepareNextCertM = RFC3280CertPathUtilities.prepareNextCertM(certPath, i10, RFC3280CertPathUtilities.prepareNextCertL(certPath, i10, iPrepareNextCertM));
                            RFC3280CertPathUtilities.prepareNextCertN(certPath, i10);
                            Set<String> criticalExtensionOIDs = x509Certificate3.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                                hashSet2 = new HashSet(criticalExtensionOIDs);
                                hashSet2.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                hashSet2.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                hashSet2.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                hashSet2.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                hashSet2.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                hashSet2.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                hashSet2.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                hashSet2.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                hashSet2.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                hashSet2.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                            } else {
                                hashSet2 = new HashSet();
                            }
                            RFC3280CertPathUtilities.prepareNextCertO(certPath, i10, hashSet2, certPathCheckers);
                            X500Principal subjectPrincipal2 = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate3);
                            try {
                                PublicKey nextWorkingKey = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), i10);
                                AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey);
                                algorithmIdentifier2.getObjectId();
                                algorithmIdentifier2.getParameters();
                                i8 = iPrepareNextCertI1;
                                publicKey = nextWorkingKey;
                                i6 = iPrepareNextCertJ;
                                x500Principal2 = subjectPrincipal2;
                                x509Certificate4 = x509Certificate3;
                                i7 = iPrepareNextCertI2;
                            } catch (CertPathValidatorException e) {
                                throw new CertPathValidatorException("Next working key could not be retrieved.", e, certPath, i10);
                            }
                        }
                        pKIXPolicyNode2 = pKIXPolicyNodeProcessCertE;
                        int i12 = i10 - 1;
                        hashSet4 = hashSet5;
                        arrayListArr = arrayListArr2;
                        extendedPKIXParameters = extendedPKIXParameters2;
                        pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                        certificates = list;
                        initialPolicies = set;
                        x509Certificate = x509Certificate4;
                        i = 1;
                        size2 = i12;
                        x509Certificate2 = x509Certificate3;
                    }
                    ExtendedPKIXParameters extendedPKIXParameters3 = extendedPKIXParameters;
                    Set<String> set2 = initialPolicies;
                    ArrayList[] arrayListArr3 = arrayListArr;
                    PKIXPolicyNode pKIXPolicyNode3 = pKIXPolicyNode2;
                    int i13 = size2;
                    HashSet hashSet6 = hashSet4;
                    int i14 = i13 + 1;
                    int iWrapupCertB = RFC3280CertPathUtilities.wrapupCertB(certPath, i14, RFC3280CertPathUtilities.wrapupCertA(i8, x509Certificate2));
                    Set<String> criticalExtensionOIDs2 = x509Certificate2.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(RFC3280CertPathUtilities.KEY_USAGE);
                        hashSet.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                        hashSet.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                        hashSet.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                        hashSet.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                        hashSet.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS);
                    } else {
                        hashSet = new HashSet();
                    }
                    RFC3280CertPathUtilities.wrapupCertF(certPath, i14, certPathCheckers, hashSet);
                    X509Certificate x509Certificate5 = x509Certificate2;
                    PKIXPolicyNode pKIXPolicyNodeWrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, extendedPKIXParameters3, set2, i14, arrayListArr3, pKIXPolicyNode3, hashSet6);
                    if (iWrapupCertB > 0 || pKIXPolicyNodeWrapupCertG != null) {
                        return new PKIXCertPathValidatorResult(trustAnchorFindTrustAnchor, pKIXPolicyNodeWrapupCertG, x509Certificate5.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i13);
                } catch (CertPathValidatorException e2) {
                    throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e2, certPath, -1);
                }
            } catch (IllegalArgumentException e3) {
                throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e3, certPath, -1);
            }
        } catch (AnnotatedException e4) {
            throw new CertPathValidatorException(e4.getMessage(), e4, certPath, certificates.size() - 1);
        }
    }
}
