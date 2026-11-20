.class public Lnts/ㆁ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᰛ:Z

.field public ᾨ:[B

.field public ㆃ:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x3e8

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ㆁ;->ᾨ:[B

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lnts/ㆁ;->ᇭ:I

    .line 12
    iput-boolean v0, p0, Lnts/ㆁ;->ᰛ:Z

    .line 20
    iput-object p1, p0, Lnts/ㆁ;->ㆃ:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public ㆃ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1, v1}, Lnts/ㆁ;->ㆃ([BII)V

    .line 20
    iget-object v0, p0, Lnts/ㆁ;->ㆃ:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public ㆃ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget v0, p0, Lnts/ㆁ;->ᇭ:I

    iget-object v1, p0, Lnts/ㆁ;->ᾨ:[B

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lnts/ㆁ;->ㆃ:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 13
    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 16
    :cond_0
    iput v2, p0, Lnts/ㆁ;->ᇭ:I

    .line 18
    :cond_1
    iget-object v0, p0, Lnts/ㆁ;->ᾨ:[B

    iget v1, p0, Lnts/ㆁ;->ᇭ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/ㆁ;->ᇭ:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public ㆃ([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ㆁ;->ᇭ:I

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lnts/ㆁ;->ㆃ:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, p0, Lnts/ㆁ;->ᾨ:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    :cond_0
    iput v2, p0, Lnts/ㆁ;->ᇭ:I

    :cond_1
    if-eqz p3, :cond_2

    .line 9
    iget-object v0, p0, Lnts/ㆁ;->ㆃ:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_2
    return-void
.end method
