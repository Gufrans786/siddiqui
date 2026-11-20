.class public Lnts/Ꮁ;
.super Lnts/ዃ;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:Ljava/lang/String;

.field public ᙕ:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/Ꮁ;->ᙕ:Ljava/security/MessageDigest;

    .line 5
    iput-object p2, p0, Lnts/Ꮁ;->ౠ:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lnts/ቩ;->ౠ(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnts/ዃ;->ㆃ:I

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/Ꮁ;->Ͼ:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lnts/Ꮁ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public ᇭ([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ꮁ;->ᙕ:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ᇭ()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnts/Ꮁ;->ᙕ:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public ᰛ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ꮁ;->ౠ:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnts/Ꮁ;->Ͼ:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lnts/Ꮁ;->ᙕ:Ljava/security/MessageDigest;

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lnts/Ꮁ;->Ͼ:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lnts/Ꮁ;->ᙕ:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1
.end method
