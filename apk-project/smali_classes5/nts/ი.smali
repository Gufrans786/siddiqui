.class public Lnts/ი;
.super Lnts/ᅨ;
.source "SourceFile"

# interfaces
.implements Lnts/న;


# instance fields
.field public Ё:[B

.field public ᦝ:Ljava/lang/String;

.field public ᴨ:Ljava/security/KeyStore;

.field public ᾤ:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᅨ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    .line 3
    iput-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lnts/ი;->ᦝ:Ljava/lang/String;

    .line 8
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/ი;->Ё:[B

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    .line 1
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lnts/ᅨ;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ᇭ(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lnts/ᅨ;->ᇭ(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, v0, p1, p2}, Lnts/ი;->ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 8
    sget-object p2, Lnts/ዧ;->ዲ:[B

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    :cond_2
    const/16 p1, 0x172

    const/16 v0, 0xa

    .line 17
    invoke-static {p1, v0, v1}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnts/ၽ;->ᾨ([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ᇭ(Ljava/lang/String;)Z
    .locals 2

    .line 18
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 19
    invoke-super {p0, p1}, Lnts/ᅨ;->ᇭ(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public ᰛ(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5

    .line 1
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lnts/ᅨ;->ᰛ(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    .line 6
    :try_start_0
    iget-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lnts/ዧ;->ᎊ:[C

    .line 8
    iget-object v1, p0, Lnts/ი;->ᦝ:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    iget-object v0, p0, Lnts/ი;->ᦝ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 12
    :cond_1
    iget-object v1, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v1, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnts/ㇾ;->ᎊ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x19

    const/16 v3, 0x73

    const/16 v4, 0x17c

    invoke-static {v4, v2, v3}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x121

    invoke-direct {v0, v1, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ᾨ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 90
    invoke-super {p0, p1}, Lnts/ᅨ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, ""

    return-object p1

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ᾨ()Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnts/ᅨ;->Ἂ:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    invoke-static {v0}, Lnts/ㇾ;->て([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public ᾨ(Ljava/lang/String;[B)Lnts/ⱐ;
    .locals 10

    .line 5
    iput-object p1, p0, Lnts/ᅨ;->ཊ:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lnts/ၽ;->ౠ([B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/ᅨ;->Ἂ:[B

    .line 8
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const-string v4, ""

    const/4 v7, 0x0

    .line 9
    const-string v3, ""

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lnts/ᅨ;->ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lnts/ⱐ;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 10
    const-string p1, ""

    invoke-virtual {p0, p1, p1, v5, v6}, Lnts/ი;->ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 11
    iput-object p2, v2, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    .line 13
    new-instance v0, Lnts/ⱐ;

    invoke-direct {v0}, Lnts/ⱐ;-><init>()V

    if-nez p2, :cond_1

    return-object v0

    .line 19
    :cond_1
    sget-object v3, Lnts/ዧ;->ዲ:[B

    .line 21
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    invoke-virtual {v0, v3}, Lnts/ⱐ;->ㆃ([B)V

    const/4 v4, 0x3

    const/16 v5, 0x56

    const/16 v6, 0x157

    .line 25
    invoke-static {v6, v4, v5}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lnts/ㇾ;->ㆃ(Ljava/lang/String;[B)Ljava/lang/String;

    const/4 v4, 0x4

    const/16 v5, 0x1f

    const/16 v6, 0x15a

    .line 26
    invoke-static {v6, v4, v5}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lnts/ㇾ;->ㆃ(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 27
    iput-object v4, v0, Lnts/ⱐ;->ᎊ:Ljava/lang/String;

    const/16 v4, 0x15e

    const/16 v5, 0x10

    .line 28
    invoke-static {v4, v1, v5}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnts/ㇾ;->ㆃ(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 29
    iput-object v1, v0, Lnts/ⱐ;->ᡲ:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    sget-object v3, Lnts/ᘤ;->ᙕ:Ljava/lang/String;

    invoke-static {v1, v3}, Lnts/ᘤ;->ㆃ(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iput-object v1, v0, Lnts/ⱐ;->ᾨ:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    sget-object v3, Lnts/ᘤ;->ᙕ:Ljava/lang/String;

    invoke-static {v1, v3}, Lnts/ᘤ;->ㆃ(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    iput-object v1, v0, Lnts/ⱐ;->ᇭ:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 35
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 38
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 39
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    new-instance v7, Lnts/ค;

    invoke-virtual {p2, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v6, v8, v4}, Lnts/ค;-><init>(Ljava/lang/String;[BZ)V

    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 46
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 47
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 49
    new-instance v7, Lnts/ค;

    invoke-virtual {p2, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v9}, Lnts/ค;-><init>(Ljava/lang/String;[BZ)V

    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_3
    iput-object v1, v0, Lnts/ⱐ;->ⴗ:Ljava/util/Vector;

    .line 51
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    iput-object v1, v0, Lnts/ⱐ;->ᰛ:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const/16 v3, 0x164

    const/16 v6, 0x73

    const/4 v7, 0x7

    invoke-static {v3, v7, v6}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    iput-object v1, v0, Lnts/ⱐ;->ᵑ:Ljava/lang/String;

    .line 55
    :try_start_1
    iget-object v1, v2, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {v1, p2}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 57
    iput-object v1, v0, Lnts/ⱐ;->Ͼ:Ljava/lang/String;

    .line 58
    iget-object v1, v2, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_4

    const-string v1, "BC"

    :try_start_2
    iget-object v3, v2, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    iget-object v1, v2, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    iput-object v1, v0, Lnts/ⱐ;->Ͼ:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    :catch_1
    :cond_4
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 64
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    .line 66
    :cond_6
    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_2
    iput-object p1, v0, Lnts/ⱐ;->ౠ:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    .line 69
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_7

    .line 70
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    goto :goto_3

    .line 71
    :cond_7
    instance-of v1, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_8

    .line 72
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 77
    :cond_8
    :goto_3
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_9

    .line 78
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 79
    iput-object p1, v0, Lnts/ⱐ;->ᙕ:Ljava/lang/String;

    goto :goto_4

    .line 80
    :cond_9
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    iput-object p1, v0, Lnts/ⱐ;->ᙕ:Ljava/lang/String;

    .line 82
    :goto_4
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p1

    .line 83
    iput-object p1, v0, Lnts/ⱐ;->て:Ljava/lang/String;

    .line 84
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    iput-object p1, v0, Lnts/ⱐ;->ዲ:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    const/16 v1, 0x16b

    const/16 v3, 0x13

    invoke-static {v1, v7, v3}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iput-object p1, v0, Lnts/ⱐ;->ᛃ:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    return-object v0
.end method

.method public ㆃ()I
    .locals 2

    .line 2
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 3
    invoke-super {p0}, Lnts/ᅨ;->ㆃ()I

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ㆃ(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 2

    .line 162
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 163
    invoke-super {p0, p1, p2}, Lnts/ᅨ;->ㆃ(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    iget-object p1, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/security/cert/X509Certificate;
    .locals 5

    .line 78
    iget-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    array-length p1, p4

    if-nez p1, :cond_0

    iget-object p1, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    .line 84
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz p4, :cond_e

    array-length v0, p4

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 89
    invoke-static {p3}, Lnts/ㇾ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    :cond_5
    const/16 v0, 0x110

    .line 93
    :try_start_0
    iget-object v1, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 94
    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 100
    :cond_7
    iget-object v3, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 101
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_8

    goto :goto_0

    .line 105
    :cond_8
    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_9

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 107
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_b

    .line 110
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "*"

    .line 111
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    .line 114
    :cond_a
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnts/ㇾ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v3, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    goto :goto_1

    .line 121
    :cond_b
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, p4}, Lnts/ၽ;->ᾨ([B[B)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_1

    .line 124
    :cond_c
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, p4}, Lnts/ሠ;->ㆃ([B[B)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    :goto_1
    return-object v2

    .line 133
    :cond_d
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x22

    const/16 p3, 0x6d

    const/16 p4, 0x135

    invoke-static {p4, p2, p3}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x23

    const/16 p4, 0x45

    const/16 v1, 0x112

    invoke-static {v1, p3, p4}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, v0, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_e
    :goto_2
    return-object v1
.end method

.method public ㆃ(I[BLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lnts/ᅨ;->ㆃ(I[BLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    .line 25
    iput-object v0, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    const/4 v1, 0x2

    if-lt p1, v1, :cond_8

    const/16 v2, 0x1f

    const/4 v3, 0x3

    const/16 v4, 0x10f

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_1

    const/4 v5, 0x4

    if-eq p1, v5, :cond_3

    const/4 v5, 0x5

    if-eq p1, v5, :cond_1

    move-object v5, v0

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p2}, Lnts/ၽ;->Ὺ([B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27
    array-length v5, p2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, p2, v7, v5}, Lnts/ၽ;->ㆃ(I[BII)[B

    move-result-object p2

    .line 28
    :cond_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 29
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {p2}, Lnts/ၽ;->ዲ([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    :goto_0
    :try_start_1
    iget-object v6, p0, Lnts/ᅨ;->ᯋ:Ljava/lang/String;

    invoke-static {p1, v6}, Lnts/ㇾ;->ㆃ(ILjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    if-eqz p3, :cond_4

    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_6

    if-eq p1, v3, :cond_6

    .line 51
    :goto_1
    iget-object v1, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    invoke-virtual {v1, v5, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .line 57
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :catch_0
    :cond_5
    iput p1, p0, Lnts/ᅨ;->И:I

    .line 62
    iput-object p2, p0, Lnts/ი;->Ё:[B

    .line 63
    iput-object p3, p0, Lnts/ᅨ;->យ:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lnts/ᅨ;->ᯋ:Ljava/lang/String;

    iput-object p1, p0, Lnts/ᅨ;->ᯋ:Ljava/lang/String;

    return-void

    .line 65
    :cond_6
    :try_start_3
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x71

    const/16 p3, 0x73

    const/16 v0, 0x82

    invoke-static {v0, p2, p3}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 69
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0xf3

    const/16 v0, 0x43

    invoke-static {p3, v2, v0}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, v4, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v5, :cond_7

    .line 73
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 75
    :catch_2
    :cond_7
    throw p1

    :catch_3
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x63

    const/16 v0, 0x2e

    invoke-static {p3, v2, v0}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, v4, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p2

    .line 76
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x41

    const/16 v0, 0x4a

    const/16 v1, 0x18

    invoke-static {v1, p3, v0}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    const/16 p3, 0x3f

    const/16 v0, 0x59

    invoke-static {v0, p2, p3}, Lnts/ӗ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance p2, Lnts/ᛎ;

    const/16 p3, 0x2be

    invoke-direct {p2, p3, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public ㆃ(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public ㆃ(Lnts/ᯒ;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 137
    invoke-super {p0, p1}, Lnts/ᅨ;->ㆃ(Lnts/ᯒ;)V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 142
    iget-object v1, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 145
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 146
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 147
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 150
    :goto_1
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    move-object v4, p1

    goto :goto_3

    .line 154
    :cond_4
    new-instance v3, Lnts/Ꭲ;

    iget v4, p0, Lnts/ᅨ;->И:I

    iget-object v5, p0, Lnts/ი;->Ё:[B

    iget-object v6, p0, Lnts/ᅨ;->យ:Ljava/lang/String;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v7

    .line 155
    sget-object v8, Lnts/ଧ;->ㆃ:[B

    invoke-direct/range {v3 .. v8}, Lnts/Ꭲ;-><init>(I[BLjava/lang/String;Ljava/lang/String;[B)V

    .line 156
    invoke-virtual {v3}, Lnts/Ꭲ;->て()[B

    move-result-object v5

    invoke-virtual {v3}, Lnts/Ꭲ;->Ṳ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnts/Ꭲ;->ᡲ()Ljava/lang/String;

    move-result-object v7

    .line 157
    iget-object v1, v3, Lnts/Ꭲ;->ᡲ:Lnts/ⱐ;

    if-nez v1, :cond_5

    const-string v1, ""

    goto :goto_2

    .line 158
    :cond_5
    iget-object v1, v1, Lnts/ⱐ;->ᙕ:Ljava/lang/String;

    :goto_2
    move-object v8, v1

    .line 159
    invoke-virtual {v3}, Lnts/Ꭲ;->Ⲳ()Z

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnts/ᯒ;->ㆃ([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    move-object p1, v4

    goto :goto_0

    :cond_6
    return-void
.end method

.method public ㆃ(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lnts/ი;->ᴨ:Ljava/security/KeyStore;

    .line 161
    iput-object p1, p0, Lnts/ი;->ᾤ:Ljava/security/cert/X509Certificate;

    :cond_0
    return-void
.end method

.method public ㆃ(Ljava/lang/String;)[Lnts/Ꭲ;
    .locals 10

    .line 7
    iget v0, p0, Lnts/ᅨ;->И:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 8
    invoke-super {p0, p1}, Lnts/ᅨ;->ㆃ(Ljava/lang/String;)[Lnts/Ꭲ;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lnts/ი;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 13
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 14
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance v4, Lnts/Ꭲ;

    iget v5, p0, Lnts/ᅨ;->И:I

    iget-object v6, p0, Lnts/ი;->Ё:[B

    iget-object v7, p0, Lnts/ᅨ;->យ:Ljava/lang/String;

    aget-object v3, p1, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    .line 19
    sget-object v9, Lnts/ଧ;->ㆃ:[B

    invoke-direct/range {v4 .. v9}, Lnts/Ꭲ;-><init>(I[BLjava/lang/String;Ljava/lang/String;[B)V

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_2
    new-array p1, v1, [Lnts/Ꭲ;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnts/Ꭲ;

    return-object p1
.end method
