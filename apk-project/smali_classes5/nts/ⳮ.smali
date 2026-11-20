.class public Lnts/ⳮ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I

.field public Ⲳ:I


# direct methods
.method public constructor <init>([B[BIIII)V
    .locals 7

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/ⳮ;->Ὺ:[I

    const/16 p3, 0x20

    .line 3
    iput p3, v0, Lnts/ⳮ;->Ⲳ:I

    .line 7
    invoke-static {p1, p2}, Lnts/ᡰ;->ㆃ([B[I)V

    .line 8
    iput p5, v0, Lnts/ⳮ;->Ⲳ:I

    const/4 p1, 0x1

    .line 9
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

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v3, p0, Lnts/ⳮ;->Ὺ:[I

    iget v4, p0, Lnts/ⳮ;->Ⲳ:I

    const/16 v5, 0x20

    const v6, -0x61c88647

    if-ne v4, v5, :cond_1

    const v5, -0x3910c8e0

    goto :goto_0

    :cond_1
    mul-int v5, v4, v6

    :goto_0
    const/4 v7, 0x0

    .line 5
    invoke-static {v0, v7}, Lnts/ᡰ;->ㆃ([BI)I

    move-result v8

    .line 6
    invoke-static {v0, v1}, Lnts/ᡰ;->ㆃ([BI)I

    move-result v9

    move v10, v7

    :goto_1
    if-ge v10, v4, :cond_2

    shl-int/lit8 v11, v8, 0x4

    const/4 v12, 0x2

    .line 10
    aget v12, v3, v12

    add-int/2addr v11, v12

    add-int v12, v8, v5

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v8, 0x5

    aget v13, v3, v2

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    sub-int/2addr v9, v11

    shl-int/lit8 v11, v9, 0x4

    .line 11
    aget v12, v3, v7

    add-int/2addr v11, v12

    add-int v12, v9, v5

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x5

    const/4 v13, 0x1

    aget v13, v3, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    sub-int/2addr v8, v11

    sub-int/2addr v5, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {v8, v0, v7}, Lnts/ᡰ;->ㆃ(I[BI)V

    .line 16
    invoke-static {v9, v0, v1}, Lnts/ᡰ;->ㆃ(I[BI)V

    return-void

    .line 17
    :cond_3
    :goto_2
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ⳮ;->Ὺ:[I

    iget v2, p0, Lnts/ⳮ;->Ⲳ:I

    invoke-static {v0, v1, v2}, Lnts/ᡰ;->ㆃ([B[II)V

    return-void
.end method
