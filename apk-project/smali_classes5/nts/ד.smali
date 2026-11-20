.class public Lnts/ד;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public Ͼ:J

.field public ౠ:I

.field public ᇭ:Ljava/lang/String;

.field public ᰛ:J

.field public ᾨ:Z

.field public ㆃ:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lnts/ד;->Ͼ:J

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lnts/ד;->ౠ:I

    .line 14
    iput-wide p2, p0, Lnts/ד;->ᰛ:J

    .line 15
    iput-object p1, p0, Lnts/ד;->ᇭ:Ljava/lang/String;

    .line 16
    iput-boolean p4, p0, Lnts/ד;->ᾨ:Z

    .line 17
    invoke-virtual {p0, p1}, Lnts/ד;->ㆃ(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 21
    iget-wide v0, p0, Lnts/ד;->ᰛ:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lnts/ד;->Ͼ:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 22
    iget-object v0, p0, Lnts/ד;->ᇭ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnts/ד;->ㆃ(Ljava/lang/String;)V

    .line 25
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-wide v0, p0, Lnts/ד;->Ͼ:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnts/ד;->Ͼ:J

    return-void

    .line 30
    :catch_0
    new-instance p1, Lnts/ᛎ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    const/16 v2, 0x4f

    const/16 v3, 0x594

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᯋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnts/ד;->ᇭ:Ljava/lang/String;

    const-string v2, "\"."

    invoke-static {v0, v1, v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/ד;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_3

    .line 2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 10
    iget-wide v0, p0, Lnts/ד;->ᰛ:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    int-to-long v4, p3

    .line 11
    iget-wide v6, p0, Lnts/ד;->Ͼ:J

    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_1
    move v0, p3

    .line 13
    :goto_1
    iget-object v1, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 16
    iget-wide v4, p0, Lnts/ד;->Ͼ:J

    int-to-long v0, v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lnts/ד;->Ͼ:J

    .line 17
    iget-wide v0, p0, Lnts/ד;->ᰛ:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 18
    iget-object v0, p0, Lnts/ד;->ᇭ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnts/ד;->ㆃ(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final ㆃ(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const-string v0, "\"."

    const/16 v1, 0x14

    .line 1
    :try_start_0
    iget-object v2, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lnts/ד;->Ͼ:J

    .line 10
    iget-wide v4, p0, Lnts/ד;->ᰛ:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 20
    invoke-static {v4}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lnts/ד;->ౠ:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 21
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_2

    const-string v6, "0"

    .line 22
    invoke-static {v6, v4}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 24
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget v2, p0, Lnts/ד;->ౠ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnts/ד;->ౠ:I

    .line 28
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 30
    iget-boolean v3, p0, Lnts/ד;->ᾨ:Z

    if-nez v3, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const/16 v3, 0x37

    const/16 v4, 0x553

    invoke-static {v4, v2, v3}, Lnts/ӗ;->ᯋ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x27

    const/16 v2, 0x42

    const/16 v3, 0x559

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᯋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 34
    :cond_5
    :goto_2
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lnts/ד;->ㆃ:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 36
    :catch_0
    new-instance v2, Lnts/ᛎ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x580

    const/16 v5, 0x55

    invoke-static {v4, v1, v5}, Lnts/ӗ;->ᯋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {v2, v0, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v2

    .line 37
    :catch_1
    new-instance v2, Lnts/ᛎ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x53f

    const/16 v5, 0xe

    invoke-static {v4, v1, v5}, Lnts/ӗ;->ᯋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x130

    invoke-direct {v2, v0, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v2
.end method
