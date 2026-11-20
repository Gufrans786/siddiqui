.class public Lnts/ᴭ;
.super Lnts/વ;
.source "SourceFile"


# static fields
.field public static ᡲ:[B


# instance fields
.field public Ͼ:J

.field public ౠ:J

.field public ዲ:Ljava/lang/String;

.field public ᎊ:Lnts/ᘀ;

.field public ᙕ:Ljava/lang/String;

.field public て:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ᴭ;->ᡲ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        -0x75t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lnts/વ;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnts/ᴭ;->ౠ:J

    .line 10
    const-string v2, ""

    iput-object v2, p0, Lnts/ᴭ;->ᙕ:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lnts/ᴭ;->て:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lnts/ᴭ;->ዲ:Ljava/lang/String;

    .line 19
    new-instance v3, Lnts/ᘀ;

    invoke-direct {v3}, Lnts/ᘀ;-><init>()V

    iput-object v3, p0, Lnts/ᴭ;->ᎊ:Lnts/ᘀ;

    .line 23
    new-instance v3, Lnts/ㆁ;

    invoke-direct {v3, p1}, Lnts/ㆁ;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    .line 24
    new-instance p1, Lnts/ڥ;

    iget-object v3, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-direct {p1, v3}, Lnts/ڥ;-><init>(Lnts/ㆁ;)V

    iput-object p1, p0, Lnts/વ;->ㆃ:Lnts/ڥ;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lnts/વ;->ᇭ:Z

    .line 27
    iput-wide v0, p0, Lnts/ᴭ;->Ͼ:J

    .line 29
    iput-object v2, p0, Lnts/ᴭ;->ዲ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lnts/વ;->write([BII)V

    .line 2
    iget-object v0, p0, Lnts/ᴭ;->ᎊ:Lnts/ᘀ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ᘀ;->ㆃ([BII)V

    .line 3
    iget-wide p1, p0, Lnts/ᴭ;->Ͼ:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnts/ᴭ;->Ͼ:J

    return-void
.end method

.method public ᾨ()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    sget-object v1, Lnts/ᴭ;->ᡲ:[B

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnts/ㆁ;->ㆃ([BII)V

    .line 2
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnts/ㆁ;->ㆃ(I)V

    .line 4
    iget-object v0, p0, Lnts/ᴭ;->ᙕ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    move v0, v3

    .line 7
    :goto_0
    iget-object v1, p0, Lnts/ᴭ;->て:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    .line 10
    :cond_1
    iget-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-virtual {v1, v0}, Lnts/ㆁ;->ㆃ(I)V

    .line 12
    iget-wide v0, p0, Lnts/ᴭ;->ౠ:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    .line 15
    div-long/2addr v0, v4

    iput-wide v0, p0, Lnts/ᴭ;->ౠ:J

    .line 16
    :cond_2
    iget-wide v0, p0, Lnts/ᴭ;->ౠ:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lnts/વ;->ㆃ(I)V

    .line 17
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-virtual {v0, v3}, Lnts/ㆁ;->ㆃ(I)V

    .line 18
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lnts/ㆁ;->ㆃ(I)V

    .line 19
    iget-object v0, p0, Lnts/ᴭ;->て:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 20
    iget-object v0, p0, Lnts/ᴭ;->ዲ:Ljava/lang/String;

    invoke-static {v0}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnts/ᴭ;->て:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lnts/ᴭ;->て:Ljava/lang/String;

    iget-object v1, p0, Lnts/ᴭ;->ዲ:Ljava/lang/String;

    invoke-static {v0, v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    :goto_1
    iget-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lnts/ㆁ;->ㆃ([BII)V

    .line 24
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-virtual {v0, v3}, Lnts/ㆁ;->ㆃ(I)V

    .line 26
    :cond_4
    iget-object v0, p0, Lnts/ᴭ;->ᙕ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 27
    iget-object v0, p0, Lnts/ᴭ;->ዲ:Ljava/lang/String;

    invoke-static {v0}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnts/ᴭ;->ᙕ:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_5
    iget-object v0, p0, Lnts/ᴭ;->ᙕ:Ljava/lang/String;

    iget-object v1, p0, Lnts/ᴭ;->ዲ:Ljava/lang/String;

    invoke-static {v0, v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    :goto_2
    iget-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lnts/ㆁ;->ㆃ([BII)V

    .line 31
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    invoke-virtual {v0, v3}, Lnts/ㆁ;->ㆃ(I)V

    :cond_6
    return-void
.end method

.method public ㆃ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᴭ;->ᎊ:Lnts/ᘀ;

    invoke-virtual {v0}, Lnts/ᘀ;->ㆃ()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lnts/વ;->ㆃ(I)V

    .line 2
    iget-wide v0, p0, Lnts/ᴭ;->Ͼ:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lnts/વ;->ㆃ(I)V

    return-void
.end method
