.class public Lnts/Ⅵ;
.super Lnts/ࠆ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ࠆ;-><init>()V

    const/16 v0, 0x200

    .line 2
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    const/16 v0, 0x88

    .line 3
    iput v0, p0, Lnts/ࠆ;->て:I

    return-void
.end method


# virtual methods
.method public ᇭ()[B
    .locals 11

    .line 1
    iget-object v0, p0, Lnts/ࠆ;->ౠ:[B

    iget v1, p0, Lnts/ࠆ;->ᙕ:I

    .line 2
    iget v2, p0, Lnts/ࠆ;->て:I

    add-int v3, v1, v2

    rem-int v2, v1, v2

    sub-int/2addr v3, v2

    .line 4
    new-array v2, v3, [B

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1f

    .line 6
    aput-byte v0, v2, v1

    .line 7
    iget v0, p0, Lnts/ࠆ;->て:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, v2, v0

    xor-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 8
    iget v0, p0, Lnts/ዃ;->ㆃ:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    move v0, v3

    .line 11
    :goto_0
    iget v4, p0, Lnts/ዃ;->ㆃ:I

    div-int/2addr v4, v1

    if-ge v0, v4, :cond_3

    .line 12
    iget v4, p0, Lnts/ࠆ;->て:I

    invoke-virtual {p0, v2, v4}, Lnts/ࠆ;->ㆃ([BI)V

    move v2, v3

    :goto_1
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_1

    mul-int/lit8 v6, v2, 0x5

    add-int/2addr v6, v5

    .line 15
    iget v7, p0, Lnts/ࠆ;->て:I

    div-int/2addr v7, v1

    if-ge v6, v7, :cond_0

    .line 16
    iget-object v6, p0, Lnts/ࠆ;->Ͼ:[[J

    aget-object v6, v6, v5

    aget-wide v7, v6, v2

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_0

    .line 17
    iget v9, p0, Lnts/ዃ;->ㆃ:I

    div-int/2addr v9, v1

    if-ge v0, v9, :cond_0

    .line 18
    iget-object v9, p0, Lnts/ዃ;->ᾨ:[B

    long-to-int v10, v7

    int-to-byte v10, v10

    aput-byte v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v7, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_2
    iget v2, p0, Lnts/ࠆ;->て:I

    new-array v2, v2, [B

    goto :goto_0

    .line 28
    :cond_3
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0
.end method
