.class public Lnts/ᚧ$ᾨ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᚧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1fa8"
.end annotation


# instance fields
.field public final synthetic ᾨ:Lnts/ᚧ;

.field public ㆃ:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Lnts/ᚧ;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lnts/ᚧ$ᾨ;->ㆃ:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lnts/ᚧ$ᾨ;->ㆃ([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lnts/ᚧ$ᾨ;->ㆃ([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᚧ$ᾨ;->ㆃ:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final ㆃ([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    iget-object v5, v1, Lnts/ᚧ$ᾨ;->ㆃ:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v5, v2, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, v1, Lnts/ᚧ$ᾨ;->ㆃ:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v5, v2, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x24

    const/16 v5, 0x55

    const/16 v6, 0x1fc

    .line 6
    invoke-static {v6, v0, v5}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x220

    const/16 v7, 0x42

    invoke-static {v6, v3, v7}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v2, :cond_b

    .line 12
    array-length v9, v2

    if-lez v9, :cond_b

    .line 13
    aget-object v9, v2, v6

    .line 14
    iget-object v10, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    invoke-virtual {v10, v9}, Lnts/ኜ;->ᾨ(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 17
    iget-object v13, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    iget-object v13, v13, Lnts/ኜ;->Ⱐ:Lnts/Ꭲ;

    invoke-virtual {v9, v13}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v0, 0x252

    const/16 v5, 0x22

    .line 18
    invoke-static {v0, v5, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    .line 21
    :cond_1
    iget-object v3, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    iget-boolean v3, v3, Lnts/ኜ;->ᅌ:Z

    const-string v13, "*"

    const/4 v14, 0x7

    if-eqz v3, :cond_4

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move v3, v6

    .line 23
    :goto_2
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 24
    iget-object v5, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    aget-object v15, v2, v3

    invoke-virtual {v5, v15}, Lnts/ኜ;->ᾨ(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 26
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    .line 27
    new-array v5, v8, [Ljava/lang/String;

    .line 28
    new-instance v15, Lnts/Ꭲ;

    invoke-direct {v15, v14, v10, v7, v13}, Lnts/Ꭲ;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, ""

    const/16 v24, 0x1

    const-string v17, ""

    const-string v18, ""

    const/16 v19, 0x0

    const-string v20, ""

    move-object/from16 v16, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    invoke-static/range {v15 .. v24}, Lnts/ㇾ;->ㆃ(Lnts/Ꭲ;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xd

    const/16 v3, 0x38

    const/16 v5, 0x274

    .line 30
    invoke-static {v5, v0, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    goto :goto_3

    :cond_3
    const/16 v0, 0x11

    const/16 v3, 0x48

    const/16 v5, 0x281

    .line 33
    invoke-static {v5, v0, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v5

    .line 34
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz p3, :cond_7

    if-eqz v0, :cond_7

    .line 38
    iget-object v3, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    iget-object v3, v3, Lnts/ኜ;->Ꮽ:Ljava/lang/String;

    invoke-static {v3}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 39
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v5, v8

    .line 40
    :goto_4
    array-length v15, v2

    if-ge v5, v15, :cond_5

    .line 41
    iget-object v15, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    invoke-virtual {v15, v9}, Lnts/ኜ;->ᾨ(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 43
    :cond_5
    new-array v5, v8, [Ljava/lang/String;

    .line 44
    new-array v9, v8, [Ljava/lang/String;

    .line 45
    new-instance v15, Lnts/Ꭲ;

    invoke-direct {v15, v14, v10, v7, v13}, Lnts/Ꭲ;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    iget-object v7, v7, Lnts/ኜ;->Ꮽ:Ljava/lang/String;

    const-string v21, ""

    const/16 v24, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    const-string v20, ""

    move-object/from16 v16, v3

    move-object/from16 v22, v5

    move-object/from16 v17, v7

    move-object/from16 v23, v9

    invoke-static/range {v15 .. v24}, Lnts/ㇾ;->ㆃ(Lnts/Ꭲ;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_6

    const/16 v0, 0x3e

    const/16 v3, 0xa

    const/16 v5, 0x292

    .line 47
    invoke-static {v5, v0, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_5

    :cond_6
    const/16 v3, 0x4b

    const/16 v4, 0x1b

    const/16 v5, 0x2d0

    .line 50
    invoke-static {v5, v3, v4}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    move-object v5, v3

    goto :goto_5

    :cond_7
    move-object v4, v0

    .line 54
    :goto_5
    iget-object v0, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    iget-object v0, v0, Lnts/ኜ;->ዖ:Lnts/ⴳ;

    instance-of v3, v0, Lnts/ڊ;

    if-eqz v3, :cond_a

    .line 55
    check-cast v0, Lnts/ڊ;

    .line 56
    invoke-virtual {v0}, Lnts/ዧ;->Ͼ()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v0, v0, Lnts/ڊ;->ᖎ:Z

    goto :goto_6

    :cond_8
    iget-boolean v0, v0, Lnts/ڊ;->ӻ:Z

    :goto_6
    if-eqz v0, :cond_a

    move v0, v8

    move-object v7, v10

    .line 57
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_9

    const-string v3, "\r\n"

    .line 58
    invoke-static {v7, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    aget-object v9, v2, v0

    invoke-virtual {v7, v9}, Lnts/ኜ;->ᾨ(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move-object v0, v4

    move-object v13, v5

    goto :goto_8

    :cond_a
    move-object v0, v4

    move-object v13, v5

    move-object v7, v10

    goto :goto_8

    :cond_b
    move-object v13, v5

    move-object v11, v7

    move-object v12, v11

    :goto_8
    if-nez v0, :cond_c

    move v2, v8

    goto :goto_9

    :cond_c
    move v2, v6

    .line 68
    :goto_9
    new-array v14, v8, [Z

    aput-boolean v2, v14, v6

    if-eqz p3, :cond_d

    .line 71
    invoke-static {v7}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v10

    .line 72
    iget-object v2, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    new-instance v3, Lnts/Ꭲ;

    invoke-direct {v3, v10}, Lnts/Ꭲ;-><init>([B)V

    iput-object v3, v2, Lnts/ኜ;->ᒃ:Lnts/Ꭲ;

    .line 73
    iget-object v9, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    invoke-virtual/range {v9 .. v14}, Lnts/ኜ;->fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V

    goto :goto_a

    .line 75
    :cond_d
    iget-object v9, v1, Lnts/ᚧ$ᾨ;->ᾨ:Lnts/ᚧ;

    invoke-static {v7}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual/range {v9 .. v14}, Lnts/ኜ;->ㆃ([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 78
    :goto_a
    aget-boolean v2, v14, v6

    if-nez v2, :cond_f

    if-eqz v0, :cond_e

    goto :goto_b

    .line 79
    :cond_e
    new-instance v0, Ljava/security/cert/CertificateException;

    const/16 v2, 0x1e

    const/16 v3, 0x17

    const/16 v4, 0x31b

    invoke-static {v4, v2, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    :goto_b
    throw v0

    :cond_f
    return-void
.end method
