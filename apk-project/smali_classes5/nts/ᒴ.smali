.class public Lnts/ᒴ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I

.field public Ⲳ:[I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/16 p2, 0x28

    .line 2
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/ᒴ;->Ὺ:[I

    const/16 p3, 0x400

    .line 3
    new-array p3, p3, [I

    iput-object p3, v0, Lnts/ᒴ;->Ⲳ:[I

    .line 8
    invoke-static {p1, p2, p3}, Lnts/ၮ;->ᾨ([B[I[I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lnts/ⵄ;->ౠ:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v1, v0, Lnts/ⵄ;->ᰛ:[B

    iget-object v4, v0, Lnts/ᒴ;->Ὺ:[I

    iget-object v5, v0, Lnts/ᒴ;->Ⲳ:[I

    const/4 v6, 0x0

    .line 5
    invoke-static {v1, v6}, Lnts/ၮ;->ㆃ([BI)I

    move-result v7

    .line 7
    invoke-static {v1, v2}, Lnts/ၮ;->ㆃ([BI)I

    move-result v8

    const/16 v9, 0x8

    .line 9
    invoke-static {v1, v9}, Lnts/ၮ;->ㆃ([BI)I

    move-result v10

    const/16 v11, 0xc

    .line 11
    invoke-static {v1, v11}, Lnts/ၮ;->ㆃ([BI)I

    move-result v12

    .line 13
    aget v13, v4, v2

    xor-int/2addr v7, v13

    const/4 v13, 0x5

    .line 14
    aget v13, v4, v13

    xor-int/2addr v8, v13

    const/4 v13, 0x6

    .line 15
    aget v13, v4, v13

    xor-int/2addr v10, v13

    const/4 v13, 0x7

    .line 16
    aget v13, v4, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x27

    move v14, v6

    :goto_0
    const/16 v15, 0x10

    if-ge v14, v15, :cond_1

    .line 21
    invoke-static {v5, v7, v6}, Lnts/ၮ;->ㆃ([III)I

    move-result v15

    .line 22
    invoke-static {v5, v8, v3}, Lnts/ၮ;->ㆃ([III)I

    move-result v16

    mul-int/lit8 v17, v16, 0x2

    add-int v17, v17, v15

    add-int/lit8 v18, v13, -0x1

    .line 23
    aget v19, v4, v13

    add-int v17, v17, v19

    xor-int v12, v12, v17

    ushr-int/lit8 v17, v12, 0x1

    shl-int/lit8 v12, v12, 0x1f

    or-int v12, v17, v12

    shl-int/lit8 v17, v10, 0x1

    ushr-int/lit8 v10, v10, 0x1f

    or-int v10, v17, v10

    add-int v15, v15, v16

    add-int/lit8 v16, v13, -0x2

    .line 26
    aget v17, v4, v18

    add-int v15, v15, v17

    xor-int/2addr v10, v15

    .line 28
    invoke-static {v5, v10, v6}, Lnts/ၮ;->ㆃ([III)I

    move-result v15

    .line 29
    invoke-static {v5, v12, v3}, Lnts/ၮ;->ㆃ([III)I

    move-result v17

    mul-int/lit8 v18, v17, 0x2

    add-int v18, v18, v15

    add-int/lit8 v19, v13, -0x3

    .line 30
    aget v16, v4, v16

    add-int v18, v18, v16

    xor-int v8, v8, v18

    ushr-int/lit8 v16, v8, 0x1

    shl-int/lit8 v8, v8, 0x1f

    or-int v8, v16, v8

    shl-int/lit8 v16, v7, 0x1

    ushr-int/lit8 v7, v7, 0x1f

    or-int v7, v16, v7

    add-int v15, v15, v17

    add-int/lit8 v13, v13, -0x4

    .line 33
    aget v16, v4, v19

    add-int v15, v15, v16

    xor-int/2addr v7, v15

    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 36
    :cond_1
    aget v5, v4, v6

    xor-int/2addr v5, v10

    const/4 v10, 0x1

    .line 37
    aget v10, v4, v10

    xor-int/2addr v10, v12

    const/4 v12, 0x2

    .line 38
    aget v12, v4, v12

    xor-int/2addr v7, v12

    .line 39
    aget v3, v4, v3

    xor-int/2addr v3, v8

    .line 42
    invoke-static {v5, v1, v6}, Lnts/ၮ;->ㆃ(I[BI)V

    .line 44
    invoke-static {v10, v1, v2}, Lnts/ၮ;->ㆃ(I[BI)V

    .line 46
    invoke-static {v7, v1, v9}, Lnts/ၮ;->ㆃ(I[BI)V

    .line 48
    invoke-static {v3, v1, v11}, Lnts/ၮ;->ㆃ(I[BI)V

    return-void

    .line 49
    :cond_2
    :goto_1
    iget-object v1, v0, Lnts/ⵄ;->ᰛ:[B

    iget-object v2, v0, Lnts/ᒴ;->Ὺ:[I

    iget-object v3, v0, Lnts/ᒴ;->Ⲳ:[I

    invoke-static {v1, v2, v3}, Lnts/ၮ;->ㆃ([B[I[I)V

    return-void
.end method
