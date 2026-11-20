.class public Lnts/ᨍ;
.super Lnts/ఋ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ఋ;-><init>()V

    return-void
.end method

.method public static ㆃ(Lnts/ఋ$ᇭ;[BIIZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move/from16 v7, p3

    .line 1
    iget-object v2, v0, Lnts/ఋ$ᇭ;->ᾨ:[B

    const/16 v3, 0xe

    const/4 v8, 0x0

    if-eqz v2, :cond_9

    array-length v4, v2

    const/4 v5, 0x7

    if-lt v4, v5, :cond_9

    array-length v4, v2

    const/16 v9, 0xd

    if-gt v4, v9, :cond_9

    .line 4
    iget-object v4, v0, Lnts/ఋ$ᇭ;->ᰛ:[B

    if-eqz v4, :cond_8

    array-length v4, v4

    iget v9, v0, Lnts/ఋ$ᇭ;->Ͼ:I

    if-ne v4, v9, :cond_8

    .line 8
    array-length v2, v2

    rsub-int/lit8 v4, v2, 0xf

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ge v4, v9, :cond_1

    mul-int/lit8 v4, v4, 0x8

    shl-int v4, v10, v4

    if-ge v7, v4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x16

    const/16 v2, 0x75

    const/16 v3, 0x25

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v4, 0x10

    .line 13
    new-array v4, v4, [B

    sub-int/2addr v3, v2

    and-int/lit8 v2, v3, 0x7

    int-to-byte v2, v2

    .line 14
    aput-byte v2, v4, v8

    .line 15
    iget-object v2, v0, Lnts/ఋ$ᇭ;->ᾨ:[B

    array-length v3, v2

    invoke-static {v2, v8, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    new-instance v2, Lnts/ᜧ;

    invoke-direct {v2}, Lnts/ᜧ;-><init>()V

    .line 18
    iget-object v3, v0, Lnts/ఋ$ᇭ;->ㆃ:[B

    invoke-virtual {v2, v3}, Lnts/ኝ;->ᾨ([B)V

    .line 19
    invoke-virtual {v2, v4}, Lnts/ኝ;->ㆃ([B)V

    const/4 v3, 0x6

    .line 20
    iput v3, v2, Lnts/ኝ;->て:I

    .line 21
    iput v10, v2, Lnts/ኝ;->ዲ:I

    .line 22
    new-instance v9, Lnts/ڽ;

    new-instance v3, Lnts/ᜧ;

    invoke-direct {v3}, Lnts/ᜧ;-><init>()V

    iget-object v4, v0, Lnts/ఋ$ᇭ;->ㆃ:[B

    invoke-direct {v9, v3, v4}, Lnts/ڽ;-><init>(Lnts/ᣎ;[B)V

    .line 23
    invoke-virtual {v9}, Lnts/ڽ;->ᰛ()V

    .line 24
    iget v3, v2, Lnts/ኝ;->ᾨ:I

    .line 25
    div-int/lit8 v14, v3, 0x8

    if-eqz p4, :cond_4

    .line 28
    invoke-virtual {v2}, Lnts/ኝ;->ᾨ()Lnts/Ҫ;

    move-result-object v15

    .line 31
    invoke-static {v0, v9, v1, v6, v7}, Lnts/ᨍ;->ㆃ(Lnts/ఋ$ᇭ;Lnts/ڽ;[BII)[B

    move-result-object v2

    .line 33
    :try_start_0
    array-length v3, v2

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v2

    move/from16 v18, v3

    invoke-interface/range {v15 .. v20}, Lnts/Ҫ;->ㆃ([BII[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, v16

    .line 37
    iget-object v2, v0, Lnts/ఋ$ᇭ;->ᰛ:[B

    iget v0, v0, Lnts/ఋ$ᇭ;->Ͼ:I

    invoke-static {v9, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v6

    :goto_1
    add-int v0, v6, v7

    sub-int v3, v0, v14

    if-ge v2, v3, :cond_2

    .line 42
    :try_start_1
    array-length v3, v9

    move-object/from16 v4, p1

    move v5, v2

    move-object v0, v15

    invoke-interface/range {v0 .. v5}, Lnts/Ҫ;->ㆃ([BII[BI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v2, v14

    goto :goto_1

    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    sub-int/2addr v0, v2

    if-lez v0, :cond_3

    .line 52
    new-array v3, v14, [B

    .line 53
    invoke-static {v1, v2, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 55
    :cond_3
    new-array v3, v8, [B

    .line 58
    :goto_2
    :try_start_2
    array-length v4, v3

    invoke-interface {v15, v3, v8, v4}, Lnts/Ҫ;->ㆃ([BII)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    invoke-static {v3, v8, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 64
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_4
    invoke-virtual {v2}, Lnts/ኝ;->ㆃ()Lnts/Ҫ;

    move-result-object v11

    .line 96
    new-array v12, v14, [B

    .line 99
    :try_start_3
    iget-object v2, v0, Lnts/ఋ$ᇭ;->ᰛ:[B

    iget v3, v0, Lnts/ఋ$ᇭ;->Ͼ:I

    invoke-static {v2, v8, v12, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v15, v12

    .line 100
    invoke-interface/range {v11 .. v16}, Lnts/Ҫ;->ㆃ([BII[BI)I

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v3, p2

    move-object v2, v1

    move v4, v7

    move-object v1, v11

    .line 103
    invoke-interface/range {v1 .. v6}, Lnts/Ҫ;->ㆃ([BII[BI)I

    move-result v5

    move-object v1, v2

    add-int v2, v3, v5

    sub-int v5, v4, v2

    add-int/2addr v5, v3

    .line 107
    new-array v6, v14, [B

    .line 108
    invoke-static {v1, v2, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-interface {v11, v6, v8, v14}, Lnts/Ҫ;->ㆃ([BII)[B

    move-result-object v6

    .line 110
    invoke-static {v6, v8, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    invoke-static {v0, v9, v1, v3, v4}, Lnts/ᨍ;->ㆃ(Lnts/ఋ$ᇭ;Lnts/ڽ;[BII)[B

    move-result-object v1

    move v2, v8

    .line 119
    :goto_3
    iget v3, v0, Lnts/ఋ$ᇭ;->Ͼ:I

    if-ge v2, v3, :cond_6

    .line 120
    aget-byte v3, v1, v2

    aget-byte v4, v12, v2

    if-eq v3, v4, :cond_5

    move v10, v8

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_7

    return-void

    .line 127
    :cond_7
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x1f

    const/16 v2, 0x5b

    const/16 v3, 0x3b

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 128
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_8
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x17

    const/16 v2, 0x39

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_9
    new-instance v0, Lnts/ẩ;

    const/4 v1, 0x2

    invoke-static {v8, v3, v1}, Lnts/ݶ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ㆃ(Lnts/ఋ$ᇭ;Lnts/ڽ;[BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v7, 0x10

    .line 131
    new-array v2, v7, [B

    .line 132
    iget-object v3, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    array-length v3, v3

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    if-eqz v3, :cond_1

    .line 135
    aget-byte v5, v2, v8

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 137
    :cond_1
    aget-byte v5, v2, v8

    iget v6, p0, Lnts/ఋ$ᇭ;->Ͼ:I

    const/4 v9, 0x2

    sub-int/2addr v6, v9

    div-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 138
    iget-object v6, p0, Lnts/ఋ$ᇭ;->ᾨ:[B

    array-length v10, v6

    rsub-int/lit8 v10, v10, 0xe

    and-int/lit8 v10, v10, 0x7

    int-to-byte v10, v10

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 139
    array-length v5, v6

    invoke-static {v6, v8, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v5, p4

    move v6, v4

    :goto_1
    if-lez v5, :cond_2

    rsub-int/lit8 v10, v6, 0x10

    and-int/lit16 v11, v5, 0xff

    int-to-byte v11, v11

    .line 144
    aput-byte v11, v2, v10

    ushr-int/lit8 v5, v5, 0x8

    add-int/2addr v6, v4

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p1, v2, v8, v7}, Lnts/ዃ;->ᇭ([BII)V

    if-eqz v3, :cond_4

    .line 150
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v3, v2

    const v4, 0xff00

    if-ge v3, v4, :cond_3

    .line 155
    array-length v2, v2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    .line 156
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    .line 162
    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    const/4 v2, -0x2

    .line 163
    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    .line 164
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    .line 165
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v2, v2

    shr-int/2addr v2, v7

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    .line 166
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    .line 167
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lnts/ڽ;->ㆃ(B)V

    const/4 v9, 0x6

    .line 169
    :goto_2
    iget-object v2, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 171
    iget-object v0, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    array-length v0, v0

    add-int/2addr v9, v0

    rem-int/2addr v9, v7

    if-eqz v9, :cond_4

    :goto_3
    if-eq v9, v7, :cond_4

    .line 174
    invoke-virtual {p1, v8}, Lnts/ڽ;->ㆃ(B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual/range {p1 .. p4}, Lnts/ዃ;->ㆃ([BII)[B

    .line 181
    iget-object v0, p1, Lnts/ዃ;->ᾨ:[B

    return-object v0
.end method
