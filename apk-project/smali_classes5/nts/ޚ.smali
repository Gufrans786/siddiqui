.class public Lnts/ޚ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public ᛃ:I

.field public Ὺ:[I

.field public Ⲳ:I


# direct methods
.method public constructor <init>([B[BIIIII)V
    .locals 7

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/ޚ;->Ὺ:[I

    const/16 p3, 0x20

    .line 3
    iput p3, v0, Lnts/ޚ;->Ⲳ:I

    const/4 p3, 0x0

    .line 4
    iput p3, v0, Lnts/ޚ;->ᛃ:I

    .line 8
    invoke-static {p1, p2}, Lnts/ᓩ;->ㆃ([B[I)V

    .line 9
    iput p5, v0, Lnts/ޚ;->Ⲳ:I

    .line 10
    iput p6, v0, Lnts/ޚ;->ᛃ:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v3, p0, Lnts/ޚ;->Ὺ:[I

    iget v4, p0, Lnts/ޚ;->Ⲳ:I

    iget v5, p0, Lnts/ޚ;->ᛃ:I

    const/16 v6, 0x20

    const v7, -0x61c88647

    if-ne v4, v6, :cond_1

    const v6, -0x3910c8e0

    goto :goto_0

    :cond_1
    mul-int v6, v4, v7

    :goto_0
    const/4 v8, 0x0

    .line 5
    invoke-static {v0, v8}, Lnts/ᓩ;->ㆃ([BI)I

    move-result v9

    .line 6
    invoke-static {v0, v1}, Lnts/ᓩ;->ㆃ([BI)I

    move-result v10

    if-nez v5, :cond_2

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_3

    shl-int/lit8 v11, v9, 0x4

    ushr-int/lit8 v12, v9, 0x5

    add-int/2addr v12, v9

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0xb

    and-int/2addr v12, v2

    .line 10
    aget v12, v3, v12

    add-int/2addr v12, v6

    xor-int/2addr v11, v12

    sub-int/2addr v10, v11

    sub-int/2addr v6, v7

    shl-int/lit8 v11, v10, 0x4

    ushr-int/lit8 v12, v10, 0x5

    add-int/2addr v12, v10

    xor-int/2addr v11, v12

    and-int/lit8 v12, v6, 0x3

    .line 12
    aget v12, v3, v12

    add-int/2addr v12, v6

    xor-int/2addr v11, v12

    sub-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_2
    if-ge v5, v4, :cond_3

    shl-int/lit8 v11, v9, 0x4

    ushr-int/lit8 v12, v9, 0x5

    xor-int/2addr v11, v12

    add-int/2addr v11, v9

    ushr-int/lit8 v12, v6, 0xb

    and-int/2addr v12, v2

    .line 16
    aget v12, v3, v12

    add-int/2addr v12, v6

    xor-int/2addr v11, v12

    sub-int/2addr v10, v11

    sub-int/2addr v6, v7

    shl-int/lit8 v11, v10, 0x4

    ushr-int/lit8 v12, v10, 0x5

    xor-int/2addr v11, v12

    add-int/2addr v11, v10

    and-int/lit8 v12, v6, 0x3

    .line 18
    aget v12, v3, v12

    add-int/2addr v12, v6

    xor-int/2addr v11, v12

    sub-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 22
    :cond_3
    invoke-static {v9, v0, v8}, Lnts/ᓩ;->ㆃ(I[BI)V

    .line 23
    invoke-static {v10, v0, v1}, Lnts/ᓩ;->ㆃ(I[BI)V

    return-void

    .line 24
    :cond_4
    :goto_3
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ޚ;->Ὺ:[I

    iget v2, p0, Lnts/ޚ;->Ⲳ:I

    iget v3, p0, Lnts/ޚ;->ᛃ:I

    invoke-static {v0, v1, v2, v3}, Lnts/ᓩ;->ㆃ([B[III)V

    return-void
.end method
