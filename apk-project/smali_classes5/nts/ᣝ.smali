.class public Lnts/ᣝ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:[B

.field public ౠ:[S

.field public ᇭ:Lnts/ᗓ;

.field public ᙕ:I

.field public ᰛ:Lnts/ᕐ;

.field public ᾨ:Lnts/ᗓ;

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    .line 2
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ᣝ;->ㆃ:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 14
    aput-byte v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x11

    .line 15
    aput-byte v5, v1, v4

    const/4 v6, 0x2

    const/16 v7, 0x12

    .line 16
    aput-byte v7, v1, v6

    const/4 v8, 0x3

    .line 17
    aput-byte v2, v1, v8

    const/4 v9, 0x4

    const/16 v10, 0x8

    .line 18
    aput-byte v10, v1, v9

    const/4 v11, 0x5

    const/4 v12, 0x7

    .line 19
    aput-byte v12, v1, v11

    const/4 v13, 0x6

    const/16 v14, 0x9

    .line 20
    aput-byte v14, v1, v13

    .line 21
    aput-byte v13, v1, v12

    const/16 v13, 0xa

    .line 22
    aput-byte v13, v1, v10

    .line 23
    aput-byte v11, v1, v14

    const/16 v10, 0xb

    .line 24
    aput-byte v10, v1, v13

    .line 25
    aput-byte v9, v1, v10

    const/16 v9, 0xc

    .line 26
    aput-byte v9, v1, v9

    const/16 v9, 0xd

    .line 27
    aput-byte v8, v1, v9

    const/16 v8, 0xe

    .line 28
    aput-byte v9, v1, v8

    const/16 v9, 0xf

    .line 29
    aput-byte v6, v1, v9

    .line 30
    aput-byte v8, v1, v3

    .line 31
    aput-byte v4, v1, v5

    .line 32
    aput-byte v9, v1, v7

    .line 34
    new-instance v1, Lnts/ᗓ;

    const/16 v3, 0x11e

    invoke-direct {v1, v3, v9}, Lnts/ᗓ;-><init>(II)V

    iput-object v1, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    .line 35
    new-instance v1, Lnts/ᗓ;

    const/16 v3, 0x1e

    invoke-direct {v1, v3, v9}, Lnts/ᗓ;-><init>(II)V

    iput-object v1, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    .line 36
    new-instance v1, Lnts/ᕐ;

    invoke-direct {v1, v0, v12}, Lnts/ᕐ;-><init>(II)V

    iput-object v1, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    const/16 v0, 0x4000

    .line 37
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ᣝ;->Ͼ:[B

    .line 38
    new-array v0, v0, [S

    iput-object v0, p0, Lnts/ᣝ;->ౠ:[S

    .line 39
    iput v2, p0, Lnts/ᣝ;->ᙕ:I

    return-void
.end method


# virtual methods
.method public ᇭ(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ᣝ;->Ͼ:[B

    iget v1, p0, Lnts/ᣝ;->ᙕ:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2
    iget-object v0, p0, Lnts/ᣝ;->ౠ:[S

    const/4 v2, 0x0

    aput-short v2, v0, v1

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 3
    iput v1, p0, Lnts/ᣝ;->ᙕ:I

    .line 4
    iget-object v1, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    iget-object v1, v1, Lnts/ᕐ;->ᾨ:[S

    aget-short v3, v1, p1

    add-int/2addr v3, v0

    int-to-short v3, v3

    aput-short v3, v1, p1

    .line 5
    iget p1, p0, Lnts/ᣝ;->ᙕ:I

    const/16 v1, 0x4000

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public final ᾨ(I)I
    .locals 2

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/16 p1, 0x11d

    return p1

    :cond_0
    const/16 v0, 0x101

    :goto_0
    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    return v0
.end method

.method public final ㆃ(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/16 v0, 0x1ff

    if-le p1, v0, :cond_0

    shr-int/lit8 p1, p1, 0x8

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-le p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x8

    shr-int/lit8 p1, p1, 0x4

    :cond_1
    const/4 v1, 0x7

    if-le p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    shr-int/lit8 p1, p1, 0x2

    :cond_2
    const/4 v1, 0x3

    if-le p1, v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    shr-int/lit8 p1, p1, 0x1

    :cond_3
    add-int/2addr v0, p1

    return v0
.end method

.method public ㆃ()V
    .locals 3

    .line 1
    new-instance v0, Lnts/ᗓ;

    const/16 v1, 0x11e

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lnts/ᗓ;-><init>(II)V

    iput-object v0, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    .line 2
    new-instance v0, Lnts/ᗓ;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v2}, Lnts/ᗓ;-><init>(II)V

    iput-object v0, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    .line 3
    new-instance v0, Lnts/ᕐ;

    const/16 v1, 0x13

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnts/ᕐ;-><init>(II)V

    iput-object v0, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x4000

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lnts/ᣝ;->Ͼ:[B

    aput-byte v0, v2, v1

    .line 6
    iget-object v2, p0, Lnts/ᣝ;->ౠ:[S

    aput-short v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, Lnts/ᣝ;->ᙕ:I

    return-void
.end method

.method public ㆃ(Lnts/ሐ;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    iget-object v1, v0, Lnts/ᕐ;->ᾨ:[S

    const/16 v2, 0x100

    aget-short v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 16
    invoke-virtual {v0}, Lnts/ᕐ;->ㆃ()V

    .line 17
    iget-object v0, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    invoke-virtual {v0}, Lnts/ᕐ;->ㆃ()V

    .line 18
    iget-object v0, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    invoke-virtual {v0}, Lnts/ᗓ;->ᇭ()V

    .line 19
    iget-object v0, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    invoke-virtual {v0}, Lnts/ᗓ;->ᇭ()V

    .line 20
    iget-object v0, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    iget-object v1, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    invoke-virtual {v0, v1}, Lnts/ᗓ;->ㆃ(Lnts/ᕐ;)V

    .line 21
    iget-object v0, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    iget-object v1, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    invoke-virtual {v0, v1}, Lnts/ᗓ;->ㆃ(Lnts/ᕐ;)V

    .line 22
    iget-object v0, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    invoke-virtual {v0}, Lnts/ᕐ;->ㆃ()V

    const/4 v0, 0x4

    const/16 v1, 0x12

    move v3, v0

    :goto_0
    if-le v1, v3, :cond_1

    .line 25
    iget-object v5, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    iget-object v5, v5, Lnts/ᕐ;->ᰛ:[B

    iget-object v6, p0, Lnts/ᣝ;->ㆃ:[B

    aget-byte v6, v6, v1

    aget-byte v5, v5, v6

    if-eqz v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1, p2, v4}, Lnts/ሐ;->ㆃ(II)V

    const/4 p2, 0x2

    .line 29
    invoke-virtual {p1, p2, p2}, Lnts/ሐ;->ㆃ(II)V

    .line 30
    iget-object v1, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    invoke-virtual {v1}, Lnts/ᕐ;->ᾨ()I

    move-result v1

    add-int/lit16 v1, v1, -0x101

    const/4 v5, 0x5

    invoke-virtual {p1, v1, v5}, Lnts/ሐ;->ㆃ(II)V

    .line 31
    iget-object v1, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    invoke-virtual {v1}, Lnts/ᕐ;->ᾨ()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1, v5}, Lnts/ሐ;->ㆃ(II)V

    add-int/lit8 v1, v3, -0x4

    .line 32
    invoke-virtual {p1, v1, v0}, Lnts/ሐ;->ㆃ(II)V

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_2

    .line 35
    iget-object v6, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    iget-object v6, v6, Lnts/ᕐ;->ᰛ:[B

    iget-object v7, p0, Lnts/ᣝ;->ㆃ:[B

    aget-byte v7, v7, v5

    aget-byte v6, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7}, Lnts/ሐ;->ㆃ(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    :cond_2
    iget-object v3, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    iget-object v5, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    invoke-virtual {v3, p1, v5}, Lnts/ᗓ;->ㆃ(Lnts/ሐ;Lnts/ᕐ;)V

    .line 37
    iget-object v3, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    iget-object v5, p0, Lnts/ᣝ;->ᰛ:Lnts/ᕐ;

    invoke-virtual {v3, p1, v5}, Lnts/ᗓ;->ㆃ(Lnts/ሐ;Lnts/ᕐ;)V

    .line 38
    iget-object v3, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    .line 39
    iput-object p1, v3, Lnts/ᕐ;->Ͼ:Lnts/ሐ;

    .line 40
    iget-object v3, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    .line 41
    iput-object p1, v3, Lnts/ᕐ;->Ͼ:Lnts/ሐ;

    .line 42
    :goto_2
    iget v3, p0, Lnts/ᣝ;->ᙕ:I

    if-ge v1, v3, :cond_6

    .line 43
    iget-object v3, p0, Lnts/ᣝ;->ౠ:[S

    aget-short v3, v3, v1

    if-nez v3, :cond_3

    .line 44
    iget-object v3, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    iget-object v5, p0, Lnts/ᣝ;->Ͼ:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Lnts/ᕐ;->ㆃ(I)V

    goto :goto_3

    .line 46
    :cond_3
    iget-object v5, p0, Lnts/ᣝ;->Ͼ:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    const v6, 0xffff

    and-int/2addr v3, v6

    .line 48
    invoke-virtual {p0, v5}, Lnts/ᣝ;->ᾨ(I)I

    move-result v6

    .line 49
    invoke-virtual {p0, v3}, Lnts/ᣝ;->ㆃ(I)I

    move-result v7

    .line 50
    iget-object v8, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    invoke-virtual {v8, v6}, Lnts/ᕐ;->ㆃ(I)V

    const/16 v8, 0x105

    if-lt v6, v8, :cond_4

    const/16 v8, 0x11c

    if-gt v6, v8, :cond_4

    add-int/lit16 v6, v6, -0x105

    .line 52
    div-int/2addr v6, v0

    shl-int v8, v4, v6

    sub-int/2addr v8, v4

    and-int/2addr v5, v8

    .line 53
    invoke-virtual {p1, v5, v6}, Lnts/ሐ;->ㆃ(II)V

    .line 55
    :cond_4
    iget-object v5, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    invoke-virtual {v5, v7}, Lnts/ᕐ;->ㆃ(I)V

    if-lt v7, v0, :cond_5

    add-int/lit8 v7, v7, -0x2

    .line 57
    div-int/2addr v7, p2

    add-int/lit8 v3, v3, -0x1

    shl-int v5, v4, v7

    sub-int/2addr v5, v4

    and-int/2addr v3, v5

    .line 58
    invoke-virtual {p1, v3, v7}, Lnts/ሐ;->ㆃ(II)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    :cond_6
    iget-object p1, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    invoke-virtual {p1, v2}, Lnts/ᕐ;->ㆃ(I)V

    return-void
.end method

.method public ㆃ(II)Z
    .locals 3

    .line 9
    iget-object v0, p0, Lnts/ᣝ;->Ͼ:[B

    iget v1, p0, Lnts/ᣝ;->ᙕ:I

    add-int/lit8 p1, p1, -0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 10
    iget-object v0, p0, Lnts/ᣝ;->ౠ:[S

    int-to-short v2, p2

    aput-short v2, v0, v1

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Lnts/ᣝ;->ᙕ:I

    .line 12
    iget-object v1, p0, Lnts/ᣝ;->ᾨ:Lnts/ᗓ;

    iget-object v1, v1, Lnts/ᕐ;->ᾨ:[S

    invoke-virtual {p0, p1}, Lnts/ᣝ;->ᾨ(I)I

    move-result p1

    aget-short v2, v1, p1

    add-int/2addr v2, v0

    int-to-short v2, v2

    aput-short v2, v1, p1

    .line 13
    iget-object p1, p0, Lnts/ᣝ;->ᇭ:Lnts/ᗓ;

    iget-object p1, p1, Lnts/ᕐ;->ᾨ:[S

    invoke-virtual {p0, p2}, Lnts/ᣝ;->ㆃ(I)I

    move-result p2

    aget-short v1, p1, p2

    add-int/2addr v1, v0

    int-to-short v1, v1

    aput-short v1, p1, p2

    .line 14
    iget p1, p0, Lnts/ᣝ;->ᙕ:I

    const/16 p2, 0x4000

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
