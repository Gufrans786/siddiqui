.class public Lnts/વ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public ᇭ:Z

.field public ᰛ:Z

.field public ᾨ:Lnts/ㆁ;

.field public ㆃ:Lnts/ڥ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnts/વ;->ᇭ:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    .line 11
    iput-object v1, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 12
    iput-boolean v0, p0, Lnts/વ;->ᰛ:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 15
    iput-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lnts/વ;->ᇭ:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lnts/વ;->ᰛ:Z

    .line 28
    new-instance v1, Lnts/ㆁ;

    invoke-direct {v1, p1}, Lnts/ㆁ;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    .line 29
    new-instance p1, Lnts/ڥ;

    iget-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-direct {p1, v1}, Lnts/ڥ;-><init>(Lnts/ㆁ;)V

    iput-object p1, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 30
    iput-boolean v0, p0, Lnts/વ;->ᇭ:Z

    .line 31
    iput-boolean v0, p0, Lnts/વ;->ᰛ:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/વ;->ᰛ:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lnts/વ;->ᇭ:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lnts/વ;->ᾨ()V

    .line 7
    :cond_1
    iget-object v0, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 8
    iget-object v1, v0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    const/4 v2, 0x1

    .line 9
    iput v2, v1, Lnts/ၜ;->ዲ:I

    .line 10
    :goto_0
    iget-object v1, v0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    .line 11
    iget v3, v1, Lnts/ၜ;->ዲ:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v1, v1, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v1}, Lnts/ሐ;->ᇭ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v0, v0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    invoke-virtual {v0}, Lnts/ㆁ;->ㆃ()V

    .line 15
    invoke-virtual {p0}, Lnts/વ;->ㆃ()V

    .line 16
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-virtual {v0}, Lnts/ㆁ;->ㆃ()V

    .line 17
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v3}, Lnts/ㆁ;->ㆃ([BII)V

    .line 19
    iget-object v1, v0, Lnts/ㆁ;->ㆃ:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 20
    iget-boolean v0, v0, Lnts/ㆁ;->ᰛ:Z

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 22
    :cond_2
    iput-boolean v2, p0, Lnts/વ;->ᰛ:Z

    return-void

    .line 12
    :cond_3
    invoke-virtual {v0}, Lnts/ڥ;->ㆃ()I

    goto :goto_0
.end method

.method public flush()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/વ;->ᰛ:Z

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 5
    iget-object v1, v0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    const/4 v2, 0x3

    .line 6
    iput v2, v1, Lnts/ၜ;->ዲ:I

    .line 7
    :cond_0
    :goto_0
    iget-object v1, v0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    invoke-virtual {v1}, Lnts/ၜ;->ㆃ()Z

    move-result v1

    const/16 v3, 0x10

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lnts/ڥ;->ㆃ()I

    move-result v1

    if-gtz v1, :cond_0

    .line 9
    iget-object v1, v0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    invoke-virtual {v1}, Lnts/ၜ;->ㆃ()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x18

    const/16 v2, 0x1c

    invoke-static {v1, v2, v3}, Lnts/ッ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc7

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    iget-object v1, v0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    iget-object v4, v0, Lnts/ڥ;->ㆃ:[B

    array-length v5, v4

    .line 15
    iget-object v6, v1, Lnts/ၜ;->て:Lnts/ሐ;

    iget v7, v6, Lnts/ሐ;->Ͼ:I

    const/4 v8, 0x0

    if-lez v7, :cond_3

    .line 16
    invoke-virtual {v6, v8, v2}, Lnts/ሐ;->ㆃ(II)V

    .line 17
    iget-object v2, v1, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v2}, Lnts/ሐ;->ㆃ()V

    .line 18
    iget-object v2, v1, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v2, v8, v3}, Lnts/ሐ;->ㆃ(II)V

    .line 19
    iget-object v2, v1, Lnts/ၜ;->て:Lnts/ሐ;

    const v6, 0xffff

    invoke-virtual {v2, v6, v3}, Lnts/ሐ;->ㆃ(II)V

    .line 21
    :cond_3
    iget-object v1, v1, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v1, v4, v8, v5}, Lnts/ሐ;->ㆃ([BII)I

    move-result v1

    if-lez v1, :cond_4

    .line 22
    iget-object v2, v0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    iget-object v3, v0, Lnts/ڥ;->ㆃ:[B

    invoke-virtual {v2, v3, v8, v1}, Lnts/ㆁ;->ㆃ([BII)V

    .line 24
    :cond_4
    iget-object v0, v0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    invoke-virtual {v0}, Lnts/ㆁ;->ㆃ()V

    .line 25
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-virtual {v0}, Lnts/ㆁ;->ㆃ()V

    return-void

    .line 26
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x21

    const/16 v2, 0x26

    const/16 v3, 0x3b

    invoke-static {v3, v1, v2}, Lnts/ッ;->ᰛ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 3
    invoke-virtual {p0, v1, v2, v0}, Lnts/વ;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/વ;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lnts/વ;->ᰛ:Z

    const/16 v1, 0x21

    if-nez v0, :cond_2

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    .line 8
    array-length v2, p1

    if-gt v0, v2, :cond_1

    .line 11
    iget-boolean v0, p0, Lnts/વ;->ᇭ:Z

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lnts/વ;->ᾨ()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lnts/વ;->ᇭ:Z

    .line 15
    :cond_0
    iget-object v0, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ڥ;->ㆃ([BII)V

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p2, 0x1a

    const/16 p3, 0x4f

    invoke-static {v1, p2, p3}, Lnts/ッ;->ᰛ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    const/16 p3, 0x7f

    invoke-static {p2, v1, p3}, Lnts/ッ;->ᰛ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᾨ()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
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

.method public ㆃ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 2
    invoke-virtual {v0, p1}, Lnts/ڥ;->ㆃ(I)V

    shr-int/lit8 p1, p1, 0x10

    .line 3
    invoke-virtual {v0, p1}, Lnts/ڥ;->ㆃ(I)V

    return-void
.end method
