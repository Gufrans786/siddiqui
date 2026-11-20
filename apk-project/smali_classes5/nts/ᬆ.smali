.class public Lnts/ᬆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ㆃ:Lnts/バ;


# direct methods
.method public constructor <init>(Lnts/バ;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    return-void
.end method


# virtual methods
.method public ᾨ()V
    .locals 2

    .line 1
    sget-boolean v0, Lnts/ዧ;->せ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    check-cast v0, Lnts/ᓌ;

    .line 3
    iput-object v1, v0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    .line 4
    iput-object v1, v0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    check-cast v0, Lnts/ᴺ;

    .line 6
    iput-object v1, v0, Lnts/ᴺ;->ᇭ:Ljava/math/BigInteger;

    .line 7
    iput-object v1, v0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    .line 8
    iput-object v1, v0, Lnts/ᴺ;->Ͼ:Ljava/math/BigInteger;

    .line 9
    iput-object v1, v0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    .line 10
    iput-object v1, v0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    .line 11
    iput-object v1, v0, Lnts/ᴺ;->て:Ljava/math/BigInteger;

    .line 12
    iput-object v1, v0, Lnts/ᴺ;->ዲ:Ljava/math/BigInteger;

    .line 13
    iput-object v1, v0, Lnts/ᴺ;->ᎊ:Ljava/math/BigInteger;

    return-void
.end method

.method public ᾨ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 14
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    move-object v1, v0

    check-cast v1, Lnts/ᓌ;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnts/ᓌ;->ᾨ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 18
    iget-object p1, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    move-object v0, p1

    check-cast v0, Lnts/ᴺ;

    invoke-virtual/range {v0 .. v5}, Lnts/ᴺ;->ᾨ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public ㆃ()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    invoke-static {v0}, Lnts/ቩ;->ㆃ(Lnts/バ;)I

    move-result v0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public ㆃ(Lnts/څ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 3
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    check-cast v0, Lnts/ᓌ;

    invoke-virtual {v0, p1}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    check-cast v0, Lnts/ᴺ;

    invoke-virtual {v0, p1}, Lnts/ᴺ;->ㆃ(Lnts/څ;)V

    return-void
.end method

.method public ㆃ([BLjava/lang/String;[BZIZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 14
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object p5, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    check-cast p5, Lnts/ᓌ;

    invoke-virtual {p5, p1, p2, p3, p4}, Lnts/ᓌ;->ㆃ([BLjava/lang/String;[BZ)Z

    move-result p1

    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    move-object v1, v0

    check-cast v1, Lnts/ᴺ;

    move-object v6, p2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lnts/ᴺ;->ㆃ([BLjava/lang/String;[BZLjava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public ㆃ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 9
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    move-object v1, v0

    check-cast v1, Lnts/ᓌ;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnts/ᓌ;->ㆃ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 13
    iget-object p1, p0, Lnts/ᬆ;->ㆃ:Lnts/バ;

    move-object v0, p1

    check-cast v0, Lnts/ᴺ;

    invoke-virtual/range {v0 .. v5}, Lnts/ᴺ;->ㆃ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
