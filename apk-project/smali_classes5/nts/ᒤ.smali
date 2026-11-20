.class public Lnts/ᒤ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:[B

.field public ᇭ:I

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/ᒤ;->ㆃ:I

    .line 7
    iput v0, p0, Lnts/ᒤ;->ᾨ:I

    .line 8
    iput v0, p0, Lnts/ᒤ;->ᇭ:I

    .line 9
    iput v0, p0, Lnts/ᒤ;->ᰛ:I

    const/16 v0, 0x50

    .line 10
    iput v0, p0, Lnts/ᒤ;->Ͼ:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lnts/ᒤ;->ౠ:[B

    return-void
.end method


# virtual methods
.method public final ᾨ([BI)J
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    const/16 v2, 0x38

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final ㆃ([BI)I
    .locals 2

    .line 117
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method public final ㆃ(JI)J
    .locals 5

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    shl-long v1, p1, v0

    shr-long/2addr p1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    return-wide p1

    :cond_0
    const/16 v0, 0x18

    if-ne p3, v0, :cond_1

    const/16 p3, 0x28

    shl-long v1, p1, p3

    shr-long/2addr p1, v0

    const-wide v3, 0xffffffffffL

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    return-wide p1

    :cond_1
    const/16 v0, 0x10

    if-ne p3, v0, :cond_2

    const/16 p3, 0x30

    shl-long v1, p1, p3

    shr-long/2addr p1, v0

    const-wide v3, 0xffffffffffffL

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    return-wide p1

    :cond_2
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_3

    const/4 p3, 0x1

    shl-long v0, p1, p3

    const/16 p3, 0x38

    shr-long/2addr p1, p3

    const-wide/16 v2, 0xff

    and-long/2addr p1, v2

    const/4 p3, 0x7

    shr-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final ㆃ(Lnts/〼;I)Lnts/〼;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lnts/〼;->ᰛ()V

    const/16 v0, 0x40

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 127
    :goto_0
    iget v1, p1, Lnts/〼;->Ͼ:I

    if-eq v1, v0, :cond_1

    .line 128
    iput v0, p1, Lnts/〼;->Ͼ:I

    .line 129
    invoke-virtual {p1}, Lnts/〼;->ᰛ()V

    .line 130
    :cond_1
    invoke-virtual {p0, p2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 131
    invoke-virtual {p1, p2, v0, v1}, Lnts/ዃ;->ᇭ([BII)V

    return-object p1
.end method

.method public final ㆃ(Lnts/〼;I[BI)Lnts/〼;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    const/16 v1, 0x40

    if-le p2, v1, :cond_2

    .line 132
    invoke-static {p1}, Lnts/ቩ;->ㆃ(Lnts/ዃ;)[B

    move-result-object v2

    const/16 v3, 0x20

    .line 133
    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p4, p4, 0x20

    add-int/lit8 p2, p2, -0x20

    .line 138
    invoke-virtual {p1}, Lnts/〼;->ᰛ()V

    if-le p2, v1, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, p2

    .line 139
    :goto_1
    iget v4, p1, Lnts/〼;->Ͼ:I

    if-eq v4, v3, :cond_1

    .line 140
    iput v3, p1, Lnts/〼;->Ͼ:I

    .line 141
    invoke-virtual {p1}, Lnts/〼;->ᰛ()V

    .line 142
    :cond_1
    invoke-virtual {p1, v2, v0, v1}, Lnts/ዃ;->ㆃ([BII)[B

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p1}, Lnts/ቩ;->ㆃ(Lnts/ዃ;)[B

    move-result-object v1

    .line 145
    invoke-static {v1, v0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final ㆃ([BIJ)V
    .locals 3

    long-to-int v0, p3

    int-to-byte v0, v0

    .line 118
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x8

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 119
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x10

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 120
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    const/16 v1, 0x18

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 121
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x4

    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 122
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x5

    const/16 v1, 0x28

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 123
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    const/16 v1, 0x30

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 124
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x7

    const/16 v0, 0x38

    shr-long/2addr p3, v0

    long-to-int p3, p3

    int-to-byte p3, p3

    .line 125
    aput-byte p3, p1, p2

    return-void
.end method

.method public final ㆃ([BI[BI[BI)V
    .locals 15

    move-object/from16 v0, p1

    const/16 v1, 0x80

    .line 167
    new-array v6, v1, [J

    .line 168
    new-array v11, v1, [J

    .line 169
    new-array v9, v1, [J

    const/4 v14, 0x0

    move v2, v14

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v2, 0x8

    add-int v4, p4, v3

    move-object/from16 v5, p3

    .line 172
    invoke-virtual {p0, v5, v4}, Lnts/ᒤ;->ᾨ([BI)J

    move-result-wide v7

    add-int v3, p6, v3

    move-object/from16 v4, p5

    invoke-virtual {p0, v4, v3}, Lnts/ᒤ;->ᾨ([BI)J

    move-result-wide v12

    xor-long/2addr v7, v12

    aput-wide v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_1
    const/16 v2, 0x8

    if-ge v10, v2, :cond_1

    mul-int/lit8 v4, v10, 0x10

    const/4 v5, 0x2

    const/4 v8, 0x2

    move v7, v4

    move-object v2, p0

    move-object v3, v11

    .line 176
    invoke-virtual/range {v2 .. v8}, Lnts/ᒤ;->ㆃ([JII[JII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move v3, v14

    :goto_2
    if-ge v3, v2, :cond_2

    move-object v8, v9

    mul-int/lit8 v9, v3, 0x2

    const/16 v10, 0x10

    const/16 v13, 0x10

    move v12, v9

    move-object v7, p0

    .line 180
    invoke-virtual/range {v7 .. v13}, Lnts/ᒤ;->ㆃ([JII[JII)V

    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    goto :goto_2

    :cond_2
    move-object v8, v9

    :goto_3
    if-ge v14, v1, :cond_3

    mul-int/lit8 v2, v14, 0x8

    add-int v2, v2, p2

    .line 184
    invoke-virtual {p0, v0, v2}, Lnts/ᒤ;->ᾨ([BI)J

    move-result-wide v3

    aget-wide v9, v6, v14

    xor-long/2addr v3, v9

    aget-wide v9, v8, v14

    xor-long/2addr v3, v9

    invoke-virtual {p0, v0, v2, v3, v4}, Lnts/ᒤ;->ㆃ([BIJ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final ㆃ([JIIII)V
    .locals 12

    .line 146
    aget-wide v0, p1, p2

    aget-wide v2, p1, p3

    const-wide v4, 0xffffffffL

    and-long v6, v0, v4

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    and-long v10, v2, v4

    mul-long/2addr v6, v10

    add-long/2addr v6, v2

    add-long/2addr v6, v0

    aput-wide v6, p1, p2

    .line 147
    aget-wide v0, p1, p5

    xor-long/2addr v0, v6

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2}, Lnts/ᒤ;->ㆃ(JI)J

    move-result-wide v0

    aput-wide v0, p1, p5

    .line 148
    aget-wide v2, p1, p4

    and-long v6, v2, v4

    mul-long/2addr v6, v8

    and-long v10, v0, v4

    mul-long/2addr v6, v10

    add-long/2addr v6, v0

    add-long/2addr v6, v2

    aput-wide v6, p1, p4

    .line 149
    aget-wide v0, p1, p3

    xor-long/2addr v0, v6

    const/16 v2, 0x18

    invoke-virtual {p0, v0, v1, v2}, Lnts/ᒤ;->ㆃ(JI)J

    move-result-wide v0

    aput-wide v0, p1, p3

    .line 150
    aget-wide v2, p1, p2

    and-long v6, v2, v4

    mul-long/2addr v6, v8

    and-long v10, v0, v4

    mul-long/2addr v6, v10

    add-long/2addr v6, v0

    add-long/2addr v6, v2

    aput-wide v6, p1, p2

    .line 151
    aget-wide v0, p1, p5

    xor-long/2addr v0, v6

    const/16 p2, 0x10

    invoke-virtual {p0, v0, v1, p2}, Lnts/ᒤ;->ㆃ(JI)J

    move-result-wide v0

    aput-wide v0, p1, p5

    .line 152
    aget-wide v2, p1, p4

    and-long v6, v2, v4

    mul-long/2addr v6, v8

    and-long/2addr v4, v0

    mul-long/2addr v6, v4

    add-long/2addr v6, v0

    add-long/2addr v6, v2

    aput-wide v6, p1, p4

    .line 153
    aget-wide v0, p1, p3

    xor-long/2addr v0, v6

    const/16 p2, 0x3f

    invoke-virtual {p0, v0, v1, p2}, Lnts/ᒤ;->ㆃ(JI)J

    move-result-wide v0

    aput-wide v0, p1, p3

    return-void
.end method

.method public final ㆃ([JII[JII)V
    .locals 23

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int v1, v0, p3

    add-int v1, v1, p2

    mul-int v2, v0, p6

    add-int v2, v2, p5

    .line 154
    aget-wide v3, p4, v2

    aput-wide v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 155
    aget-wide v2, p4, v2

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p3, 0x2

    add-int v4, v0, p2

    mul-int/lit8 v0, p3, 0x4

    add-int v9, v0, p2

    mul-int/lit8 v0, p3, 0x6

    add-int v15, v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v9

    move v6, v15

    .line 158
    invoke-virtual/range {v1 .. v6}, Lnts/ᒤ;->ㆃ([JIIII)V

    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v19, v4, 0x1

    add-int/lit8 v20, v9, 0x1

    add-int/lit8 v10, v15, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v21, v10

    move/from16 v18, v12

    .line 159
    invoke-virtual/range {v16 .. v21}, Lnts/ᒤ;->ㆃ([JIIII)V

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    add-int v18, p3, p2

    mul-int/lit8 v3, p3, 0x3

    add-int v13, v3, p2

    mul-int/lit8 v3, p3, 0x5

    add-int v20, v3, p2

    mul-int/lit8 v3, p3, 0x7

    add-int v21, v3, p2

    move/from16 v19, v13

    .line 160
    invoke-virtual/range {v16 .. v21}, Lnts/ᒤ;->ㆃ([JIIII)V

    move/from16 v7, v18

    move/from16 v3, v20

    move/from16 v22, v21

    add-int/lit8 v18, v7, 0x1

    add-int/lit8 v19, v13, 0x1

    add-int/lit8 v14, v3, 0x1

    add-int/lit8 v21, v22, 0x1

    move/from16 v20, v14

    .line 161
    invoke-virtual/range {v16 .. v21}, Lnts/ᒤ;->ㆃ([JIIII)V

    move/from16 v8, v19

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v3, v18

    move/from16 v18, p2

    .line 163
    invoke-virtual/range {v16 .. v21}, Lnts/ᒤ;->ㆃ([JIIII)V

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    .line 164
    invoke-virtual/range {v10 .. v15}, Lnts/ᒤ;->ㆃ([JIIII)V

    move-object v5, v10

    move-object v6, v11

    move v10, v2

    .line 165
    invoke-virtual/range {v5 .. v10}, Lnts/ᒤ;->ㆃ([JIIII)V

    move-object v2, v5

    move v5, v1

    move-object v1, v2

    move-object v2, v6

    move/from16 v6, v22

    .line 166
    invoke-virtual/range {v1 .. v6}, Lnts/ᒤ;->ㆃ([JIIII)V

    return-void
.end method

.method public final ㆃ(I)[B
    .locals 5

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v3, 0x4

    .line 116
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p1, v3, v0

    return-object v3
.end method

.method public ㆃ([BII)[B
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x7

    const/16 v3, 0x74

    const/16 v4, 0x16

    .line 1
    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnts/〼;

    .line 2
    iget v2, v0, Lnts/ᒤ;->ᰛ:I

    invoke-virtual {v0, v2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 3
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 4
    iget v2, v0, Lnts/ᒤ;->Ͼ:I

    invoke-virtual {v0, v2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    .line 5
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 6
    iget v2, v0, Lnts/ᒤ;->ᇭ:I

    invoke-virtual {v0, v2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    .line 7
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 8
    iget v2, v0, Lnts/ᒤ;->ᾨ:I

    invoke-virtual {v0, v2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    .line 9
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    const/16 v2, 0x13

    .line 10
    invoke-virtual {v0, v2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    .line 11
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 12
    iget v2, v0, Lnts/ᒤ;->ㆃ:I

    invoke-virtual {v0, v2}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    .line 13
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 14
    invoke-virtual {v0, v1}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v2

    .line 15
    invoke-virtual {v3, v2, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    move-object/from16 v2, p1

    move/from16 v4, p2

    .line 16
    invoke-virtual {v3, v2, v4, v1}, Lnts/ዃ;->ᇭ([BII)V

    .line 17
    iget-object v1, v0, Lnts/ᒤ;->ౠ:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v1

    .line 18
    invoke-virtual {v3, v1, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 19
    iget-object v4, v0, Lnts/ᒤ;->ౠ:[B

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 20
    invoke-virtual {v0, v9}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v1

    .line 21
    invoke-virtual {v3, v1, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 22
    invoke-virtual {v0, v9}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v1

    invoke-virtual {v3, v1, v9, v10}, Lnts/ዃ;->ㆃ([BII)[B

    .line 23
    iget-object v12, v3, Lnts/ዃ;->ᾨ:[B

    .line 24
    iget v1, v0, Lnts/ᒤ;->ᇭ:I

    iget v2, v0, Lnts/ᒤ;->ᰛ:I

    mul-int/lit8 v4, v2, 0x4

    div-int v7, v1, v4

    mul-int/lit8 v8, v7, 0x4

    mul-int v1, v8, v2

    mul-int/lit16 v2, v1, 0x400

    .line 27
    new-array v2, v2, [B

    move v4, v9

    .line 29
    :goto_0
    iget v5, v0, Lnts/ᒤ;->ᰛ:I

    const/16 v6, 0x400

    if-ge v4, v5, :cond_0

    .line 30
    invoke-virtual {v0, v3, v6}, Lnts/ᒤ;->ㆃ(Lnts/〼;I)Lnts/〼;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x40

    .line 31
    invoke-virtual/range {v11 .. v16}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 32
    invoke-virtual {v0, v9}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v3

    .line 33
    invoke-virtual {v11, v3, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 34
    invoke-virtual {v0, v4}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v3

    invoke-virtual {v11, v3, v9, v10}, Lnts/ዃ;->ㆃ([BII)[B

    mul-int/lit16 v3, v4, 0x400

    .line 35
    invoke-virtual {v0, v11, v6, v2, v3}, Lnts/ᒤ;->ㆃ(Lnts/〼;I[BI)Lnts/〼;

    add-int/lit8 v4, v4, 0x1

    move-object v3, v11

    goto :goto_0

    :cond_0
    move-object v11, v3

    move v3, v9

    .line 38
    :goto_1
    iget v4, v0, Lnts/ᒤ;->ᰛ:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 39
    invoke-virtual {v0, v11, v6}, Lnts/ᒤ;->ㆃ(Lnts/〼;I)Lnts/〼;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x40

    .line 40
    invoke-virtual/range {v11 .. v16}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 41
    invoke-virtual {v0, v5}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v4

    .line 42
    invoke-virtual {v11, v4, v9, v10}, Lnts/ዃ;->ᇭ([BII)V

    .line 43
    invoke-virtual {v0, v3}, Lnts/ᒤ;->ㆃ(I)[B

    move-result-object v4

    invoke-virtual {v11, v4, v9, v10}, Lnts/ዃ;->ㆃ([BII)[B

    .line 44
    iget v4, v0, Lnts/ᒤ;->ᰛ:I

    add-int/2addr v4, v3

    mul-int/2addr v4, v6

    invoke-virtual {v0, v11, v6, v2, v4}, Lnts/ᒤ;->ㆃ(Lnts/〼;I[BI)Lnts/〼;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    :cond_1
    iget v3, v0, Lnts/ᒤ;->ㆃ:I

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v9

    .line 49
    :goto_2
    new-array v4, v6, [B

    const/4 v12, 0x2

    move v13, v9

    move v14, v12

    .line 51
    :goto_3
    iget v15, v0, Lnts/ᒤ;->ᾨ:I

    move-object/from16 p1, v4

    if-ge v13, v15, :cond_f

    move v4, v9

    move v15, v14

    move-object/from16 v14, p1

    :goto_4
    if-ge v4, v10, :cond_e

    if-nez v13, :cond_3

    if-ne v4, v12, :cond_3

    .line 53
    iget v5, v0, Lnts/ᒤ;->ㆃ:I

    if-ne v5, v12, :cond_3

    const/16 v16, 0x1

    goto :goto_5

    :cond_3
    move/from16 v16, v3

    :goto_5
    move v3, v9

    .line 54
    :goto_6
    iget v5, v0, Lnts/ᒤ;->ᰛ:I

    if-ge v3, v5, :cond_d

    move v5, v15

    :goto_7
    if-ge v5, v7, :cond_c

    mul-int v17, v4, v7

    add-int v18, v17, v5

    if-nez v18, :cond_4

    add-int/lit8 v19, v8, -0x1

    goto :goto_8

    :cond_4
    add-int/lit8 v19, v18, -0x1

    :goto_8
    move/from16 v20, v10

    if-eqz v16, :cond_5

    .line 60
    iget v12, v0, Lnts/ᒤ;->ᰛ:I

    mul-int v12, v12, v19

    add-int/2addr v12, v3

    mul-int/2addr v12, v6

    invoke-virtual {v0, v2, v12}, Lnts/ᒤ;->ㆃ([BI)I

    move-result v12

    .line 61
    iget v10, v0, Lnts/ᒤ;->ᰛ:I

    mul-int v10, v10, v19

    add-int/2addr v10, v3

    mul-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v2, v10}, Lnts/ᒤ;->ㆃ([BI)I

    move-result v10

    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v4

    move/from16 v22, v7

    move v2, v12

    move-object/from16 v26, v14

    const/16 p2, 0x1

    move v7, v3

    move v14, v5

    move v12, v6

    move v3, v10

    const/16 v10, 0x10

    goto/16 :goto_b

    :cond_5
    const/16 v10, 0x8

    if-eq v5, v15, :cond_7

    .line 63
    rem-int/lit16 v12, v5, 0x80

    if-nez v12, :cond_6

    goto :goto_9

    :cond_6
    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v4

    move v12, v6

    move/from16 v22, v7

    move/from16 p1, v10

    move-object v1, v14

    const/16 p2, 0x1

    const/16 v10, 0x10

    move v7, v3

    move v14, v5

    goto/16 :goto_a

    .line 64
    :cond_7
    :goto_9
    new-array v12, v6, [B

    move/from16 v22, v7

    int-to-long v6, v13

    .line 65
    invoke-virtual {v0, v12, v9, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    int-to-long v6, v3

    .line 66
    invoke-virtual {v0, v12, v10, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    int-to-long v6, v4

    const/16 v14, 0x10

    .line 67
    invoke-virtual {v0, v12, v14, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    int-to-long v6, v1

    move/from16 p1, v10

    const/16 v10, 0x18

    .line 68
    invoke-virtual {v0, v12, v10, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    .line 69
    iget v6, v0, Lnts/ᒤ;->ᾨ:I

    int-to-long v6, v6

    const/16 v10, 0x20

    invoke-virtual {v0, v12, v10, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    .line 70
    iget v6, v0, Lnts/ᒤ;->ㆃ:I

    int-to-long v6, v6

    const/16 v10, 0x28

    invoke-virtual {v0, v12, v10, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    int-to-long v6, v5

    const-wide/16 v24, 0x80

    .line 71
    div-long v6, v6, v24

    const-wide/16 v24, 0x1

    add-long v6, v6, v24

    const/16 v10, 0x30

    invoke-virtual {v0, v12, v10, v6, v7}, Lnts/ᒤ;->ㆃ([BIJ)V

    move v7, v1

    const/16 v6, 0x400

    .line 73
    new-array v1, v6, [B

    move v10, v4

    const/4 v4, 0x0

    move/from16 v23, v6

    const/4 v6, 0x0

    move-object/from16 v24, v2

    const/4 v2, 0x0

    move/from16 v25, v3

    move-object v3, v1

    move/from16 p2, v14

    move v14, v5

    move-object v5, v12

    move/from16 v12, v23

    move/from16 v23, v7

    move/from16 v7, v25

    move/from16 v25, v10

    move/from16 v10, p2

    const/16 p2, 0x1

    .line 74
    invoke-virtual/range {v0 .. v6}, Lnts/ᒤ;->ㆃ([BI[BI[BI)V

    .line 75
    new-array v0, v12, [B

    move-object v3, v0

    move-object v5, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 76
    invoke-virtual/range {v0 .. v6}, Lnts/ᒤ;->ㆃ([BI[BI[BI)V

    .line 78
    :goto_a
    rem-int/lit16 v5, v14, 0x80

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v1, v5}, Lnts/ᒤ;->ㆃ([BI)I

    move-result v2

    add-int/lit8 v5, v5, 0x4

    .line 79
    invoke-virtual {v0, v1, v5}, Lnts/ᒤ;->ㆃ([BI)I

    move-result v3

    move-object/from16 v26, v1

    :goto_b
    if-nez v13, :cond_8

    if-nez v25, :cond_8

    move v3, v7

    goto :goto_c

    .line 81
    :cond_8
    iget v1, v0, Lnts/ᒤ;->ᰛ:I

    rem-int/2addr v3, v1

    :goto_c
    if-nez v13, :cond_9

    move v4, v9

    goto :goto_d

    :cond_9
    add-int/lit8 v4, v25, 0x1

    .line 82
    rem-int/lit8 v4, v4, 0x4

    mul-int v4, v4, v22

    :goto_d
    if-ne v3, v7, :cond_a

    move/from16 v17, v19

    goto :goto_e

    :cond_a
    if-nez v14, :cond_b

    add-int v17, v17, v8

    add-int/lit8 v17, v17, -0x1

    .line 89
    rem-int v17, v17, v8

    :cond_b
    :goto_e
    add-int v17, v17, v8

    sub-int v17, v17, v4

    .line 91
    rem-int v1, v17, v8

    int-to-long v5, v2

    const-wide v27, 0xffffffffL

    and-long v5, v5, v27

    mul-long/2addr v5, v5

    const/16 v21, 0x20

    shr-long v5, v5, v21

    long-to-int v2, v5

    int-to-long v5, v1

    and-long v5, v5, v27

    move-object/from16 v17, v11

    int-to-long v10, v2

    and-long v10, v10, v27

    mul-long/2addr v5, v10

    shr-long v5, v5, v21

    long-to-int v2, v5

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    .line 96
    rem-int/2addr v1, v8

    .line 97
    iget v2, v0, Lnts/ᒤ;->ᰛ:I

    mul-int v18, v18, v2

    add-int v4, v18, v7

    mul-int/2addr v4, v12

    mul-int v19, v19, v2

    add-int v5, v19, v7

    mul-int/2addr v5, v12

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit16 v6, v2, 0x400

    move-object/from16 v3, v24

    move v2, v4

    move v4, v5

    move-object/from16 v5, v24

    move-object/from16 v1, v24

    invoke-virtual/range {v0 .. v6}, Lnts/ᒤ;->ㆃ([BI[BI[BI)V

    add-int/lit8 v5, v14, 0x1

    move-object v2, v1

    move v3, v7

    move v6, v12

    move-object/from16 v11, v17

    move/from16 v10, v20

    move/from16 v7, v22

    move/from16 v1, v23

    move/from16 v4, v25

    move-object/from16 v14, v26

    const/4 v12, 0x2

    goto/16 :goto_7

    :cond_c
    move/from16 v23, v1

    move-object v1, v2

    move/from16 v25, v4

    move v12, v6

    move/from16 v22, v7

    move/from16 v20, v10

    move-object/from16 v17, v11

    const/16 p2, 0x1

    move v7, v3

    add-int/lit8 v3, v7, 0x1

    move/from16 v7, v22

    move/from16 v1, v23

    const/4 v12, 0x2

    goto/16 :goto_6

    :cond_d
    move/from16 v23, v1

    move-object v1, v2

    move/from16 v25, v4

    move v12, v6

    move/from16 v22, v7

    move/from16 v20, v10

    move-object/from16 v17, v11

    const/16 p2, 0x1

    add-int/lit8 v4, v25, 0x1

    move/from16 v5, p2

    move v15, v9

    move/from16 v3, v16

    move/from16 v1, v23

    const/4 v12, 0x2

    goto/16 :goto_4

    :cond_e
    move/from16 v23, v1

    move-object v1, v2

    move/from16 p2, v5

    move v12, v6

    move/from16 v22, v7

    move/from16 v20, v10

    move-object/from16 v17, v11

    add-int/lit8 v13, v13, 0x1

    move-object v4, v14

    move v14, v15

    move/from16 v1, v23

    const/4 v12, 0x2

    goto/16 :goto_3

    :cond_f
    move-object v1, v2

    move/from16 p2, v5

    move v12, v6

    move-object/from16 v17, v11

    .line 104
    new-array v2, v12, [B

    .line 105
    iget v3, v0, Lnts/ᒤ;->ᰛ:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v3, v8

    mul-int/2addr v3, v12

    invoke-static {v1, v3, v2, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :goto_f
    iget v3, v0, Lnts/ᒤ;->ᰛ:I

    if-ge v5, v3, :cond_12

    mul-int/2addr v3, v8

    add-int/2addr v3, v5

    mul-int/2addr v3, v12

    move v4, v9

    move v7, v4

    move v6, v12

    const/16 v14, 0x10

    :cond_10
    if-lt v6, v14, :cond_11

    add-int/lit8 v6, v6, -0x10

    move v10, v9

    :goto_10
    if-ge v10, v14, :cond_10

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v13, v7, 0x1

    .line 107
    aget-byte v7, v2, v7

    add-int/lit8 v15, v3, 0x1

    aget-byte v3, v1, v3

    xor-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v10, v10, 0x1

    move v4, v11

    move v7, v13

    move v3, v15

    goto :goto_10

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 108
    :cond_12
    iget v1, v0, Lnts/ᒤ;->Ͼ:I

    new-array v3, v1, [B

    move-object/from16 v11, v17

    .line 109
    invoke-virtual {v0, v11, v1}, Lnts/ᒤ;->ㆃ(Lnts/〼;I)Lnts/〼;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v2, v9, v12}, Lnts/ዃ;->ㆃ([BII)[B

    .line 111
    iget v2, v0, Lnts/ᒤ;->Ͼ:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lnts/ᒤ;->ㆃ(Lnts/〼;I[BI)Lnts/〼;

    return-object v3
.end method
