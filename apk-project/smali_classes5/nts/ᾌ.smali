.class public Lnts/ᾌ;
.super Lnts/ዃ;
.source "SourceFile"


# instance fields
.field public Ͼ:[I

.field public ౠ:[I

.field public ᙕ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ᾌ;->Ͼ:[I

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ᾌ;->ౠ:[I

    const/16 v0, 0x40

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ᾌ;->ᙕ:[B

    const/16 v0, 0x80

    .line 7
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 8
    invoke-virtual {p0}, Lnts/ᾌ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᾌ;

    invoke-direct {v0}, Lnts/ᾌ;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lnts/ᾌ;->Ͼ:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 3
    iget-object v4, v0, Lnts/ᾌ;->Ͼ:[I

    aget v3, v3, v2

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :goto_1
    iget-object v3, p0, Lnts/ᾌ;->ౠ:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 6
    iget-object v4, v0, Lnts/ᾌ;->ౠ:[I

    aget v3, v3, v2

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    :goto_2
    iget-object v2, p0, Lnts/ᾌ;->ᙕ:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 9
    iget-object v3, v0, Lnts/ᾌ;->ᙕ:[B

    aget-byte v2, v2, v1

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public final ᇭ([B)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    iget-object v2, v0, Lnts/ᾌ;->Ͼ:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 70
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 71
    aget v8, v2, v7

    const/4 v9, 0x3

    .line 72
    aget v2, v2, v9

    .line 73
    array-length v10, v1

    const/4 v11, 0x4

    div-int/2addr v10, v11

    .line 74
    new-array v12, v10, [I

    move v13, v3

    move v14, v13

    :goto_0
    const/16 v15, 0x8

    if-ge v13, v10, :cond_0

    add-int/lit8 v16, v14, 0x1

    move/from16 v17, v3

    .line 78
    aget-byte v3, v1, v14

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v18, v14, 0x2

    aget-byte v16, v1, v16

    shl-int/lit8 v15, v16, 0x8

    const v16, 0xff00

    and-int v15, v15, v16

    or-int/2addr v3, v15

    add-int/lit8 v15, v14, 0x3

    aget-byte v16, v1, v18

    shl-int/lit8 v16, v16, 0x10

    const/high16 v18, 0xff0000

    and-int v16, v16, v18

    or-int v3, v3, v16

    add-int/2addr v14, v11

    aget-byte v15, v1, v15

    shl-int/lit8 v15, v15, 0x18

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    or-int/2addr v3, v15

    aput v3, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v17

    goto :goto_0

    :cond_0
    move/from16 v17, v3

    and-int v1, v6, v8

    not-int v3, v6

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 79
    aget v3, v12, v17

    const v10, -0x28955b88

    invoke-static {v1, v3, v10, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v3, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v3

    add-int/2addr v1, v6

    and-int v3, v1, v6

    not-int v4, v1

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    .line 80
    aget v4, v12, v5

    const v10, -0x173848aa

    invoke-static {v3, v4, v10, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v3, v2, 0xc

    ushr-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v3

    add-int/2addr v2, v1

    and-int v3, v2, v1

    not-int v4, v2

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    .line 81
    aget v4, v12, v7

    const v10, 0x242070db

    invoke-static {v3, v4, v10, v8}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0x11

    const/16 v8, 0xf

    ushr-int/2addr v3, v8

    or-int/2addr v3, v4

    add-int/2addr v3, v2

    and-int v4, v3, v2

    not-int v10, v3

    and-int/2addr v10, v1

    or-int/2addr v4, v10

    .line 82
    aget v10, v12, v9

    const v13, -0x3e423112

    invoke-static {v4, v10, v13, v6}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0x16

    const/16 v10, 0xa

    ushr-int/2addr v4, v10

    or-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int v6, v4, v3

    not-int v13, v4

    and-int/2addr v13, v2

    or-int/2addr v6, v13

    .line 83
    aget v13, v12, v11

    const v14, -0xa83f051

    invoke-static {v6, v13, v14, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v6, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v6

    add-int/2addr v1, v4

    and-int v6, v1, v4

    not-int v13, v1

    and-int/2addr v13, v3

    or-int/2addr v6, v13

    const/4 v13, 0x5

    .line 84
    aget v14, v12, v13

    move/from16 v16, v5

    const v5, 0x4787c62a

    invoke-static {v6, v14, v5, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xc

    ushr-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v1

    not-int v6, v2

    and-int/2addr v6, v4

    or-int/2addr v5, v6

    const/4 v6, 0x6

    .line 85
    aget v14, v12, v6

    move/from16 p1, v6

    const v6, -0x57cfb9ed

    invoke-static {v5, v14, v6, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x11

    ushr-int/2addr v3, v8

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v2

    not-int v6, v3

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x7

    .line 86
    aget v14, v12, v6

    move/from16 v18, v6

    const v6, -0x2b96aff

    invoke-static {v5, v14, v6, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x16

    ushr-int/2addr v4, v10

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int v5, v4, v3

    not-int v6, v4

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    .line 87
    aget v6, v12, v15

    const v14, 0x698098d8

    invoke-static {v5, v6, v14, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    and-int v5, v1, v4

    not-int v6, v1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x9

    .line 88
    aget v14, v12, v6

    move/from16 v19, v6

    const v6, -0x74bb0851

    invoke-static {v5, v14, v6, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xc

    ushr-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v1

    not-int v6, v2

    and-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 89
    aget v6, v12, v10

    const v14, -0xa44f

    invoke-static {v5, v6, v14, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x11

    ushr-int/2addr v3, v8

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v2

    not-int v6, v3

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xb

    .line 90
    aget v14, v12, v6

    move/from16 v20, v6

    const v6, -0x76a32842

    invoke-static {v5, v14, v6, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x16

    ushr-int/2addr v4, v10

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int v5, v4, v3

    not-int v6, v4

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xc

    .line 91
    aget v14, v12, v6

    move/from16 v21, v6

    const v6, 0x6b901122

    invoke-static {v5, v14, v6, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    and-int v5, v1, v4

    not-int v6, v1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xd

    .line 92
    aget v6, v12, v6

    const v14, -0x2678e6d

    invoke-static {v5, v6, v14, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xc

    ushr-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v1

    not-int v6, v2

    and-int v14, v6, v4

    or-int/2addr v5, v14

    const/16 v14, 0xe

    move/from16 v22, v7

    .line 93
    aget v7, v12, v14

    move/from16 v23, v8

    const v8, -0x5986bc72

    invoke-static {v5, v7, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x11

    ushr-int/lit8 v3, v3, 0xf

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v2

    not-int v7, v3

    and-int v8, v7, v1

    or-int/2addr v5, v8

    .line 94
    aget v8, v12, v23

    move/from16 v24, v9

    const v9, 0x49b40821

    invoke-static {v5, v8, v9, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x16

    ushr-int/2addr v4, v10

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int v5, v4, v2

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    .line 97
    aget v6, v12, v16

    const v8, -0x9e1da9e

    invoke-static {v5, v6, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    and-int v5, v1, v3

    and-int v6, v4, v7

    or-int/2addr v5, v6

    .line 98
    aget v6, v12, p1

    const v7, -0x3fbf4cc0

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0x9

    ushr-int/lit8 v2, v2, 0x17

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v4

    not-int v6, v4

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    .line 99
    aget v6, v12, v20

    const v7, 0x265e5a51

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xe

    ushr-int/lit8 v3, v3, 0x12

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v1

    not-int v6, v1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    .line 100
    aget v6, v12, v17

    const v7, -0x16493856

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x14

    ushr-int/lit8 v4, v4, 0xc

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int v5, v4, v2

    not-int v6, v2

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    .line 101
    aget v6, v12, v13

    const v7, -0x29d0efa3

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    and-int v5, v1, v3

    not-int v6, v3

    and-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 102
    aget v6, v12, v10

    const v7, 0x2441453

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0x9

    ushr-int/lit8 v2, v2, 0x17

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v4

    not-int v6, v4

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    .line 103
    aget v6, v12, v23

    const v7, -0x275e197f

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xe

    ushr-int/lit8 v3, v3, 0x12

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v1

    not-int v6, v1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    .line 104
    aget v6, v12, v11

    const v7, -0x182c0438

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x14

    ushr-int/lit8 v4, v4, 0xc

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int v5, v4, v2

    not-int v6, v2

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    .line 105
    aget v6, v12, v19

    const v7, 0x21e1cde6

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    and-int v5, v1, v3

    not-int v6, v3

    and-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 106
    aget v6, v12, v14

    const v7, -0x3cc8f82a

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0x9

    ushr-int/lit8 v2, v2, 0x17

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v4

    not-int v6, v4

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    .line 107
    aget v6, v12, v24

    const v7, -0xb2af279

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xe

    ushr-int/lit8 v3, v3, 0x12

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v1

    not-int v6, v1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    .line 108
    aget v6, v12, v15

    const v7, 0x455a14ed

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x14

    ushr-int/lit8 v4, v4, 0xc

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int v5, v4, v2

    not-int v6, v2

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xd

    .line 109
    aget v6, v12, v6

    const v7, -0x561c16fb

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    and-int v5, v1, v3

    not-int v6, v3

    and-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 110
    aget v6, v12, v22

    const v7, -0x3105c08

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0x9

    ushr-int/lit8 v2, v2, 0x17

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    and-int v5, v2, v4

    not-int v6, v4

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    .line 111
    aget v6, v12, v18

    const v7, 0x676f02d9

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xe

    ushr-int/lit8 v3, v3, 0x12

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    and-int v5, v3, v1

    not-int v6, v1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    .line 112
    aget v6, v12, v21

    const v7, -0x72d5b376

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x14

    ushr-int/lit8 v4, v4, 0xc

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    xor-int v5, v4, v3

    xor-int/2addr v5, v2

    .line 115
    aget v6, v12, v13

    const v7, -0x5c6be

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    xor-int v5, v1, v4

    xor-int/2addr v5, v3

    .line 116
    aget v6, v12, v15

    const v7, -0x788e097f

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xb

    ushr-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    xor-int v5, v2, v1

    xor-int/2addr v5, v4

    .line 117
    aget v6, v12, v20

    const v7, 0x6d9d6122

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    xor-int v5, v3, v2

    xor-int/2addr v5, v1

    .line 118
    aget v6, v12, v14

    const v7, -0x21ac7f4

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x17

    ushr-int/lit8 v4, v4, 0x9

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    xor-int v5, v4, v3

    xor-int/2addr v5, v2

    .line 119
    aget v6, v12, v16

    const v7, -0x5b4115bc

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    xor-int v5, v1, v4

    xor-int/2addr v5, v3

    .line 120
    aget v6, v12, v11

    const v7, 0x4bdecfa9    # 2.9204306E7f

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xb

    ushr-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    xor-int v5, v2, v1

    xor-int/2addr v5, v4

    .line 121
    aget v6, v12, v18

    const v7, -0x944b4a0

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    xor-int v5, v3, v2

    xor-int/2addr v5, v1

    .line 122
    aget v6, v12, v10

    const v7, -0x41404390

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x17

    ushr-int/lit8 v4, v4, 0x9

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    xor-int v5, v4, v3

    xor-int/2addr v5, v2

    const/16 v6, 0xd

    .line 123
    aget v6, v12, v6

    const v7, 0x289b7ec6

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    xor-int v5, v1, v4

    xor-int/2addr v5, v3

    .line 124
    aget v6, v12, v17

    const v7, -0x155ed806

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xb

    ushr-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    xor-int v5, v2, v1

    xor-int/2addr v5, v4

    .line 125
    aget v6, v12, v24

    const v7, -0x2b10cf7b

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    xor-int v5, v3, v2

    xor-int/2addr v5, v1

    .line 126
    aget v6, v12, p1

    const v7, 0x4881d05    # 3.2000097E-36f

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x17

    ushr-int/lit8 v4, v4, 0x9

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    xor-int v5, v4, v3

    xor-int/2addr v5, v2

    .line 127
    aget v6, v12, v19

    const v7, -0x262b2fc7

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    xor-int v5, v1, v4

    xor-int/2addr v5, v3

    .line 128
    aget v6, v12, v21

    const v7, -0x1924661b

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xb

    ushr-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    xor-int v5, v2, v1

    xor-int/2addr v5, v4

    .line 129
    aget v6, v12, v23

    const v7, 0x1fa27cf8

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    xor-int v5, v3, v2

    xor-int/2addr v5, v1

    .line 130
    aget v6, v12, v22

    const v7, -0x3b53a99b

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x17

    ushr-int/lit8 v4, v4, 0x9

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    not-int v5, v2

    or-int/2addr v5, v4

    xor-int/2addr v5, v3

    .line 133
    aget v6, v12, v17

    const v7, -0xbd6ddbc

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    not-int v5, v3

    or-int/2addr v5, v1

    xor-int/2addr v5, v4

    .line 134
    aget v6, v12, v18

    const v7, 0x432aff97

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xa

    ushr-int/lit8 v2, v2, 0x16

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    not-int v5, v4

    or-int/2addr v5, v2

    xor-int/2addr v5, v1

    .line 135
    aget v6, v12, v14

    const v7, -0x546bdc59

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xf

    ushr-int/lit8 v3, v3, 0x11

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    not-int v5, v1

    or-int/2addr v5, v3

    xor-int/2addr v5, v2

    .line 136
    aget v6, v12, v13

    const v7, -0x36c5fc7

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x15

    ushr-int/lit8 v4, v4, 0xb

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    not-int v5, v2

    or-int/2addr v5, v4

    xor-int/2addr v5, v3

    .line 137
    aget v6, v12, v21

    const v7, 0x655b59c3

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    not-int v5, v3

    or-int/2addr v5, v1

    xor-int/2addr v5, v4

    .line 138
    aget v6, v12, v24

    const v7, -0x70f3336e

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xa

    ushr-int/lit8 v2, v2, 0x16

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    not-int v5, v4

    or-int/2addr v5, v2

    xor-int/2addr v5, v1

    .line 139
    aget v6, v12, v10

    const v7, -0x100b83

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xf

    ushr-int/lit8 v3, v3, 0x11

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    not-int v5, v1

    or-int/2addr v5, v3

    xor-int/2addr v5, v2

    .line 140
    aget v6, v12, v16

    const v7, -0x7a7ba22f

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x15

    ushr-int/lit8 v4, v4, 0xb

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    not-int v5, v2

    or-int/2addr v5, v4

    xor-int/2addr v5, v3

    .line 141
    aget v6, v12, v15

    const v7, 0x6fa87e4f

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    not-int v5, v3

    or-int/2addr v5, v1

    xor-int/2addr v5, v4

    .line 142
    aget v6, v12, v23

    const v7, -0x1d31920

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xa

    ushr-int/lit8 v2, v2, 0x16

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    not-int v5, v4

    or-int/2addr v5, v2

    xor-int/2addr v5, v1

    .line 143
    aget v6, v12, p1

    const v7, -0x5cfebcec

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xf

    ushr-int/lit8 v3, v3, 0x11

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    not-int v5, v1

    or-int/2addr v5, v3

    xor-int/2addr v5, v2

    const/16 v6, 0xd

    .line 144
    aget v6, v12, v6

    const v7, 0x4e0811a1    # 5.7071418E8f

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x15

    ushr-int/lit8 v4, v4, 0xb

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    not-int v5, v2

    or-int/2addr v5, v4

    xor-int/2addr v5, v3

    .line 145
    aget v6, v12, v11

    const v7, -0x8ac817e

    invoke-static {v5, v6, v7, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    not-int v5, v3

    or-int/2addr v5, v1

    xor-int/2addr v5, v4

    .line 146
    aget v6, v12, v20

    const v7, -0x42c50dcb

    invoke-static {v5, v6, v7, v2}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v2

    shl-int/lit8 v5, v2, 0xa

    ushr-int/lit8 v2, v2, 0x16

    or-int/2addr v2, v5

    add-int/2addr v2, v1

    not-int v5, v4

    or-int/2addr v5, v2

    xor-int/2addr v5, v1

    .line 147
    aget v6, v12, v22

    const v7, 0x2ad7d2bb

    invoke-static {v5, v6, v7, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v5, v3, 0xf

    ushr-int/lit8 v3, v3, 0x11

    or-int/2addr v3, v5

    add-int/2addr v3, v2

    not-int v5, v1

    or-int/2addr v5, v3

    xor-int/2addr v5, v2

    .line 148
    aget v6, v12, v19

    const v7, -0x14792c6f

    invoke-static {v5, v6, v7, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v5, v4, 0x15

    ushr-int/lit8 v4, v4, 0xb

    or-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 150
    iget-object v5, v0, Lnts/ᾌ;->Ͼ:[I

    aget v6, v5, v17

    add-int/2addr v6, v1

    aput v6, v5, v17

    .line 151
    aget v1, v5, v16

    add-int/2addr v1, v4

    aput v1, v5, v16

    .line 152
    aget v1, v5, v22

    add-int/2addr v1, v3

    aput v1, v5, v22

    .line 153
    aget v1, v5, v24

    add-int/2addr v1, v2

    aput v1, v5, v24

    return-void
.end method

.method public ᇭ([BII)V
    .locals 9

    .line 1
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lnts/ᾌ;->ౠ:[I

    aget v2, v0, v1

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v4, p3, 0x3

    add-int/2addr v2, v4

    .line 13
    aput v2, v0, v1

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v7, v4

    cmp-long v2, v5, v7

    const/4 v4, 0x1

    if-gez v2, :cond_0

    .line 14
    aget v2, v0, v4

    add-int/2addr v2, v4

    aput v2, v0, v4

    .line 15
    :cond_0
    aget v2, v0, v4

    ushr-int/lit8 v5, p3, 0x1d

    add-int/2addr v2, v5

    aput v2, v0, v4

    rsub-int/lit8 v0, v3, 0x40

    if-lt p3, v0, :cond_2

    .line 22
    iget-object v2, p0, Lnts/ᾌ;->ᙕ:[B

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v2, p0, Lnts/ᾌ;->ᙕ:[B

    invoke-virtual {p0, v2}, Lnts/ᾌ;->ᇭ([B)V

    const/16 v2, 0x40

    .line 25
    new-array v3, v2, [B

    :goto_0
    add-int/lit8 v4, v0, 0x3f

    if-ge v4, p3, :cond_1

    add-int v4, v0, p2

    .line 28
    invoke-static {p1, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-virtual {p0, v3}, Lnts/ᾌ;->ᇭ([B)V

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_1
    move v3, v1

    move v1, v0

    :cond_2
    add-int/2addr p2, v1

    .line 38
    iget-object v0, p0, Lnts/ᾌ;->ᙕ:[B

    sub-int/2addr p3, v1

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 39
    :cond_3
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x54

    const-string p3, "\u000b\u0003qe+0`%+?>()*<,2y19K_\u0011\nZ\u001f\u0011\u0005\u0004\u0012\u0013\u0010\u0006\u0016\u0008C"

    const/16 v0, 0x12

    .line 40
    invoke-static {p3, v1, v0, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2be

    .line 41
    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᇭ()[B
    .locals 5

    .line 42
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lnts/ᾌ;->ౠ:[I

    invoke-virtual {p0, v0}, Lnts/ᾌ;->ㆃ([I)[B

    move-result-object v0

    .line 51
    iget-object v1, p0, Lnts/ᾌ;->ౠ:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    ushr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0x38

    if-ge v1, v3, :cond_0

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, v1, 0x78

    .line 54
    :goto_0
    new-array v1, v3, [B

    const/16 v4, -0x80

    .line 55
    aput-byte v4, v1, v2

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v3, :cond_1

    .line 57
    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p0, v1, v2, v3}, Lnts/ᾌ;->ᇭ([BII)V

    .line 61
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lnts/ᾌ;->ᇭ([BII)V

    .line 63
    iget-object v0, p0, Lnts/ᾌ;->Ͼ:[I

    invoke-virtual {p0, v0}, Lnts/ᾌ;->ㆃ([I)[B

    move-result-object v0

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    .line 65
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0

    .line 66
    :cond_2
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x7c

    const-string v2, "\u000b\u0003qe+0`%+?>()*<,2y19K_\u0011\nZ\u001f\u0011\u0005\u0004\u0012\u0013\u0010\u0006\u0016\u0008C"

    const/16 v3, 0x12

    .line 67
    invoke-static {v2, v3, v3, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2be

    .line 68
    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᰛ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ᾌ;->ౠ:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    .line 3
    iget-object v0, p0, Lnts/ᾌ;->Ͼ:[I

    const v3, 0x67452301

    aput v3, v0, v2

    const v3, -0x10325477

    .line 4
    aput v3, v0, v1

    const/4 v1, 0x2

    const v3, -0x67452302

    .line 5
    aput v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x10325476

    .line 6
    aput v3, v0, v1

    move v0, v2

    .line 8
    :goto_0
    iget-object v1, p0, Lnts/ᾌ;->ᙕ:[B

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 9
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ㆃ([I)[B
    .locals 8

    .line 1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget v5, p1, v3

    int-to-byte v6, v5

    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x2

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    .line 6
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    .line 7
    aput-byte v7, v1, v6

    add-int/lit8 v2, v2, 0x4

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    .line 8
    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
