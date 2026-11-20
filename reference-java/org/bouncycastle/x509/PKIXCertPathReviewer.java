package org.bouncycastle.x509;

import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
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
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.LocaleString;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.i18n.filter.UntrustedUrlInput;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.CertPathValidatorUtilities;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidator;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.bouncycastle.jce.provider.PKIXPolicyNode;
import org.bouncycastle.x509.extension.X509ExtensionUtil;

public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String RESOURCE_NAME = "org.bouncycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected List[] errors;
    private boolean initialized;

    protected int f3767n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = X509Extensions.QCStatements.getId();
    private static final String CRL_DIST_POINTS = X509Extensions.CRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = X509Extensions.AuthorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(CardNumberHelper.DIVIDER);
            }
            return stringBuffer.toString();
        }
    }

    private void checkCriticalExtensions() {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e);
                }
            } catch (CertPathReviewerException e2) {
                addError(e2.getErrorMessage(), e2.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(KEY_USAGE);
                criticalExtensionOIDs.remove(CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(NAME_CONSTRAINTS);
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e3) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e3.getMessage(), e3, e3.getClass().getName()}), e3.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new DERObjectIdentifier(it3.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        for (int i = 0; i < aSN1Sequence2.size(); i++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e2) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e2, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e3) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e3, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e4) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e4, this.certPath, size);
                        }
                    } catch (IOException e5) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e5, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) getExtensionValue(x509Certificate, NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = new NameConstraints(aSN1Sequence3);
                        ASN1Sequence permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        ASN1Sequence excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            Enumeration objects = excludedSubtrees.getObjects();
                            while (objects.hasMoreElements()) {
                                pKIXNameConstraintValidator.addExcludedSubtree(GeneralSubtree.getInstance(objects.nextElement()));
                            }
                        }
                    }
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e6, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        BigInteger pathLenConstraint;
        int iIntValue;
        int i = this.f3767n;
        int i2 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!isSelfIssued(x509Certificate)) {
                if (i <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLenghtExtended"));
                }
                i--;
                i2++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && (pathLenConstraint = basicConstraints.getPathLenConstraint()) != null && (iIntValue = pathLenConstraint.intValue()) < i) {
                i = iIntValue;
            }
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{new Integer(i2)}));
    }

    private void checkPolicy() {
        PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode;
        PKIXPolicyNode pKIXPolicyNode;
        int i;
        int i2;
        int iIntValue;
        int iIntValue2;
        HashSet hashSet;
        String id;
        Set<String> initialPolicies = this.pkixParams.getInitialPolicies();
        int i3 = this.f3767n + 1;
        ArrayList[] arrayListArr = new ArrayList[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            arrayListArr[i4] = new ArrayList();
        }
        HashSet hashSet2 = new HashSet();
        hashSet2.add("2.5.29.32.0");
        PKIXPolicyNode pKIXPolicyNode2 = new PKIXPolicyNode(new ArrayList(), 0, hashSet2, null, new HashSet(), "2.5.29.32.0", false);
        arrayListArr[0].add(pKIXPolicyNode2);
        int i5 = this.pkixParams.isExplicitPolicyRequired() ? 0 : this.f3767n + 1;
        int i6 = this.pkixParams.isAnyPolicyInhibited() ? 0 : this.f3767n + 1;
        int i7 = this.pkixParams.isPolicyMappingInhibited() ? 0 : this.f3767n + 1;
        try {
            int size = this.certs.size() - 1;
            X509Certificate x509Certificate = null;
            HashSet hashSet3 = null;
            while (size >= 0) {
                int i8 = this.f3767n - size;
                X509Certificate x509Certificate2 = (X509Certificate) this.certs.get(size);
                PKIXPolicyNode pKIXPolicyNode3 = pKIXPolicyNode2;
                try {
                    ASN1Sequence aSN1Sequence = (ASN1Sequence) getExtensionValue(x509Certificate2, CERTIFICATE_POLICIES);
                    if (aSN1Sequence == null || pKIXPolicyNode3 == null) {
                        i = i6;
                        i2 = i7;
                    } else {
                        Enumeration objects = aSN1Sequence.getObjects();
                        HashSet hashSet4 = new HashSet();
                        while (objects.hasMoreElements()) {
                            PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                            int i9 = i6;
                            DERObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                            int i10 = i7;
                            hashSet4.add(policyIdentifier.getId());
                            if (!"2.5.29.32.0".equals(policyIdentifier.getId())) {
                                try {
                                    Set qualifierSet = getQualifierSet(policyInformation.getPolicyQualifiers());
                                    if (!processCertD1i(i8, arrayListArr, policyIdentifier, qualifierSet)) {
                                        processCertD1ii(i8, arrayListArr, policyIdentifier, qualifierSet);
                                    }
                                } catch (CertPathValidatorException e) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e, this.certPath, size);
                                }
                            }
                            i6 = i9;
                            i7 = i10;
                        }
                        i = i6;
                        i2 = i7;
                        if (hashSet3 == null || hashSet3.contains("2.5.29.32.0")) {
                            hashSet = hashSet4;
                        } else {
                            HashSet hashSet5 = new HashSet();
                            for (Object obj : hashSet3) {
                                if (hashSet4.contains(obj)) {
                                    hashSet5.add(obj);
                                }
                            }
                            hashSet = hashSet5;
                        }
                        if (i > 0 || (i8 < this.f3767n && isSelfIssued(x509Certificate2))) {
                            Enumeration objects2 = aSN1Sequence.getObjects();
                            while (objects2.hasMoreElements()) {
                                PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                                if ("2.5.29.32.0".equals(policyInformation2.getPolicyIdentifier().getId())) {
                                    try {
                                        Set qualifierSet2 = getQualifierSet(policyInformation2.getPolicyQualifiers());
                                        ArrayList arrayList = arrayListArr[i8 - 1];
                                        int i11 = 0;
                                        while (i11 < arrayList.size()) {
                                            PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) arrayList.get(i11);
                                            for (Object obj2 : pKIXPolicyNode4.getExpectedPolicies()) {
                                                ArrayList arrayList2 = arrayList;
                                                int i12 = i11;
                                                if (obj2 instanceof String) {
                                                    id = (String) obj2;
                                                } else {
                                                    if (obj2 instanceof DERObjectIdentifier) {
                                                        id = ((DERObjectIdentifier) obj2).getId();
                                                    }
                                                    arrayList = arrayList2;
                                                    i11 = i12;
                                                }
                                                Iterator children = pKIXPolicyNode4.getChildren();
                                                boolean z = false;
                                                while (children.hasNext()) {
                                                    Iterator it = children;
                                                    if (id.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                                        z = true;
                                                    }
                                                    children = it;
                                                }
                                                if (!z) {
                                                    HashSet hashSet6 = new HashSet();
                                                    hashSet6.add(id);
                                                    PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), i8, hashSet6, pKIXPolicyNode4, qualifierSet2, id, false);
                                                    PKIXPolicyNode pKIXPolicyNode6 = pKIXPolicyNode4;
                                                    pKIXPolicyNode6.addChild(pKIXPolicyNode5);
                                                    pKIXPolicyNode4 = pKIXPolicyNode6;
                                                    arrayListArr[i8].add(pKIXPolicyNode5);
                                                }
                                                arrayList = arrayList2;
                                                i11 = i12;
                                            }
                                            i11++;
                                        }
                                        break;
                                    } catch (CertPathValidatorException e2) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e2, this.certPath, size);
                                    }
                                }
                            }
                        }
                        int i13 = i8 - 1;
                        while (i13 >= 0) {
                            ArrayList arrayList3 = arrayListArr[i13];
                            int i14 = i13;
                            HashSet hashSet7 = hashSet;
                            PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode2 = pKIXPolicyNode3;
                            for (int i15 = 0; i15 < arrayList3.size(); i15++) {
                                PKIXPolicyNode pKIXPolicyNode7 = (PKIXPolicyNode) arrayList3.get(i15);
                                if (!pKIXPolicyNode7.hasChildren() && (pKIXPolicyNodeRemovePolicyNode2 = removePolicyNode(pKIXPolicyNodeRemovePolicyNode2, arrayListArr, pKIXPolicyNode7)) == null) {
                                    break;
                                }
                            }
                            pKIXPolicyNode3 = pKIXPolicyNodeRemovePolicyNode2;
                            i13 = i14 - 1;
                            hashSet = hashSet7;
                        }
                        HashSet hashSet8 = hashSet;
                        Set<String> criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs != null) {
                            boolean zContains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
                            ArrayList arrayList4 = arrayListArr[i8];
                            for (int i16 = 0; i16 < arrayList4.size(); i16++) {
                                ((PKIXPolicyNode) arrayList4.get(i16)).setCritical(zContains);
                            }
                        }
                        hashSet3 = hashSet8;
                    }
                    if (aSN1Sequence == null) {
                        pKIXPolicyNode3 = null;
                    }
                    if (i5 <= 0 && pKIXPolicyNode3 == null) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidPolicyTree"));
                    }
                    if (i8 != this.f3767n) {
                        try {
                            DERObject extensionValue = getExtensionValue(x509Certificate2, POLICY_MAPPINGS);
                            if (extensionValue != null) {
                                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) extensionValue;
                                int i17 = 0;
                                while (i17 < aSN1Sequence2.size()) {
                                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence2.getObjectAt(i17);
                                    ASN1Sequence aSN1Sequence4 = aSN1Sequence2;
                                    DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) aSN1Sequence3.getObjectAt(0);
                                    DERObjectIdentifier dERObjectIdentifier2 = (DERObjectIdentifier) aSN1Sequence3.getObjectAt(1);
                                    if ("2.5.29.32.0".equals(dERObjectIdentifier.getId())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                    }
                                    if ("2.5.29.32.0".equals(dERObjectIdentifier2.getId())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                    }
                                    i17++;
                                    aSN1Sequence2 = aSN1Sequence4;
                                }
                            }
                            if (extensionValue != 0) {
                                ASN1Sequence aSN1Sequence5 = (ASN1Sequence) extensionValue;
                                HashMap map = new HashMap();
                                HashSet<String> hashSet9 = new HashSet();
                                int i18 = 0;
                                while (i18 < aSN1Sequence5.size()) {
                                    ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(i18);
                                    ASN1Sequence aSN1Sequence7 = aSN1Sequence5;
                                    String id2 = ((DERObjectIdentifier) aSN1Sequence6.getObjectAt(0)).getId();
                                    int i19 = i18;
                                    String id3 = ((DERObjectIdentifier) aSN1Sequence6.getObjectAt(1)).getId();
                                    if (map.containsKey(id2)) {
                                        ((Set) map.get(id2)).add(id3);
                                    } else {
                                        HashSet hashSet10 = new HashSet();
                                        hashSet10.add(id3);
                                        map.put(id2, hashSet10);
                                        hashSet9.add(id2);
                                    }
                                    i18 = i19 + 1;
                                    aSN1Sequence5 = aSN1Sequence7;
                                }
                                PKIXPolicyNode pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                                for (String str : hashSet9) {
                                    if (i2 > 0) {
                                        try {
                                            prepareNextCertB1(i8, arrayListArr, str, map, x509Certificate2);
                                        } catch (CertPathValidatorException e3) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e3, this.certPath, size);
                                        } catch (AnnotatedException e4) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyExtError"), e4, this.certPath, size);
                                        }
                                    } else if (i2 <= 0) {
                                        pKIXPolicyNodePrepareNextCertB2 = prepareNextCertB2(i8, arrayListArr, str, pKIXPolicyNodePrepareNextCertB2);
                                    }
                                }
                                pKIXPolicyNode3 = pKIXPolicyNodePrepareNextCertB2;
                            }
                            if (isSelfIssued(x509Certificate2)) {
                                i5 = i5;
                                i6 = i;
                                i7 = i2;
                            } else {
                                if (i5 != 0) {
                                    i5--;
                                }
                                if (i2 != 0) {
                                    i5 = i5;
                                    i7 = i2 - 1;
                                } else {
                                    i5 = i5;
                                    i7 = i2;
                                }
                                i6 = i != 0 ? i - 1 : i;
                            }
                            try {
                                ASN1Sequence aSN1Sequence8 = (ASN1Sequence) getExtensionValue(x509Certificate2, POLICY_CONSTRAINTS);
                                if (aSN1Sequence8 != null) {
                                    Enumeration objects3 = aSN1Sequence8.getObjects();
                                    while (objects3.hasMoreElements()) {
                                        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects3.nextElement();
                                        int tagNo = aSN1TaggedObject.getTagNo();
                                        if (tagNo == 0) {
                                            int iIntValue3 = DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue();
                                            if (iIntValue3 < i5) {
                                                i5 = iIntValue3;
                                            }
                                        } else if (tagNo == 1 && (iIntValue2 = DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue()) < i7) {
                                            i7 = iIntValue2;
                                        }
                                    }
                                }
                                try {
                                    DERInteger dERInteger = (DERInteger) getExtensionValue(x509Certificate2, INHIBIT_ANY_POLICY);
                                    if (dERInteger != null && (iIntValue = dERInteger.getValue().intValue()) < i6) {
                                        i6 = iIntValue;
                                    }
                                } catch (AnnotatedException unused) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyInhibitExtError"), this.certPath, size);
                                }
                            } catch (AnnotatedException unused2) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyConstExtError"), this.certPath, size);
                            }
                        } catch (AnnotatedException e5) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyMapExtError"), e5, this.certPath, size);
                        }
                    } else {
                        initialPolicies = initialPolicies;
                        hashSet3 = hashSet3;
                        i5 = i5;
                        i6 = i;
                        i7 = i2;
                    }
                    pKIXPolicyNode2 = pKIXPolicyNode3;
                    size--;
                    x509Certificate = x509Certificate2;
                    hashSet3 = hashSet3;
                    initialPolicies = initialPolicies;
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyExtError"), e6, this.certPath, size);
                }
            }
            Set<String> set = initialPolicies;
            PKIXPolicyNode pKIXPolicyNode8 = pKIXPolicyNode2;
            int i20 = i5;
            int i21 = (isSelfIssued(x509Certificate) || i20 <= 0) ? i20 : i20 - 1;
            try {
                ASN1Sequence aSN1Sequence9 = (ASN1Sequence) getExtensionValue(x509Certificate, POLICY_CONSTRAINTS);
                if (aSN1Sequence9 != null) {
                    Enumeration objects4 = aSN1Sequence9.getObjects();
                    int i22 = i21;
                    while (objects4.hasMoreElements()) {
                        ASN1TaggedObject aSN1TaggedObject2 = (ASN1TaggedObject) objects4.nextElement();
                        if (aSN1TaggedObject2.getTagNo() == 0 && DERInteger.getInstance(aSN1TaggedObject2, false).getValue().intValue() == 0) {
                            i22 = 0;
                        }
                    }
                    i21 = i22;
                }
                if (pKIXPolicyNode8 != null) {
                    if (isAnyPolicy(set)) {
                        if (this.pkixParams.isExplicitPolicyRequired()) {
                            if (hashSet3.isEmpty()) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.explicitPolicy"), this.certPath, size);
                            }
                            HashSet hashSet11 = new HashSet();
                            for (int i23 = 0; i23 < i3; i23++) {
                                ArrayList arrayList5 = arrayListArr[i23];
                                for (int i24 = 0; i24 < arrayList5.size(); i24++) {
                                    PKIXPolicyNode pKIXPolicyNode9 = (PKIXPolicyNode) arrayList5.get(i24);
                                    if ("2.5.29.32.0".equals(pKIXPolicyNode9.getValidPolicy())) {
                                        Iterator children2 = pKIXPolicyNode9.getChildren();
                                        while (children2.hasNext()) {
                                            hashSet11.add(children2.next());
                                        }
                                    }
                                }
                            }
                            Iterator it2 = hashSet11.iterator();
                            while (it2.hasNext()) {
                                hashSet3.contains(((PKIXPolicyNode) it2.next()).getValidPolicy());
                            }
                            if (pKIXPolicyNode8 != null) {
                                pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode8;
                                for (int i25 = this.f3767n - 1; i25 >= 0; i25--) {
                                    ArrayList arrayList6 = arrayListArr[i25];
                                    for (int i26 = 0; i26 < arrayList6.size(); i26++) {
                                        PKIXPolicyNode pKIXPolicyNode10 = (PKIXPolicyNode) arrayList6.get(i26);
                                        if (!pKIXPolicyNode10.hasChildren()) {
                                            pKIXPolicyNodeRemovePolicyNode = removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode10);
                                        }
                                    }
                                }
                            }
                        }
                        pKIXPolicyNode = pKIXPolicyNode8;
                    } else {
                        HashSet<PKIXPolicyNode> hashSet12 = new HashSet();
                        for (int i27 = 0; i27 < i3; i27++) {
                            ArrayList arrayList7 = arrayListArr[i27];
                            for (int i28 = 0; i28 < arrayList7.size(); i28++) {
                                PKIXPolicyNode pKIXPolicyNode11 = (PKIXPolicyNode) arrayList7.get(i28);
                                if ("2.5.29.32.0".equals(pKIXPolicyNode11.getValidPolicy())) {
                                    Iterator children3 = pKIXPolicyNode11.getChildren();
                                    while (children3.hasNext()) {
                                        PKIXPolicyNode pKIXPolicyNode12 = (PKIXPolicyNode) children3.next();
                                        if (!"2.5.29.32.0".equals(pKIXPolicyNode12.getValidPolicy())) {
                                            hashSet12.add(pKIXPolicyNode12);
                                        }
                                    }
                                }
                            }
                        }
                        pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode8;
                        for (PKIXPolicyNode pKIXPolicyNode13 : hashSet12) {
                            Set<String> set2 = set;
                            if (!set2.contains(pKIXPolicyNode13.getValidPolicy())) {
                                pKIXPolicyNodeRemovePolicyNode = removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode13);
                            }
                            set = set2;
                        }
                        if (pKIXPolicyNodeRemovePolicyNode != null) {
                            for (int i29 = this.f3767n - 1; i29 >= 0; i29--) {
                                ArrayList arrayList8 = arrayListArr[i29];
                                for (int i30 = 0; i30 < arrayList8.size(); i30++) {
                                    PKIXPolicyNode pKIXPolicyNode14 = (PKIXPolicyNode) arrayList8.get(i30);
                                    if (!pKIXPolicyNode14.hasChildren()) {
                                        pKIXPolicyNodeRemovePolicyNode = removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode14);
                                    }
                                }
                            }
                        }
                    }
                    pKIXPolicyNode = pKIXPolicyNodeRemovePolicyNode;
                } else {
                    if (this.pkixParams.isExplicitPolicyRequired()) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.explicitPolicy"), this.certPath, size);
                    }
                    pKIXPolicyNode = null;
                }
                if (i21 <= 0 && pKIXPolicyNode == null) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicy"));
                }
            } catch (AnnotatedException unused3) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyConstExtError"), this.certPath, size);
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkSignatures() {
        TrustAnchor trustAnchor;
        TrustAnchor trustAnchor2;
        char c;
        X500Principal x500Principal;
        X509Certificate trustedCert;
        PublicKey cAPublicKey;
        X509Certificate x509Certificate;
        X500Principal subjectX500Principal;
        PublicKey nextWorkingKey;
        int size;
        int i;
        X509Certificate x509Certificate2;
        ErrorBundle errorBundle;
        ErrorBundle errorBundle2;
        CRLDistPoint cRLDistPoint;
        AuthorityInformationAccess authorityInformationAccess;
        Iterator it;
        char c2;
        Iterator it2;
        int i2;
        DERObject extensionValue;
        DERObject extensionValue2;
        boolean[] keyUsage;
        BasicConstraints basicConstraints;
        ErrorBundle errorBundle3;
        byte[] extensionValue3;
        AuthorityKeyIdentifier authorityKeyIdentifier;
        GeneralNames authorityCertIssuer;
        GeneralName generalName;
        BigInteger authorityCertSerialNumber;
        X509Certificate trustedCert2;
        boolean[] keyUsage2;
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathValidDate", new Object[]{new TrustedInput(this.validDate), new TrustedInput(new Date())}));
        try {
            List list = this.certs;
            X509Certificate x509Certificate3 = (X509Certificate) list.get(list.size() - 1);
            Collection trustAnchors = getTrustAnchors(x509Certificate3, this.pkixParams.getTrustAnchors());
            if (trustAnchors.size() <= 1) {
                if (trustAnchors.isEmpty()) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noTrustAnchorFound", new Object[]{new UntrustedInput(x509Certificate3.getIssuerX500Principal()), new Integer(this.pkixParams.getTrustAnchors().size())}));
                } else {
                    trustAnchor = (TrustAnchor) trustAnchors.iterator().next();
                    try {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate3, trustAnchor.getTrustedCert() != null ? trustAnchor.getTrustedCert().getPublicKey() : trustAnchor.getCAPublicKey(), this.pkixParams.getSigProvider());
                        } catch (SignatureException unused) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustButInvalidCert"));
                        } catch (Exception unused2) {
                        }
                    } catch (CertPathReviewerException e) {
                        e = e;
                        addError(e.getErrorMessage());
                    } catch (Throwable th) {
                        th = th;
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknown", new Object[]{new UntrustedInput(th.getMessage()), new UntrustedInput(th)}));
                    }
                }
                trustAnchor2 = trustAnchor;
                c = 5;
                if (trustAnchor2 != null) {
                    trustedCert2 = trustAnchor2.getTrustedCert();
                    try {
                        if (trustedCert2 != null) {
                            x500Principal = getSubjectPrincipal(trustedCert2);
                        } else {
                            x500Principal = new X500Principal(trustAnchor2.getCAName());
                        }
                    } catch (IllegalArgumentException unused3) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustDNInvalid", new Object[]{new UntrustedInput(trustAnchor2.getCAName())}));
                        x500Principal = null;
                    }
                    if (trustedCert2 != null && (keyUsage2 = trustedCert2.getKeyUsage()) != null && !keyUsage2[5]) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustKeyUsage"));
                    }
                } else {
                    x500Principal = null;
                }
                if (trustAnchor2 != null) {
                    trustedCert = trustAnchor2.getTrustedCert();
                    if (trustedCert != null) {
                        cAPublicKey = trustedCert.getPublicKey();
                    } else {
                        cAPublicKey = trustAnchor2.getCAPublicKey();
                    }
                    try {
                        AlgorithmIdentifier algorithmIdentifier = getAlgorithmIdentifier(cAPublicKey);
                        algorithmIdentifier.getObjectId();
                        algorithmIdentifier.getParameters();
                    } catch (CertPathValidatorException unused4) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustPubKeyError"));
                    }
                } else {
                    trustedCert = null;
                    cAPublicKey = null;
                }
                x509Certificate = trustedCert;
                subjectX500Principal = x500Principal;
                nextWorkingKey = cAPublicKey;
                size = this.certs.size() - 1;
                while (size >= 0) {
                    i = this.f3767n - size;
                    x509Certificate2 = (X509Certificate) this.certs.get(size);
                    if (nextWorkingKey != null) {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, nextWorkingKey, this.pkixParams.getSigProvider());
                        } catch (GeneralSecurityException e2) {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.signatureNotVerified", new Object[]{e2.getMessage(), e2, e2.getClass().getName()});
                            addError(errorBundle, size);
                        }
                    } else if (isSelfIssued(x509Certificate2)) {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, x509Certificate2.getPublicKey(), this.pkixParams.getSigProvider());
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                        } catch (GeneralSecurityException e3) {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.signatureNotVerified", new Object[]{e3.getMessage(), e3, e3.getClass().getName()});
                            addError(errorBundle, size);
                        }
                    } else {
                        errorBundle3 = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.NoIssuerPublicKey");
                        extensionValue3 = x509Certificate2.getExtensionValue(X509Extensions.AuthorityKeyIdentifier.getId());
                        if (extensionValue3 != null) {
                            try {
                                authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(X509ExtensionUtil.fromExtensionValue(extensionValue3));
                                authorityCertIssuer = authorityKeyIdentifier.getAuthorityCertIssuer();
                                if (authorityCertIssuer != null) {
                                    generalName = authorityCertIssuer.getNames()[0];
                                    authorityCertSerialNumber = authorityKeyIdentifier.getAuthorityCertSerialNumber();
                                    if (authorityCertSerialNumber != null) {
                                        errorBundle3.setExtraArguments(new Object[]{new LocaleString(RESOURCE_NAME, "missingIssuer"), " \"", generalName, "\" ", new LocaleString(RESOURCE_NAME, "missingSerial"), " ", authorityCertSerialNumber});
                                    }
                                }
                            } catch (IOException unused5) {
                            }
                        }
                        addError(errorBundle3, size);
                    }
                    try {
                        x509Certificate2.checkValidity(this.validDate);
                    } catch (CertificateExpiredException unused6) {
                        errorBundle2 = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certificateExpired", new Object[]{new TrustedInput(x509Certificate2.getNotAfter())});
                        addError(errorBundle2, size);
                    } catch (CertificateNotYetValidException unused7) {
                        errorBundle2 = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certificateNotYetValid", new Object[]{new TrustedInput(x509Certificate2.getNotBefore())});
                        addError(errorBundle2, size);
                    }
                    if (this.pkixParams.isRevocationEnabled()) {
                        try {
                            extensionValue2 = getExtensionValue(x509Certificate2, CRL_DIST_POINTS);
                            if (extensionValue2 != null) {
                                cRLDistPoint = CRLDistPoint.getInstance(extensionValue2);
                            } else {
                                cRLDistPoint = null;
                            }
                        } catch (AnnotatedException unused8) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlDistPtExtError"), size);
                        }
                        try {
                            extensionValue = getExtensionValue(x509Certificate2, AUTH_INFO_ACCESS);
                            if (extensionValue != null) {
                                authorityInformationAccess = AuthorityInformationAccess.getInstance(extensionValue);
                            } else {
                                authorityInformationAccess = null;
                            }
                        } catch (AnnotatedException unused9) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlAuthInfoAccError"), size);
                        }
                        Vector cRLDistUrls = getCRLDistUrls(cRLDistPoint);
                        Vector oCSPUrls = getOCSPUrls(authorityInformationAccess);
                        it = cRLDistUrls.iterator();
                        while (it.hasNext()) {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlDistPoint", new Object[]{new UntrustedUrlInput(it.next())}), size);
                            c = c;
                        }
                        c2 = c;
                        it2 = oCSPUrls.iterator();
                        while (it2.hasNext()) {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ocspLocation", new Object[]{new UntrustedUrlInput(it2.next())}), size);
                        }
                        try {
                            i2 = i;
                            try {
                                checkRevocation(this.pkixParams, x509Certificate2, this.validDate, x509Certificate, nextWorkingKey, cRLDistUrls, oCSPUrls, size);
                            } catch (CertPathReviewerException e4) {
                                e = e4;
                                addError(e.getErrorMessage(), size);
                            }
                        } catch (CertPathReviewerException e5) {
                            e = e5;
                            i2 = i;
                        }
                    } else {
                        i2 = i;
                        c2 = c;
                    }
                    if (subjectX500Principal != null && !x509Certificate2.getIssuerX500Principal().equals(subjectX500Principal)) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certWrongIssuer", new Object[]{subjectX500Principal.getName(), x509Certificate2.getIssuerX500Principal().getName()}), size);
                    }
                    if (i2 != this.f3767n) {
                        if (x509Certificate2 != null && x509Certificate2.getVersion() == 1) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCACert"), size);
                        }
                        try {
                            basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate2, BASIC_CONSTRAINTS));
                            if (basicConstraints != null) {
                                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBasicConstraints"), size);
                            } else if (!basicConstraints.isCA()) {
                                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCACert"), size);
                            }
                        } catch (AnnotatedException unused10) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.errorProcesingBC"), size);
                        }
                        keyUsage = x509Certificate2.getKeyUsage();
                        if (keyUsage != null && !keyUsage[c2]) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCertSign"), size);
                        }
                    }
                    subjectX500Principal = x509Certificate2.getSubjectX500Principal();
                    try {
                        nextWorkingKey = getNextWorkingKey(this.certs, size);
                        AlgorithmIdentifier algorithmIdentifier2 = getAlgorithmIdentifier(nextWorkingKey);
                        algorithmIdentifier2.getObjectId();
                        algorithmIdentifier2.getParameters();
                    } catch (CertPathValidatorException unused11) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pubKeyError"), size);
                    }
                    size--;
                    x509Certificate = x509Certificate2;
                    c = c2;
                }
                this.trustAnchor = trustAnchor2;
                this.subjectPublicKey = nextWorkingKey;
            }
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.conflictingTrustAnchors", new Object[]{new Integer(trustAnchors.size()), new UntrustedInput(x509Certificate3.getIssuerX500Principal())}));
            trustAnchor = null;
        } catch (CertPathReviewerException e6) {
            e = e6;
            trustAnchor = null;
        } catch (Throwable th2) {
            th = th2;
            trustAnchor = null;
        }
        trustAnchor2 = trustAnchor;
        c = 5;
        if (trustAnchor2 != null) {
            trustedCert2 = trustAnchor2.getTrustedCert();
            if (trustedCert2 != null) {
                x500Principal = getSubjectPrincipal(trustedCert2);
            } else {
                x500Principal = new X500Principal(trustAnchor2.getCAName());
            }
            if (trustedCert2 != null) {
                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustKeyUsage"));
            }
        } else {
            x500Principal = null;
        }
        if (trustAnchor2 != null) {
            trustedCert = trustAnchor2.getTrustedCert();
            if (trustedCert != null) {
                cAPublicKey = trustedCert.getPublicKey();
            } else {
                cAPublicKey = trustAnchor2.getCAPublicKey();
            }
            AlgorithmIdentifier algorithmIdentifier3 = getAlgorithmIdentifier(cAPublicKey);
            algorithmIdentifier3.getObjectId();
            algorithmIdentifier3.getParameters();
        } else {
            trustedCert = null;
            cAPublicKey = null;
        }
        x509Certificate = trustedCert;
        subjectX500Principal = x500Principal;
        nextWorkingKey = cAPublicKey;
        size = this.certs.size() - 1;
        while (size >= 0) {
            i = this.f3767n - size;
            x509Certificate2 = (X509Certificate) this.certs.get(size);
            if (nextWorkingKey != null) {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, nextWorkingKey, this.pkixParams.getSigProvider());
            } else if (isSelfIssued(x509Certificate2)) {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, x509Certificate2.getPublicKey(), this.pkixParams.getSigProvider());
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
            } else {
                errorBundle3 = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.NoIssuerPublicKey");
                extensionValue3 = x509Certificate2.getExtensionValue(X509Extensions.AuthorityKeyIdentifier.getId());
                if (extensionValue3 != null) {
                    authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(X509ExtensionUtil.fromExtensionValue(extensionValue3));
                    authorityCertIssuer = authorityKeyIdentifier.getAuthorityCertIssuer();
                    if (authorityCertIssuer != null) {
                        generalName = authorityCertIssuer.getNames()[0];
                        authorityCertSerialNumber = authorityKeyIdentifier.getAuthorityCertSerialNumber();
                        if (authorityCertSerialNumber != null) {
                            errorBundle3.setExtraArguments(new Object[]{new LocaleString(RESOURCE_NAME, "missingIssuer"), " \"", generalName, "\" ", new LocaleString(RESOURCE_NAME, "missingSerial"), " ", authorityCertSerialNumber});
                        }
                    }
                }
                addError(errorBundle3, size);
            }
            x509Certificate2.checkValidity(this.validDate);
            if (this.pkixParams.isRevocationEnabled()) {
                extensionValue2 = getExtensionValue(x509Certificate2, CRL_DIST_POINTS);
                if (extensionValue2 != null) {
                    cRLDistPoint = CRLDistPoint.getInstance(extensionValue2);
                } else {
                    cRLDistPoint = null;
                }
                extensionValue = getExtensionValue(x509Certificate2, AUTH_INFO_ACCESS);
                if (extensionValue != null) {
                    authorityInformationAccess = AuthorityInformationAccess.getInstance(extensionValue);
                } else {
                    authorityInformationAccess = null;
                }
                Vector cRLDistUrls2 = getCRLDistUrls(cRLDistPoint);
                Vector oCSPUrls2 = getOCSPUrls(authorityInformationAccess);
                it = cRLDistUrls2.iterator();
                while (it.hasNext()) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlDistPoint", new Object[]{new UntrustedUrlInput(it.next())}), size);
                    c = c;
                }
                c2 = c;
                it2 = oCSPUrls2.iterator();
                while (it2.hasNext()) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ocspLocation", new Object[]{new UntrustedUrlInput(it2.next())}), size);
                }
                i2 = i;
                checkRevocation(this.pkixParams, x509Certificate2, this.validDate, x509Certificate, nextWorkingKey, cRLDistUrls2, oCSPUrls2, size);
            } else {
                i2 = i;
                c2 = c;
            }
            if (subjectX500Principal != null) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certWrongIssuer", new Object[]{subjectX500Principal.getName(), x509Certificate2.getIssuerX500Principal().getName()}), size);
            }
            if (i2 != this.f3767n) {
                if (x509Certificate2 != null) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCACert"), size);
                }
                basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate2, BASIC_CONSTRAINTS));
                if (basicConstraints != null) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBasicConstraints"), size);
                } else if (!basicConstraints.isCA()) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCACert"), size);
                }
                keyUsage = x509Certificate2.getKeyUsage();
                if (keyUsage != null) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCertSign"), size);
                }
            }
            subjectX500Principal = x509Certificate2.getSubjectX500Principal();
            nextWorkingKey = getNextWorkingKey(this.certs, size);
            AlgorithmIdentifier algorithmIdentifier4 = getAlgorithmIdentifier(nextWorkingKey);
            algorithmIdentifier4.getObjectId();
            algorithmIdentifier4.getParameters();
            size--;
            x509Certificate = x509Certificate2;
            c = c2;
        }
        this.trustAnchor = trustAnchor2;
        this.subjectPublicKey = nextWorkingKey;
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", "BC").generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        ErrorBundle errorBundle;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i2));
                if (QCStatement.id_etsi_qcs_QcCompliance.equals(qCStatement.getStatementId())) {
                    errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcEuCompliance");
                } else {
                    if (!QCStatement.id_qcs_pkixQCSyntax_v1.equals(qCStatement.getStatementId())) {
                        if (QCStatement.id_etsi_qcs_QcSSCD.equals(qCStatement.getStatementId())) {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcSSCD");
                        } else if (QCStatement.id_etsi_qcs_LimiteValue.equals(qCStatement.getStatementId())) {
                            MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                            monetaryValue.getCurrency();
                            double dDoubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                            addNotification(monetaryValue.getCurrency().isAlphabetic() ? new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueAlpha", new Object[]{monetaryValue.getCurrency().getAlphabetic(), new TrustedInput(new Double(dDoubleValue)), monetaryValue}) : new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueNum", new Object[]{new Integer(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(dDoubleValue)), monetaryValue}), i);
                        } else {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i);
                            z = true;
                        }
                    }
                }
                addNotification(errorBundle, i);
            }
            return !z;
        } catch (AnnotatedException unused) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    protected void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    protected void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.f3767n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.f3767n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    protected void checkCRLs(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i) throws CertPathReviewerException {
        Iterator it;
        X509CRL x509crl;
        X509CRL x509crl2;
        boolean z;
        boolean z2;
        String str;
        boolean[] keyUsage;
        X509CRL x509crl3;
        Iterator it2;
        ErrorBundle errorBundle;
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        try {
            x509CRLStoreSelector.addIssuerName(getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            x509CRLStoreSelector.setCertificateChecking(x509Certificate);
            try {
                Set setFindCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, pKIXParameters);
                it = setFindCRLs.iterator();
                if (setFindCRLs.isEmpty()) {
                    Iterator it3 = CRL_UTIL.findCRLs(new X509CRLStoreSelector(), pKIXParameters).iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it3.hasNext()) {
                        arrayList.add(((X509CRL) it3.next()).getIssuerX500Principal());
                    }
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlInCertstore", new Object[]{new UntrustedInput(x509CRLStoreSelector.getIssuerNames()), new UntrustedInput(arrayList), new Integer(arrayList.size())}), i);
                }
                while (true) {
                    if (!it.hasNext()) {
                        x509crl2 = x509crl;
                        z = false;
                        break;
                    }
                    x509crl = (X509CRL) it.next();
                    if (x509crl.getNextUpdate() == null || new Date().before(x509crl.getNextUpdate())) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localValidCRL", new Object[]{new TrustedInput(x509crl.getThisUpdate()), new TrustedInput(x509crl.getNextUpdate())}), i);
                        x509crl2 = x509crl;
                        z = true;
                        break;
                    }
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localInvalidCRL", new Object[]{new TrustedInput(x509crl.getThisUpdate()), new TrustedInput(x509crl.getNextUpdate())}), i);
                }
            } catch (AnnotatedException e) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError", new Object[]{e.getCause().getMessage(), e.getCause(), e.getCause().getClass().getName()}), i);
                it = new ArrayList().iterator();
            }
            x509crl = null;
            if (!z) {
                Iterator it4 = vector.iterator();
                boolean z3 = z;
                while (true) {
                    if (!it4.hasNext()) {
                        z2 = z3;
                        break;
                    }
                    try {
                        String str2 = (String) it4.next();
                        X509CRL crl = getCRL(str2);
                        if (crl == null) {
                            x509crl3 = x509crl2;
                            it2 = it4;
                        } else if (x509Certificate.getIssuerX500Principal().equals(crl.getIssuerX500Principal())) {
                            x509crl3 = x509crl2;
                            it2 = it4;
                            if (crl.getNextUpdate() != null && !new Date().before(crl.getNextUpdate())) {
                                errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineInvalidCRL", new Object[]{new TrustedInput(crl.getThisUpdate()), new TrustedInput(crl.getNextUpdate()), new UntrustedUrlInput(str2)});
                                addNotification(errorBundle, i);
                            }
                            try {
                                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineValidCRL", new Object[]{new TrustedInput(crl.getThisUpdate()), new TrustedInput(crl.getNextUpdate()), new UntrustedUrlInput(str2)}), i);
                                x509crl2 = crl;
                                z2 = true;
                                break;
                            } catch (CertPathReviewerException e2) {
                                e = e2;
                                z3 = true;
                                addNotification(e.getErrorMessage(), i);
                                it4 = it2;
                                x509crl2 = x509crl3;
                            }
                        } else {
                            x509crl3 = x509crl2;
                            try {
                                it2 = it4;
                                try {
                                    errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineCRLWrongCA", new Object[]{new UntrustedInput(crl.getIssuerX500Principal().getName()), new UntrustedInput(x509Certificate.getIssuerX500Principal().getName()), new UntrustedUrlInput(str2)});
                                    addNotification(errorBundle, i);
                                } catch (CertPathReviewerException e3) {
                                    e = e3;
                                    addNotification(e.getErrorMessage(), i);
                                }
                            } catch (CertPathReviewerException e4) {
                                e = e4;
                                it2 = it4;
                                addNotification(e.getErrorMessage(), i);
                                it4 = it2;
                                x509crl2 = x509crl3;
                            }
                        }
                    } catch (CertPathReviewerException e5) {
                        e = e5;
                        x509crl3 = x509crl2;
                    }
                    it4 = it2;
                    x509crl2 = x509crl3;
                }
            } else {
                z2 = z;
            }
            if (x509crl2 != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length < 7 || !keyUsage[6])) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey == null) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNoIssuerPublicKey"));
                }
                try {
                    x509crl2.verify(publicKey, "BC");
                    X509CRLEntry revokedCertificate = x509crl2.getRevokedCertificate(x509Certificate.getSerialNumber());
                    if (revokedCertificate != null) {
                        if (revokedCertificate.hasExtensions()) {
                            try {
                                DEREnumerated dEREnumerated = DEREnumerated.getInstance(getExtensionValue(revokedCertificate, X509Extensions.ReasonCode.getId()));
                                if (dEREnumerated != null) {
                                    str = crlReasons[dEREnumerated.getValue().intValue()];
                                } else {
                                    str = null;
                                }
                            } catch (AnnotatedException e6) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlReasonExtError"), e6);
                            }
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            str = crlReasons[7];
                        }
                        LocaleString localeString = new LocaleString(RESOURCE_NAME, str);
                        if (!date.before(revokedCertificate.getRevocationDate())) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certRevoked", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}));
                        }
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.revokedAfterValidation", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}), i);
                    } else {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notRevoked"), i);
                    }
                    if (x509crl2.getNextUpdate() != null && x509crl2.getNextUpdate().before(new Date())) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlUpdateAvailable", new Object[]{new TrustedInput(x509crl2.getNextUpdate())}), i);
                    }
                    try {
                        DERObject extensionValue = getExtensionValue(x509crl2, ISSUING_DISTRIBUTION_POINT);
                        try {
                            DERObject extensionValue2 = getExtensionValue(x509crl2, DELTA_CRL_INDICATOR);
                            if (extensionValue2 != null) {
                                X509CRLStoreSelector x509CRLStoreSelector2 = new X509CRLStoreSelector();
                                try {
                                    x509CRLStoreSelector2.addIssuerName(getIssuerPrincipal(x509crl2).getEncoded());
                                    x509CRLStoreSelector2.setMinCRLNumber(((DERInteger) extensionValue2).getPositiveValue());
                                    try {
                                        x509CRLStoreSelector2.setMaxCRLNumber(((DERInteger) getExtensionValue(x509crl2, CRL_NUMBER)).getPositiveValue().subtract(BigInteger.valueOf(1L)));
                                        try {
                                            Iterator it5 = CRL_UTIL.findCRLs(x509CRLStoreSelector2, pKIXParameters).iterator();
                                            while (true) {
                                                if (!it5.hasNext()) {
                                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBaseCRL"));
                                                }
                                                try {
                                                    DERObject extensionValue3 = getExtensionValue((X509CRL) it5.next(), ISSUING_DISTRIBUTION_POINT);
                                                    if (extensionValue == null) {
                                                        if (extensionValue3 == null) {
                                                            break;
                                                        }
                                                    } else if (extensionValue.equals(extensionValue3)) {
                                                        break;
                                                    }
                                                } catch (AnnotatedException e7) {
                                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"), e7);
                                                }
                                            }
                                        } catch (AnnotatedException e8) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError"), e8);
                                        }
                                    } catch (AnnotatedException e9) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNbrExtError"), e9);
                                    }
                                } catch (IOException e10) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e10);
                                }
                            }
                            if (extensionValue != null) {
                                IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(extensionValue);
                                try {
                                    BasicConstraints basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
                                    if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyUserCert"));
                                    }
                                    if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyCaCert"));
                                    }
                                    if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyAttrCert"));
                                    }
                                } catch (AnnotatedException e11) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlBCExtError"), e11);
                                }
                            }
                        } catch (AnnotatedException unused) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.deltaCrlExtError"));
                        }
                    } catch (AnnotatedException unused2) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"));
                    }
                } catch (Exception e12) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlVerifyFailed"), e12);
                }
            }
            if (!z2) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e13) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e13);
        }
    }

    protected void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    protected void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.notifications != null) {
            return;
        }
        int i = this.f3767n;
        this.notifications = new List[i + 1];
        this.errors = new List[i + 1];
        int i2 = 0;
        while (true) {
            List[] listArr = this.notifications;
            if (i2 >= listArr.length) {
                checkSignatures();
                checkNameConstraints();
                checkPathLength();
                checkPolicy();
                checkCriticalExtensions();
                return;
            }
            listArr[i2] = new ArrayList();
            this.errors[i2] = new ArrayList();
            i2++;
        }
    }

    protected Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i = 0; i < names.length; i++) {
                        if (names[i].getTagNo() == 6) {
                            vector.add(((DERIA5String) names[i].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.f3767n;
    }

    public List getErrors(int i) {
        doChecks();
        return this.errors[i + 1];
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List getNotifications(int i) {
        doChecks();
        return this.notifications[i + 1];
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }

    protected Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i = 0; i < accessDescriptions.length; i++) {
                if (accessDescriptions[i].getAccessMethod().equals(AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((DERIA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    protected Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(X509Extensions.AuthorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Object.fromByteArray(((ASN1OctetString) ASN1Object.fromByteArray(extensionValue)).getOctets()));
                x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                byte[] keyIdentifier = authorityKeyIdentifier.getKeyIdentifier();
                if (keyIdentifier != null) {
                    x509CertSelector.setSubjectKeyIdentifier(new DEROctetString(keyIdentifier).getEncoded());
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        if (certPath == null) {
            throw new NullPointerException("certPath was null");
        }
        this.certPath = certPath;
        List<? extends Certificate> certificates = certPath.getCertificates();
        this.certs = certificates;
        this.f3767n = certificates.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
        }
        PKIXParameters pKIXParameters2 = (PKIXParameters) pKIXParameters.clone();
        this.pkixParams = pKIXParameters2;
        this.validDate = getValidDate(pKIXParameters2);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() {
        doChecks();
        int i = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i >= listArr.length) {
                return true;
            }
            if (!listArr[i].isEmpty()) {
                return false;
            }
            i++;
        }
    }
}
