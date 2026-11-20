.class public Lnts/ᚧ;
.super Lnts/ኜ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ᚧ$ᾨ;,
        Lnts/ᚧ$ㆃ;
    }
.end annotation


# instance fields
.field public ᄍ:Ljavax/net/ssl/SSLContext;

.field public ᚙ:[Ljavax/net/ssl/X509TrustManager;

.field public ㆭ:[Ljavax/net/ssl/KeyManager;


# direct methods
.method public constructor <init>(Lnts/ⴳ;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lnts/ኜ;-><init>(Lnts/ⴳ;Ljava/lang/Object;)V

    .line 6
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ኜ;->ጊ:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lnts/ኜ;->ጊ:Ljava/lang/String;

    iput-object p1, p0, Lnts/ኜ;->ᬋ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :try_start_1
    iget-object p1, p0, Lnts/ኜ;->ᐘ:Ljava/lang/String;

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method public Ͼ(Z)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lnts/ኜ;->Ͼ(Z)V

    .line 2
    iget-object p1, p0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    sget-object v4, Lnts/ኜ;->ⶖ:[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 7
    iget v5, p0, Lnts/ኜ;->ᇌ:I

    aget v4, v4, v3

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v5, v2

    .line 9
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 10
    sget-object v6, Lnts/ኜ;->バ:[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    sget-object v5, Lnts/ኜ;->バ:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "; "

    invoke-static {v5}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnts/ኜ;->バ:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    sget-object v5, Lnts/ኜ;->バ:[Ljava/lang/String;

    aget-object v5, v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lnts/ኜ;->バ:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    const/16 v6, 0x18

    const/16 v7, 0x148

    invoke-static {v7, v5, v6}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_5

    .line 21
    new-instance p1, Ljava/lang/Exception;

    const/16 v0, 0x49

    const/16 v1, 0x56

    const/16 v2, 0x16d

    invoke-static {v2, v0, v1}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    const/4 v3, 0x7

    const/16 v4, 0x1b6

    invoke-static {v4, v2, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public ᯚ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lnts/ᚧ;->ᚙ:[Ljavax/net/ssl/X509TrustManager;

    .line 2
    iget-object v1, p0, Lnts/ኜ;->パ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnts/ኜ;->ᬋ:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnts/ኜ;->ᬋ:Ljava/lang/String;

    iget-object v2, p0, Lnts/ኜ;->パ:Ljava/lang/String;

    .line 4
    invoke-static {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 8
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 9
    array-length v1, v0

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    iput-object v1, p0, Lnts/ᚧ;->ᚙ:[Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    .line 10
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 11
    iget-object v2, p0, Lnts/ᚧ;->ᚙ:[Ljavax/net/ssl/X509TrustManager;

    new-instance v3, Lnts/ᚧ$ᾨ;

    aget-object v4, v0, v1

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v3, p0, v4}, Lnts/ᚧ$ᾨ;-><init>(Lnts/ᚧ;Ljavax/net/ssl/X509TrustManager;)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public ᾨ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljavax/net/ssl/SSLContext;

    iput-object p1, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public ⱪ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ኜ;->క:Lnts/Ꭲ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljavax/net/ssl/X509KeyManager;

    new-instance v1, Lnts/ᚧ$ㆃ;

    invoke-direct {v1, p0}, Lnts/ᚧ$ㆃ;-><init>(Lnts/ᚧ;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lnts/ᚧ;->ㆭ:[Ljavax/net/ssl/KeyManager;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/ᚧ;->ㆭ:[Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public ⴗ()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public せ()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public ㆃ(Ljava/net/Socket;Ljava/lang/String;ZLjava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/16 v0, 0x43

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    .line 1
    :try_start_0
    instance-of v3, p4, Ljavax/net/ssl/SSLSession;

    if-eqz v3, :cond_4

    .line 2
    move-object v3, p4

    check-cast v3, Ljavax/net/ssl/SSLSession;

    .line 3
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v4

    const/16 v5, 0x45

    if-nez v4, :cond_0

    const/16 p3, 0x6a

    .line 5
    invoke-static {v1, v5, p3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    :goto_0
    move-object p4, v2

    goto :goto_1

    :cond_0
    if-nez p3, :cond_4

    .line 7
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p3

    .line 8
    instance-of v4, p3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_4

    .line 9
    check-cast p3, Ljava/net/InetSocketAddress;

    .line 10
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez v4, :cond_3

    const-string v4, ""

    .line 13
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x6c

    invoke-static {v5, v0, p4}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 p4, 0x1f

    const/16 v3, 0x7c

    const/16 v5, 0x88

    invoke-static {v5, p4, v3}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    .line 21
    iget-object p3, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    if-nez p3, :cond_a

    .line 22
    :cond_5
    iget-object p3, p0, Lnts/ኜ;->ᛩ:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lnts/ኜ;->ᛩ:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iget-object p3, p0, Lnts/ኜ;->ᐘ:Ljava/lang/String;

    iget-object v3, p0, Lnts/ኜ;->ᛩ:Ljava/lang/String;

    .line 24
    invoke-static {p3, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p3

    goto :goto_3

    .line 25
    :cond_7
    :goto_2
    iget-object p3, p0, Lnts/ኜ;->ᐘ:Ljava/lang/String;

    .line 26
    invoke-static {p3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p3

    .line 27
    :goto_3
    iput-object p3, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    .line 29
    iget-object p3, p0, Lnts/ᚧ;->ㆭ:[Ljavax/net/ssl/KeyManager;

    if-nez p3, :cond_8

    invoke-virtual {p0}, Lnts/ᚧ;->ⱪ()V

    .line 30
    :cond_8
    iget-object p3, p0, Lnts/ᚧ;->ᚙ:[Ljavax/net/ssl/X509TrustManager;

    if-nez p3, :cond_9

    invoke-virtual {p0}, Lnts/ᚧ;->ᯚ()V

    .line 31
    :cond_9
    iget-object p3, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lnts/ᚧ;->ㆭ:[Ljavax/net/ssl/KeyManager;

    iget-object v4, p0, Lnts/ᚧ;->ᚙ:[Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p3, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_c

    :cond_b
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    .line 35
    :cond_c
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p3

    const/16 v2, 0xa7

    const/16 v3, 0x14

    .line 36
    invoke-static {v2, v3, v0}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lnts/ᚧ;->ᄍ:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    if-eqz p4, :cond_d

    .line 40
    instance-of p2, p4, Ljavax/net/ssl/SSLSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_d

    .line 42
    :try_start_2
    check-cast p4, Ljavax/net/ssl/SSLSession;

    .line 43
    invoke-interface {p4}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p2

    const/16 p3, 0x64

    .line 45
    invoke-interface {p2, p3}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const/16 p5, 0xbb

    const/16 v0, 0x16

    invoke-static {p5, v3, v0}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 p5, 0x1

    .line 47
    invoke-virtual {p3, p5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x3

    const/16 v2, 0x75

    const/16 v3, 0xcf

    invoke-static {v3, v0, v2}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, p5

    invoke-virtual {p3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 50
    invoke-virtual {p3, p5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 p5, 0xd2

    const/16 v0, 0x27

    const/4 v1, 0x5

    .line 51
    invoke-static {p5, v1, v0}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const/16 v0, 0xd7

    const/16 v2, 0x5d

    .line 52
    invoke-static {v0, v1, v2}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 53
    filled-new-array {p5, p4}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    filled-new-array {p1, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 60
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x1d

    const/16 p4, 0x7f

    const/16 p5, 0x12b

    invoke-static {p5, p3, p4}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    const/16 p1, 0x4f

    const/16 p2, 0x53

    const/16 p3, 0xdc

    .line 61
    invoke-static {p3, p1, p2}, Lnts/ݶ;->Ṳ(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 68
    :goto_4
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 71
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lnts/ኜ;->ᵑ()V

    return-void
.end method
