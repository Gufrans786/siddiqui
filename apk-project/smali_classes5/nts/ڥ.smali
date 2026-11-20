.class public Lnts/ڥ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:Lnts/ㆁ;

.field public ᾨ:Lnts/ၜ;

.field public ㆃ:[B


# direct methods
.method public constructor <init>(Lnts/ㆁ;)V
    .locals 1

    .line 1
    new-instance v0, Lnts/ॼ;

    invoke-direct {v0}, Lnts/ॼ;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    const/16 p1, 0x1000

    .line 10
    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ڥ;->ㆃ:[B

    .line 11
    iput-object v0, p0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    return-void
.end method


# virtual methods
.method public final ㆃ()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    iget-object v1, p0, Lnts/ڥ;->ㆃ:[B

    array-length v2, v1

    check-cast v0, Lnts/ॼ;

    .line 2
    iget-object v3, v0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v3}, Lnts/ሐ;->ᇭ()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v0, v1, v4, v2}, Lnts/ၜ;->ㆃ([BII)I

    move-result v0

    goto/16 :goto_8

    .line 6
    :cond_0
    iget v3, v0, Lnts/ၜ;->Ͼ:I

    iget v5, v0, Lnts/ၜ;->ౠ:I

    if-ge v3, v5, :cond_8

    .line 7
    iget v6, v0, Lnts/ၜ;->ᇭ:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    const v3, 0xffff

    if-lt v5, v3, :cond_7

    .line 8
    iget v5, v0, Lnts/ၜ;->ᾨ:I

    add-int/lit16 v5, v5, -0x8000

    .line 9
    iget-object v7, v0, Lnts/ၜ;->ㆃ:[B

    sub-int/2addr v6, v5

    invoke-static {v7, v5, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v4

    :goto_0
    const/16 v7, 0x4000

    const/4 v8, -0x1

    if-ge v6, v7, :cond_3

    .line 10
    iget-object v7, v0, Lnts/ॼ;->ᛃ:[S

    aget-short v9, v7, v6

    and-int v10, v9, v3

    if-eq v10, v3, :cond_2

    if-ge v10, v5, :cond_1

    .line 13
    aput-short v8, v7, v6

    goto :goto_1

    :cond_1
    int-to-short v8, v5

    sub-int/2addr v9, v8

    int-to-short v8, v9

    .line 15
    aput-short v8, v7, v6

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v5

    .line 19
    :goto_2
    iget v7, v0, Lnts/ၜ;->ᾨ:I

    if-ge v6, v7, :cond_6

    .line 20
    iget-object v7, v0, Lnts/ॼ;->ᵑ:[S

    aget-short v9, v7, v6

    and-int/2addr v9, v3

    if-eq v9, v3, :cond_5

    if-ge v9, v5, :cond_4

    goto :goto_3

    :cond_4
    sub-int v10, v6, v5

    sub-int/2addr v9, v5

    int-to-short v9, v9

    .line 24
    aput-short v9, v7, v10

    goto :goto_4

    .line 25
    :cond_5
    :goto_3
    iget-object v7, v0, Lnts/ॼ;->ᵑ:[S

    sub-int v9, v6, v5

    aput-short v8, v7, v9

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    sub-int/2addr v7, v5

    .line 26
    iput v7, v0, Lnts/ၜ;->ᾨ:I

    .line 27
    iget v6, v0, Lnts/ၜ;->ᇭ:I

    sub-int/2addr v6, v5

    iput v6, v0, Lnts/ၜ;->ᇭ:I

    .line 30
    :cond_7
    iget v5, v0, Lnts/ၜ;->ᾨ:I

    sub-int/2addr v3, v5

    iget v5, v0, Lnts/ၜ;->ౠ:I

    iget v6, v0, Lnts/ၜ;->Ͼ:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 31
    iget-object v5, v0, Lnts/ၜ;->ᰛ:[B

    iget v6, v0, Lnts/ၜ;->Ͼ:I

    iget-object v7, v0, Lnts/ၜ;->ㆃ:[B

    iget v8, v0, Lnts/ၜ;->ᇭ:I

    invoke-static {v5, v6, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v5, v0, Lnts/ၜ;->ᇭ:I

    add-int/2addr v5, v3

    iput v5, v0, Lnts/ၜ;->ᇭ:I

    .line 33
    iget v5, v0, Lnts/ၜ;->Ͼ:I

    add-int/2addr v5, v3

    iput v5, v0, Lnts/ၜ;->Ͼ:I

    .line 34
    :cond_8
    iget v3, v0, Lnts/ၜ;->ᾨ:I

    add-int/lit16 v3, v3, 0x101

    iget v5, v0, Lnts/ၜ;->ᇭ:I

    const/4 v6, 0x1

    if-gt v3, v5, :cond_9

    .line 35
    invoke-virtual {v0, v6}, Lnts/ॼ;->ㆃ(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 37
    iget-object v3, v0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget-object v5, v0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v3, v5, v4}, Lnts/ᣝ;->ㆃ(Lnts/ሐ;Z)V

    .line 38
    iget-object v3, v0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    invoke-virtual {v3}, Lnts/ᣝ;->ㆃ()V

    .line 39
    invoke-virtual {v0, v1, v4, v2}, Lnts/ၜ;->ㆃ([BII)I

    move-result v0

    goto :goto_8

    .line 43
    :cond_9
    iget v3, v0, Lnts/ၜ;->ዲ:I

    const/4 v5, 0x2

    if-eq v3, v6, :cond_c

    const/4 v7, 0x3

    if-ne v3, v7, :cond_a

    goto :goto_5

    :cond_a
    if-ne v3, v5, :cond_b

    .line 61
    invoke-virtual {v0, v1, v4, v2}, Lnts/ၜ;->ㆃ([BII)I

    move-result v0

    goto :goto_8

    :cond_b
    move v0, v4

    goto :goto_8

    .line 62
    :cond_c
    :goto_5
    invoke-virtual {v0, v4}, Lnts/ॼ;->ㆃ(Z)Z

    .line 64
    iget v3, v0, Lnts/ၜ;->ᾨ:I

    iget v7, v0, Lnts/ၜ;->ᇭ:I

    if-eq v3, v7, :cond_d

    .line 65
    iget-object v3, v0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget-object v5, v0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v3, v5, v4}, Lnts/ᣝ;->ㆃ(Lnts/ሐ;Z)V

    .line 66
    iget-object v3, v0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    invoke-virtual {v3}, Lnts/ᣝ;->ㆃ()V

    .line 67
    invoke-virtual {v0, v1, v4, v2}, Lnts/ၜ;->ㆃ([BII)I

    move-result v0

    goto :goto_8

    .line 71
    :cond_d
    iget-object v3, v0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget-object v7, v0, Lnts/ၜ;->て:Lnts/ሐ;

    iget v8, v0, Lnts/ၜ;->ዲ:I

    if-ne v8, v6, :cond_e

    move v8, v6

    goto :goto_6

    :cond_e
    move v8, v4

    :goto_6
    invoke-virtual {v3, v7, v8}, Lnts/ᣝ;->ㆃ(Lnts/ሐ;Z)V

    .line 72
    iget-object v3, v0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    invoke-virtual {v3}, Lnts/ᣝ;->ㆃ()V

    .line 73
    iget v3, v0, Lnts/ၜ;->ዲ:I

    if-ne v3, v6, :cond_f

    .line 74
    iget-object v3, v0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v3}, Lnts/ሐ;->ㆃ()V

    .line 76
    :cond_f
    iget v3, v0, Lnts/ၜ;->ዲ:I

    if-ne v3, v6, :cond_10

    goto :goto_7

    :cond_10
    move v5, v4

    :goto_7
    iput v5, v0, Lnts/ၜ;->ዲ:I

    .line 77
    invoke-virtual {v0, v1, v4, v2}, Lnts/ၜ;->ㆃ([BII)I

    move-result v0

    .line 78
    :goto_8
    iget-object v1, p0, Lnts/ڥ;->ㆃ:[B

    if-lez v0, :cond_11

    .line 79
    iget-object v2, p0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    invoke-virtual {v2, v1, v4, v0}, Lnts/ㆁ;->ㆃ([BII)V

    :cond_11
    return v0
.end method

.method public ㆃ(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lnts/ㆁ;->ㆃ(I)V

    .line 91
    iget-object v0, p0, Lnts/ڥ;->ᇭ:Lnts/ㆁ;

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lnts/ㆁ;->ㆃ(I)V

    return-void
.end method

.method public ㆃ([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_4

    const/16 v0, 0x3e8

    if-ge p3, v0, :cond_0

    move v0, p3

    .line 80
    :cond_0
    iget-object v1, p0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    .line 81
    iput-object p1, v1, Lnts/ၜ;->ᰛ:[B

    .line 82
    iput p2, v1, Lnts/ၜ;->Ͼ:I

    add-int/2addr p2, v0

    .line 83
    iput p2, v1, Lnts/ၜ;->ౠ:I

    .line 84
    :cond_1
    :goto_1
    iget-object v1, p0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    invoke-virtual {v1}, Lnts/ၜ;->ᾨ()Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    invoke-virtual {p0}, Lnts/ڥ;->ㆃ()I

    move-result v1

    if-gtz v1, :cond_1

    .line 86
    iget-object v1, p0, Lnts/ڥ;->ᾨ:Lnts/ၜ;

    invoke-virtual {v1}, Lnts/ၜ;->ᾨ()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x61

    const-string p3, "?\u0019\u0012\u0016\u0018\u0018_\n\u001eP\u0017\u0017\u0013\u0018\u0016\u0002\u000cH\u0002\u0004\u001d\u0019\u001b@A{wu|t2gs=zz~u{oa%gkl!km|xz!"

    const/4 v0, 0x0

    const/16 v1, 0x18

    .line 88
    invoke-static {p3, v0, v1, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sub-int/2addr p3, v0

    goto :goto_0

    :cond_4
    return-void
.end method
