.class public Lnts/ᶏ;
.super Lnts/ᣎ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 3
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const v5, 0x7fffffdf

    const/16 v6, 0x20

    const/16 v7, 0x40

    invoke-direct {v2, v7, v5, v6}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 5
    iput v7, p0, Lnts/ኝ;->ᾨ:I

    .line 6
    iput v7, p0, Lnts/ኝ;->ᇭ:I

    .line 7
    iput v3, p0, Lnts/ኝ;->ㆃ:I

    .line 8
    iput v0, p0, Lnts/ኝ;->て:I

    .line 9
    iput v0, p0, Lnts/ኝ;->ዲ:I

    return-void
.end method

.method public static ᾨ([B[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    .line 1
    invoke-static {p0, v1}, Lnts/ᶏ;->ㆃ([BI)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ㆃ([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static ㆃ(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    .line 5
    aput-byte p0, p1, p2

    return-void
.end method

.method public static ㆃ([B[I)V
    .locals 16

    move-object/from16 v0, p0

    .line 7
    array-length v1, v0

    ushr-int/lit8 v1, v1, 0x2

    const/16 v2, 0x34

    .line 8
    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x6

    .line 11
    new-array v3, v1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    mul-int/lit8 v6, v5, 0x4

    .line 14
    invoke-static {v0, v6}, Lnts/ᶏ;->ㆃ([BI)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 18
    aget v6, v3, v5

    move v7, v4

    :goto_1
    if-lez v2, :cond_2

    const v8, -0x61c88647

    add-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x2

    and-int/lit8 v8, v8, 0x3

    move v9, v4

    :goto_2
    if-ge v9, v5, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 24
    aget v11, v3, v10

    .line 25
    aget v12, v3, v9

    ushr-int/lit8 v13, v6, 0x5

    shl-int/lit8 v14, v11, 0x2

    xor-int/2addr v13, v14

    ushr-int/lit8 v14, v11, 0x3

    shl-int/lit8 v15, v6, 0x4

    xor-int/2addr v14, v15

    add-int/2addr v13, v14

    xor-int/2addr v11, v7

    and-int/lit8 v14, v9, 0x3

    xor-int/2addr v14, v8

    aget v14, p1, v14

    xor-int/2addr v6, v14

    add-int/2addr v11, v6

    xor-int v6, v13, v11

    add-int/2addr v6, v12

    aput v6, v3, v9

    move v9, v10

    goto :goto_2

    .line 28
    :cond_1
    aget v10, v3, v4

    .line 29
    aget v11, v3, v5

    ushr-int/lit8 v12, v6, 0x5

    shl-int/lit8 v13, v10, 0x2

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v10, 0x3

    shl-int/lit8 v14, v6, 0x4

    xor-int/2addr v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v10, v7

    and-int/lit8 v9, v9, 0x3

    xor-int/2addr v8, v9

    aget v8, p1, v8

    xor-int/2addr v6, v8

    add-int/2addr v10, v6

    xor-int v6, v12, v10

    add-int/2addr v6, v11

    aput v6, v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v4, v1, :cond_3

    .line 35
    aget v2, v3, v4

    mul-int/lit8 v5, v4, 0x4

    invoke-static {v2, v0, v5}, Lnts/ᶏ;->ㆃ(I[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
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
    .locals 6

    .line 2
    new-instance v0, Lnts/წ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnts/წ;-><init>([B[BIII)V

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 6

    .line 6
    new-instance v0, Lnts/ࡉ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnts/ࡉ;-><init>([B[BIII)V

    return-object v0
.end method
