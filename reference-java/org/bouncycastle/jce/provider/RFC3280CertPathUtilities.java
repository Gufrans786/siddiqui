package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.PolicyInformation;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.asn1.x509.X509Name;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.x509.ExtendedPKIXBuilderParameters;
import org.bouncycastle.x509.ExtendedPKIXParameters;
import org.bouncycastle.x509.X509CRLStoreSelector;
import org.bouncycastle.x509.X509CertStoreSelector;

public class RFC3280CertPathUtilities {
    protected static final String ANY_POLICY = "2.5.29.32.0";
    protected static final int CRL_SIGN = 6;
    protected static final int KEY_CERT_SIGN = 5;
    private static final PKIXCRLUtil CRL_UTIL = new PKIXCRLUtil();
    protected static final String CERTIFICATE_POLICIES = X509Extensions.CertificatePolicies.getId();
    protected static final String POLICY_MAPPINGS = X509Extensions.PolicyMappings.getId();
    protected static final String INHIBIT_ANY_POLICY = X509Extensions.InhibitAnyPolicy.getId();
    protected static final String ISSUING_DISTRIBUTION_POINT = X509Extensions.IssuingDistributionPoint.getId();
    protected static final String FRESHEST_CRL = X509Extensions.FreshestCRL.getId();
    protected static final String DELTA_CRL_INDICATOR = X509Extensions.DeltaCRLIndicator.getId();
    protected static final String POLICY_CONSTRAINTS = X509Extensions.PolicyConstraints.getId();
    protected static final String BASIC_CONSTRAINTS = X509Extensions.BasicConstraints.getId();
    protected static final String CRL_DISTRIBUTION_POINTS = X509Extensions.CRLDistributionPoints.getId();
    protected static final String SUBJECT_ALTERNATIVE_NAME = X509Extensions.SubjectAlternativeName.getId();
    protected static final String NAME_CONSTRAINTS = X509Extensions.NameConstraints.getId();
    protected static final String AUTHORITY_KEY_IDENTIFIER = X509Extensions.AuthorityKeyIdentifier.getId();
    protected static final String KEY_USAGE = X509Extensions.KeyUsage.getId();
    protected static final String CRL_NUMBER = X509Extensions.CRLNumber.getId();
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    private static void checkCRL(DistributionPoint distributionPoint, ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, CertStatus certStatus, ReasonsMask reasonsMask, List list) throws AnnotatedException {
        Set<String> criticalExtensionOIDs;
        Date date2 = new Date(System.currentTimeMillis());
        if (date.getTime() > date2.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it = CertPathValidatorUtilities.getCompleteCRLs(distributionPoint, x509Certificate, date2, extendedPKIXParameters).iterator();
        boolean z = false;
        AnnotatedException e = null;
        while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
            try {
                X509CRL x509crl = (X509CRL) it.next();
                ReasonsMask reasonsMaskProcessCRLD = processCRLD(x509crl, distributionPoint);
                if (reasonsMaskProcessCRLD.hasNewReasons(reasonsMask)) {
                    X509CRL x509crlProcessCRLH = extendedPKIXParameters.isUseDeltasEnabled() ? processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date2, extendedPKIXParameters, x509crl), processCRLG(x509crl, processCRLF(x509crl, x509Certificate, x509Certificate2, publicKey, extendedPKIXParameters, list))) : null;
                    if (extendedPKIXParameters.getValidityModel() != 1 && x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                        throw new AnnotatedException("No valid CRL for current time found.");
                    }
                    processCRLB1(distributionPoint, x509Certificate, x509crl);
                    processCRLB2(distributionPoint, x509Certificate, x509crl);
                    processCRLC(x509crlProcessCRLH, x509crl, extendedPKIXParameters);
                    processCRLI(date, x509crlProcessCRLH, x509Certificate, certStatus, extendedPKIXParameters);
                    processCRLJ(date, x509crl, x509Certificate, certStatus);
                    if (certStatus.getCertStatus() == 8) {
                        certStatus.setCertStatus(11);
                    }
                    reasonsMask.addReasons(reasonsMaskProcessCRLD);
                    Set<String> criticalExtensionOIDs2 = x509crl.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(X509Extensions.IssuingDistributionPoint.getId());
                        hashSet.remove(X509Extensions.DeltaCRLIndicator.getId());
                        if (!hashSet.isEmpty()) {
                            throw new AnnotatedException("CRL contains unsupported critical extensions.");
                        }
                    }
                    if (x509crlProcessCRLH != null && (criticalExtensionOIDs = x509crlProcessCRLH.getCriticalExtensionOIDs()) != null) {
                        HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                        hashSet2.remove(X509Extensions.IssuingDistributionPoint.getId());
                        hashSet2.remove(X509Extensions.DeltaCRLIndicator.getId());
                        if (!hashSet2.isEmpty()) {
                            throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                        }
                    }
                    z = true;
                }
            } catch (AnnotatedException e2) {
                e = e2;
            }
        }
        if (!z) {
            throw e;
        }
    }

    protected static void checkCRLs(ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, List list) throws AnnotatedException {
        boolean z;
        AnnotatedException e;
        int i;
        try {
            X509Certificate x509Certificate3 = x509Certificate;
            CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate3, CRL_DISTRIBUTION_POINTS));
            try {
                CertPathValidatorUtilities.addAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, extendedPKIXParameters);
                CertStatus certStatus = new CertStatus();
                ReasonsMask reasonsMask = new ReasonsMask();
                boolean z2 = true;
                if (cRLDistPoint != null) {
                    try {
                        DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
                        if (distributionPoints != null) {
                            int i2 = 0;
                            z = false;
                            e = null;
                            while (i2 < distributionPoints.length && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                                int i3 = i2;
                                try {
                                    i = i3;
                                    try {
                                        checkCRL(distributionPoints[i3], (ExtendedPKIXParameters) extendedPKIXParameters.clone(), x509Certificate3, date, x509Certificate2, publicKey, certStatus, reasonsMask, list);
                                        z = true;
                                    } catch (AnnotatedException e2) {
                                        e = e2;
                                    }
                                } catch (AnnotatedException e3) {
                                    e = e3;
                                    i = i3;
                                }
                                i2 = i + 1;
                                x509Certificate3 = x509Certificate;
                            }
                        } else {
                            z = false;
                            e = null;
                        }
                    } catch (Exception e4) {
                        throw new AnnotatedException("Distribution points could not be read.", e4);
                    }
                } else {
                    z = false;
                    e = null;
                }
                if (certStatus.getCertStatus() == 11) {
                    try {
                        if (reasonsMask.isAllReasons()) {
                            z2 = z;
                        } else {
                            try {
                                checkCRL(new DistributionPoint(new DistributionPointName(0, (ASN1Encodable) new GeneralNames(new GeneralName(4, new ASN1InputStream(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded()).readObject()))), null, null), (ExtendedPKIXParameters) extendedPKIXParameters.clone(), x509Certificate, date, x509Certificate2, publicKey, certStatus, reasonsMask, list);
                            } catch (Exception e5) {
                                throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", e5);
                            }
                        }
                    } catch (AnnotatedException e6) {
                        e = e6;
                    }
                } else {
                    z2 = z;
                }
                if (!z2) {
                    if (!(e instanceof AnnotatedException)) {
                        throw new AnnotatedException("No valid CRL found.", e);
                    }
                    throw e;
                }
                if (certStatus.getCertStatus() != 11) {
                    throw new AnnotatedException(("Certificate revocation after " + certStatus.getRevocationDate()) + ", reason: " + crlReasons[certStatus.getCertStatus()]);
                }
                if (!reasonsMask.isAllReasons() && certStatus.getCertStatus() == 11) {
                    certStatus.setCertStatus(12);
                }
                if (certStatus.getCertStatus() == 12) {
                    throw new AnnotatedException("Certificate status could not be determined.");
                }
            } catch (AnnotatedException e7) {
                throw new AnnotatedException("No additional CRL locations could be decoded from CRL distribution point extension.", e7);
            }
        } catch (Exception e8) {
            throw new AnnotatedException("CRL distribution point extension could not be read.", e8);
        }
    }

    protected static PKIXPolicyNode prepareCertB(CertPath certPath, int i, List[] listArr, PKIXPolicyNode pKIXPolicyNode, int i2) throws CertPathValidatorException {
        Set qualifierSet;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size() - i;
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, POLICY_MAPPINGS));
            if (dERSequence == null) {
                return pKIXPolicyNode;
            }
            HashMap map = new HashMap();
            HashSet<String> hashSet = new HashSet();
            for (int i3 = 0; i3 < dERSequence.size(); i3++) {
                ASN1Sequence aSN1Sequence = (ASN1Sequence) dERSequence.getObjectAt(i3);
                String id = ((DERObjectIdentifier) aSN1Sequence.getObjectAt(0)).getId();
                String id2 = ((DERObjectIdentifier) aSN1Sequence.getObjectAt(1)).getId();
                if (map.containsKey(id)) {
                    ((Set) map.get(id)).add(id2);
                } else {
                    HashSet hashSet2 = new HashSet();
                    hashSet2.add(id2);
                    map.put(id, hashSet2);
                    hashSet.add(id);
                }
            }
            PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNode;
            for (String str : hashSet) {
                if (i2 > 0) {
                    Iterator it = listArr[size].iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            for (PKIXPolicyNode pKIXPolicyNode3 : listArr[size]) {
                                if (ANY_POLICY.equals(pKIXPolicyNode3.getValidPolicy())) {
                                    try {
                                        Enumeration objects = ((ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES)).getObjects();
                                        while (true) {
                                            if (!objects.hasMoreElements()) {
                                                qualifierSet = null;
                                                break;
                                            }
                                            try {
                                                PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                                                if (ANY_POLICY.equals(policyInformation.getPolicyIdentifier().getId())) {
                                                    try {
                                                        qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                                                        break;
                                                    } catch (CertPathValidatorException e) {
                                                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", e, certPath, i);
                                                    }
                                                }
                                            } catch (Exception e2) {
                                                throw new CertPathValidatorException("Policy information could not be decoded.", e2, certPath, i);
                                            }
                                        }
                                        Set set = qualifierSet;
                                        boolean zContains = x509Certificate.getCriticalExtensionOIDs() != null ? x509Certificate.getCriticalExtensionOIDs().contains(CERTIFICATE_POLICIES) : false;
                                        PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) pKIXPolicyNode3.getParent();
                                        if (!ANY_POLICY.equals(pKIXPolicyNode4.getValidPolicy())) {
                                            break;
                                        }
                                        PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), size, (Set) map.get(str), pKIXPolicyNode4, set, str, zContains);
                                        pKIXPolicyNode4.addChild(pKIXPolicyNode5);
                                        listArr[size].add(pKIXPolicyNode5);
                                        break;
                                    } catch (AnnotatedException e3) {
                                        throw new ExtCertPathValidatorException("Certificate policies extension could not be decoded.", e3, certPath, i);
                                    }
                                }
                            }
                            break;
                        }
                        PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) it.next();
                        if (pKIXPolicyNode6.getValidPolicy().equals(str)) {
                            pKIXPolicyNode6.expectedPolicies = (Set) map.get(str);
                            break;
                        }
                    }
                } else if (i2 <= 0) {
                    Iterator it2 = listArr[size].iterator();
                    while (it2.hasNext()) {
                        PKIXPolicyNode pKIXPolicyNode7 = (PKIXPolicyNode) it2.next();
                        if (pKIXPolicyNode7.getValidPolicy().equals(str)) {
                            ((PKIXPolicyNode) pKIXPolicyNode7.getParent()).removeChild(pKIXPolicyNode7);
                            it2.remove();
                            for (int i4 = size - 1; i4 >= 0; i4--) {
                                List list = listArr[i4];
                                for (int i5 = 0; i5 < list.size(); i5++) {
                                    PKIXPolicyNode pKIXPolicyNode8 = (PKIXPolicyNode) list.get(i5);
                                    if (!pKIXPolicyNode8.hasChildren()) {
                                        PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode2, listArr, pKIXPolicyNode8);
                                        pKIXPolicyNode2 = pKIXPolicyNodeRemovePolicyNode;
                                        if (pKIXPolicyNodeRemovePolicyNode == null) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return pKIXPolicyNode2;
        } catch (AnnotatedException e4) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e4, certPath, i);
        }
    }

    protected static void prepareNextCertA(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_MAPPINGS));
            if (dERSequence != null) {
                for (int i2 = 0; i2 < dERSequence.size(); i2++) {
                    try {
                        ASN1Sequence dERSequence2 = DERSequence.getInstance(dERSequence.getObjectAt(i2));
                        DERObjectIdentifier dERObjectIdentifier = DERObjectIdentifier.getInstance(dERSequence2.getObjectAt(0));
                        DERObjectIdentifier dERObjectIdentifier2 = DERObjectIdentifier.getInstance(dERSequence2.getObjectAt(1));
                        if (ANY_POLICY.equals(dERObjectIdentifier.getId())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i);
                        }
                        if (ANY_POLICY.equals(dERObjectIdentifier2.getId())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy,", null, certPath, i);
                        }
                    } catch (Exception e) {
                        throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e, certPath, i);
                    }
                }
            }
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e2, certPath, i);
        }
    }

    protected static void prepareNextCertG(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), NAME_CONSTRAINTS));
            NameConstraints nameConstraints = dERSequence != null ? new NameConstraints(dERSequence) : null;
            if (nameConstraints != null) {
                ASN1Sequence permittedSubtrees = nameConstraints.getPermittedSubtrees();
                if (permittedSubtrees != null) {
                    try {
                        pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                    } catch (Exception e) {
                        throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e, certPath, i);
                    }
                }
                ASN1Sequence excludedSubtrees = nameConstraints.getExcludedSubtrees();
                if (excludedSubtrees != null) {
                    Enumeration objects = excludedSubtrees.getObjects();
                    while (objects.hasMoreElements()) {
                        try {
                            pKIXNameConstraintValidator.addExcludedSubtree(GeneralSubtree.getInstance(objects.nextElement()));
                        } catch (Exception e2) {
                            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e2, certPath, i);
                        }
                    }
                }
            }
        } catch (Exception e3) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e3, certPath, i);
        }
    }

    protected static int prepareNextCertH1(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    protected static int prepareNextCertH2(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    protected static int prepareNextCertH3(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    protected static int prepareNextCertI1(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (dERSequence != null) {
                Enumeration objects = dERSequence.getObjects();
                while (objects.hasMoreElements()) {
                    try {
                        ASN1TaggedObject aSN1TaggedObject = ASN1TaggedObject.getInstance(objects.nextElement());
                        if (aSN1TaggedObject.getTagNo() == 0) {
                            int iIntValue = DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue();
                            if (iIntValue < i2) {
                                return iIntValue;
                            }
                        }
                    } catch (IllegalArgumentException e) {
                        throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e, certPath, i);
                    }
                }
            }
            return i2;
        } catch (Exception e2) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e2, certPath, i);
        }
    }

    protected static int prepareNextCertI2(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (dERSequence != null) {
                Enumeration objects = dERSequence.getObjects();
                while (objects.hasMoreElements()) {
                    try {
                        ASN1TaggedObject aSN1TaggedObject = ASN1TaggedObject.getInstance(objects.nextElement());
                        if (aSN1TaggedObject.getTagNo() == 1) {
                            int iIntValue = DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue();
                            if (iIntValue < i2) {
                                return iIntValue;
                            }
                        }
                    } catch (IllegalArgumentException e) {
                        throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e, certPath, i);
                    }
                }
            }
            return i2;
        } catch (Exception e2) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e2, certPath, i);
        }
    }

    protected static int prepareNextCertJ(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        int iIntValue;
        try {
            DERInteger dERInteger = DERInteger.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), INHIBIT_ANY_POLICY));
            return (dERInteger == null || (iIntValue = dERInteger.getValue().intValue()) >= i2) ? i2 : iIntValue;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e, certPath, i);
        }
    }

    protected static void prepareNextCertK(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            if (basicConstraints == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints");
            }
            if (!basicConstraints.isCA()) {
                throw new CertPathValidatorException("Not a CA certificate");
            }
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    protected static int prepareNextCertL(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        if (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            return i2;
        }
        if (i2 > 0) {
            return i2 - 1;
        }
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i);
    }

    protected static int prepareNextCertM(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        BigInteger pathLenConstraint;
        int iIntValue;
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            return (basicConstraints == null || (pathLenConstraint = basicConstraints.getPathLenConstraint()) == null || (iIntValue = pathLenConstraint.intValue()) >= i2) ? i2 : iIntValue;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    protected static void prepareNextCertN(CertPath certPath, int i) throws CertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i)).getKeyUsage();
        if (keyUsage != null && !keyUsage[5]) {
            throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i);
        }
    }

    protected static void prepareNextCertO(CertPath certPath, int i, Set set, List list) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new CertPathValidatorException(e.getMessage(), e.getCause(), certPath, i);
            }
        }
        if (!set.isEmpty()) {
            throw new ExtCertPathValidatorException("Certificate has unsupported critical extension.", null, certPath, i);
        }
    }

    protected static Set processCRLA1i(Date date, ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        if (extendedPKIXParameters.isUseDeltasEnabled()) {
            try {
                String str = FRESHEST_CRL;
                CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, str));
                if (cRLDistPoint == null) {
                    try {
                        cRLDistPoint = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, str));
                    } catch (AnnotatedException e) {
                        throw new AnnotatedException("Freshest CRL extension could not be decoded from CRL.", e);
                    }
                }
                if (cRLDistPoint != null) {
                    try {
                        CertPathValidatorUtilities.addAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, extendedPKIXParameters);
                        try {
                            hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, extendedPKIXParameters, x509crl));
                            return hashSet;
                        } catch (AnnotatedException e2) {
                            throw new AnnotatedException("Exception obtaining delta CRLs.", e2);
                        }
                    } catch (AnnotatedException e3) {
                        throw new AnnotatedException("No new delta CRL locations could be added from Freshest CRL extension.", e3);
                    }
                }
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Freshest CRL extension could not be decoded from certificate.", e4);
            }
        }
        return hashSet;
    }

    protected static Set[] processCRLA1ii(Date date, ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        x509CRLStoreSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLStoreSelector.addIssuerName(x509crl.getIssuerX500Principal().getEncoded());
            x509CRLStoreSelector.setCompleteCRLEnabled(true);
            Set setFindCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, extendedPKIXParameters, date);
            if (extendedPKIXParameters.isUseDeltasEnabled()) {
                try {
                    hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, extendedPKIXParameters, x509crl));
                } catch (AnnotatedException e) {
                    throw new AnnotatedException("Exception obtaining delta CRLs.", e);
                }
            }
            return new Set[]{setFindCRLs, hashSet};
        } catch (IOException e2) {
            throw new AnnotatedException("Cannot extract issuer from CRL." + e2, e2);
        }
    }

    protected static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        DERObject extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
        boolean z = true;
        boolean z2 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        byte[] encoded = CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded();
        if (distributionPoint.getCRLIssuer() != null) {
            GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
            boolean z3 = false;
            for (int i = 0; i < names.length; i++) {
                if (names[i].getTagNo() == 4) {
                    try {
                        if (Arrays.areEqual(names[i].getName().getDERObject().getEncoded(), encoded)) {
                            z3 = true;
                        }
                    } catch (IOException e) {
                        throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e);
                    }
                }
            }
            if (z3 && !z2) {
                throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
            }
            if (!z3) {
                throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
            }
            z = z3;
        } else if (!CertPathValidatorUtilities.getIssuerPrincipal(x509crl).equals(CertPathValidatorUtilities.getEncodedIssuerPrincipal(obj))) {
            z = false;
        }
        if (!z) {
            throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
        }
    }

    protected static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        GeneralName[] names;
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint != null) {
                if (issuingDistributionPoint.getDistributionPoint() == null) {
                    break;
                }
                DistributionPointName distributionPoint2 = IssuingDistributionPoint.getInstance(issuingDistributionPoint).getDistributionPoint();
                ArrayList arrayList = new ArrayList();
                int i = 0;
                if (distributionPoint2.getType() == 0) {
                    for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                        arrayList.add(generalName);
                    }
                }
                if (distributionPoint2.getType() == 1) {
                    ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                    try {
                        Enumeration objects = ASN1Sequence.getInstance(ASN1Sequence.fromByteArray(CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded())).getObjects();
                        while (objects.hasMoreElements()) {
                            aSN1EncodableVector.add((DEREncodable) objects.nextElement());
                        }
                        aSN1EncodableVector.add(distributionPoint2.getName());
                        arrayList.add(new GeneralName(X509Name.getInstance(new DERSequence(aSN1EncodableVector))));
                    } catch (IOException e) {
                        throw new AnnotatedException("Could not read CRL issuer.", e);
                    }
                }
                if (distributionPoint.getDistributionPoint() != null) {
                    DistributionPointName distributionPoint3 = distributionPoint.getDistributionPoint();
                    GeneralName[] names2 = distributionPoint3.getType() == 0 ? GeneralNames.getInstance(distributionPoint3.getName()).getNames() : null;
                    if (distributionPoint3.getType() == 1) {
                        if (distributionPoint.getCRLIssuer() != null) {
                            names = distributionPoint.getCRLIssuer().getNames();
                        } else {
                            names = new GeneralName[1];
                            try {
                                names[0] = new GeneralName(new X509Name((ASN1Sequence) ASN1Sequence.fromByteArray(CertPathValidatorUtilities.getEncodedIssuerPrincipal(obj).getEncoded())));
                            } catch (IOException e2) {
                                throw new AnnotatedException("Could not read certificate issuer.", e2);
                            }
                        }
                        names2 = names;
                        for (int i2 = 0; i2 < names2.length; i2++) {
                            Enumeration objects2 = ASN1Sequence.getInstance(names2[i2].getName().getDERObject()).getObjects();
                            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                            while (objects2.hasMoreElements()) {
                                aSN1EncodableVector2.add((DEREncodable) objects2.nextElement());
                            }
                            aSN1EncodableVector2.add(distributionPoint3.getName());
                            names2[i2] = new GeneralName(new X509Name(new DERSequence(aSN1EncodableVector2)));
                        }
                    }
                    if (names2 != null) {
                        while (true) {
                            if (i < names2.length) {
                                if (arrayList.contains(names2[i])) {
                                    break;
                                } else {
                                    i++;
                                }
                            }
                        }
                    }
                    throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                }
                if (distributionPoint.getCRLIssuer() == null) {
                    throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                }
                GeneralName[] names3 = distributionPoint.getCRLIssuer().getNames();
                while (true) {
                    if (i >= names3.length) {
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                    if (arrayList.contains(names3[i])) {
                        break;
                    } else {
                        i++;
                    }
                }
                try {
                    BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Extension) obj, BASIC_CONSTRAINTS));
                    if (obj instanceof X509Certificate) {
                        if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                            throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                        }
                        if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                            throw new AnnotatedException("End CRL only contains CA certificates.");
                        }
                    }
                    if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e3) {
                    throw new AnnotatedException("Basic constraints extension could not be decoded.", e3);
                }
            }
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    protected static void processCRLC(X509CRL x509crl, X509CRL x509crl2, ExtendedPKIXParameters extendedPKIXParameters) throws AnnotatedException {
        if (x509crl == null) {
            return;
        }
        try {
            String str = ISSUING_DISTRIBUTION_POINT;
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl2, str));
            if (extendedPKIXParameters.isUseDeltasEnabled()) {
                if (!x509crl.getIssuerX500Principal().equals(x509crl2.getIssuerX500Principal())) {
                    throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    IssuingDistributionPoint issuingDistributionPoint2 = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, str));
                    if (issuingDistributionPoint != null ? !issuingDistributionPoint.equals(issuingDistributionPoint2) : issuingDistributionPoint2 != null) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        String str2 = AUTHORITY_KEY_IDENTIFIER;
                        DERObject extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl2, str2);
                        try {
                            DERObject extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, str2);
                            if (extensionValue == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            }
                            if (extensionValue2 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            }
                            if (!extensionValue.equals(extensionValue2)) {
                                throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (AnnotatedException e) {
                            throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e);
                        }
                    } catch (AnnotatedException e2) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e2);
                    }
                } catch (Exception e3) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e3);
                }
            }
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    protected static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) throws AnnotatedException {
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint != null && issuingDistributionPoint.getOnlySomeReasons() != null && distributionPoint.getReasons() != null) {
                return new ReasonsMask(distributionPoint.getReasons().intValue()).intersect(new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons().intValue()));
            }
            if ((issuingDistributionPoint == null || issuingDistributionPoint.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                return ReasonsMask.allReasons;
            }
            return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons().intValue())).intersect(issuingDistributionPoint == null ? ReasonsMask.allReasons : new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons().intValue()));
        } catch (Exception e) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e);
        }
    }

    protected static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, ExtendedPKIXParameters extendedPKIXParameters, List list) throws AnnotatedException {
        int i;
        X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
        try {
            x509CertStoreSelector.setSubject(CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded());
            try {
                Collection collectionFindCertificates = CertPathValidatorUtilities.findCertificates(x509CertStoreSelector, extendedPKIXParameters.getStores());
                collectionFindCertificates.addAll(CertPathValidatorUtilities.findCertificates(x509CertStoreSelector, extendedPKIXParameters.getAdditionalStores()));
                collectionFindCertificates.addAll(CertPathValidatorUtilities.findCertificates(x509CertStoreSelector, extendedPKIXParameters.getCertStores()));
                collectionFindCertificates.add(x509Certificate);
                Iterator it = collectionFindCertificates.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            CertPathBuilder certPathBuilder = CertPathBuilder.getInstance("PKIX", BouncyCastleProvider.PROVIDER_NAME);
                            X509CertStoreSelector x509CertStoreSelector2 = new X509CertStoreSelector();
                            x509CertStoreSelector2.setCertificate(x509Certificate2);
                            ExtendedPKIXParameters extendedPKIXParameters2 = (ExtendedPKIXParameters) extendedPKIXParameters.clone();
                            extendedPKIXParameters2.setTargetCertConstraints(x509CertStoreSelector2);
                            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) ExtendedPKIXBuilderParameters.getInstance(extendedPKIXParameters2);
                            if (list.contains(x509Certificate2)) {
                                extendedPKIXBuilderParameters.setRevocationEnabled(false);
                            } else {
                                extendedPKIXBuilderParameters.setRevocationEnabled(true);
                            }
                            List<? extends Certificate> certificates = certPathBuilder.build(extendedPKIXBuilderParameters).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(CertPathValidatorUtilities.getNextWorkingKey(certificates, 0));
                        } catch (CertPathBuilderException e) {
                            throw new AnnotatedException("Internal error.", e);
                        } catch (CertPathValidatorException e2) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e2);
                        } catch (Exception e3) {
                            throw new RuntimeException(e3.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                AnnotatedException annotatedException = null;
                for (i = 0; i < arrayList.size(); i++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length >= 7 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i));
                    } else {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                }
                if (!hashSet.isEmpty() || annotatedException == null) {
                    return hashSet;
                }
                throw annotatedException;
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e4);
            }
        } catch (IOException e5) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e5);
        }
    }

    protected static PublicKey processCRLG(X509CRL x509crl, Set set) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e2) {
                e = e2;
            }
        }
        throw new AnnotatedException("Cannot verify CRL.", e);
    }

    protected static X509CRL processCRLH(Set set, PublicKey publicKey) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        throw new AnnotatedException("Cannot verify delta CRL.", e);
    }

    protected static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, ExtendedPKIXParameters extendedPKIXParameters) throws AnnotatedException {
        if (!extendedPKIXParameters.isUseDeltasEnabled() || x509crl == null) {
            return;
        }
        CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
    }

    protected static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        if (certStatus.getCertStatus() == 11) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    protected static void processCertA(CertPath certPath, ExtendedPKIXParameters extendedPKIXParameters, int i, PublicKey publicKey, boolean z, X500Principal x500Principal, X509Certificate x509Certificate) throws ExtCertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(i);
        if (!z) {
            try {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, publicKey, extendedPKIXParameters.getSigProvider());
            } catch (GeneralSecurityException e) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e, certPath, i);
            }
        }
        try {
            x509Certificate2.checkValidity(CertPathValidatorUtilities.getValidCertDateFromValidityModel(extendedPKIXParameters, certPath, i));
            if (extendedPKIXParameters.isRevocationEnabled()) {
                try {
                    checkCRLs(extendedPKIXParameters, x509Certificate2, CertPathValidatorUtilities.getValidCertDateFromValidityModel(extendedPKIXParameters, certPath, i), x509Certificate, publicKey, certificates);
                } catch (AnnotatedException e2) {
                    throw new ExtCertPathValidatorException(e2.getMessage(), e2.getCause() != null ? e2.getCause() : e2, certPath, i);
                }
            }
            if (!CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate2).equals(x500Principal)) {
                throw new ExtCertPathValidatorException("IssuerName(" + CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate2) + ") does not match SubjectName(" + x500Principal + ") of signing certificate.", null, certPath, i);
            }
        } catch (CertificateExpiredException e3) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e3.getMessage(), e3, certPath, i);
        } catch (CertificateNotYetValidException e4) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e4.getMessage(), e4, certPath, i);
        } catch (AnnotatedException e5) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e5, certPath, i);
        }
    }

    protected static void processCertBC(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i2 = size - i;
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) || i2 >= size) {
            try {
                ASN1Sequence dERSequence = DERSequence.getInstance(new ASN1InputStream(CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate).getEncoded()).readObject());
                try {
                    pKIXNameConstraintValidator.checkPermittedDN(dERSequence);
                    pKIXNameConstraintValidator.checkExcludedDN(dERSequence);
                    try {
                        GeneralNames generalNames = GeneralNames.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME));
                        Enumeration enumerationElements = new X509Name(dERSequence).getValues(X509Name.EmailAddress).elements();
                        while (enumerationElements.hasMoreElements()) {
                            GeneralName generalName = new GeneralName(1, (String) enumerationElements.nextElement());
                            try {
                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                pKIXNameConstraintValidator.checkExcluded(generalName);
                            } catch (PKIXNameConstraintValidatorException e) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e, certPath, i);
                            }
                        }
                        if (generalNames != null) {
                            try {
                                GeneralName[] names = generalNames.getNames();
                                for (int i3 = 0; i3 < names.length; i3++) {
                                    try {
                                        pKIXNameConstraintValidator.checkPermitted(names[i3]);
                                        pKIXNameConstraintValidator.checkExcluded(names[i3]);
                                    } catch (PKIXNameConstraintValidatorException e2) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e2, certPath, i);
                                    }
                                }
                            } catch (Exception e3) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e3, certPath, i);
                            }
                        }
                    } catch (Exception e4) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e4, certPath, i);
                    }
                } catch (PKIXNameConstraintValidatorException e5) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e5, certPath, i);
                }
            } catch (Exception e6) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e6, certPath, i);
            }
        }
    }

    protected static PKIXPolicyNode processCertD(CertPath certPath, int i, Set set, PKIXPolicyNode pKIXPolicyNode, List[] listArr, int i2) throws CertPathValidatorException {
        String id;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i3 = size - i;
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES));
            if (dERSequence == null || pKIXPolicyNode == null) {
                return null;
            }
            Enumeration objects = dERSequence.getObjects();
            HashSet hashSet = new HashSet();
            while (objects.hasMoreElements()) {
                PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                DERObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                hashSet.add(policyIdentifier.getId());
                if (!ANY_POLICY.equals(policyIdentifier.getId())) {
                    try {
                        Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                        if (!CertPathValidatorUtilities.processCertD1i(i3, listArr, policyIdentifier, qualifierSet)) {
                            CertPathValidatorUtilities.processCertD1ii(i3, listArr, policyIdentifier, qualifierSet);
                        }
                    } catch (CertPathValidatorException e) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e, certPath, i);
                    }
                }
            }
            if (set.isEmpty() || set.contains(ANY_POLICY)) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i2 > 0 || (i3 < size && CertPathValidatorUtilities.isSelfIssued(x509Certificate))) {
                Enumeration objects2 = dERSequence.getObjects();
                while (objects2.hasMoreElements()) {
                    PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                    if (ANY_POLICY.equals(policyInformation2.getPolicyIdentifier().getId())) {
                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(policyInformation2.getPolicyQualifiers());
                        List list = listArr[i3 - 1];
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i4);
                            for (Object obj2 : pKIXPolicyNode2.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    id = (String) obj2;
                                } else if (obj2 instanceof DERObjectIdentifier) {
                                    id = ((DERObjectIdentifier) obj2).getId();
                                }
                                String str = id;
                                Iterator children = pKIXPolicyNode2.getChildren();
                                boolean z = false;
                                while (children.hasNext()) {
                                    if (str.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str);
                                    PKIXPolicyNode pKIXPolicyNode3 = new PKIXPolicyNode(new ArrayList(), i3, hashSet3, pKIXPolicyNode2, qualifierSet2, str, false);
                                    pKIXPolicyNode2.addChild(pKIXPolicyNode3);
                                    listArr[i3].add(pKIXPolicyNode3);
                                }
                            }
                        }
                        break;
                    }
                }
            }
            for (int i5 = i3 - 1; i5 >= 0; i5--) {
                List list2 = listArr[i5];
                for (int i6 = 0; i6 < list2.size(); i6++) {
                    PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) list2.get(i6);
                    if (!pKIXPolicyNode4.hasChildren() && (pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode4)) == null) {
                        break;
                    }
                }
            }
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null) {
                boolean zContains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
                List list3 = listArr[i3];
                for (int i7 = 0; i7 < list3.size(); i7++) {
                    ((PKIXPolicyNode) list3.get(i7)).setCritical(zContains);
                }
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e2, certPath, i);
        }
    }

    protected static PKIXPolicyNode processCertE(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode) throws CertPathValidatorException {
        try {
            if (DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), CERTIFICATE_POLICIES)) == null) {
                return null;
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e, certPath, i);
        }
    }

    protected static void processCertF(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode, int i2) throws CertPathValidatorException {
        if (i2 <= 0 && pKIXPolicyNode == null) {
            throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i);
        }
    }

    protected static int wrapupCertA(int i, X509Certificate x509Certificate) {
        return (CertPathValidatorUtilities.isSelfIssued(x509Certificate) || i == 0) ? i : i - 1;
    }

    protected static int wrapupCertB(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence dERSequence = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (dERSequence != null) {
                Enumeration objects = dERSequence.getObjects();
                while (objects.hasMoreElements()) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                    if (aSN1TaggedObject.getTagNo() == 0) {
                        try {
                            if (DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue() == 0) {
                                return 0;
                            }
                        } catch (Exception e) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e, certPath, i);
                        }
                    }
                }
            }
            return i2;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e2, certPath, i);
        }
    }

    protected static void wrapupCertF(CertPath certPath, int i, List list, Set set) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new ExtCertPathValidatorException("Additional certificate path checker failed.", e, certPath, i);
            }
        }
        if (!set.isEmpty()) {
            throw new ExtCertPathValidatorException("Certificate has unsupported critical extension", null, certPath, i);
        }
    }

    protected static PKIXPolicyNode wrapupCertG(CertPath certPath, ExtendedPKIXParameters extendedPKIXParameters, Set set, int i, List[] listArr, PKIXPolicyNode pKIXPolicyNode, Set set2) throws CertPathValidatorException {
        int size = certPath.getCertificates().size();
        if (pKIXPolicyNode == null) {
            if (extendedPKIXParameters.isExplicitPolicyRequired()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i);
            }
            return null;
        }
        if (CertPathValidatorUtilities.isAnyPolicy(set)) {
            if (extendedPKIXParameters.isExplicitPolicyRequired()) {
                if (set2.isEmpty()) {
                    throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i);
                }
                HashSet hashSet = new HashSet();
                for (List list : listArr) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i2);
                        if (ANY_POLICY.equals(pKIXPolicyNode2.getValidPolicy())) {
                            Iterator children = pKIXPolicyNode2.getChildren();
                            while (children.hasNext()) {
                                hashSet.add(children.next());
                            }
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    set2.contains(((PKIXPolicyNode) it.next()).getValidPolicy());
                }
                if (pKIXPolicyNode != null) {
                    for (int i3 = size - 1; i3 >= 0; i3--) {
                        List list2 = listArr[i3];
                        for (int i4 = 0; i4 < list2.size(); i4++) {
                            PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) list2.get(i4);
                            if (!pKIXPolicyNode3.hasChildren()) {
                                pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode3);
                            }
                        }
                    }
                    return pKIXPolicyNode;
                }
            }
            return pKIXPolicyNode;
        }
        HashSet<PKIXPolicyNode> hashSet2 = new HashSet();
        for (List list3 : listArr) {
            for (int i5 = 0; i5 < list3.size(); i5++) {
                PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) list3.get(i5);
                if (ANY_POLICY.equals(pKIXPolicyNode4.getValidPolicy())) {
                    Iterator children2 = pKIXPolicyNode4.getChildren();
                    while (children2.hasNext()) {
                        PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) children2.next();
                        if (!ANY_POLICY.equals(pKIXPolicyNode5.getValidPolicy())) {
                            hashSet2.add(pKIXPolicyNode5);
                        }
                    }
                }
            }
        }
        for (PKIXPolicyNode pKIXPolicyNode6 : hashSet2) {
            if (!set.contains(pKIXPolicyNode6.getValidPolicy())) {
                pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode6);
            }
        }
        if (pKIXPolicyNode != null) {
            for (int i6 = size - 1; i6 >= 0; i6--) {
                List list4 = listArr[i6];
                for (int i7 = 0; i7 < list4.size(); i7++) {
                    PKIXPolicyNode pKIXPolicyNode7 = (PKIXPolicyNode) list4.get(i7);
                    if (!pKIXPolicyNode7.hasChildren()) {
                        pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode7);
                    }
                }
            }
        }
        return pKIXPolicyNode;
    }
}
