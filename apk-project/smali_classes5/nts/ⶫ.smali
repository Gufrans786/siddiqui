.class public Lnts/ⶫ;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lnts/ล;


# instance fields
.field public Ͼ:J

.field public ౠ:Lnts/ᥛ;

.field public ᇭ:[B

.field public ዲ:Z

.field public ᎊ:Ljava/io/InputStream;

.field public ᙕ:I

.field public ᡲ:Z

.field public ᰛ:I

.field public ᾨ:Lnts/ᝁ;

.field public Ὺ:Z

.field public て:[B

.field public ㆃ:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnts/ⶫ;->Ͼ:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/ⶫ;->ౠ:Lnts/ᥛ;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/ⶫ;->ᙕ:I

    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ⶫ;->て:[B

    .line 10
    iput-boolean v0, p0, Lnts/ⶫ;->ዲ:Z

    .line 15
    iput-boolean v0, p0, Lnts/ⶫ;->ᡲ:Z

    .line 17
    iput-boolean v0, p0, Lnts/ⶫ;->Ὺ:Z

    .line 20
    iput-object p1, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    .line 21
    new-instance p1, Lnts/ᝁ;

    invoke-direct {p1}, Lnts/ᝁ;-><init>()V

    iput-object p1, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    .line 22
    iput v0, p0, Lnts/ⶫ;->ᰛ:I

    const/16 p1, 0x1000

    .line 23
    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ⶫ;->ᇭ:[B

    .line 24
    iput-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnts/ᝁ;I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lnts/ⶫ;->Ͼ:J

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lnts/ⶫ;->ౠ:Lnts/ᥛ;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lnts/ⶫ;->ᙕ:I

    const/4 v1, 0x1

    .line 32
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ⶫ;->て:[B

    .line 34
    iput-boolean v0, p0, Lnts/ⶫ;->ዲ:Z

    .line 39
    iput-boolean v0, p0, Lnts/ⶫ;->ᡲ:Z

    .line 41
    iput-boolean v0, p0, Lnts/ⶫ;->Ὺ:Z

    .line 52
    iput-object p1, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    .line 54
    iput v0, p0, Lnts/ⶫ;->ᰛ:I

    .line 55
    new-array p1, p3, [B

    iput-object p1, p0, Lnts/ⶫ;->ᇭ:[B

    .line 56
    iput v0, p0, Lnts/ⶫ;->ᙕ:I

    .line 57
    iput-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    invoke-virtual {v0}, Lnts/ᝁ;->ᇭ()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const/16 v3, 0x20

    invoke-static {v2, v3, v1}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lnts/ⶫ;->ᙕ:I

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lnts/ⶫ;->ౠ:Lnts/ᥛ;

    if-eqz v1, :cond_2

    int-to-long v2, v0

    .line 4
    invoke-interface {v1}, Lnts/ᥛ;->ㆃ()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x1e

    const/16 v2, 0x59

    const/16 v3, 0x20

    invoke-static {v3, v1, v2}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    invoke-virtual {v0}, Lnts/ᝁ;->ᇭ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lnts/ⶫ;->ㆃ()V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lnts/ⶫ;->ዲ:Z

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⶫ;->て:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnts/ⶫ;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ⶫ;->て:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    const/16 v1, 0xf

    if-nez v0, :cond_7

    const/16 v0, 0x78

    if-ltz p2, :cond_6

    add-int v2, p2, p3

    .line 5
    array-length v3, p1

    if-gt v2, v3, :cond_6

    .line 8
    :cond_0
    iget-object v2, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    invoke-virtual {v2, p1, p2, p3}, Lnts/ᝁ;->ㆃ([BII)I

    move-result v2

    .line 9
    iget-object v3, p0, Lnts/ⶫ;->ౠ:Lnts/ᥛ;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1, p2, v2}, Lnts/ᥛ;->ㆃ([BII)V

    :cond_1
    if-lez v2, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    invoke-virtual {v3}, Lnts/ᝁ;->ᇭ()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, -0x1

    return p1

    .line 12
    :cond_3
    iget-object v3, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    .line 13
    iget-object v3, v3, Lnts/ᝁ;->ᙕ:Lnts/ፍ;

    invoke-virtual {v3}, Lnts/ፍ;->ㆃ()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lnts/ⶫ;->ᾨ()I

    move-result v3

    if-nez v3, :cond_0

    .line 15
    iget-boolean v2, p0, Lnts/ⶫ;->ᡲ:Z
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    if-lez v2, :cond_4

    :goto_0
    return v2

    .line 22
    :cond_4
    throw p1

    .line 26
    :cond_5
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x68

    invoke-static {v0, v1, p2}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc7

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p2, 0x5e

    const/16 p3, 0x1a

    invoke-static {p2, p3, v0}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x3e

    const/16 p3, 0x20

    invoke-static {p2, p3, v1}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3e8

    .line 1
    new-array v0, v0, [B

    move-wide v1, p1

    :cond_0
    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    long-to-int v3, v3

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0, v0, v4, v3}, Lnts/ⶫ;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    return-wide p1

    :cond_2
    sub-long/2addr p1, v1

    return-wide p1
.end method

.method public ᾨ()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    iget-object v1, p0, Lnts/ⶫ;->ᇭ:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lnts/ⶫ;->ᰛ:I

    .line 2
    iget-wide v1, p0, Lnts/ⶫ;->Ͼ:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Lnts/ⶫ;->Ͼ:J

    .line 3
    iget-boolean v1, p0, Lnts/ⶫ;->Ὺ:Z

    if-eqz v1, :cond_0

    if-gtz v0, :cond_0

    return v3

    :cond_0
    if-ltz v0, :cond_2

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    iget-object v2, p0, Lnts/ⶫ;->ᇭ:[B

    invoke-virtual {v1, v2, v3, v0}, Lnts/ᝁ;->ᾨ([BII)V

    .line 12
    :cond_1
    iget v0, p0, Lnts/ⶫ;->ᰛ:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    invoke-virtual {v0}, Lnts/ᝁ;->Ͼ()V

    const/4 v0, 0x0

    throw v0
.end method

.method public ㆃ([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p3, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int v1, p2, p3

    .line 1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public ㆃ()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public ㆃ(I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 2
    new-array v0, p1, [B

    .line 3
    iget-object v1, p0, Lnts/ⶫ;->ᾨ:Lnts/ᝁ;

    .line 4
    invoke-virtual {v1}, Lnts/ᝁ;->ᰛ()I

    move-result v2

    if-le p1, v2, :cond_0

    invoke-virtual {v1}, Lnts/ᝁ;->ᰛ()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p1

    .line 5
    :goto_0
    new-array v3, v2, [B

    .line 6
    iget-object v4, v1, Lnts/ᝁ;->ᙕ:Lnts/ፍ;

    invoke-virtual {v4}, Lnts/ፍ;->ᾨ()V

    .line 7
    iget-object v1, v1, Lnts/ᝁ;->ᙕ:Lnts/ፍ;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lnts/ፍ;->ㆃ([BII)I

    .line 8
    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v2, p1, :cond_2

    :goto_1
    if-ge v2, p1, :cond_2

    const/16 v1, 0x7f

    const/16 v3, 0x22

    .line 20
    :try_start_0
    iget-object v4, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 21
    iget-wide v5, p0, Lnts/ⶫ;->Ͼ:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lnts/ⶫ;->Ͼ:J

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-byte v4, v4

    .line 23
    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0xc9

    const/16 v2, 0x77

    invoke-static {v0, v3, v2}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0xeb

    const/16 v2, 0x56

    invoke-static {v0, v3, v2}, Lnts/ࡁ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method
