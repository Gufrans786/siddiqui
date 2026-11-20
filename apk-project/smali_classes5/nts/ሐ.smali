.class public Lnts/ሐ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᇭ:I

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x812c

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ሐ;->ㆃ:[B

    const v0, 0x8118

    .line 3
    iput v0, p0, Lnts/ሐ;->ౠ:I

    return-void
.end method


# virtual methods
.method public ᇭ()Z
    .locals 1

    .line 1
    iget v0, p0, Lnts/ሐ;->ᇭ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᾨ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ሐ;->ㆃ:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput-object v1, p0, Lnts/ሐ;->ㆃ:[B

    .line 4
    array-length v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lnts/ሐ;->ౠ:I

    return-void
.end method

.method public ㆃ([BII)I
    .locals 6

    .line 18
    iget v0, p0, Lnts/ሐ;->Ͼ:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 19
    iget-object v2, p0, Lnts/ሐ;->ㆃ:[B

    iget v3, p0, Lnts/ሐ;->ᇭ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnts/ሐ;->ᇭ:I

    iget v4, p0, Lnts/ሐ;->ᰛ:I

    int-to-byte v5, v4

    aput-byte v5, v2, v3

    ushr-int/lit8 v2, v4, 0x8

    .line 20
    iput v2, p0, Lnts/ሐ;->ᰛ:I

    sub-int/2addr v0, v1

    .line 21
    iput v0, p0, Lnts/ሐ;->Ͼ:I

    .line 23
    :cond_0
    iget v0, p0, Lnts/ሐ;->ᇭ:I

    iget v1, p0, Lnts/ሐ;->ᾨ:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 24
    iget-object v0, p0, Lnts/ሐ;->ㆃ:[B

    iget v1, p0, Lnts/ሐ;->ᾨ:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget p1, p0, Lnts/ሐ;->ᾨ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ሐ;->ᾨ:I

    .line 26
    iget p2, p0, Lnts/ሐ;->ᇭ:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lnts/ሐ;->ᇭ:I

    iput p1, p0, Lnts/ሐ;->ᾨ:I

    :cond_1
    return p3
.end method

.method public ㆃ()V
    .locals 4

    .line 1
    iget v0, p0, Lnts/ሐ;->ᇭ:I

    iget-object v1, p0, Lnts/ሐ;->ㆃ:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnts/ሐ;->ᾨ()V

    .line 2
    :cond_0
    iget v0, p0, Lnts/ሐ;->Ͼ:I

    if-lez v0, :cond_1

    .line 3
    iget-object v1, p0, Lnts/ሐ;->ㆃ:[B

    iget v2, p0, Lnts/ሐ;->ᇭ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ሐ;->ᇭ:I

    iget v3, p0, Lnts/ሐ;->ᰛ:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_1
    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lnts/ሐ;->ㆃ:[B

    iget v2, p0, Lnts/ሐ;->ᇭ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ሐ;->ᇭ:I

    iget v3, p0, Lnts/ሐ;->ᰛ:I

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnts/ሐ;->ᰛ:I

    .line 9
    iput v0, p0, Lnts/ሐ;->Ͼ:I

    return-void
.end method

.method public ㆃ(II)V
    .locals 4

    .line 10
    iget v0, p0, Lnts/ሐ;->ᰛ:I

    iget v1, p0, Lnts/ሐ;->Ͼ:I

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lnts/ሐ;->ᰛ:I

    add-int/2addr v1, p2

    .line 11
    iput v1, p0, Lnts/ሐ;->Ͼ:I

    const/16 p1, 0x10

    if-lt v1, p1, :cond_1

    .line 13
    iget p2, p0, Lnts/ሐ;->ᇭ:I

    iget v0, p0, Lnts/ሐ;->ౠ:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lnts/ሐ;->ᾨ()V

    .line 14
    :cond_0
    iget-object p2, p0, Lnts/ሐ;->ㆃ:[B

    iget v0, p0, Lnts/ሐ;->ᇭ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnts/ሐ;->ᇭ:I

    iget v2, p0, Lnts/ሐ;->ᰛ:I

    int-to-byte v3, v2

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x2

    .line 15
    iput v0, p0, Lnts/ሐ;->ᇭ:I

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    ushr-int/lit8 p2, v2, 0x10

    .line 16
    iput p2, p0, Lnts/ሐ;->ᰛ:I

    .line 17
    iget p2, p0, Lnts/ሐ;->Ͼ:I

    sub-int/2addr p2, p1

    iput p2, p0, Lnts/ሐ;->Ͼ:I

    :cond_1
    return-void
.end method
