.class public Lnts/ひ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ౠ:[I

.field public static final ᙕ:[I


# instance fields
.field public Ͼ:I

.field public ᇭ:[B

.field public ᰛ:I

.field public ᾨ:[I

.field public ㆃ:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const v0, 0x61707865

    const v1, 0x3320646e

    const v2, 0x79622d32

    const v3, 0x6b206574

    .line 1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v1

    sput-object v1, Lnts/ひ;->ౠ:[I

    const v1, 0x3120646e

    const v2, 0x79622d36

    .line 2
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lnts/ひ;->ᙕ:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 14
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/ひ;->ㆃ:[I

    .line 15
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ひ;->ᾨ:[I

    const/16 v0, 0x40

    .line 16
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ひ;->ᇭ:[B

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lnts/ひ;->ᰛ:I

    const/16 v0, 0x14

    .line 18
    iput v0, p0, Lnts/ひ;->Ͼ:I

    return-void
.end method

.method public static ㆃ(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static ㆃ([BI)I
    .locals 3

    .line 99
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    const/high16 p1, -0x1000000

    and-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static ㆃ(I[I[I[B)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 71
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v4, p0

    :goto_0
    const/4 v5, 0x3

    if-lez v4, :cond_0

    const/4 v6, 0x4

    .line 74
    aget v7, v1, v6

    aget v8, v1, v2

    const/16 v9, 0xc

    aget v10, v1, v9

    add-int/2addr v8, v10

    const/4 v10, 0x7

    invoke-static {v8, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v1, v6

    const/16 v8, 0x8

    aget v11, v1, v8

    aget v12, v1, v2

    add-int/2addr v7, v12

    const/16 v12, 0x9

    invoke-static {v7, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v7

    xor-int/2addr v7, v11

    aput v7, v1, v8

    .line 75
    aget v11, v1, v9

    aget v13, v1, v6

    add-int/2addr v7, v13

    const/16 v13, 0xd

    invoke-static {v7, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v7

    xor-int/2addr v7, v11

    aput v7, v1, v9

    aget v11, v1, v2

    aget v14, v1, v8

    add-int/2addr v7, v14

    const/16 v14, 0x12

    invoke-static {v7, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v7

    xor-int/2addr v7, v11

    aput v7, v1, v2

    .line 76
    aget v7, v1, v12

    const/4 v11, 0x5

    aget v15, v1, v11

    const/16 v16, 0x1

    aget v17, v1, v16

    add-int v15, v15, v17

    invoke-static {v15, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v15

    xor-int/2addr v7, v15

    aput v7, v1, v12

    aget v15, v1, v13

    aget v17, v1, v11

    add-int v7, v7, v17

    invoke-static {v7, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v7

    xor-int/2addr v7, v15

    aput v7, v1, v13

    .line 77
    aget v15, v1, v16

    aget v17, v1, v12

    add-int v7, v7, v17

    invoke-static {v7, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v7

    xor-int/2addr v7, v15

    aput v7, v1, v16

    aget v15, v1, v11

    aget v17, v1, v13

    add-int v7, v7, v17

    invoke-static {v7, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v7

    xor-int/2addr v7, v15

    aput v7, v1, v11

    const/16 v7, 0xe

    .line 78
    aget v15, v1, v7

    const/16 v17, 0xa

    aget v18, v1, v17

    const/16 v19, 0x6

    aget v20, v1, v19

    move/from16 v21, v2

    add-int v2, v18, v20

    invoke-static {v2, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v15

    aput v2, v1, v7

    const/4 v15, 0x2

    aget v18, v1, v15

    aget v20, v1, v17

    add-int v2, v2, v20

    invoke-static {v2, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int v2, v18, v2

    aput v2, v1, v15

    .line 79
    aget v18, v1, v19

    aget v20, v1, v7

    add-int v2, v2, v20

    invoke-static {v2, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int v2, v18, v2

    aput v2, v1, v19

    aget v18, v1, v17

    aget v20, v1, v15

    add-int v2, v2, v20

    invoke-static {v2, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int v2, v18, v2

    aput v2, v1, v17

    .line 80
    aget v2, v1, v5

    const/16 v18, 0xf

    aget v20, v1, v18

    const/16 v22, 0xb

    aget v23, v1, v22

    move/from16 p0, v5

    add-int v5, v20, v23

    invoke-static {v5, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v5

    xor-int/2addr v2, v5

    aput v2, v1, p0

    aget v5, v1, v10

    aget v20, v1, v18

    add-int v2, v2, v20

    invoke-static {v2, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v10

    .line 81
    aget v5, v1, v22

    aget v20, v1, p0

    add-int v2, v2, v20

    invoke-static {v2, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v22

    aget v5, v1, v18

    aget v20, v1, v10

    add-int v2, v2, v20

    invoke-static {v2, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v18

    .line 82
    aget v2, v1, v16

    aget v5, v1, v21

    aget v20, v1, p0

    add-int v5, v5, v20

    invoke-static {v5, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v5

    xor-int/2addr v2, v5

    aput v2, v1, v16

    aget v5, v1, v15

    aget v20, v1, v21

    add-int v2, v2, v20

    invoke-static {v2, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v15

    .line 83
    aget v5, v1, p0

    aget v16, v1, v16

    add-int v2, v2, v16

    invoke-static {v2, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, p0

    aget v5, v1, v21

    aget v15, v1, v15

    add-int/2addr v2, v15

    invoke-static {v2, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v21

    .line 84
    aget v2, v1, v19

    aget v5, v1, v11

    aget v15, v1, v6

    add-int/2addr v5, v15

    invoke-static {v5, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v5

    xor-int/2addr v2, v5

    aput v2, v1, v19

    aget v5, v1, v10

    aget v15, v1, v11

    add-int/2addr v2, v15

    invoke-static {v2, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v10

    .line 85
    aget v5, v1, v6

    aget v15, v1, v19

    add-int/2addr v2, v15

    invoke-static {v2, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v6

    aget v5, v1, v11

    aget v6, v1, v10

    add-int/2addr v2, v6

    invoke-static {v2, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v11

    .line 86
    aget v2, v1, v22

    aget v5, v1, v17

    aget v6, v1, v12

    add-int/2addr v5, v6

    invoke-static {v5, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v5

    xor-int/2addr v2, v5

    aput v2, v1, v22

    aget v5, v1, v8

    aget v6, v1, v17

    add-int/2addr v2, v6

    invoke-static {v2, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v8

    .line 87
    aget v5, v1, v12

    aget v6, v1, v22

    add-int/2addr v2, v6

    invoke-static {v2, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v12

    aget v5, v1, v17

    aget v6, v1, v8

    add-int/2addr v2, v6

    invoke-static {v2, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v17

    .line 88
    aget v2, v1, v9

    aget v5, v1, v18

    aget v6, v1, v7

    add-int/2addr v5, v6

    invoke-static {v5, v10}, Lnts/ひ;->ㆃ(II)I

    move-result v5

    xor-int/2addr v2, v5

    aput v2, v1, v9

    aget v5, v1, v13

    aget v6, v1, v18

    add-int/2addr v2, v6

    invoke-static {v2, v12}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v13

    .line 89
    aget v5, v1, v7

    aget v6, v1, v9

    add-int/2addr v2, v6

    invoke-static {v2, v13}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v7

    aget v5, v1, v18

    aget v6, v1, v13

    add-int/2addr v2, v6

    invoke-static {v2, v14}, Lnts/ひ;->ㆃ(II)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v1, v18

    add-int/lit8 v4, v4, -0x2

    move/from16 v2, v21

    goto/16 :goto_0

    :cond_0
    move/from16 v21, v2

    move/from16 p0, v5

    :goto_1
    if-ge v2, v3, :cond_1

    .line 93
    aget v4, v1, v2

    aget v5, v0, v2

    add-int/2addr v4, v5

    aput v4, v1, v2

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v6, v5, 0x1

    int-to-byte v7, v4

    .line 95
    aput-byte v7, p3, v5

    add-int/lit8 v7, v5, 0x2

    ushr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    .line 96
    aput-byte v8, p3, v6

    add-int/lit8 v5, v5, 0x3

    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    .line 97
    aput-byte v6, p3, v7

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    .line 98
    aput-byte v4, p3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lnts/ひ;->ㆃ:[I

    iget-object v1, p0, Lnts/ひ;->ᾨ:[I

    iget-object v2, p0, Lnts/ひ;->ᇭ:[B

    iget v3, p0, Lnts/ひ;->ᰛ:I

    iget v4, p0, Lnts/ひ;->Ͼ:I

    const/4 v5, 0x0

    .line 61
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_1

    add-int v6, v5, v3

    .line 62
    rem-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_0

    .line 65
    invoke-static {v4, v0, v1, v2}, Lnts/ひ;->ㆃ(I[I[I[B)V

    const/16 v7, 0x8

    .line 66
    aget v8, v0, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v7

    if-nez v8, :cond_0

    const/16 v7, 0x9

    .line 67
    aget v8, v0, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v7

    .line 68
    :cond_0
    aget-byte v6, v2, v6

    aget-byte v7, p1, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget v0, p0, Lnts/ひ;->ᰛ:I

    array-length p1, p1

    add-int/2addr v0, p1

    and-int/lit8 p1, v0, 0x3f

    .line 70
    iput p1, p0, Lnts/ひ;->ᰛ:I

    return-void
.end method

.method public ㆃ([B[BJII)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lnts/ひ;->ㆃ:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v8, p6

    if-ne v8, v7, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    const/16 v9, 0x25

    const/16 v10, 0x20

    const/16 v11, 0x10

    if-nez v8, :cond_2

    .line 2
    array-length v12, v1

    if-eq v12, v10, :cond_2

    array-length v12, v1

    if-ne v12, v11, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x62

    invoke-static {v6, v9, v2}, Lnts/ࡁ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/16 v12, 0x40

    if-eqz v8, :cond_4

    .line 3
    array-length v13, v1

    if-ne v13, v10, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x1f

    invoke-static {v9, v2, v12}, Lnts/ࡁ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    const/16 v9, 0x8

    if-nez v8, :cond_6

    .line 4
    array-length v13, v2

    if-ne v13, v9, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x22

    const/16 v3, 0x1a

    const/16 v4, 0x44

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_3
    const/16 v13, 0x18

    if-eqz v8, :cond_8

    .line 5
    array-length v14, v2

    if-ne v14, v13, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x24

    const/16 v3, 0x7f

    const/16 v4, 0x66

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_8
    :goto_4
    array-length v14, v1

    if-ne v14, v11, :cond_9

    move v14, v7

    goto :goto_5

    :cond_9
    move v14, v6

    :goto_5
    move v15, v6

    move/from16 v16, v7

    :goto_6
    const/4 v7, 0x4

    if-ge v15, v7, :cond_b

    mul-int/lit8 v7, v15, 0x5

    if-eqz v14, :cond_a

    .line 10
    sget-object v17, Lnts/ひ;->ᙕ:[I

    aget v17, v17, v15

    goto :goto_7

    :cond_a
    sget-object v17, Lnts/ひ;->ౠ:[I

    aget v17, v17, v15

    :goto_7
    aput v17, v5, v7

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 14
    :cond_b
    invoke-static {v1, v6}, Lnts/ひ;->ㆃ([BI)I

    move-result v15

    aput v15, v5, v16

    .line 15
    invoke-static {v1, v7}, Lnts/ひ;->ㆃ([BI)I

    move-result v15

    const/16 v17, 0x2

    aput v15, v5, v17

    .line 16
    invoke-static {v1, v9}, Lnts/ひ;->ㆃ([BI)I

    move-result v15

    const/16 v18, 0x3

    aput v15, v5, v18

    const/16 v15, 0xc

    .line 17
    invoke-static {v1, v15}, Lnts/ひ;->ㆃ([BI)I

    move-result v19

    aput v19, v5, v7

    move/from16 p6, v10

    if-eqz v14, :cond_c

    move v10, v6

    goto :goto_8

    :cond_c
    move v10, v11

    .line 19
    :goto_8
    invoke-static {v1, v10}, Lnts/ひ;->ㆃ([BI)I

    move-result v10

    const/16 v19, 0xb

    aput v10, v5, v19

    const/16 v10, 0x14

    if-eqz v14, :cond_d

    move v13, v7

    goto :goto_9

    :cond_d
    move v13, v10

    .line 20
    :goto_9
    invoke-static {v1, v13}, Lnts/ひ;->ㆃ([BI)I

    move-result v13

    aput v13, v5, v15

    if-eqz v14, :cond_e

    move v13, v9

    goto :goto_a

    :cond_e
    const/16 v13, 0x18

    .line 21
    :goto_a
    invoke-static {v1, v13}, Lnts/ひ;->ㆃ([BI)I

    move-result v13

    const/16 v20, 0xd

    aput v13, v5, v20

    if-eqz v14, :cond_f

    move v13, v15

    goto :goto_b

    :cond_f
    const/16 v13, 0x1c

    .line 22
    :goto_b
    invoke-static {v1, v13}, Lnts/ひ;->ㆃ([BI)I

    move-result v1

    const/16 v13, 0xe

    aput v1, v5, v13

    .line 25
    invoke-static {v2, v6}, Lnts/ひ;->ㆃ([BI)I

    move-result v1

    const/4 v14, 0x6

    aput v1, v5, v14

    .line 26
    invoke-static {v2, v7}, Lnts/ひ;->ㆃ([BI)I

    move-result v1

    const/16 v21, 0x7

    aput v1, v5, v21

    long-to-int v1, v3

    .line 29
    aput v1, v5, v9

    ushr-long v3, v3, p6

    long-to-int v3, v3

    const/16 v4, 0x9

    .line 30
    aput v3, v5, v4

    if-nez v8, :cond_10

    goto :goto_c

    .line 35
    :cond_10
    invoke-static {v2, v9}, Lnts/ひ;->ㆃ([BI)I

    move-result v8

    aput v8, v5, v9

    .line 36
    invoke-static {v2, v15}, Lnts/ひ;->ㆃ([BI)I

    move-result v8

    aput v8, v5, v4

    .line 39
    new-array v8, v11, [I

    .line 40
    new-array v12, v12, [B

    invoke-static {v10, v5, v8, v12}, Lnts/ひ;->ㆃ(I[I[I[B)V

    .line 42
    aget v12, v8, v6

    aget v6, v5, v6

    sub-int/2addr v12, v6

    aput v12, v5, v16

    const/4 v6, 0x5

    .line 43
    aget v12, v8, v6

    aget v6, v5, v6

    sub-int/2addr v12, v6

    aput v12, v5, v17

    const/16 v6, 0xa

    .line 44
    aget v12, v8, v6

    aget v6, v5, v6

    sub-int/2addr v12, v6

    aput v12, v5, v18

    const/16 v6, 0xf

    .line 45
    aget v12, v8, v6

    aget v6, v5, v6

    sub-int/2addr v12, v6

    aput v12, v5, v7

    .line 47
    aget v6, v8, v14

    aget v7, v5, v14

    sub-int/2addr v6, v7

    aput v6, v5, v19

    .line 48
    aget v6, v8, v21

    aget v7, v5, v21

    sub-int/2addr v6, v7

    aput v6, v5, v15

    .line 49
    aget v6, v8, v9

    aget v7, v5, v9

    sub-int/2addr v6, v7

    aput v6, v5, v20

    .line 50
    aget v6, v8, v4

    aget v7, v5, v4

    sub-int/2addr v6, v7

    aput v6, v5, v13

    .line 53
    invoke-static {v2, v11}, Lnts/ひ;->ㆃ([BI)I

    move-result v6

    aput v6, v5, v14

    .line 54
    invoke-static {v2, v10}, Lnts/ひ;->ㆃ([BI)I

    move-result v2

    aput v2, v5, v21

    .line 57
    aput v1, v5, v9

    .line 58
    aput v3, v5, v4

    :goto_c
    move/from16 v1, p5

    .line 59
    iput v1, v0, Lnts/ひ;->Ͼ:I

    return-void
.end method
