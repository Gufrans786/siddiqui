.class public Lnts/ᢓ;
.super Lnts/ᙱ;
.source "SourceFile"


# instance fields
.field public ౠ:Ljava/lang/String;

.field public ዲ:Ljava/security/Key;

.field public ᙕ:Z

.field public て:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ᙱ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᢓ;->て:Ljavax/crypto/Mac;

    .line 3
    iput-object v0, p0, Lnts/ᢓ;->ዲ:Ljava/security/Key;

    .line 6
    iput-object p1, p0, Lnts/ᢓ;->ౠ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lnts/ᢓ;->ᙕ:Z

    .line 8
    invoke-static {p1}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0x56

    const/16 v2, 0x65

    .line 9
    invoke-static {v2, v0, v1}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xa0

    goto :goto_1

    :cond_1
    const/16 v0, 0x69

    const/16 v1, 0x1f

    const/4 v2, 0x6

    .line 12
    invoke-static {v0, v2, v1}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x100

    goto :goto_1

    :cond_2
    const/16 v0, 0x3d

    const/16 v1, 0x6f

    .line 15
    invoke-static {v1, v2, v0}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0xe0

    goto :goto_1

    :cond_3
    const/16 v0, 0x75

    .line 18
    invoke-static {v0, v2, v1}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x180

    goto :goto_1

    :cond_4
    const/16 v0, 0x7b

    const/16 v1, 0x2e

    .line 21
    invoke-static {v0, v2, v1}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x200

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    const/16 v1, 0x62

    const/16 v2, 0x81

    .line 24
    invoke-static {v2, v0, v1}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x80

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    .line 25
    :goto_1
    iput p1, p0, Lnts/ዃ;->ㆃ:I

    .line 26
    invoke-virtual {p0}, Lnts/ᢓ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public ᇭ([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ᢓ;->ᙕ:Z

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lnts/ᢓ;->ౠ:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lnts/ᢓ;->ዲ:Ljava/security/Key;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x26

    const/16 v1, 0x43

    const/16 v2, 0x39

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᇭ([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lnts/ᢓ;->ᙕ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lnts/ᢓ;->ᙕ:Z

    .line 9
    :try_start_0
    iget-object v0, p0, Lnts/ᢓ;->て:Ljavax/crypto/Mac;

    iget-object v1, p0, Lnts/ᢓ;->ዲ:Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_0
    :goto_0
    iget-object v0, p0, Lnts/ᢓ;->て:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method

.method public ᇭ()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lnts/ᢓ;->ᙕ:Z

    .line 16
    iget-object v0, p0, Lnts/ᢓ;->て:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public ᰛ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ᢓ;->ౠ:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x69

    const/16 v3, 0x5f

    invoke-static {v3, v1, v2}, Lnts/ࡁ;->Ṳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lnts/ᢓ;->て:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnts/ᢓ;->ᙕ:Z

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1
.end method
