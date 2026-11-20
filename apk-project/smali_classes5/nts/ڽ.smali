.class public Lnts/ڽ;
.super Lnts/ዃ;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᣎ;

.field public ౠ:Lnts/Ҫ;

.field public ዲ:[B

.field public ᎊ:I

.field public ᙕ:[B

.field public て:[B


# direct methods
.method public constructor <init>(Lnts/ᣎ;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    .line 2
    iget v1, p1, Lnts/ኝ;->ᾨ:I

    .line 3
    div-int/lit8 v1, v1, 0x2

    .line 4
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    .line 5
    iput v1, p0, Lnts/ዃ;->ㆃ:I

    .line 6
    iput-object p1, p0, Lnts/ڽ;->Ͼ:Lnts/ᣎ;

    const/4 v1, 0x1

    .line 8
    iput v1, p1, Lnts/ኝ;->て:I

    const/4 v1, 0x3

    .line 9
    iput v1, p1, Lnts/ኝ;->ዲ:I

    .line 10
    iput-object p2, p0, Lnts/ڽ;->ᙕ:[B

    .line 11
    iput-object v0, p0, Lnts/ڽ;->て:[B

    .line 12
    iget p1, p1, Lnts/ኝ;->ᾨ:I

    .line 13
    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ڽ;->ዲ:[B

    .line 15
    invoke-virtual {p0}, Lnts/ڽ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public ᇭ([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ڽ;->ዲ:[B

    array-length v4, v0

    .line 2
    iget v1, p0, Lnts/ڽ;->ᎊ:I

    sub-int v7, v4, v1

    if-le p3, v7, :cond_1

    .line 4
    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lnts/ڽ;->ౠ:Lnts/Ҫ;

    iget-object v2, p0, Lnts/ڽ;->ዲ:[B

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v5, v2

    invoke-interface/range {v1 .. v6}, Lnts/Ҫ;->ㆃ([BII[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lnts/ڽ;->ᎊ:I

    sub-int/2addr p3, v7

    add-int/2addr p2, v7

    move v3, p2

    :goto_0
    if-le p3, v4, :cond_0

    .line 16
    :try_start_1
    iget-object v1, p0, Lnts/ڽ;->ౠ:Lnts/Ҫ;

    iget-object v5, p0, Lnts/ڽ;->ዲ:[B

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lnts/Ҫ;->ㆃ([BII[BI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr p3, v4

    add-int/2addr v3, v4

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 18
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    move p2, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 19
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_1
    move-object v2, p1

    .line 36
    iget-object p1, p0, Lnts/ڽ;->ዲ:[B

    iget v0, p0, Lnts/ڽ;->ᎊ:I

    invoke-static {v2, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget p1, p0, Lnts/ڽ;->ᎊ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ڽ;->ᎊ:I

    return-void
.end method

.method public ᇭ()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lnts/ڽ;->ౠ:Lnts/Ҫ;

    iget-object v1, p0, Lnts/ڽ;->ዲ:[B

    iget v2, p0, Lnts/ڽ;->ᎊ:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lnts/Ҫ;->ㆃ([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget v1, p0, Lnts/ڽ;->ᎊ:I

    iget-object v2, p0, Lnts/ڽ;->Ͼ:Lnts/ᣎ;

    .line 43
    iget v2, v2, Lnts/ኝ;->ᾨ:I

    .line 44
    div-int/lit8 v2, v2, 0x8

    if-ne v1, v2, :cond_0

    .line 46
    new-array v1, v2, [B

    .line 47
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lnts/ڽ;->ᰛ()V

    return-object v0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ᰛ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ڽ;->ᎊ:I

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lnts/ڽ;->ዲ:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lnts/ڽ;->ౠ:Lnts/Ҫ;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnts/Ҫ;->ᾨ()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lnts/ڽ;->Ͼ:Lnts/ᣎ;

    iget-object v1, p0, Lnts/ڽ;->ᙕ:[B

    iget-object v2, p0, Lnts/ڽ;->て:[B

    invoke-virtual {v0, v1, v2}, Lnts/ኝ;->ᾨ([B[B)Lnts/Ҫ;

    move-result-object v0

    iput-object v0, p0, Lnts/ڽ;->ౠ:Lnts/Ҫ;

    return-void
.end method

.method public ㆃ(B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ڽ;->ᎊ:I

    iget-object v2, p0, Lnts/ڽ;->ዲ:[B

    array-length v1, v2

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnts/ڽ;->ౠ:Lnts/Ҫ;

    array-length v4, v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    invoke-interface/range {v1 .. v6}, Lnts/Ҫ;->ㆃ([BII[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnts/ڽ;->ᎊ:I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 8
    new-instance v0, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lnts/ڽ;->ዲ:[B

    iget v1, p0, Lnts/ڽ;->ᎊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/ڽ;->ᎊ:I

    aput-byte p1, v0, v1

    return-void
.end method
