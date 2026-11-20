.class public Lnts/ᱱ;
.super Lnts/ᣎ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    sget-boolean v3, Lnts/ዧ;->ᯚ:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x70

    :goto_0
    const/16 v5, 0x800

    invoke-direct {v2, v3, v5, v4}, Lnts/ᵕ;-><init>(III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 5
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    invoke-direct {v2, v4, v5, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v3

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    const/16 v1, 0x40

    .line 7
    iput v1, p0, Lnts/ኝ;->ᾨ:I

    .line 8
    iput v1, p0, Lnts/ኝ;->ᇭ:I

    const/16 v1, 0x80

    .line 9
    iput v1, p0, Lnts/ኝ;->ㆃ:I

    .line 10
    iput v0, p0, Lnts/ኝ;->ዲ:I

    return-void
.end method

.method public static ㆃ([BLnts/Д;)V
    .locals 3

    .line 1
    array-length v0, p0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1, v0}, Lnts/Д;->ㆃ([B)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 4
    aget-byte v1, p0, p1

    aget-byte v2, v0, p1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 1

    .line 1
    iget v0, p0, Lnts/ኝ;->ᾨ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 1

    .line 1
    iget v0, p0, Lnts/ኝ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 3

    .line 1
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lnts/ᴇ;

    iget v1, p0, Lnts/ኝ;->て:I

    iget v2, p0, Lnts/ኝ;->ዲ:I

    invoke-direct {v0, p1, p2, v1, v2}, Lnts/ᴇ;-><init>([B[BII)V

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x36

    const/16 v0, 0x12

    invoke-static {v0, v0, p2}, Lnts/ࡁ;->ᵑ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 3

    .line 5
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lnts/ᘖ;

    iget v1, p0, Lnts/ኝ;->て:I

    iget v2, p0, Lnts/ኝ;->ዲ:I

    invoke-direct {v0, p1, p2, v1, v2}, Lnts/ᘖ;-><init>([B[BII)V

    return-object v0

    .line 9
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x12

    const/16 v0, 0x5e

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->ᵑ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method
