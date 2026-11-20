.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/security/cert/PKIXParameters;

    if-eqz v2, :cond_15

    instance-of v2, v0, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_13

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v11

    const/4 v12, 0x1

    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v13
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v13, :cond_12

    add-int/lit8 v4, v0, 0x1

    new-array v14, v4, [Ljava/util/ArrayList;

    move v5, v10

    :goto_1
    if-ge v5, v4, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "2.5.29.32.0"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v15, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    const-string v21, "2.5.29.32.0"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v5, v14, v10

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v5}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v10

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v17

    if-eqz v17, :cond_4

    move v4, v10

    :cond_4
    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v17

    if-eqz v17, :cond_5

    :try_start_1
    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v19

    move-object/from16 v3, v18

    move/from16 v18, v12

    goto :goto_4

    :cond_5
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    move/from16 v18, v12

    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    :try_start_2
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/bouncycastle/util/Selector;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/bouncycastle/util/Selector;

    move-result-object v12

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v9, v20

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-interface {v12, v9}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Target certificate in certification path does not match targetConstraints."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v10}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_7
    :goto_5
    invoke-virtual {v2}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v10}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    move-object/from16 v1, p1

    goto :goto_6

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v10, v17

    move/from16 v17, v7

    move-object v7, v10

    move v10, v0

    move v12, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v15

    move v15, v6

    move-object v6, v3

    move v3, v1

    const/4 v1, 0x0

    :goto_7
    if-ltz v3, :cond_e

    sub-int v1, v0, v3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/security/cert/X509Certificate;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    move/from16 p2, v1

    add-int/lit8 v1, v23, -0x1

    move-object/from16 v23, v8

    move-object v8, v5

    if-ne v3, v1, :cond_9

    move/from16 v5, v18

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    :goto_8
    move-object/from16 v1, p1

    move-object/from16 v24, v11

    move/from16 v11, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v7, v2

    move v2, v3

    invoke-static {v1, v2, v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object v5, v14

    move-object/from16 v3, v16

    move/from16 v6, v17

    move-object/from16 v4, v19

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    move v14, v2

    move-object v2, v1

    invoke-static {v2, v14, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    invoke-static {v2, v14, v1, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    if-eq v11, v0, :cond_d

    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v4

    move/from16 v11, v18

    if-eq v4, v11, :cond_a

    goto :goto_9

    :cond_a
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Version 1 certificates can\'t be used as CA ones."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_b
    :goto_9
    invoke-static {v2, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    invoke-static {v2, v14, v5, v1, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    invoke-static {v2, v14, v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    invoke-static {v2, v14, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v2, v14, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v11

    invoke-static {v2, v14, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v6

    invoke-static {v2, v14, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v2, v14, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v11

    invoke-static {v2, v14, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v6

    invoke-static {v2, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    invoke-static {v2, v14, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v10

    invoke-static {v2, v14, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v10

    invoke-static {v2, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v12

    new-instance v15, Ljava/util/HashSet;

    if-eqz v12, :cond_c

    invoke-direct {v15, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v15, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    :goto_a
    invoke-static {v2, v14, v15, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    :try_start_3
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v15

    invoke-static {v15, v14}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v15
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v15}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-object/from16 v17, v15

    move v15, v4

    move-object/from16 v4, v17

    move/from16 v17, v6

    move-object v6, v12

    move-object/from16 v27, v22

    move v12, v11

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Next working key could not be retrieved."

    invoke-direct {v1, v3, v0, v2, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_d
    move/from16 v17, v6

    move-object/from16 v4, v25

    move-object/from16 v6, v26

    :goto_b
    move-object/from16 v19, v1

    add-int/lit8 v1, v14, -0x1

    move-object/from16 v16, v3

    move-object v14, v5

    move-object v2, v7

    move-object v5, v8

    move-object/from16 v8, v23

    move-object/from16 v11, v24

    move-object/from16 v7, v27

    const/16 v18, 0x1

    move v3, v1

    move-object/from16 v1, v22

    goto/16 :goto_7

    :cond_e
    move-object v7, v2

    move-object/from16 v24, v11

    move-object v5, v14

    move-object/from16 v4, v19

    move-object/from16 v2, p1

    move v14, v3

    move-object/from16 v3, v16

    invoke-static {v15, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v0

    move-object v6, v4

    add-int/lit8 v4, v14, 0x1

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    new-instance v10, Ljava/util/HashSet;

    if-eqz v8, :cond_f

    invoke-direct {v10, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    :goto_c
    invoke-static {v2, v4, v9, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move-object/from16 v22, v1

    move-object v1, v2

    move-object v2, v7

    move-object v7, v3

    move-object/from16 v3, v24

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-gtz v0, :cond_11

    if-eqz v2, :cond_10

    goto :goto_d

    :cond_10
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Path processing failed on policy."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_11
    :goto_d
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, v13, v2, v1}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v4, -0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Subject of trust anchor could not be (re)encoded."

    const/4 v4, -0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_12
    const/4 v4, -0x1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Trust anchor for certification path not found."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_3
    move-exception v0

    move-object/from16 v23, v8

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_13
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Certification path is empty."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_14
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
