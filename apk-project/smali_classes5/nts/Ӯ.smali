.class public Lnts/Ӯ;
.super Lnts/ⴳ;
.source "SourceFile"


# static fields
.field public static ᒃ:I


# instance fields
.field public ϴ:Lnts/ữ;

.field public ߛ:Z

.field public ᇌ:Lnts/ฯ;

.field public ጊ:Ljava/io/OutputStream;

.field public Ꮆ:Lnts/ሠ;

.field public ᐘ:I

.field public ᒸ:I

.field public ᛩ:[B

.field public ᬋ:Lnts/ࡊ;

.field public ₑ:Ljava/io/ByteArrayOutputStream;

.field public Ⱐ:Z

.field public パ:Lnts/ⶫ;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lnts/ⴳ;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lnts/Ӯ;->ᐘ:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/Ӯ;->ᛩ:[B

    .line 6
    iput-object v0, p0, Lnts/Ӯ;->ϴ:Lnts/ữ;

    .line 9
    iput-object v0, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    .line 10
    iput-object v0, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    .line 13
    iput-object v0, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    .line 14
    iput-object v0, p0, Lnts/Ӯ;->パ:Lnts/ⶫ;

    .line 16
    iput-boolean p2, p0, Lnts/Ӯ;->ߛ:Z

    .line 17
    new-instance v0, Lnts/ሠ;

    invoke-direct {v0}, Lnts/ሠ;-><init>()V

    iput-object v0, p0, Lnts/Ӯ;->Ꮆ:Lnts/ሠ;

    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lnts/Ӯ;->ᒸ:I

    .line 29
    iput-boolean p2, p0, Lnts/Ӯ;->Ⱐ:Z

    .line 30
    instance-of p2, p1, Lnts/ữ;

    if-eqz p2, :cond_0

    .line 31
    check-cast p1, Lnts/ữ;

    iput-object p1, p0, Lnts/Ӯ;->ϴ:Lnts/ữ;

    :cond_0
    return-void
.end method


# virtual methods
.method public Ͼ(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Lnts/Ӯ;->ㆃ(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    .line 8
    :cond_1
    iget-object v0, p0, Lnts/Ӯ;->ᛩ:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 9
    iget-object v2, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 10
    iput-object v1, p0, Lnts/Ӯ;->ᛩ:[B

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    iget-object v0, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 15
    iget-object v0, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 16
    iput-object v1, p0, Lnts/Ӯ;->ጊ:Ljava/io/OutputStream;

    .line 20
    :cond_3
    iget-object v0, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    array-length v2, v0

    if-lez v2, :cond_5

    .line 22
    iget-boolean v2, p0, Lnts/Ӯ;->ߛ:Z

    if-eqz v2, :cond_4

    .line 23
    iget-object v2, p0, Lnts/Ӯ;->Ꮆ:Lnts/ሠ;

    invoke-virtual {v2, v0}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 25
    :cond_4
    iget-object v2, p0, Lnts/Ӯ;->ϴ:Lnts/ữ;

    if-eqz v2, :cond_5

    .line 26
    invoke-interface {v2, v0}, Lnts/ữ;->ᾨ([B)V

    :cond_5
    if-eqz p1, :cond_6

    .line 27
    iput-object v1, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    return-void

    .line 29
    :cond_6
    iget-object p1, p0, Lnts/Ӯ;->ₑ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ᵑ()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnts/ࡊ;

    invoke-direct {v0}, Lnts/ࡊ;-><init>()V

    iput-object v0, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 5
    iget v0, p0, Lnts/Ӯ;->ᐘ:I

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 6
    new-instance v0, Lnts/Ẇ;

    invoke-direct {v0}, Lnts/Ẇ;-><init>()V

    iput-object v0, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    .line 9
    new-instance v0, Lnts/ⰺ;

    invoke-direct {v0}, Lnts/ⰺ;-><init>()V

    iput-object v0, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lnts/ฯ;

    invoke-direct {v0}, Lnts/ฯ;-><init>()V

    iput-object v0, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    .line 16
    iget v0, v0, Lnts/ฯ;->ᾨ:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    iget-object v4, p0, Lnts/Ӯ;->ᛩ:[B

    array-length v5, v4

    invoke-virtual {v0, v4, v3, v5}, Lnts/ฯ;->ㆃ([BII)I

    move-result v0

    .line 19
    iget-object v4, p0, Lnts/Ӯ;->ᇌ:Lnts/ฯ;

    .line 20
    iget v4, v4, Lnts/ฯ;->ᾨ:I

    if-nez v4, :cond_c

    .line 21
    iget-object v4, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    iget-object v5, p0, Lnts/Ӯ;->ᛩ:[B

    array-length v6, v5

    .line 22
    iget-object v4, v4, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    invoke-virtual {v4, v5, v0, v6}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 23
    iput-object v2, p0, Lnts/Ӯ;->ᛩ:[B

    .line 31
    :goto_1
    iget-object v0, p0, Lnts/Ӯ;->ᛩ:[B

    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    .line 32
    iget-object v4, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    .line 33
    iget-object v4, v4, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    invoke-virtual {v4, v0}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 34
    iput-object v2, p0, Lnts/Ӯ;->ᛩ:[B

    .line 37
    :cond_5
    iget-object v0, p0, Lnts/Ӯ;->パ:Lnts/ⶫ;

    if-nez v0, :cond_6

    .line 38
    iget-object v0, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    invoke-virtual {p0, v0}, Lnts/Ӯ;->ㆃ(Ljava/io/InputStream;)Lnts/ⶫ;

    move-result-object v0

    iput-object v0, p0, Lnts/Ӯ;->パ:Lnts/ⶫ;

    .line 40
    iput-boolean v1, v0, Lnts/ⶫ;->ᡲ:Z

    .line 41
    iget-object v0, p0, Lnts/Ӯ;->パ:Lnts/ⶫ;

    .line 42
    iput-boolean v1, v0, Lnts/ⶫ;->Ὺ:Z

    :cond_6
    const/high16 v0, 0x100000

    .line 43
    new-array v1, v0, [B

    .line 44
    :cond_7
    :goto_2
    iget-object v2, p0, Lnts/Ӯ;->パ:Lnts/ⶫ;

    invoke-virtual {v2}, Lnts/ⶫ;->available()I

    move-result v2

    if-lez v2, :cond_a

    .line 45
    iget-object v2, p0, Lnts/Ӯ;->パ:Lnts/ⶫ;

    invoke-virtual {v2, v1, v3, v0}, Lnts/ⶫ;->read([BII)I

    move-result v2

    if-gtz v2, :cond_8

    goto :goto_3

    :cond_8
    if-lez v2, :cond_7

    .line 47
    new-array v4, v2, [B

    .line 48
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-boolean v2, p0, Lnts/Ӯ;->ߛ:Z

    if-eqz v2, :cond_9

    .line 50
    iget-object v2, p0, Lnts/Ӯ;->Ꮆ:Lnts/ሠ;

    invoke-virtual {v2, v4}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 52
    :cond_9
    iget-object v2, p0, Lnts/Ӯ;->ϴ:Lnts/ữ;

    if-eqz v2, :cond_7

    .line 53
    invoke-interface {v2, v4}, Lnts/ữ;->ㆃ([B)V

    goto :goto_2

    .line 54
    :cond_a
    :goto_3
    iget-object v0, p0, Lnts/Ӯ;->ᬋ:Lnts/ࡊ;

    .line 55
    iget v1, v0, Lnts/ࡊ;->ᾨ:I

    if-ltz v1, :cond_b

    iget-object v2, v0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    .line 56
    iget v4, v2, Lnts/ሠ;->ᾨ:I

    if-lez v4, :cond_b

    .line 57
    invoke-virtual {v2, v3, v1}, Lnts/ሠ;->ㆃ(II)Lnts/ሠ;

    const/4 v1, -0x1

    .line 58
    iput v1, v0, Lnts/ࡊ;->ᾨ:I

    :cond_b
    return-void

    .line 26
    :cond_c
    iput-object v2, p0, Lnts/Ӯ;->ᛩ:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ㆃ(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4

    .line 13
    iget v0, p0, Lnts/Ӯ;->ᐘ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 14
    new-instance v0, Lnts/ᴭ;

    invoke-direct {v0, p1}, Lnts/ᴭ;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 16
    new-instance v0, Lnts/ਚ;

    invoke-direct {v0, p1}, Lnts/ਚ;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 17
    :cond_1
    sget v1, Lnts/Ӯ;->ᒃ:I

    if-ne v0, v1, :cond_2

    .line 18
    new-instance v0, Lnts/વ;

    invoke-direct {v0, p1}, Lnts/વ;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 20
    iget-boolean p1, p0, Lnts/Ӯ;->Ⱐ:Z

    .line 21
    iget-object v1, v0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    if-eqz v1, :cond_3

    .line 22
    iput-boolean p1, v1, Lnts/ㆁ;->ᰛ:Z

    .line 23
    :cond_3
    iget p1, p0, Lnts/Ӯ;->ᒸ:I

    .line 24
    iget-object v1, v0, Lnts/વ;->ㆃ:Lnts/ڥ;

    .line 25
    iget-object v1, v1, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    instance-of v3, v1, Lnts/ॼ;

    if-eqz v3, :cond_6

    .line 26
    check-cast v1, Lnts/ॼ;

    if-ge p1, v2, :cond_4

    move p1, v2

    :cond_4
    const/4 v3, 0x6

    if-le p1, v3, :cond_5

    move p1, v3

    .line 27
    :cond_5
    iget-object v3, v1, Lnts/ॼ;->ᎊ:[I

    sub-int/2addr p1, v2

    aget p1, v3, p1

    iput p1, v1, Lnts/ॼ;->Ὺ:I

    :cond_6
    return-object v0
.end method

.method public final ㆃ(Ljava/io/InputStream;)Lnts/ⶫ;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lnts/Ӯ;->ᐘ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lnts/ヌ;

    invoke-direct {v0, p1}, Lnts/ヌ;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lnts/ኽ;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lnts/ኽ;-><init>(Ljava/io/InputStream;Z)V

    .line 6
    iput-boolean v1, v0, Lnts/ኽ;->Ⲳ:Z

    goto :goto_0

    .line 7
    :cond_1
    sget v1, Lnts/Ӯ;->ᒃ:I

    if-ne v0, v1, :cond_2

    .line 8
    new-instance v0, Lnts/ⶫ;

    invoke-direct {v0, p1}, Lnts/ⶫ;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 10
    iget-boolean p1, p0, Lnts/Ӯ;->Ⱐ:Z

    .line 11
    iput-boolean p1, v0, Lnts/ⶫ;->ዲ:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ㆃ(ILjava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lnts/Ӯ;->ϴ:Lnts/ữ;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1, p2}, Lnts/ữ;->ㆃ(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
