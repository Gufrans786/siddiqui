.class public Lnts/ィ$ᾨ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ィ;->ᇭ(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ㆃ:Lnts/ィ;


# direct methods
.method public constructor <init>(Lnts/ィ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ィ$ᾨ;->ㆃ:Lnts/ィ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    new-array v6, v0, [Z

    iget-object v1, p0, Lnts/ィ$ᾨ;->ㆃ:Lnts/ィ;

    .line 2
    iget-boolean v1, v1, Lnts/ڊ;->ਢ:Z

    const/4 v7, 0x0

    .line 3
    aput-boolean v1, v6, v7

    .line 5
    new-instance v1, Lnts/Ꭲ;

    invoke-direct {v1}, Lnts/Ꭲ;-><init>()V

    .line 6
    aget-object v2, p1, v7

    invoke-virtual {v1, v2}, Lnts/Ꭲ;->ㆃ(Ljava/security/cert/X509Certificate;)V

    .line 8
    aget-boolean v2, v6, v7

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lnts/ィ$ᾨ;->ㆃ:Lnts/ィ;

    invoke-static {v2}, Lnts/ィ;->ㆃ(Lnts/ィ;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    :try_start_0
    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 13
    aput-boolean v0, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_0
    aget-boolean p2, v6, v7

    if-nez p2, :cond_2

    .line 18
    iget-object p2, p0, Lnts/ィ$ᾨ;->ㆃ:Lnts/ィ;

    .line 19
    iget-object p2, p2, Lnts/ڊ;->ϑ:Lnts/Ꭲ;

    if-eqz p2, :cond_2

    .line 20
    invoke-virtual {p2}, Lnts/Ꭲ;->ᚹ()Ljava/security/PublicKey;

    move-result-object p2

    move v2, v7

    .line 21
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 22
    aget-object v3, p1, v7

    invoke-virtual {v1, v3}, Lnts/Ꭲ;->ㆃ(Ljava/security/cert/X509Certificate;)V

    .line 24
    invoke-virtual {v1}, Lnts/Ꭲ;->ᚹ()Ljava/security/PublicKey;

    move-result-object v3

    .line 25
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    aput-boolean v0, v6, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    aget-boolean p2, v6, v7

    if-nez p2, :cond_3

    .line 34
    aget-object p1, p1, v7

    invoke-virtual {v1, p1}, Lnts/Ꭲ;->ㆃ(Ljava/security/cert/X509Certificate;)V

    :cond_3
    move-object p1, v1

    .line 37
    iget-object v1, p0, Lnts/ィ$ᾨ;->ㆃ:Lnts/ィ;

    invoke-virtual {p1}, Lnts/Ꭲ;->て()[B

    move-result-object v2

    invoke-virtual {p1}, Lnts/Ꭲ;->Ṳ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnts/Ꭲ;->ᡲ()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lnts/ڊ;->fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 39
    aget-boolean p1, v6, v7

    if-eqz p1, :cond_4

    return-void

    .line 40
    :cond_4
    new-instance p1, Ljava/security/cert/CertificateException;

    const/16 p2, 0x20

    const/16 v0, 0x36

    const/16 v1, 0x38f

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
