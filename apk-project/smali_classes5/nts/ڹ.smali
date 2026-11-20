.class public Lnts/ڹ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Ljava/lang/String;

.field public Ὺ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/ڹ;->Ὺ:I

    const/16 v0, 0xa0

    .line 6
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᇭ([BI)I
    .locals 10

    .line 1
    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-byte v0, p1, p2

    const/16 v1, 0xf

    and-int/2addr v0, v1

    .line 3
    iput v0, p0, Lnts/ڹ;->Ὺ:I

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v5, 0x6

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 18
    :cond_1
    new-instance v5, Lnts/ⱑ;

    invoke-direct {v5}, Lnts/ⱑ;-><init>()V

    goto :goto_0

    .line 19
    :cond_2
    new-instance v5, Lnts/ゅ;

    invoke-direct {v5}, Lnts/ゅ;-><init>()V

    goto :goto_0

    .line 20
    :cond_3
    new-instance v5, Lnts/ゅ;

    invoke-direct {v5}, Lnts/ゅ;-><init>()V

    goto :goto_0

    .line 21
    :cond_4
    new-instance v5, Lnts/ゅ;

    invoke-direct {v5}, Lnts/ゅ;-><init>()V

    goto :goto_0

    .line 22
    :cond_5
    new-instance v5, Lnts/ଡ଼;

    invoke-direct {v5}, Lnts/ଡ଼;-><init>()V

    :goto_0
    or-int/lit16 v6, v0, 0x80

    .line 37
    iput v6, p0, Lnts/ᛩ;->ㆃ:I

    .line 38
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    .line 39
    iput v6, v5, Lnts/ᛩ;->ㆃ:I

    .line 40
    invoke-virtual {v5, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result v6

    .line 41
    iget-boolean v7, v5, Lnts/ᛩ;->ᎊ:Z

    if-nez v7, :cond_6

    :goto_1
    return p2

    :cond_6
    const/4 p2, 0x0

    if-nez v0, :cond_8

    .line 45
    move-object v7, v5

    check-cast v7, Lnts/ଡ଼;

    iget-object v8, v7, Lnts/ଡ଼;->ᡲ:Lnts/ᬓ;

    iget-object v8, v8, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v9, Lnts/ᦥ;->લ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 47
    iget-object v0, v7, Lnts/ଡ଼;->Ὺ:Lnts/Ⴤ;

    iget-object v0, v0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    move v1, p2

    .line 49
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_7

    aget-byte v2, v0, v1

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_7
    invoke-static {v0, p2, v1}, Lnts/ၽ;->Ͼ([BII)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    goto :goto_3

    :cond_8
    if-ne v0, v2, :cond_a

    .line 52
    iget-object v0, v5, Lnts/ᛩ;->ᾨ:[B

    array-length v0, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lnts/ᛩ;->ᾨ:[B

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v5, Lnts/ᛩ;->ᾨ:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v5, Lnts/ᛩ;->ᾨ:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v5, Lnts/ᛩ;->ᾨ:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    goto :goto_3

    .line 56
    :cond_9
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x34d

    const/16 v0, 0x42

    invoke-static {p2, v1, v0}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1be

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 63
    :cond_a
    iget-object p2, v5, Lnts/ᛩ;->ᾨ:[B

    invoke-static {p2}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    .line 66
    :goto_3
    iget p2, v5, Lnts/ᛩ;->Ͼ:I

    iput p2, p0, Lnts/ᛩ;->Ͼ:I

    .line 67
    iget p2, v5, Lnts/ᛩ;->ᙕ:I

    iput p2, p0, Lnts/ᛩ;->ᙕ:I

    .line 68
    invoke-virtual {p0, p1, v6}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 3
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    const/16 v2, 0xf

    and-int/2addr v1, v2

    .line 4
    iput v1, p0, Lnts/ڹ;->Ὺ:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x6

    if-eq v1, v5, :cond_2

    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    .line 17
    iget-object v1, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    const-string v2, "."

    invoke-static {v1, v2}, Lnts/ၽ;->ᇭ(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 18
    array-length v2, v1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    const/4 v2, 0x0

    .line 22
    aget-object v6, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 23
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 24
    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x3

    .line 25
    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    new-array v5, v5, [B

    aput-byte v6, v5, v2

    aput-byte v7, v5, v3

    aput-byte v8, v5, v4

    aput-byte v1, v5, v9

    .line 26
    invoke-virtual {v0, v5}, Lnts/Ḭ;->ㆃ([B)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lnts/ᛎ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x42

    const/16 v3, 0x321

    invoke-static {v3, v1, v2}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Lnts/ᛎ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x32f

    const/16 v3, 0x51

    invoke-static {v1, v2, v3}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x33e

    const/16 v3, 0x52

    invoke-static {v1, v2, v3}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    iget-object v1, p0, Lnts/ڹ;->ᡲ:Ljava/lang/String;

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ([B)V

    .line 83
    :goto_0
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
