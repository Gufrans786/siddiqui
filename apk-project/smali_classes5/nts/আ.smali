.class public Lnts/আ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Z

.field public ౠ:[B

.field public ᇭ:I

.field public ዲ:[B

.field public ᎊ:[B

.field public ᙕ:I

.field public ᡲ:J

.field public ᰛ:J

.field public ᾨ:Lnts/ワ;

.field public Ὺ:Z

.field public て:[B

.field public ㆃ:Lnts/Ꮿ;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/Ꮿ;

    invoke-direct {v0}, Lnts/Ꮿ;-><init>()V

    iput-object v0, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    .line 3
    new-instance v0, Lnts/ワ;

    invoke-direct {v0}, Lnts/ワ;-><init>()V

    iput-object v0, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnts/আ;->ᇭ:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lnts/আ;->ᰛ:J

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p0, Lnts/আ;->Ͼ:Z

    const/16 v4, 0x10

    .line 8
    new-array v5, v4, [B

    iput-object v5, p0, Lnts/আ;->ౠ:[B

    const/16 v5, 0x80

    .line 9
    iput v5, p0, Lnts/আ;->ᙕ:I

    const/4 v6, 0x0

    .line 11
    iput-object v6, p0, Lnts/আ;->て:[B

    .line 12
    iput-object v6, p0, Lnts/আ;->ዲ:[B

    .line 13
    iput-object v6, p0, Lnts/আ;->ᎊ:[B

    .line 14
    iput-wide v1, p0, Lnts/আ;->ᡲ:J

    .line 15
    iput-boolean v0, p0, Lnts/আ;->Ὺ:Z

    .line 16
    iget-object v7, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    invoke-virtual {v7}, Lnts/Ꮿ;->ㆃ()V

    .line 17
    iget-object v7, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v7}, Lnts/ワ;->ᾨ()V

    .line 19
    iput v0, p0, Lnts/আ;->ᇭ:I

    .line 20
    iput-wide v1, p0, Lnts/আ;->ᰛ:J

    .line 21
    iput-boolean v3, p0, Lnts/আ;->Ͼ:Z

    .line 22
    new-array v3, v4, [B

    iput-object v3, p0, Lnts/আ;->ౠ:[B

    .line 23
    iput v5, p0, Lnts/আ;->ᙕ:I

    .line 25
    iput-object v6, p0, Lnts/আ;->て:[B

    .line 26
    iput-object v6, p0, Lnts/আ;->ዲ:[B

    .line 27
    iput-object v6, p0, Lnts/আ;->ᎊ:[B

    .line 28
    iput-wide v1, p0, Lnts/আ;->ᡲ:J

    .line 29
    iput-boolean v0, p0, Lnts/আ;->Ὺ:Z

    return-void
.end method

.method public static ㆃ([BJ)V
    .locals 5

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/16 v1, 0x8

    if-eqz p0, :cond_0

    .line 143
    array-length v2, p0

    if-ge v2, v1, :cond_1

    :cond_0
    new-array p0, v1, [B

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 145
    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v1, v3, :cond_3

    add-int/lit8 p1, v1, 0x4

    mul-int/lit8 p2, v1, 0x8

    shr-int p2, v0, p2

    int-to-byte p2, p2

    .line 148
    aput-byte p2, p0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public ㆃ([B[B[BI)V
    .locals 0

    .line 10
    iput-object p1, p0, Lnts/আ;->ዲ:[B

    .line 11
    iput-object p2, p0, Lnts/আ;->て:[B

    .line 12
    iput-object p3, p0, Lnts/আ;->ౠ:[B

    .line 13
    iput p4, p0, Lnts/আ;->ᙕ:I

    .line 14
    iget-object p1, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    invoke-virtual {p1}, Lnts/Ꮿ;->ㆃ()V

    .line 15
    iget-object p1, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {p1}, Lnts/ワ;->ᾨ()V

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lnts/আ;->ᰛ:J

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lnts/আ;->ᇭ:I

    return-void
.end method

.method public ㆃ([B[B[B[BIJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/আ;->ᎊ:[B

    .line 2
    iput-object p2, p0, Lnts/আ;->ዲ:[B

    .line 3
    iput-object p3, p0, Lnts/আ;->て:[B

    .line 4
    iput-object p4, p0, Lnts/আ;->ౠ:[B

    .line 5
    iput p5, p0, Lnts/আ;->ᙕ:I

    .line 6
    iput-wide p6, p0, Lnts/আ;->ᡲ:J

    .line 7
    iput-boolean p8, p0, Lnts/আ;->Ͼ:Z

    .line 8
    iget-object p1, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    .line 9
    invoke-virtual {p1}, Lnts/ワ;->ᾨ()V

    return-void
.end method

.method public ㆃ([BII)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 18
    iget-object v4, v0, Lnts/আ;->ౠ:[B

    iget-boolean v5, v0, Lnts/আ;->Ͼ:Z

    add-int v6, v2, v3

    .line 19
    array-length v7, v1

    if-gt v6, v7, :cond_a

    .line 24
    new-array v6, v3, [B

    const/4 v7, 0x0

    .line 25
    invoke-static {v1, v2, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-virtual {v0, v6, v5}, Lnts/আ;->ㆃ([BZ)[B

    move-result-object v1

    .line 28
    iget v2, v0, Lnts/আ;->ᇭ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 32
    iget-boolean v2, v0, Lnts/আ;->Ὺ:Z

    const/16 v6, 0x8

    const/16 v8, 0x10

    if-nez v2, :cond_1

    .line 33
    new-array v2, v6, [B

    .line 35
    iget-wide v9, v0, Lnts/আ;->ᰛ:J

    const-wide/16 v11, 0x10

    rem-long/2addr v9, v11

    long-to-int v9, v9

    if-lez v9, :cond_0

    rsub-int/lit8 v9, v9, 0x10

    .line 37
    new-array v10, v9, [B

    .line 38
    iget-object v11, v0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v11, v10, v7, v9}, Lnts/ワ;->ㆃ([BII)V

    .line 40
    :cond_0
    iget-object v9, v0, Lnts/আ;->て:[B

    array-length v9, v9

    int-to-long v9, v9

    invoke-static {v2, v9, v10}, Lnts/আ;->ㆃ([BJ)V

    .line 41
    iget-object v9, v0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v9, v2, v7, v6}, Lnts/ワ;->ㆃ([BII)V

    .line 42
    iget-wide v9, v0, Lnts/আ;->ᰛ:J

    invoke-static {v2, v9, v10}, Lnts/আ;->ㆃ([BJ)V

    .line 43
    iget-object v9, v0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v9, v2, v7, v6}, Lnts/ワ;->ㆃ([BII)V

    .line 45
    :cond_1
    iget-object v10, v0, Lnts/আ;->ᾨ:Lnts/ワ;

    .line 52
    iget v2, v10, Lnts/ワ;->ᰛ:I

    const/4 v9, 0x1

    if-lez v2, :cond_3

    .line 53
    iget-object v11, v10, Lnts/ワ;->Ͼ:[B

    add-int/lit8 v12, v2, 0x1

    iput v12, v10, Lnts/ワ;->ᰛ:I

    aput-byte v9, v11, v2

    .line 54
    iget v2, v10, Lnts/ワ;->ᰛ:I

    :goto_0
    if-ge v2, v8, :cond_2

    .line 55
    iget-object v11, v10, Lnts/ワ;->Ͼ:[B

    aput-byte v7, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_2
    iget-object v11, v10, Lnts/ワ;->Ͼ:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v12, 0x10

    move-object v15, v10

    invoke-virtual/range {v10 .. v15}, Lnts/ワ;->ㆃ([BIIILnts/ワ;)V

    .line 61
    :cond_3
    iget-object v2, v10, Lnts/ワ;->ᇭ:[I

    aget v11, v2, v7

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    const-wide/16 v15, 0x5

    add-long/2addr v11, v15

    long-to-int v15, v11

    move/from16 p1, v3

    .line 62
    aget v3, v2, v9

    move-wide/from16 p2, v13

    int-to-long v13, v3

    and-long v13, v13, p2

    const/16 v3, 0x20

    shr-long/2addr v11, v3

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 63
    aget v12, v2, p1

    move/from16 v17, v3

    move-object/from16 v16, v4

    int-to-long v3, v12

    and-long v3, v3, p2

    shr-long v12, v13, v17

    add-long/2addr v3, v12

    long-to-int v12, v3

    const/4 v13, 0x3

    .line 64
    aget v14, v2, v13

    move/from16 v18, v13

    int-to-long v13, v14

    and-long v13, v13, p2

    shr-long v3, v3, v17

    add-long/2addr v13, v3

    long-to-int v3, v13

    const/4 v4, 0x4

    .line 65
    aget v4, v2, v4

    shr-long v13, v13, v17

    long-to-int v13, v13

    add-int/2addr v4, v13

    shr-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x0

    and-int v13, v15, v4

    and-int/2addr v11, v4

    and-int/2addr v12, v4

    and-int/2addr v3, v4

    not-int v4, v4

    .line 74
    aget v14, v2, v7

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v2, v7

    .line 75
    aget v14, v2, v9

    and-int/2addr v14, v4

    or-int/2addr v11, v14

    aput v11, v2, v9

    .line 76
    aget v11, v2, p1

    and-int/2addr v11, v4

    or-int/2addr v11, v12

    aput v11, v2, p1

    .line 77
    aget v11, v2, v18

    and-int/2addr v4, v11

    or-int/2addr v3, v4

    aput v3, v2, v18

    int-to-long v3, v13

    and-long v3, v3, p2

    .line 80
    iget-object v11, v10, Lnts/ワ;->ㆃ:[I

    aget v12, v11, v7

    int-to-long v12, v12

    and-long v12, v12, p2

    add-long/2addr v3, v12

    long-to-int v12, v3

    aput v12, v2, v7

    .line 81
    aget v12, v2, v9

    int-to-long v12, v12

    and-long v12, v12, p2

    shr-long v3, v3, v17

    add-long/2addr v12, v3

    aget v3, v11, v9

    int-to-long v3, v3

    and-long v3, v3, p2

    add-long/2addr v12, v3

    long-to-int v3, v12

    aput v3, v2, v9

    .line 82
    aget v3, v2, p1

    int-to-long v3, v3

    and-long v3, v3, p2

    shr-long v12, v12, v17

    add-long/2addr v3, v12

    aget v12, v11, p1

    int-to-long v12, v12

    and-long v12, v12, p2

    add-long/2addr v3, v12

    long-to-int v12, v3

    aput v12, v2, p1

    .line 83
    aget v12, v2, v18

    int-to-long v12, v12

    and-long v12, v12, p2

    shr-long v3, v3, v17

    add-long/2addr v12, v3

    aget v3, v11, v18

    int-to-long v3, v3

    and-long v3, v3, p2

    add-long/2addr v12, v3

    long-to-int v3, v12

    aput v3, v2, v18

    .line 84
    new-array v3, v8, [B

    move v4, v7

    move v11, v4

    :goto_1
    if-ge v4, v8, :cond_4

    add-int/lit8 v12, v4, 0x1

    .line 87
    aget v13, v2, v11

    and-int/lit16 v14, v13, 0xff

    int-to-byte v14, v14

    aput-byte v14, v3, v4

    add-int/lit8 v14, v4, 0x2

    shr-int/lit8 v15, v13, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    .line 88
    aput-byte v15, v3, v12

    add-int/lit8 v12, v4, 0x3

    shr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    .line 89
    aput-byte v15, v3, v14

    add-int/lit8 v4, v4, 0x4

    shr-int/lit8 v13, v13, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    .line 90
    aput-byte v13, v3, v12

    add-int/2addr v11, v9

    goto :goto_1

    .line 91
    :cond_4
    iput-object v3, v10, Lnts/ワ;->ౠ:[B

    .line 92
    iget-object v2, v10, Lnts/ワ;->ౠ:[B

    .line 93
    iput-object v2, v10, Lnts/ワ;->ౠ:[B

    if-eqz v5, :cond_6

    .line 94
    iget-object v2, v0, Lnts/আ;->ౠ:[B

    if-nez v2, :cond_5

    iget v2, v0, Lnts/আ;->ᙕ:I

    div-int/2addr v2, v6

    new-array v2, v2, [B

    iput-object v2, v0, Lnts/আ;->ౠ:[B

    .line 95
    :cond_5
    iget-object v2, v0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v2}, Lnts/ワ;->ㆃ()[B

    move-result-object v2

    iget-object v3, v0, Lnts/আ;->ౠ:[B

    iget v4, v0, Lnts/আ;->ᙕ:I

    div-int/2addr v4, v6

    invoke-static {v2, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_6
    if-eqz v16, :cond_8

    move-object/from16 v2, v16

    .line 97
    array-length v3, v2

    if-eqz v3, :cond_8

    .line 98
    iget-object v3, v0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v3}, Lnts/ワ;->ㆃ()[B

    move-result-object v3

    invoke-static {v2, v3}, Lnts/ၽ;->ㆃ([B[B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 103
    :goto_2
    iput v7, v0, Lnts/আ;->ᇭ:I

    return-object v1

    .line 104
    :cond_7
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x26

    const/16 v3, 0x5b

    const/16 v4, 0x6c

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 105
    :cond_8
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0xf

    const/16 v3, 0x21

    const/16 v4, 0x5d

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_9
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x11

    const/16 v3, 0x4b

    const/16 v4, 0x4c

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_a
    new-instance v1, Ljava/lang/Exception;

    const/16 v2, 0x3a

    const/16 v3, 0x31

    const/16 v4, 0x12

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ㆃ([BZ)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget v0, p0, Lnts/আ;->ᇭ:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 109
    iget-object v0, p0, Lnts/আ;->ᎊ:[B

    iget-object v4, p0, Lnts/আ;->ዲ:[B

    iget-wide v5, p0, Lnts/আ;->ᡲ:J

    const/16 v7, 0x40

    .line 110
    new-array v7, v7, [B

    .line 111
    iget-object v8, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    invoke-virtual {v8, v0, v4, v5, v6}, Lnts/Ꮿ;->ㆃ([B[BJ)V

    .line 112
    iget-object v0, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    invoke-virtual {v0, v7}, Lnts/Ꮿ;->ㆃ([B)V

    .line 113
    iget-object v0, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    .line 114
    iget-object v4, v0, Lnts/ワ;->ᾨ:[I

    const/16 v5, 0x10

    invoke-virtual {v0, v7, v2, v5, v4}, Lnts/ワ;->ㆃ([BII[I)V

    .line 115
    iget-object v4, v0, Lnts/ワ;->ㆃ:[I

    invoke-virtual {v0, v7, v5, v5, v4}, Lnts/ワ;->ㆃ([BII[I)V

    .line 116
    iget-object v0, v0, Lnts/ワ;->ᾨ:[I

    aget v4, v0, v2

    const v6, 0xfffffff

    and-int/2addr v4, v6

    aput v4, v0, v2

    .line 117
    aget v4, v0, v1

    const v6, 0xffffffc

    and-int/2addr v4, v6

    aput v4, v0, v1

    .line 118
    aget v4, v0, v3

    and-int/2addr v4, v6

    aput v4, v0, v3

    const/4 v4, 0x3

    .line 119
    aget v7, v0, v4

    and-int/2addr v6, v7

    aput v6, v0, v4

    .line 120
    iput v2, p0, Lnts/আ;->ᇭ:I

    .line 121
    iget-object v0, p0, Lnts/আ;->て:[B

    .line 122
    array-length v4, v0

    rem-int/2addr v4, v5

    .line 123
    iget-object v6, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    array-length v7, v0

    invoke-virtual {v6, v0, v2, v7}, Lnts/ワ;->ㆃ([BII)V

    if-lez v4, :cond_0

    .line 124
    iget-boolean v0, p0, Lnts/আ;->Ὺ:Z

    if-nez v0, :cond_0

    sub-int/2addr v5, v4

    .line 125
    new-array v0, v5, [B

    .line 126
    iget-object v4, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    invoke-virtual {v4, v0, v2, v5}, Lnts/ワ;->ㆃ([BII)V

    .line 128
    :cond_0
    iput v1, p0, Lnts/আ;->ᇭ:I

    .line 129
    :cond_1
    iget v0, p0, Lnts/আ;->ᇭ:I

    if-ne v0, v1, :cond_2

    iput v3, p0, Lnts/আ;->ᇭ:I

    .line 130
    :cond_2
    iget v0, p0, Lnts/আ;->ᇭ:I

    if-ne v0, v3, :cond_5

    if-nez p1, :cond_3

    .line 133
    new-array p1, v2, [B

    .line 134
    :cond_3
    iget-wide v0, p0, Lnts/আ;->ᰛ:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lnts/আ;->ᰛ:J

    if-eqz p2, :cond_4

    .line 137
    iget-object p2, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    invoke-virtual {p2, p1}, Lnts/Ꮿ;->ㆃ([B)V

    .line 138
    iget-object p2, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    array-length v0, p1

    invoke-virtual {p2, p1, v2, v0}, Lnts/ワ;->ㆃ([BII)V

    return-object p1

    .line 140
    :cond_4
    iget-object p2, p0, Lnts/আ;->ᾨ:Lnts/ワ;

    array-length v0, p1

    invoke-virtual {p2, p1, v2, v0}, Lnts/ワ;->ㆃ([BII)V

    .line 141
    iget-object p2, p0, Lnts/আ;->ㆃ:Lnts/Ꮿ;

    invoke-virtual {p2, p1}, Lnts/Ꮿ;->ㆃ([B)V

    return-object p1

    .line 142
    :cond_5
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x12

    const/16 v0, 0x6e

    invoke-static {v2, p2, v0}, Lnts/ࡁ;->ᇭ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method
