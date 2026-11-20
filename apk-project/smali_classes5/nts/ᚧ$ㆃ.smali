.class public Lnts/ᚧ$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᚧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ㆃ:Lnts/ᚧ;


# direct methods
.method public constructor <init>(Lnts/ᚧ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p2, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p2, p2, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object p3, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p3, p3, Lnts/ኜ;->క:Lnts/Ꭲ;

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p3, p3, Lnts/ኜ;->క:Lnts/Ꭲ;

    invoke-virtual {p3}, Lnts/Ꭲ;->ⴗ()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 5
    aget-object v1, p1, v0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p1, p1, Lnts/ኜ;->క:Lnts/Ꭲ;

    invoke-virtual {p1}, Lnts/Ꭲ;->ᛃ()Ljava/lang/String;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p2, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p2, p2, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object p3, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p3, p3, Lnts/ኜ;->క:Lnts/Ꭲ;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p3, p3, Lnts/ኜ;->క:Lnts/Ꭲ;

    invoke-virtual {p3}, Lnts/Ꭲ;->ⱪ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object p1, p1, Lnts/ኜ;->క:Lnts/Ꭲ;

    invoke-virtual {p1}, Lnts/Ꭲ;->ᛃ()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object v0, v0, Lnts/ኜ;->క:Lnts/Ꭲ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object v0, v0, Lnts/ኜ;->క:Lnts/Ꭲ;

    invoke-virtual {v0}, Lnts/Ꭲ;->Ͼ()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v3, v2, [Ljava/security/cert/X509Certificate;

    :goto_2
    if-ge v1, v2, :cond_2

    .line 4
    aget-object v4, v0, v1

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v3

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    new-instance v2, Lnts/ᛎ;

    invoke-direct {v2, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object v0, v0, Lnts/ኜ;->క:Lnts/Ꭲ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    iget-object v0, v0, Lnts/ኜ;->క:Lnts/Ꭲ;

    invoke-virtual {v0}, Lnts/Ꭲ;->ᵑ()Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lnts/ᚧ$ㆃ;->ㆃ:Lnts/ᚧ;

    new-instance v2, Lnts/ᛎ;

    invoke-direct {v2, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
