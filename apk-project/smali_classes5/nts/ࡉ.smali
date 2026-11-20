.class public Lnts/ࡉ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    .line 1
    array-length v2, p2

    array-length v3, p2

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/ࡉ;->Ὺ:[I

    .line 6
    invoke-static {p1, p2}, Lnts/ᶏ;->ᾨ([B[I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lnts/ⵄ;->ౠ:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v1, v0, Lnts/ⵄ;->ᰛ:[B

    iget-object v3, v0, Lnts/ࡉ;->Ὺ:[I

    .line 5
    array-length v4, v1

    ushr-int/lit8 v4, v4, 0x2

    const/16 v5, 0x34

    .line 6
    div-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x6

    const v6, -0x61c88647

    mul-int/2addr v5, v6

    .line 10
    new-array v7, v4, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_1

    mul-int/lit8 v10, v9, 0x4

    .line 13
    invoke-static {v1, v10}, Lnts/ᶏ;->ㆃ([BI)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 15
    :cond_1
    aget v9, v7, v8

    :goto_1
    if-eqz v5, :cond_3

    ushr-int/lit8 v10, v5, 0x2

    and-int/2addr v10, v2

    add-int/lit8 v11, v4, -0x1

    move v12, v11

    :goto_2
    if-lez v12, :cond_2

    add-int/lit8 v13, v12, -0x1

    .line 22
    aget v13, v7, v13

    .line 23
    aget v14, v7, v12

    ushr-int/lit8 v15, v13, 0x5

    shl-int/lit8 v16, v9, 0x2

    xor-int v15, v15, v16

    ushr-int/lit8 v16, v9, 0x3

    shl-int/lit8 v17, v13, 0x4

    xor-int v16, v16, v17

    add-int v15, v15, v16

    xor-int/2addr v9, v5

    and-int/lit8 v16, v12, 0x3

    xor-int v16, v16, v10

    aget v16, v3, v16

    xor-int v13, v16, v13

    add-int/2addr v9, v13

    xor-int/2addr v9, v15

    sub-int v9, v14, v9

    aput v9, v7, v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 26
    :cond_2
    aget v11, v7, v11

    .line 27
    aget v13, v7, v8

    ushr-int/lit8 v14, v11, 0x5

    shl-int/lit8 v15, v9, 0x2

    xor-int/2addr v14, v15

    ushr-int/lit8 v15, v9, 0x3

    shl-int/lit8 v16, v11, 0x4

    xor-int v15, v15, v16

    add-int/2addr v14, v15

    xor-int/2addr v9, v5

    and-int/lit8 v12, v12, 0x3

    xor-int/2addr v10, v12

    aget v10, v3, v10

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v9, v14

    sub-int v9, v13, v9

    aput v9, v7, v8

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v8, v4, :cond_4

    .line 33
    aget v2, v7, v8

    mul-int/lit8 v3, v8, 0x4

    invoke-static {v2, v1, v3}, Lnts/ᶏ;->ㆃ(I[BI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 34
    :cond_5
    :goto_4
    iget-object v1, v0, Lnts/ⵄ;->ᰛ:[B

    iget-object v2, v0, Lnts/ࡉ;->Ὺ:[I

    invoke-static {v1, v2}, Lnts/ᶏ;->ㆃ([B[I)V

    return-void
.end method
