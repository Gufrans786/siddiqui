.class public Lnts/ፍ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ᇭ:I

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ፍ;->ᾨ:I

    .line 3
    iput v0, p0, Lnts/ፍ;->ᇭ:I

    .line 5
    iput v0, p0, Lnts/ፍ;->ᰛ:I

    .line 6
    iput v0, p0, Lnts/ፍ;->Ͼ:I

    return-void
.end method


# virtual methods
.method public ᇭ()I
    .locals 2

    .line 4
    iget v0, p0, Lnts/ፍ;->ᇭ:I

    iget v1, p0, Lnts/ፍ;->ᾨ:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnts/ፍ;->Ͼ:I

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public ᇭ(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lnts/ፍ;->ᰛ(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lnts/ፍ;->ㆃ(I)V

    :cond_0
    return v0
.end method

.method public ᰛ(I)I
    .locals 7

    .line 1
    iget v0, p0, Lnts/ፍ;->Ͼ:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_3

    .line 2
    iget v2, p0, Lnts/ፍ;->ᾨ:I

    iget v3, p0, Lnts/ፍ;->ᇭ:I

    const/4 v4, -0x1

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v0, 0x8

    if-ge v3, p1, :cond_1

    return v4

    .line 9
    :cond_1
    iget v4, p0, Lnts/ፍ;->ᰛ:I

    iget-object v5, p0, Lnts/ፍ;->ㆃ:[B

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lnts/ፍ;->ᾨ:I

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    shl-int v0, v2, v0

    or-int/2addr v0, v4

    iput v0, p0, Lnts/ፍ;->ᰛ:I

    .line 10
    iput v3, p0, Lnts/ፍ;->Ͼ:I

    goto :goto_0

    .line 12
    :cond_2
    iget v3, p0, Lnts/ፍ;->ᰛ:I

    iget-object v4, p0, Lnts/ፍ;->ㆃ:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lnts/ፍ;->ᾨ:I

    aget-byte v6, v4, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lnts/ፍ;->ᾨ:I

    aget-byte v2, v4, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v6

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    iput v2, p0, Lnts/ፍ;->ᰛ:I

    add-int/lit8 v0, v0, 0x10

    .line 14
    iput v0, p0, Lnts/ፍ;->Ͼ:I

    .line 17
    :cond_3
    :goto_0
    iget v0, p0, Lnts/ፍ;->ᰛ:I

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    and-int/2addr p1, v0

    return p1
.end method

.method public ᾨ(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnts/ፍ;->ᰛ(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lnts/ፍ;->ㆃ(I)V

    :cond_0
    return v0
.end method

.method public ᾨ()V
    .locals 3

    .line 4
    iget v0, p0, Lnts/ፍ;->ᰛ:I

    iget v1, p0, Lnts/ፍ;->Ͼ:I

    and-int/lit8 v2, v1, 0x7

    shr-int/2addr v0, v2

    iput v0, p0, Lnts/ፍ;->ᰛ:I

    const v0, 0xfff8

    and-int/2addr v0, v1

    .line 5
    iput v0, p0, Lnts/ፍ;->Ͼ:I

    return-void
.end method

.method public ㆃ([BII)I
    .locals 6

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lnts/ፍ;->Ͼ:I

    const/16 v2, 0x8

    if-lez v1, :cond_0

    if-lez p3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 5
    iget v4, p0, Lnts/ፍ;->ᰛ:I

    int-to-byte v5, v4

    aput-byte v5, p1, p2

    shr-int/lit8 p2, v4, 0x8

    .line 6
    iput p2, p0, Lnts/ፍ;->ᰛ:I

    add-int/lit8 v1, v1, -0x8

    .line 7
    iput v1, p0, Lnts/ፍ;->Ͼ:I

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return v0

    .line 15
    :cond_1
    iget v1, p0, Lnts/ፍ;->ᇭ:I

    iget v3, p0, Lnts/ፍ;->ᾨ:I

    sub-int/2addr v1, v3

    if-le p3, v1, :cond_2

    move p3, v1

    .line 17
    :cond_2
    iget-object v1, p0, Lnts/ፍ;->ㆃ:[B

    invoke-static {v1, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget p1, p0, Lnts/ፍ;->ᾨ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ፍ;->ᾨ:I

    .line 19
    iget p2, p0, Lnts/ፍ;->ᇭ:I

    sub-int p2, p1, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Lnts/ፍ;->ㆃ:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lnts/ፍ;->ᾨ:I

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnts/ፍ;->ᰛ:I

    .line 21
    iput v2, p0, Lnts/ፍ;->Ͼ:I

    :cond_3
    add-int/2addr v0, p3

    return v0
.end method

.method public ㆃ(I)V
    .locals 1

    .line 1
    iget v0, p0, Lnts/ፍ;->ᰛ:I

    shr-int/2addr v0, p1

    iput v0, p0, Lnts/ፍ;->ᰛ:I

    .line 2
    iget v0, p0, Lnts/ፍ;->Ͼ:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnts/ፍ;->Ͼ:I

    return-void
.end method

.method public ㆃ()Z
    .locals 2

    .line 3
    iget v0, p0, Lnts/ፍ;->ᾨ:I

    iget v1, p0, Lnts/ፍ;->ᇭ:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
