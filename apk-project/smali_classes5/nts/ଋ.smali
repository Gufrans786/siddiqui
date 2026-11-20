.class public Lnts/ଋ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public ᛃ:[I

.field public ᵑ:[I

.field public Ὺ:[I

.field public Ⲳ:[I

.field public ⴗ:[I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 8

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/16 p2, 0x12

    .line 2
    new-array v3, p2, [I

    iput-object v3, v0, Lnts/ଋ;->Ὺ:[I

    const/16 p2, 0x100

    .line 3
    new-array v4, p2, [I

    iput-object v4, v0, Lnts/ଋ;->Ⲳ:[I

    .line 4
    new-array v5, p2, [I

    iput-object v5, v0, Lnts/ଋ;->ᛃ:[I

    .line 5
    new-array v6, p2, [I

    iput-object v6, v0, Lnts/ଋ;->ᵑ:[I

    .line 6
    new-array v7, p2, [I

    iput-object v7, v0, Lnts/ଋ;->ⴗ:[I

    .line 12
    invoke-static {v3, v4, v5, v6, v7}, Lnts/ᯘ;->ㆃ([I[I[I[I[I)V

    const/4 v2, 0x0

    move-object v1, p1

    .line 13
    invoke-static/range {v1 .. v7}, Lnts/ᯘ;->ㆃ([B[B[I[I[I[I[I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v2, p0, Lnts/ଋ;->Ὺ:[I

    iget-object v3, p0, Lnts/ଋ;->Ⲳ:[I

    iget-object v4, p0, Lnts/ଋ;->ᛃ:[I

    iget-object v5, p0, Lnts/ଋ;->ᵑ:[I

    iget-object v6, p0, Lnts/ଋ;->ⴗ:[I

    const/4 v7, 0x1

    .line 5
    new-array v10, v7, [I

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lnts/ᯘ;->ㆃ([BI)I

    move-result v8

    aput v8, v10, v11

    .line 6
    new-array v12, v7, [I

    invoke-static {v0, v1}, Lnts/ᯘ;->ㆃ([BI)I

    move-result v7

    aput v7, v12, v11

    .line 7
    aget v7, v10, v11

    const/16 v8, 0x11

    aget v8, v2, v8

    xor-int/2addr v7, v8

    aput v7, v10, v11

    const/16 v7, 0x10

    move v9, v7

    :goto_0
    if-lez v9, :cond_1

    .line 9
    aget v7, v12, v11

    aget v8, v10, v11

    invoke-static/range {v2 .. v9}, Lnts/ᯘ;->ㆃ([I[I[I[I[IIII)I

    move-result v8

    move v13, v9

    aput v8, v12, v11

    .line 10
    aget v7, v10, v11

    add-int/lit8 v9, v13, -0x1

    invoke-static/range {v2 .. v9}, Lnts/ᯘ;->ㆃ([I[I[I[I[IIII)I

    move-result v7

    aput v7, v10, v11

    add-int/lit8 v9, v13, -0x2

    goto :goto_0

    .line 12
    :cond_1
    aget v3, v12, v11

    aget v2, v2, v11

    xor-int/2addr v2, v3

    aput v2, v12, v11

    .line 14
    aget v3, v10, v11

    .line 15
    aput v2, v10, v11

    .line 16
    aput v3, v12, v11

    .line 17
    aget v2, v10, v11

    invoke-static {v2, v0, v11}, Lnts/ᯘ;->ㆃ(I[BI)V

    .line 18
    aget v2, v12, v11

    invoke-static {v2, v0, v1}, Lnts/ᯘ;->ㆃ(I[BI)V

    return-void

    .line 19
    :cond_2
    :goto_1
    iget-object v3, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v4, p0, Lnts/ଋ;->Ὺ:[I

    iget-object v5, p0, Lnts/ଋ;->Ⲳ:[I

    iget-object v6, p0, Lnts/ଋ;->ᛃ:[I

    iget-object v7, p0, Lnts/ଋ;->ᵑ:[I

    iget-object v8, p0, Lnts/ଋ;->ⴗ:[I

    invoke-static/range {v3 .. v8}, Lnts/ᯘ;->ㆃ([B[I[I[I[I[I)V

    return-void
.end method
