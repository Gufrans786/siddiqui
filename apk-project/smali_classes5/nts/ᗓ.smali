.class public Lnts/ᗓ;
.super Lnts/ᕐ;
.source "SourceFile"


# instance fields
.field public ዲ:[I

.field public ᎊ:I

.field public ᙕ:[B

.field public て:[I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnts/ᕐ;-><init>(II)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lnts/ᗓ;->ᎊ:I

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lnts/ᕐ;->ᰛ:[B

    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ᗓ;->ᙕ:[B

    .line 2
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lnts/ᗓ;->て:[I

    .line 3
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ᗓ;->ዲ:[I

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lnts/ᕐ;->ᰛ:[B

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 5
    aget-byte v2, v2, v1

    if-nez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x89

    .line 6
    invoke-virtual {p0, v0, v2, v3}, Lnts/ᗓ;->ㆃ(III)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v4

    .line 7
    iget-object v5, p0, Lnts/ᕐ;->ᰛ:[B

    array-length v5, v5

    if-ne v1, v5, :cond_0

    .line 8
    iget v1, p0, Lnts/ᗓ;->ᎊ:I

    if-nez v1, :cond_5

    .line 9
    iget-object v2, p0, Lnts/ᗓ;->ᙕ:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnts/ᗓ;->ᎊ:I

    aput-byte v0, v2, v1

    return-void

    :cond_0
    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 13
    iget-object v2, p0, Lnts/ᗓ;->ዲ:[I

    iget v4, p0, Lnts/ᗓ;->ᎊ:I

    const/4 v5, 0x7

    aput v5, v2, v4

    .line 14
    iget-object v2, p0, Lnts/ᗓ;->て:[I

    add-int/lit8 v3, v3, -0xa

    aput v3, v2, v4

    .line 15
    iget-object v2, p0, Lnts/ᗓ;->ᙕ:[B

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lnts/ᗓ;->ᎊ:I

    const/16 v3, 0x12

    aput-byte v3, v2, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 19
    iget-object v2, p0, Lnts/ᗓ;->ዲ:[I

    iget v4, p0, Lnts/ᗓ;->ᎊ:I

    aput v5, v2, v4

    .line 20
    iget-object v2, p0, Lnts/ᗓ;->て:[I

    add-int/lit8 v3, v3, -0x2

    aput v3, v2, v4

    .line 21
    iget-object v2, p0, Lnts/ᗓ;->ᙕ:[B

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lnts/ᗓ;->ᎊ:I

    const/16 v3, 0x11

    aput-byte v3, v2, v4

    goto :goto_0

    .line 25
    :cond_2
    iget-object v1, p0, Lnts/ᗓ;->ᙕ:[B

    iget v3, p0, Lnts/ᗓ;->ᎊ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnts/ᗓ;->ᎊ:I

    aput-byte v0, v1, v3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x6

    .line 30
    invoke-virtual {p0, v2, v3, v4}, Lnts/ᗓ;->ㆃ(III)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    .line 31
    iget-object v5, p0, Lnts/ᗓ;->ᙕ:[B

    iget v6, p0, Lnts/ᗓ;->ᎊ:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lnts/ᗓ;->ᎊ:I

    iget-object v7, p0, Lnts/ᕐ;->ᰛ:[B

    aget-byte v1, v7, v1

    aput-byte v1, v5, v6

    const/4 v1, 0x4

    if-lt v4, v1, :cond_4

    .line 34
    iget-object v1, p0, Lnts/ᗓ;->て:[I

    iget v4, p0, Lnts/ᗓ;->ᎊ:I

    add-int/lit8 v6, v2, -0x3

    int-to-byte v6, v6

    aput v6, v1, v4

    .line 35
    iget-object v1, p0, Lnts/ᗓ;->ዲ:[I

    const/4 v6, 0x2

    aput v6, v1, v4

    add-int/lit8 v1, v4, 0x1

    .line 36
    iput v1, p0, Lnts/ᗓ;->ᎊ:I

    const/16 v1, 0x10

    aput-byte v1, v5, v4

    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final ㆃ(III)I
    .locals 3

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lnts/ᕐ;->ᰛ:[B

    array-length v2, v1

    if-ge p2, v2, :cond_0

    if-ge v0, p3, :cond_0

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, v1, p2

    if-ne p2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public ㆃ(Lnts/ሐ;Lnts/ᕐ;)V
    .locals 3

    .line 1
    iput-object p1, p2, Lnts/ᕐ;->Ͼ:Lnts/ሐ;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lnts/ᗓ;->ᎊ:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lnts/ᗓ;->ᙕ:[B

    aget-byte v1, v1, v0

    invoke-virtual {p2, v1}, Lnts/ᕐ;->ㆃ(I)V

    .line 4
    iget-object v1, p0, Lnts/ᗓ;->ᙕ:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ᗓ;->て:[I

    aget v1, v1, v0

    iget-object v2, p0, Lnts/ᗓ;->ዲ:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lnts/ሐ;->ㆃ(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ㆃ(Lnts/ᕐ;)V
    .locals 4

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Lnts/ᗓ;->ᎊ:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p1, Lnts/ᕐ;->ᾨ:[S

    iget-object v2, p0, Lnts/ᗓ;->ᙕ:[B

    aget-byte v2, v2, v0

    aget-short v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
