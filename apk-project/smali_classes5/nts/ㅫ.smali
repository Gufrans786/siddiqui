.class public Lnts/ㅫ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ㆃ:[S


# direct methods
.method public constructor <init>([B)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x10

    .line 2
    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    .line 3
    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-array v5, v2, [I

    move v6, v4

    :goto_1
    if-ge v6, v2, :cond_1

    .line 5
    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    .line 8
    :goto_2
    array-length v6, v1

    const/4 v7, 0x1

    if-ge v2, v6, :cond_3

    .line 9
    aget-byte v6, v1, v2

    if-lez v6, :cond_2

    .line 10
    aget v8, v3, v6

    add-int/2addr v8, v7

    aput v8, v3, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x200

    move v9, v2

    move v8, v4

    move v6, v7

    :goto_3
    const/16 v10, 0xa

    const/16 v11, 0xf

    const v12, 0x1ff80

    if-gt v6, v11, :cond_5

    .line 15
    aput v8, v5, v6

    .line 16
    aget v11, v3, v6

    rsub-int/lit8 v13, v6, 0x10

    shl-int/2addr v11, v13

    add-int/2addr v11, v8

    if-lt v6, v10, :cond_4

    and-int/2addr v8, v12

    and-int v10, v11, v12

    sub-int/2addr v10, v8

    shr-int v8, v10, v13

    add-int/2addr v9, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move v8, v11

    goto :goto_3

    :cond_5
    and-int/lit16 v6, v8, 0x7fff

    if-nez v6, :cond_d

    .line 26
    new-array v6, v9, [S

    iput-object v6, v0, Lnts/ㅫ;->ㆃ:[S

    move v6, v2

    :goto_4
    if-lt v11, v10, :cond_7

    and-int v9, v8, v12

    .line 31
    aget v13, v3, v11

    rsub-int/lit8 v14, v11, 0x10

    shl-int/2addr v13, v14

    sub-int/2addr v8, v13

    and-int v13, v8, v12

    :goto_5
    if-ge v13, v9, :cond_6

    .line 34
    iget-object v14, v0, Lnts/ㅫ;->ㆃ:[S

    invoke-static {v13}, Lnts/ᕐ;->ᾨ(I)S

    move-result v15

    neg-int v10, v6

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v14, v15

    add-int/lit8 v10, v11, -0x9

    shl-int v10, v7, v10

    add-int/2addr v6, v10

    add-int/lit16 v13, v13, 0x80

    const/16 v10, 0xa

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, -0x1

    const/16 v10, 0xa

    goto :goto_4

    .line 39
    :cond_7
    :goto_6
    array-length v3, v1

    if-ge v4, v3, :cond_c

    .line 40
    aget-byte v3, v1, v4

    if-eqz v3, :cond_b

    .line 42
    aget v6, v5, v3

    .line 43
    invoke-static {v6}, Lnts/ᕐ;->ᾨ(I)S

    move-result v8

    const/16 v9, 0x9

    if-gt v3, v9, :cond_9

    .line 46
    :cond_8
    iget-object v9, v0, Lnts/ㅫ;->ㆃ:[S

    shl-int/lit8 v10, v4, 0x4

    or-int/2addr v10, v3

    int-to-short v10, v10

    aput-short v10, v9, v8

    shl-int v9, v7, v3

    add-int/2addr v8, v9

    if-lt v8, v2, :cond_8

    goto :goto_7

    .line 50
    :cond_9
    iget-object v9, v0, Lnts/ㅫ;->ㆃ:[S

    and-int/lit16 v10, v8, 0x1ff

    aget-short v9, v9, v10

    and-int/lit8 v10, v9, 0xf

    shl-int v10, v7, v10

    shr-int/lit8 v9, v9, 0x4

    neg-int v9, v9

    .line 54
    :cond_a
    iget-object v11, v0, Lnts/ㅫ;->ㆃ:[S

    shr-int/lit8 v12, v8, 0x9

    or-int/2addr v12, v9

    shl-int/lit8 v13, v4, 0x4

    or-int/2addr v13, v3

    int-to-short v13, v13

    aput-short v13, v11, v12

    shl-int v11, v7, v3

    add-int/2addr v8, v11

    if-lt v8, v10, :cond_a

    :goto_7
    rsub-int/lit8 v8, v3, 0x10

    shl-int v8, v7, v8

    add-int/2addr v6, v8

    .line 58
    aput v6, v5, v3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    return-void

    .line 59
    :cond_d
    new-instance v1, Lnts/ᛎ;

    const-string v2, "Xu}}?rxrtfyc7rzz,~)ikj-ys\""

    const/16 v3, 0x1a

    .line 60
    invoke-static {v2, v4, v3, v7}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    .line 61
    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public ㆃ(Lnts/ፍ;)I
    .locals 6

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p1, v0}, Lnts/ፍ;->ᰛ(I)I

    move-result v1

    const/4 v2, -0x1

    if-ltz v1, :cond_3

    .line 3
    iget-object v3, p0, Lnts/ㅫ;->ㆃ:[S

    aget-short v1, v3, v1

    if-ltz v1, :cond_0

    and-int/lit8 v0, v1, 0xf

    .line 5
    invoke-virtual {p1, v0}, Lnts/ፍ;->ㆃ(I)V

    shr-int/lit8 p1, v1, 0x4

    return p1

    :cond_0
    shr-int/lit8 v3, v1, 0x4

    neg-int v3, v3

    and-int/lit8 v1, v1, 0xf

    .line 10
    invoke-virtual {p1, v1}, Lnts/ፍ;->ᰛ(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 12
    iget-object v2, p0, Lnts/ㅫ;->ㆃ:[S

    shr-int/lit8 v0, v1, 0x9

    or-int/2addr v0, v3

    aget-short v0, v2, v0

    and-int/lit8 v1, v0, 0xf

    .line 13
    invoke-virtual {p1, v1}, Lnts/ፍ;->ㆃ(I)V

    shr-int/lit8 p1, v0, 0x4

    return p1

    .line 14
    :cond_1
    iget v1, p1, Lnts/ፍ;->Ͼ:I

    .line 15
    invoke-virtual {p1, v1}, Lnts/ፍ;->ᰛ(I)I

    move-result v4

    .line 16
    iget-object v5, p0, Lnts/ㅫ;->ㆃ:[S

    shr-int/lit8 v0, v4, 0x9

    or-int/2addr v0, v3

    aget-short v0, v5, v0

    and-int/lit8 v3, v0, 0xf

    if-le v3, v1, :cond_2

    return v2

    .line 18
    :cond_2
    invoke-virtual {p1, v3}, Lnts/ፍ;->ㆃ(I)V

    shr-int/lit8 p1, v0, 0x4

    return p1

    .line 19
    :cond_3
    iget v0, p1, Lnts/ፍ;->Ͼ:I

    .line 20
    invoke-virtual {p1, v0}, Lnts/ፍ;->ᰛ(I)I

    move-result v1

    .line 21
    iget-object v3, p0, Lnts/ㅫ;->ㆃ:[S

    aget-short v1, v3, v1

    if-ltz v1, :cond_4

    and-int/lit8 v3, v1, 0xf

    if-gt v3, v0, :cond_4

    .line 23
    invoke-virtual {p1, v3}, Lnts/ፍ;->ㆃ(I)V

    shr-int/lit8 p1, v1, 0x4

    return p1

    :cond_4
    return v2
.end method
