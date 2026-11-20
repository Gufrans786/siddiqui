.class public abstract Lnts/ḗ;
.super Lnts/ⵄ;
.source "SourceFile"


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lnts/ⵄ;-><init>([BIIIII)V

    return-void
.end method


# virtual methods
.method public Ͼ([BII[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lez p3, :cond_1

    move v0, v3

    .line 4
    :goto_1
    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v2, v1, v0

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 10
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {v0, v3, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    add-int/2addr p5, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object p2, p0, Lnts/ⵄ;->Ͼ:[B

    iget p3, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ౠ([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_3

    .line 1
    iget v0, p0, Lnts/ⵄ;->ᡲ:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v2, p0, Lnts/ⵄ;->ᰛ:[B

    iget v3, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 6
    :cond_0
    iget v0, p0, Lnts/ⵄ;->ᡲ:I

    .line 7
    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    sub-int/2addr v2, v0

    if-le v2, p3, :cond_1

    add-int v1, v0, p3

    .line 10
    iput v1, p0, Lnts/ⵄ;->ᡲ:I

    move v2, p3

    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, p0, Lnts/ⵄ;->Ͼ:[B

    invoke-virtual {p0, v3}, Lnts/ⵄ;->ᾨ([B)V

    .line 13
    iput v1, p0, Lnts/ⵄ;->ᡲ:I

    :goto_1
    add-int v1, v0, v2

    :goto_2
    if-ge v0, v1, :cond_2

    add-int/lit8 v3, p5, 0x1

    .line 18
    iget-object v4, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v4, v4, v0

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, v3

    move p2, v5

    goto :goto_2

    :cond_2
    sub-int/2addr p3, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract ᇭ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public ᇭ([BII[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    new-array v0, v0, [B

    :goto_0
    if-lez p3, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 8
    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v2, v1, v3

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    .line 9
    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    aput-byte p2, v1, v2

    add-int/lit8 v6, p5, 0x1

    .line 10
    aput-byte p2, p4, p5

    add-int/lit8 p3, p3, -0x1

    .line 13
    invoke-static {v0, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v4

    move p5, v6

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object p2, p0, Lnts/ⵄ;->Ͼ:[B

    iget p3, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ዲ([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-lez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 6
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v4, v2, v1

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v4

    int-to-byte p2, p2

    .line 9
    aput-byte p2, v2, v1

    add-int/lit8 v2, p5, 0x1

    .line 10
    aput-byte p2, p4, p5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, -0x1

    move p5, v2

    move p2, v5

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object p2, p0, Lnts/ⵄ;->Ͼ:[B

    iget p3, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ᎊ([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-lez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 6
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, p5, 0x1

    .line 8
    iget-object v4, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v4, v4, v1

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, -0x1

    move p5, v2

    move p2, v5

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object p2, p0, Lnts/ⵄ;->Ͼ:[B

    iget p3, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ᡲ([BII[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p3, :cond_1

    .line 2
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    .line 4
    :cond_1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 6
    iget-object p1, p0, Lnts/ⵄ;->ᰛ:[B

    invoke-static {p1, v1, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ᰛ([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    new-array v0, v0, [B

    :goto_0
    if-lez p3, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    add-int/lit8 v1, p5, 0x1

    .line 7
    iget-object v2, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v4, v2, v3

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 p3, p3, -0x1

    .line 11
    iget p2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 p5, 0x1

    sub-int/2addr p2, p5

    aget-byte v4, v2, v3

    aput-byte v4, v2, p2

    .line 12
    invoke-static {v0, p5, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p5, v1

    move p2, v5

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object p2, p0, Lnts/ⵄ;->Ͼ:[B

    iget p3, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public て([BII[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    add-int/2addr p2, v0

    .line 4
    invoke-virtual {p0}, Lnts/ḗ;->ᇭ()V

    .line 6
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {v0, v2, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    add-int/2addr p5, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ㆃ([B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    return-void
.end method

.method public ㆃ([BII)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move/from16 v3, p3

    add-int v0, p2, v3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_f

    .line 5
    iget-boolean v0, p0, Lnts/ⵄ;->て:Z

    if-eqz v0, :cond_0

    .line 6
    new-array v4, v3, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 7
    invoke-virtual/range {v0 .. v5}, Lnts/ḗ;->ᡲ([BII[BI)V

    return-object v4

    .line 11
    :cond_0
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/16 v7, 0x5e

    const/4 v1, 0x5

    const/4 v12, 0x0

    if-ne v0, v1, :cond_3

    .line 12
    iget v0, p0, Lnts/ⵄ;->ᎊ:I

    add-int v0, p3, v0

    new-array v4, v0, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Lnts/ⵄ;->ᙕ([BII[BI)I

    move-result p1

    .line 14
    iget p2, p0, Lnts/ⵄ;->ᎊ:I

    iget v9, p0, Lnts/ⵄ;->ᾨ:I

    if-le p2, v9, :cond_2

    .line 21
    new-array v10, v9, [B

    .line 22
    iget-object v7, p0, Lnts/ⵄ;->ዲ:[B

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lnts/ḗ;->Ͼ([BII[BI)V

    move-object p2, v10

    .line 24
    iget v0, p0, Lnts/ⵄ;->ᎊ:I

    :goto_0
    iget-object v7, p0, Lnts/ⵄ;->ዲ:[B

    array-length v1, v7

    if-ge v0, v1, :cond_1

    aput-byte v12, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iget v8, p0, Lnts/ⵄ;->ᾨ:I

    new-array v10, v8, [B

    const/4 v11, 0x0

    move v9, v8

    move-object v6, p0

    .line 28
    invoke-virtual/range {v6 .. v11}, Lnts/ḗ;->Ͼ([BII[BI)V

    .line 31
    iget v0, p0, Lnts/ⵄ;->ᎊ:I

    add-int/2addr v0, p1

    new-array v0, v0, [B

    .line 32
    invoke-static {v4, v12, v0, v12, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    invoke-static {v10, v12, v0, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v8

    .line 34
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    sub-int/2addr v1, v2

    invoke-static {p2, v12, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x81

    const/16 v0, 0x36

    invoke-static {p2, v0, v7}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move/from16 v4, p3

    .line 36
    iget v5, p0, Lnts/ⵄ;->ᾨ:I

    rem-int v5, v4, v5

    const/4 v8, 0x3

    if-eq v0, v8, :cond_e

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-lez v5, :cond_5

    .line 39
    iget v11, p0, Lnts/ⵄ;->ᙕ:I

    if-ne v11, v10, :cond_5

    if-eq v0, v9, :cond_5

    const/4 v11, 0x6

    if-ne v0, v11, :cond_4

    goto :goto_1

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x46

    const/16 v0, 0x4b

    const/16 v1, 0xf1

    invoke-static {v1, p2, v0}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_5
    :goto_1
    iget v0, p0, Lnts/ⵄ;->ᙕ:I

    if-eq v0, v10, :cond_e

    .line 44
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    sub-int/2addr v0, v5

    if-lez v0, :cond_e

    add-int v5, v4, v0

    .line 47
    new-array v10, v5, [B

    .line 48
    invoke-static {p1, p2, v10, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget p1, p0, Lnts/ⵄ;->ᙕ:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    if-eq p1, v8, :cond_6

    if-eq p1, v9, :cond_7

    if-eq p1, v1, :cond_7

    :cond_6
    move p1, v12

    goto :goto_2

    :cond_7
    int-to-byte p1, v0

    .line 64
    :goto_2
    iget p2, p0, Lnts/ⵄ;->ᙕ:I

    if-ne p2, v1, :cond_9

    .line 65
    sget-boolean p2, Lnts/ዧ;->ⱪ:Z

    if-eqz p2, :cond_8

    .line 68
    iget p2, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {p2}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object p2

    goto :goto_3

    .line 69
    :cond_8
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x137

    const/16 v0, 0x17

    invoke-static {p2, v0, v7}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2be

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_9
    const/4 p2, 0x0

    :goto_3
    if-ge v4, v5, :cond_d

    add-int/lit8 v0, v5, -0x1

    if-ge v4, v0, :cond_b

    .line 76
    iget v0, p0, Lnts/ⵄ;->ᙕ:I

    if-ne v0, v9, :cond_a

    move v0, v12

    goto :goto_4

    :cond_a
    move v0, p1

    .line 77
    :goto_4
    iget v2, p0, Lnts/ⵄ;->ᙕ:I

    if-ne v2, v1, :cond_c

    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    rem-int v0, v4, v0

    aget-byte v0, p2, v0

    goto :goto_5

    :cond_b
    move v0, p1

    .line 79
    :cond_c
    :goto_5
    aput-byte v0, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    move v9, v5

    move-object v7, v10

    move v8, v12

    goto :goto_6

    :cond_e
    move-object v7, p1

    move v8, p2

    move v9, v4

    .line 89
    :goto_6
    new-array v10, v9, [B

    const/4 v11, 0x0

    move-object v6, p0

    .line 91
    invoke-virtual/range {v6 .. v11}, Lnts/ⵄ;->ᾨ([BII[BI)I

    return-object v10

    .line 92
    :cond_f
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x3a

    const/16 v0, 0x4d

    const/16 v1, 0xb7

    invoke-static {v1, p2, v0}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
