.class public abstract Lnts/ⴉ;
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

    move v0, v2

    .line 5
    :goto_1
    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v3, v1, v0

    iget-object v4, p0, Lnts/ⵄ;->Ͼ:[B

    aget-byte v5, v4, v0

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v1, p2, 0x1

    .line 7
    aget-byte p2, p1, p2

    aput-byte p2, v4, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    invoke-static {v0, v2, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    add-int/2addr p5, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ౠ([BII[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_2

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

    .line 3
    iget v0, p0, Lnts/ⵄ;->ᾨ:I

    if-ge p3, v0, :cond_0

    move v0, p3

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v1, p5, 0x1

    .line 7
    iget-object v2, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v2, v2, v3

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v3, v3, 0x1

    move p5, v1

    move p2, v4

    goto :goto_1

    :cond_1
    sub-int/2addr p3, v0

    .line 10
    iget-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    invoke-virtual {p0, v0}, Lnts/ⵄ;->ᾨ([B)V

    goto :goto_0

    :cond_2
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
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

    .line 8
    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    aget-byte v2, v1, v3

    aget-byte v4, p1, p2

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    .line 9
    iget v4, p0, Lnts/ⵄ;->ᾨ:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v1, v4

    add-int/lit8 p2, p5, 0x1

    .line 10
    aput-byte v2, p4, p5

    add-int/lit8 p3, p3, -0x1

    .line 13
    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p5, p2

    move p2, v6

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
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

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

    aget-byte v5, p1, p2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 p2, p2, 0x1

    .line 9
    aput-byte v5, v2, v1

    add-int/lit8 v2, p5, 0x1

    .line 10
    aput-byte v4, p4, p5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, -0x1

    move p5, v2

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
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

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
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

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

    .line 7
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

    add-int/lit8 v1, p5, 0x1

    .line 8
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
    invoke-virtual {p0}, Lnts/ⴉ;->ᇭ()V

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

.method public ㆃ([B[B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    return-void
.end method

.method public ㆃ([BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int v1, p2, p3

    .line 1
    array-length v4, p1

    if-gt v1, v4, :cond_c

    .line 5
    iget-boolean v1, p0, Lnts/ⵄ;->て:Z

    if-eqz v1, :cond_0

    .line 6
    new-array v4, p3, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lnts/ⴉ;->ᡲ([BII[BI)V

    return-object v4

    .line 11
    :cond_0
    iget v1, p0, Lnts/ⵄ;->ౠ:I

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-ne v1, v7, :cond_3

    .line 12
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    add-int/2addr v1, p3

    new-array v4, v1, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Lnts/ⵄ;->ᙕ([BII[BI)I

    move-result v9

    move-object v10, v4

    .line 14
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    if-le v1, v2, :cond_2

    .line 22
    new-array v7, v2, [B

    .line 23
    iget-object v1, p0, Lnts/ⵄ;->Ͼ:[B

    invoke-static {v1, v8, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object v1, p0, Lnts/ⵄ;->ዲ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    iget-object v3, p0, Lnts/ⵄ;->Ͼ:[B

    iget v4, p0, Lnts/ⵄ;->ᎊ:I

    sub-int/2addr v4, v2

    invoke-static {v1, v2, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    sub-int/2addr v1, v2

    :goto_0
    iget v3, p0, Lnts/ⵄ;->ᾨ:I

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lnts/ⵄ;->Ͼ:[B

    aput-byte v8, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    new-array v4, v3, [B

    .line 27
    iget-object v1, p0, Lnts/ⵄ;->ዲ:[B

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnts/ⴉ;->Ͼ([BII[BI)V

    move-object v11, v4

    .line 31
    iget-object v1, p0, Lnts/ⵄ;->Ͼ:[B

    iget v2, p0, Lnts/ⵄ;->ᾨ:I

    invoke-static {v7, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    new-array v2, v1, [B

    .line 33
    iget-object v3, p0, Lnts/ⵄ;->ዲ:[B

    iget v4, p0, Lnts/ⵄ;->ᎊ:I

    sub-int/2addr v4, v1

    invoke-static {v3, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    iget v3, p0, Lnts/ⵄ;->ᾨ:I

    sub-int v4, v1, v3

    mul-int/2addr v3, v6

    sub-int/2addr v3, v1

    invoke-static {v11, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget v3, p0, Lnts/ⵄ;->ᾨ:I

    new-array v4, v3, [B

    move-object v1, v2

    const/4 v2, 0x0

    .line 36
    invoke-virtual/range {v0 .. v5}, Lnts/ⴉ;->Ͼ([BII[BI)V

    .line 39
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    add-int/2addr v1, v9

    new-array v1, v1, [B

    .line 40
    invoke-static {v10, v8, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-static {v4, v8, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v3

    .line 42
    iget v2, p0, Lnts/ⵄ;->ᎊ:I

    iget v3, p0, Lnts/ⵄ;->ᾨ:I

    sub-int/2addr v2, v3

    invoke-static {v11, v8, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 43
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const/16 v2, 0x14e

    const/16 v3, 0x38

    invoke-static {v2, v3, v7}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v1, v10, :cond_6

    if-ne v1, v9, :cond_4

    .line 44
    iget v1, p0, Lnts/ⵄ;->ᙕ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 45
    :cond_4
    iget v1, p0, Lnts/ⵄ;->ᾨ:I

    rem-int v1, p3, v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 46
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    const/16 v2, 0x2c

    const/16 v3, 0x26

    const/16 v4, 0x1c0

    invoke-static {v4, v2, v3}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_6
    :goto_1
    new-array v4, p3, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 51
    invoke-virtual/range {v0 .. v5}, Lnts/ⵄ;->ᾨ([BII[BI)I

    .line 53
    iget v1, p0, Lnts/ⵄ;->ౠ:I

    if-eq v1, v10, :cond_b

    .line 55
    iget v1, p0, Lnts/ⵄ;->ᙕ:I

    if-eq v1, v6, :cond_8

    if-eq v1, v10, :cond_7

    if-eq v1, v9, :cond_8

    if-eq v1, v7, :cond_8

    move v1, v8

    goto :goto_3

    :cond_7
    move v1, v8

    :goto_2
    if-le p3, v1, :cond_9

    add-int/lit8 v2, v1, 0x1

    sub-int v5, p3, v2

    .line 63
    aget-byte v5, v4, v5

    if-nez v5, :cond_9

    move v1, v2

    goto :goto_2

    :cond_8
    add-int/lit8 v1, p3, -0x1

    .line 64
    aget-byte v1, v4, v1

    :cond_9
    :goto_3
    if-ltz v1, :cond_a

    if-gt v1, p3, :cond_a

    if-lez v1, :cond_b

    sub-int v1, p3, v1

    .line 79
    new-array v2, v1, [B

    .line 80
    invoke-static {v4, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 81
    :cond_a
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x45

    const/16 v3, 0x5d

    const/16 v4, 0x1ec

    invoke-static {v4, v2, v3}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    return-object v4

    .line 82
    :cond_c
    new-instance v1, Ljava/lang/Exception;

    const/16 v2, 0x3a

    const/16 v3, 0x66

    const/16 v4, 0x186

    invoke-static {v4, v2, v3}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
