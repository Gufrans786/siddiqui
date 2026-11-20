.class public Lnts/ኽ;
.super Lnts/ⶫ;
.source "SourceFile"


# instance fields
.field public ᛃ:Lnts/ᜂ;

.field public Ⲳ:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᝁ;

    invoke-direct {v0}, Lnts/ᝁ;-><init>()V

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v1}, Lnts/ⶫ;-><init>(Ljava/io/InputStream;Lnts/ᝁ;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lnts/ኽ;->Ⲳ:Z

    .line 13
    new-instance p1, Lnts/ᜂ;

    invoke-direct {p1}, Lnts/ᜂ;-><init>()V

    iput-object p1, p0, Lnts/ኽ;->ᛃ:Lnts/ᜂ;

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0}, Lnts/ኽ;->ᇭ()V

    :cond_0
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ኽ;->Ⲳ:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnts/ኽ;->ᇭ()V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnts/ⶫ;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 7
    iget-object v0, p0, Lnts/ኽ;->ᛃ:Lnts/ᜂ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ᜂ;->ㆃ([BII)V

    :cond_1
    return p3
.end method

.method public ᇭ()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x1b

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 3
    iget-object v3, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x1f

    if-eq v3, v2, :cond_4

    and-int/lit8 v1, v0, 0xf

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2

    and-int/lit8 v1, v3, 0x20

    const/16 v5, 0x20

    if-eq v1, v5, :cond_1

    shl-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 11
    rem-int/2addr v0, v4

    if-nez v0, :cond_0

    .line 13
    iget-wide v0, p0, Lnts/ⶫ;->Ͼ:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnts/ⶫ;->Ͼ:J

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lnts/ኽ;->Ⲳ:Z

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x1a

    const/16 v2, 0x41

    const/16 v3, 0xb5

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x96

    const/16 v2, 0x6b

    invoke-static {v1, v4, v2}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x1d

    const/16 v2, 0x12

    const/16 v3, 0x79

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x43

    const/16 v2, 0x9

    const/16 v3, 0x36

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {v1, v1, v4}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v1, v3}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ㆃ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lnts/ⶫ;->ㆃ(I)[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnts/ኽ;->ᛃ:Lnts/ᜂ;

    invoke-virtual {v1}, Lnts/ᜂ;->ᾨ()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5
    aget-byte v3, v0, v2

    aget-byte v4, v1, v2

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x23

    const/16 v2, 0x1f

    const/16 v3, 0xcf

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
