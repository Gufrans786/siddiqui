.class public Lnts/ύ;
.super Lnts/ᣎ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

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

    const/16 v5, 0x40

    invoke-direct {v2, v5, v5, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 5
    iput v5, p0, Lnts/ኝ;->ᾨ:I

    .line 6
    iput v5, p0, Lnts/ኝ;->ᇭ:I

    .line 7
    iput v3, p0, Lnts/ኝ;->ㆃ:I

    .line 8
    iput v0, p0, Lnts/ኝ;->て:I

    .line 9
    iput v0, p0, Lnts/ኝ;->ዲ:I

    return-void
.end method

.method public static ᾨ([B[S)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2
    array-length v1, p0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 3
    invoke-static {p0, v1}, Lnts/ύ;->ㆃ([BI)S

    move-result v1

    aput-short v1, p1, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 5
    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x7

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0xf

    :goto_1
    aget-short v1, p1, v1

    const v3, 0xffff

    and-int/2addr v1, v3

    add-int/lit8 v4, v0, 0x2

    .line 6
    rem-int/lit8 v4, v4, 0x8

    if-ge v4, v2, :cond_2

    add-int/lit8 v2, v0, -0xe

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v0, -0x6

    :goto_2
    aget-short v2, p1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x9

    ushr-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    and-int/2addr v1, v3

    int-to-short v1, v1

    .line 7
    aput-short v1, p1, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static ㆃ(S)S
    .locals 6

    const v0, 0xffff

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return p0

    :cond_0
    const p0, 0x10001

    const/4 v3, 0x0

    move v4, p0

    .line 38
    :goto_0
    rem-int v5, v4, v1

    .line 39
    div-int/2addr v4, v1

    if-nez v5, :cond_2

    if-gez v2, :cond_1

    add-int/2addr v2, p0

    :cond_1
    and-int p0, v2, v0

    int-to-short p0, p0

    return p0

    :cond_2
    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    move v4, v3

    move v3, v2

    move v2, v4

    move v4, v1

    move v1, v5

    goto :goto_0
.end method

.method public static ㆃ(SS)S
    .locals 3

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    and-int/2addr p0, v0

    int-to-short p0, p0

    and-int/2addr p1, v0

    sub-int/2addr p1, v1

    and-int/2addr p1, v0

    int-to-short p1, p1

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    mul-int v2, p0, p1

    add-int/2addr v2, p0

    add-int/2addr v2, p1

    add-int/2addr v2, v1

    and-int p0, v2, v0

    int-to-short p0, p0

    ushr-int/lit8 p1, v2, 0x10

    and-int/2addr p1, v0

    int-to-short p1, p1

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    sub-int v2, p0, p1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v2, v1

    and-int p0, v2, v0

    int-to-short p0, p0

    return p0
.end method

.method public static ㆃ([BI)S
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static ㆃ(S[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    .line 3
    aput-byte p0, p1, p2

    return-void
.end method

.method public static ㆃ([B[S)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lnts/ύ;->ㆃ([BI)S

    move-result v2

    const/4 v3, 0x2

    .line 6
    invoke-static {v0, v3}, Lnts/ύ;->ㆃ([BI)S

    move-result v4

    const/4 v5, 0x4

    .line 7
    invoke-static {v0, v5}, Lnts/ύ;->ㆃ([BI)S

    move-result v6

    const/4 v7, 0x6

    .line 8
    invoke-static {v0, v7}, Lnts/ύ;->ㆃ([BI)S

    move-result v8

    const/16 v9, 0x8

    move v10, v1

    :goto_0
    const v11, 0xffff

    if-lez v9, :cond_0

    add-int/lit8 v12, v10, 0x1

    .line 13
    aget-short v13, p1, v10

    invoke-static {v2, v13}, Lnts/ύ;->ㆃ(SS)S

    move-result v2

    add-int/lit8 v13, v10, 0x2

    .line 14
    aget-short v12, p1, v12

    add-int/2addr v4, v12

    and-int/2addr v4, v11

    int-to-short v4, v4

    add-int/lit8 v12, v10, 0x3

    .line 15
    aget-short v13, p1, v13

    add-int/2addr v6, v13

    and-int/2addr v6, v11

    int-to-short v6, v6

    add-int/lit8 v13, v10, 0x4

    .line 16
    aget-short v12, p1, v12

    invoke-static {v8, v12}, Lnts/ύ;->ㆃ(SS)S

    move-result v8

    xor-int v12, v2, v6

    int-to-short v12, v12

    add-int/lit8 v14, v10, 0x5

    .line 19
    aget-short v13, p1, v13

    invoke-static {v12, v13}, Lnts/ύ;->ㆃ(SS)S

    move-result v12

    xor-int v13, v4, v8

    add-int/2addr v13, v12

    and-int/2addr v13, v11

    int-to-short v13, v13

    add-int/lit8 v10, v10, 0x6

    .line 21
    aget-short v14, p1, v14

    invoke-static {v13, v14}, Lnts/ύ;->ㆃ(SS)S

    move-result v13

    add-int/2addr v12, v13

    and-int/2addr v11, v12

    int-to-short v11, v11

    xor-int/2addr v2, v13

    int-to-short v2, v2

    xor-int/2addr v8, v11

    int-to-short v8, v8

    xor-int/2addr v4, v11

    int-to-short v4, v4

    xor-int/2addr v6, v13

    int-to-short v6, v6

    add-int/lit8 v9, v9, -0x1

    move v15, v6

    move v6, v4

    move v4, v15

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v10, 0x1

    .line 32
    aget-short v12, p1, v10

    invoke-static {v2, v12}, Lnts/ύ;->ㆃ(SS)S

    move-result v2

    .line 33
    invoke-static {v2, v0, v1}, Lnts/ύ;->ㆃ(S[BI)V

    add-int/lit8 v1, v10, 0x2

    .line 34
    aget-short v2, p1, v9

    add-int/2addr v6, v2

    and-int v2, v6, v11

    int-to-short v2, v2

    invoke-static {v2, v0, v3}, Lnts/ύ;->ㆃ(S[BI)V

    add-int/lit8 v10, v10, 0x3

    .line 35
    aget-short v1, p1, v1

    add-int/2addr v4, v1

    and-int v1, v4, v11

    int-to-short v1, v1

    invoke-static {v1, v0, v5}, Lnts/ύ;->ㆃ(S[BI)V

    .line 36
    aget-short v1, p1, v10

    invoke-static {v8, v1}, Lnts/ύ;->ㆃ(SS)S

    move-result v1

    .line 37
    invoke-static {v1, v0, v7}, Lnts/ύ;->ㆃ(S[BI)V

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

    .line 2
    invoke-super {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 6

    .line 8
    new-instance v0, Lnts/ⲍ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnts/ⲍ;-><init>([B[BIII)V

    return-object v0
.end method

.method public ᾨ([B)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 6

    .line 4
    new-instance v0, Lnts/ሟ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnts/ሟ;-><init>([B[BIII)V

    return-object v0
.end method
