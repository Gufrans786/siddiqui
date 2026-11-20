.class public Lnts/ワ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:[B

.field public ౠ:[B

.field public ᇭ:[I

.field public ᰛ:I

.field public ᾨ:[I

.field public ㆃ:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/ワ;->ㆃ:[I

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ワ;->ᾨ:[I

    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ワ;->ᇭ:[I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/ワ;->ᰛ:I

    const/16 v1, 0x10

    .line 7
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ワ;->Ͼ:[B

    .line 8
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ワ;->ౠ:[B

    .line 11
    invoke-virtual {p0}, Lnts/ワ;->ᾨ()V

    return-void
.end method


# virtual methods
.method public ᾨ()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ワ;->ᰛ:I

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lnts/ワ;->Ͼ:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lnts/ワ;->ㆃ:[I

    iget-object v3, p0, Lnts/ワ;->ᾨ:[I

    aput v0, v3, v1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Lnts/ワ;->ᇭ:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_2
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ワ;->ౠ:[B

    return-void
.end method

.method public ㆃ([BII)V
    .locals 9

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lnts/ワ;->ᰛ:I

    if-lez v1, :cond_2

    rsub-int/lit8 v8, v1, 0x10

    if-lt p3, v8, :cond_1

    .line 5
    iget-object v2, p0, Lnts/ワ;->Ͼ:[B

    invoke-static {p1, p2, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p0, Lnts/ワ;->Ͼ:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v2, 0x10

    move-object v5, p0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnts/ワ;->ㆃ([BIIILnts/ワ;)V

    add-int v1, p2, v8

    sub-int v2, p3, v8

    move v3, v1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lnts/ワ;->Ͼ:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v1, p0, Lnts/ワ;->ᰛ:I

    add-int/2addr v1, p3

    iput v1, p0, Lnts/ワ;->ᰛ:I

    return-void

    :cond_2
    move v3, p2

    move v2, p3

    .line 16
    :goto_0
    rem-int/lit8 v6, v2, 0x10

    sub-int/2addr v2, v6

    const/16 v1, 0x10

    if-lt v2, v1, :cond_3

    const/4 v4, 0x1

    move-object v5, p0

    move-object v0, p0

    move-object v1, p1

    .line 20
    invoke-virtual/range {v0 .. v5}, Lnts/ワ;->ㆃ([BIIILnts/ワ;)V

    add-int/2addr v3, v2

    :cond_3
    if-lez v6, :cond_4

    .line 25
    iget-object v2, p0, Lnts/ワ;->Ͼ:[B

    invoke-static {p1, v3, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_4
    iput v6, p0, Lnts/ワ;->ᰛ:I

    return-void

    .line 29
    :cond_5
    new-instance v1, Lnts/ቂ;

    const/4 v2, 0x4

    const/16 v3, 0x1d

    .line 30
    const-string v4, "}yo{"

    invoke-static {v4, v7, v2, v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ㆃ([BIIILnts/ワ;)V
    .locals 35

    move-object/from16 v0, p5

    .line 33
    iget-object v1, v0, Lnts/ワ;->ᾨ:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    ushr-int/lit8 v4, v3, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x2

    .line 34
    aget v5, v1, v4

    ushr-int/lit8 v6, v5, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x3

    .line 35
    aget v1, v1, v6

    ushr-int/lit8 v7, v1, 0x2

    add-int/2addr v1, v7

    move/from16 v7, p2

    move/from16 v8, p3

    :goto_0
    const/16 v9, 0x10

    if-lt v7, v9, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 39
    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v8, 0x2

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    const v13, 0xff00

    and-int/2addr v10, v13

    or-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x3

    aget-byte v12, p1, v12

    shl-int/2addr v12, v9

    const/high16 v14, 0xff0000

    and-int/2addr v12, v14

    or-int/2addr v10, v12

    add-int/lit8 v12, v8, 0x4

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/high16 v15, -0x1000000

    and-int/2addr v11, v15

    or-int/2addr v10, v11

    .line 43
    iget-object v11, v0, Lnts/ワ;->ᇭ:[I

    const/16 v16, 0x0

    move/from16 v17, v2

    aget v2, v11, v16

    move/from16 v18, v6

    move/from16 p2, v7

    int-to-long v6, v2

    const-wide v19, 0xffffffffL

    and-long v6, v6, v19

    move/from16 p3, v9

    int-to-long v9, v10

    and-long v9, v9, v19

    add-long/2addr v6, v9

    long-to-int v2, v6

    aput v2, v11, v16

    add-int/lit8 v9, v8, 0x5

    .line 44
    aget-byte v10, p1, v12

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v12, v8, 0x6

    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v13

    or-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x7

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x10

    and-int/2addr v12, v14

    or-int/2addr v9, v12

    add-int/lit8 v12, v8, 0x8

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    and-int/2addr v10, v15

    or-int/2addr v9, v10

    .line 48
    aget v10, v11, v17

    move/from16 v21, v13

    move/from16 v22, v14

    int-to-long v13, v10

    and-long v13, v13, v19

    const/16 v10, 0x20

    ushr-long/2addr v6, v10

    add-long/2addr v13, v6

    int-to-long v6, v9

    and-long v6, v6, v19

    add-long/2addr v13, v6

    long-to-int v6, v13

    aput v6, v11, v17

    add-int/lit8 v7, v8, 0x9

    .line 49
    aget-byte v9, p1, v12

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v12, v8, 0xa

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int v7, v7, v21

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0xb

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x10

    and-int v12, v12, v22

    or-int/2addr v7, v12

    add-int/lit8 v12, v8, 0xc

    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x18

    and-int/2addr v9, v15

    or-int/2addr v7, v9

    .line 53
    aget v9, v11, v4

    move/from16 v24, v10

    move-object/from16 v23, v11

    int-to-long v10, v9

    and-long v9, v10, v19

    ushr-long v13, v13, v24

    add-long/2addr v9, v13

    int-to-long v13, v7

    and-long v13, v13, v19

    add-long/2addr v9, v13

    long-to-int v7, v9

    aput v7, v23, v4

    add-int/lit8 v11, v8, 0xd

    .line 54
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v8, 0xe

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x8

    and-int v11, v11, v21

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0xf

    aget-byte v13, p1, v13

    shl-int/lit8 v13, v13, 0x10

    and-int v13, v13, v22

    or-int/2addr v11, v13

    add-int/lit8 v8, v8, 0x10

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x18

    and-int/2addr v12, v15

    or-int/2addr v11, v12

    .line 58
    aget v12, v23, v18

    int-to-long v12, v12

    and-long v12, v12, v19

    ushr-long v9, v9, v24

    add-long/2addr v12, v9

    int-to-long v9, v11

    and-long v9, v9, v19

    add-long/2addr v12, v9

    long-to-int v9, v12

    aput v9, v23, v18

    const/4 v10, 0x4

    .line 59
    aget v11, v23, v10

    ushr-long v12, v12, v24

    long-to-int v12, v12

    add-int v12, v12, p4

    add-int/2addr v12, v11

    aput v12, v23, v10

    int-to-long v13, v2

    and-long v13, v13, v19

    .line 62
    iget-object v11, v0, Lnts/ワ;->ᾨ:[I

    aget v15, v11, v16

    move/from16 p3, v10

    move-object/from16 v21, v11

    int-to-long v10, v15

    mul-long/2addr v13, v10

    int-to-long v10, v6

    and-long v10, v10, v19

    move/from16 v22, v4

    move/from16 v25, v5

    int-to-long v4, v1

    mul-long/2addr v10, v4

    add-long/2addr v10, v13

    int-to-long v13, v7

    and-long v13, v13, v19

    move/from16 v0, v25

    move-wide/from16 v25, v4

    int-to-long v4, v0

    mul-long/2addr v13, v4

    add-long/2addr v13, v10

    int-to-long v10, v9

    and-long v10, v10, v19

    move/from16 v28, v0

    move/from16 v27, v1

    int-to-long v0, v3

    mul-long/2addr v10, v0

    add-long/2addr v10, v13

    int-to-long v13, v2

    and-long v13, v13, v19

    move-wide/from16 v29, v0

    .line 66
    aget v0, v21, v17

    move v1, v3

    move-wide/from16 v31, v4

    int-to-long v3, v0

    mul-long/2addr v13, v3

    int-to-long v3, v6

    and-long v3, v3, v19

    move-wide/from16 v33, v3

    int-to-long v3, v15

    mul-long v3, v3, v33

    add-long/2addr v3, v13

    int-to-long v13, v7

    and-long v13, v13, v19

    mul-long v13, v13, v25

    add-long/2addr v13, v3

    int-to-long v3, v9

    and-long v3, v3, v19

    mul-long v3, v3, v31

    add-long/2addr v3, v13

    int-to-long v13, v12

    mul-long v13, v13, v29

    add-long/2addr v13, v3

    int-to-long v3, v2

    and-long v3, v3, v19

    .line 71
    aget v5, v21, v22

    move-wide/from16 v29, v3

    int-to-long v3, v5

    mul-long v3, v3, v29

    move-wide/from16 v29, v3

    int-to-long v3, v6

    and-long v3, v3, v19

    move-wide/from16 v33, v3

    int-to-long v3, v0

    mul-long v3, v3, v33

    add-long v3, v3, v29

    move-wide/from16 v29, v3

    int-to-long v3, v7

    and-long v3, v3, v19

    move-wide/from16 v33, v3

    int-to-long v3, v15

    mul-long v3, v3, v33

    add-long v3, v3, v29

    move-wide/from16 v29, v3

    int-to-long v3, v9

    and-long v3, v3, v19

    mul-long v3, v3, v25

    add-long v3, v3, v29

    move-wide/from16 v29, v3

    int-to-long v3, v12

    mul-long v3, v3, v31

    add-long v3, v3, v29

    move/from16 v29, v1

    int-to-long v1, v2

    and-long v1, v1, v19

    move-wide/from16 v30, v1

    .line 76
    aget v1, v21, v18

    int-to-long v1, v1

    mul-long v1, v1, v30

    move-wide/from16 v30, v1

    int-to-long v1, v6

    and-long v1, v1, v19

    int-to-long v5, v5

    mul-long/2addr v1, v5

    add-long v1, v1, v30

    int-to-long v5, v7

    and-long v5, v5, v19

    move-wide/from16 v30, v1

    int-to-long v0, v0

    mul-long/2addr v5, v0

    add-long v5, v5, v30

    int-to-long v0, v9

    and-long v0, v0, v19

    move-wide/from16 v19, v0

    int-to-long v0, v15

    mul-long v0, v0, v19

    add-long/2addr v0, v5

    int-to-long v5, v12

    mul-long v5, v5, v25

    add-long/2addr v5, v0

    mul-int/2addr v12, v15

    .line 81
    aput v12, v23, p3

    long-to-int v0, v10

    .line 84
    aput v0, v23, v16

    ushr-long v1, v10, v24

    add-long/2addr v13, v1

    long-to-int v1, v13

    .line 85
    aput v1, v23, v17

    ushr-long v9, v13, v24

    add-long/2addr v3, v9

    long-to-int v2, v3

    .line 86
    aput v2, v23, v22

    ushr-long v3, v3, v24

    add-long/2addr v5, v3

    long-to-int v3, v5

    .line 87
    aput v3, v23, v18

    ushr-long v4, v5, v24

    long-to-int v4, v4

    add-int/2addr v12, v4

    .line 88
    aput v12, v23, p3

    ushr-int/lit8 v4, v12, 0x2

    and-int/lit8 v5, v12, -0x4

    add-int/2addr v4, v5

    and-int/lit8 v5, v12, 0x3

    .line 91
    aput v5, v23, p3

    add-int/2addr v0, v4

    .line 92
    aput v0, v23, v16

    xor-int v6, v0, v4

    sub-int v7, v0, v4

    xor-int/2addr v4, v7

    or-int/2addr v4, v6

    xor-int/2addr v0, v4

    ushr-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    .line 94
    aput v1, v23, v17

    xor-int v4, v1, v0

    sub-int v6, v1, v0

    xor-int/2addr v0, v6

    or-int/2addr v0, v4

    xor-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1f

    add-int/2addr v2, v0

    .line 95
    aput v2, v23, v22

    xor-int v1, v2, v0

    sub-int v4, v2, v0

    xor-int/2addr v0, v4

    or-int/2addr v0, v1

    xor-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x1f

    add-int/2addr v3, v0

    .line 96
    aput v3, v23, v18

    xor-int v1, v3, v0

    sub-int v2, v3, v0

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    xor-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x1f

    add-int/2addr v5, v0

    .line 97
    aput v5, v23, p3

    add-int/lit8 v7, p2, -0x10

    move-object/from16 v0, p5

    move/from16 v2, v17

    move/from16 v6, v18

    move/from16 v4, v22

    move/from16 v1, v27

    move/from16 v5, v28

    move/from16 v3, v29

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final ㆃ([BII[I)V
    .locals 5

    add-int/2addr p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 32
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v4, 0xff00

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 p2, p2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ワ;->ౠ:[B

    return-object v0
.end method
