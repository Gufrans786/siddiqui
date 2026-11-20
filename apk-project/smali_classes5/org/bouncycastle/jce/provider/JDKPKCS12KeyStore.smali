.class public Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string p2, "X.509"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    return-void

    :cond_0
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "can\'t create cert factory - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$100(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v2, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {p1, p4}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p5}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "error creating key"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    if-eqz v4, :cond_1c

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const/16 v6, 0x400

    const/16 v7, 0x14

    if-eqz v5, :cond_6

    new-array v5, v7, [B

    iget-object v7, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v10, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v10, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PrivateKey;

    new-instance v11, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v11, v5, v6}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iget-object v5, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v10, v11, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v12, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    invoke-direct {v6, v12, v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v11, v6, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v6, v10, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v6, :cond_3

    check-cast v10, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v6, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v10, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    sget-object v6, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v12, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v12, v7}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v6, v12}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    sget-object v6, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v10, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    sget-object v12, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-interface {v10, v12, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    invoke-interface {v10}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v6

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v12, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v10, v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :cond_4
    if-nez v9, :cond_5

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v8, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    new-instance v9, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_5
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7, v8, v9}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v2

    new-instance v10, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v10, v2}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    new-array v2, v7, [B

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v5, v2, v6}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-direct {v2, v6, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iget-object v6, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    const-string v12, "Error encoding certificate: "

    if-eqz v11, :cond_d

    :try_start_0
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v13

    new-instance v14, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v15, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v16, 0x1

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    const/16 v17, 0x0

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v14, v15, v8}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v9, v13, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v9, :cond_a

    move-object v9, v13

    check-cast v9, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v15, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    sget-object v15, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v7, v11}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v15, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_8
    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    if-nez v7, :cond_9

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-direct {v1, v15}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v15

    invoke-interface {v9, v7, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_9
    invoke-interface {v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v7

    move/from16 v15, v17

    :goto_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v18, v2

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v2, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v9, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    invoke-direct {v4, v15}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v4, p2

    move/from16 v15, v16

    move-object/from16 v2, v18

    goto :goto_3

    :cond_a
    move/from16 v15, v17

    :cond_b
    move-object/from16 v18, v2

    if-nez v15, :cond_c

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v7, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v7, v11}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_c
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v2, v4, v7, v9}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v5, v13, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, p2

    move-object/from16 v2, v18

    const/16 v7, 0x14

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    move-object/from16 v18, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v2, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_15

    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    iget-object v7, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v7, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_e

    goto :goto_4

    :cond_e
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v8, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v9, v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v9, :cond_12

    move-object v9, v6

    check-cast v9, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v11, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v11}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    :cond_f
    sget-object v11, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v13, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v11, v13}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_10
    invoke-interface {v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v11

    move/from16 v13, v17

    :goto_5
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v15, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    goto :goto_5

    :cond_11
    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v15, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v9, v14}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v13, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v14, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    move/from16 v13, v16

    goto :goto_5

    :cond_12
    move/from16 v13, v17

    :cond_13
    if-nez v13, :cond_14

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v11, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    new-instance v13, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v13, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_14
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v9, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v9, v7, v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v5, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    iget-object v2, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_19

    :try_start_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    iget-object v6, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    goto :goto_6

    :cond_16
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v8, v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v8, :cond_18

    check-cast v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v11, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_7

    :cond_17
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v11, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v4, v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_7

    :cond_18
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v8, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v8, v6, v9}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move-object/from16 v3, v18

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v2

    move-object v7, v1

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    invoke-direct {v1, v4, v3, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v10}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v3, v2, v17

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v3, v2, v16

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_1a

    new-instance v3, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_8

    :cond_1a
    new-instance v3, Lorg/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_8
    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v8, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    invoke-direct {v8, v2, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    const/16 v1, 0x14

    new-array v2, v1, [B

    iget-object v1, v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    :try_start_3
    sget-object v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x0

    const/16 v3, 0x400

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v5, v4, v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/MacData;

    invoke-direct {v1, v5, v2, v3}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v2, v8, v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    if-eqz p3, :cond_1b

    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_1b
    new-instance v1, Lorg/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_9
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error constructing MAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    move-object v7, v1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance p2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    sget-object p3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v0, p3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, p2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {p2, p4}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    invoke-static {v0, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p3, p1, p2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p3, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "exception decrypting data - "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such entry as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/security/cert/Certificate;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null alias passed to getCertificate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    if-eqz p1, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    sget-object v3, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    new-instance v3, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-direct {v5, p0, v3}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :catch_1
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v3, p1, :cond_4

    move-object p1, v3

    goto/16 :goto_0

    :cond_4
    move-object p1, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v1, p1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    :goto_2
    if-eq v2, p1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object v1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null alias passed to getCertificateChain."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null alias passed to getKey."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_14

    :cond_0
    if-eqz p2, :cond_34

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_33

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v3

    const/4 v10, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    :try_start_0
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v2

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v11

    invoke-static {v2, v11}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    array-length v2, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v2, :cond_2

    :try_start_1
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v2

    invoke-static {v2, v11}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error constructing MAC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    throw v0

    :cond_3
    move-object/from16 v5, p2

    :cond_4
    move v2, v10

    :goto_0
    new-instance v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v11, "unmarked"

    const-string v12, "attempt to add existing attribute with different value"

    if-eqz v3, :cond_25

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    move v13, v10

    move v14, v13

    :goto_1
    array-length v3, v0

    if-eq v13, v3, :cond_26

    aget-object v3, v0, v13

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    aget-object v4, v0, v13

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    move v4, v10

    :goto_2
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-eq v4, v6, :cond_10

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v15}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v15

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v7, v15}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v15

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v7

    invoke-virtual {v1, v15, v7, v5, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v16

    if-eqz v16, :cond_b

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/DERObject;

    invoke-interface {v15, v10}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v15, v10, v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    sget-object v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast v9, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v9, v0, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_5

    :cond_8
    sget-object v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v17, v9

    check-cast v17, Lorg/bouncycastle/asn1/ASN1OctetString;

    :cond_9
    :goto_5
    move-object/from16 v0, v18

    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v0, v16

    goto :goto_6

    :cond_b
    move-object/from16 v18, v0

    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_6
    if-eqz v17, :cond_d

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    if-nez v0, :cond_c

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    iget-object v7, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v7, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, v11, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v18, v0

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "extra in data "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_10
    move-object/from16 v18, v0

    :cond_11
    move/from16 v17, v2

    goto/16 :goto_f

    :cond_12
    move-object/from16 v18, v0

    aget-object v0, v18, v13

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v3, v18, v13

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    move v5, v2

    const/4 v2, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v0

    move v2, v5

    move-object v5, v4

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_11

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    move/from16 v17, v2

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    invoke-virtual {v1, v7, v6, v5, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/DERObject;

    invoke-interface {v7, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-interface {v7, v0, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_a

    :cond_16
    const/4 v15, 0x0

    :goto_a
    sget-object v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    check-cast v15, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, v10, v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_17
    sget-object v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v9, v15

    check-cast v9, Lorg/bouncycastle/asn1/ASN1OctetString;

    :cond_18
    :goto_b
    move-object/from16 v0, v16

    move/from16 v2, v17

    goto :goto_9

    :cond_19
    move-object/from16 v16, v0

    move/from16 v17, v2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    if-nez v10, :cond_1a

    iget-object v2, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, v0, v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1a
    iget-object v2, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_1b
    move-object/from16 v16, v0

    move/from16 v17, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1c
    :goto_c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v10

    if-lez v10, :cond_1f

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/DERObject;

    invoke-interface {v2, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    if-eqz v10, :cond_1e

    invoke-interface {v10}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-interface {v2, v15, v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_d

    :cond_1f
    const/4 v9, 0x0

    :goto_d
    sget-object v10, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v10}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    check-cast v9, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v9, v7, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_20
    sget-object v10, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v10}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    move-object v6, v9

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_c

    :cond_21
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    if-nez v7, :cond_22

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4, v2, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_22
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v0, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "extra in encryptedData "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v17

    goto/16 :goto_8

    :cond_24
    move/from16 v17, v2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extra "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v18, v13

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v18, v13

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v17

    move-object/from16 v0, v18

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_25
    const/4 v14, 0x0

    :cond_26
    new-instance v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v0, v3, :cond_32

    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    if-eqz v5, :cond_2c

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    move-object v5, v2

    move-object v6, v5

    :cond_27
    :goto_11
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/DERObject;

    instance-of v15, v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v15, :cond_2a

    move-object v15, v4

    check-cast v15, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v15, v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v16

    if-eqz v16, :cond_29

    invoke-interface/range {v16 .. v16}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    invoke-virtual {v15, v7}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    goto :goto_12

    :cond_28
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-interface {v15, v9, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2a
    :goto_12
    sget-object v15, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v15}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    check-cast v7, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_2b
    sget-object v15, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v15}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    move-object v5, v7

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_11

    :cond_2c
    move-object v5, v2

    move-object v6, v5

    :cond_2d
    const/4 v10, 0x0

    const/4 v13, 0x1

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-direct {v7, v1, v9}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_2e

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    iget-object v5, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4, v11}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    :cond_2e
    if-eqz v5, :cond_2f

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    iget-object v5, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz v6, :cond_30

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, v6, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_30
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported certificate type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_14
    return-void

    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/security/KeyStoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is a key entry with the name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "no certificate chain for private key"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {p3, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    :cond_2
    iget-object p3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    array-length p1, p4

    if-eq p3, p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance p2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v0, p4, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSize()I
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No support for protection parameter of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No support for \'param\' of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'param\' arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance p1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    sget-object p3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v0, p3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {v1, p4}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    invoke-static {v0, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 p4, 0x4

    invoke-virtual {p3, p4, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p1, ""

    const/4 p4, 0x2

    invoke-virtual {p3, p2, p1, p4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "exception unwrapping private key - "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    sget-object p4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, p4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-direct {v2, v3, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-static {p1, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p3

    const/4 p4, 0x3

    invoke-virtual {p1, p4, p3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "exception encrypting data - "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
