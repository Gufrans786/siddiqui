.class public Lnts/き;
.super Lnts/ዃ;
.source "SourceFile"


# instance fields
.field public Ͼ:[I

.field public ౠ:[B

.field public ዲ:J

.field public ᙕ:[I

.field public て:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/き;->Ͼ:[I

    const/16 v0, 0x40

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/き;->ౠ:[B

    const/16 v0, 0x10

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/き;->ᙕ:[I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnts/き;->て:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lnts/き;->ዲ:J

    const/16 v0, 0x80

    .line 9
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 10
    invoke-virtual {p0}, Lnts/き;->ᰛ()V

    return-void
.end method


# virtual methods
.method public final Ͼ()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lnts/き;->Ͼ:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 2
    aget v5, v1, v4

    const/4 v6, 0x2

    .line 3
    aget v7, v1, v6

    const/4 v8, 0x3

    .line 4
    aget v1, v1, v8

    move v9, v2

    move v10, v9

    :goto_0
    const/16 v11, 0x10

    const/16 v12, 0x8

    const/4 v13, 0x4

    if-ge v9, v11, :cond_0

    .line 7
    iget-object v11, v0, Lnts/き;->ᙕ:[I

    iget-object v14, v0, Lnts/き;->ౠ:[B

    add-int/lit8 v15, v10, 0x1

    move/from16 v16, v4

    aget-byte v4, v14, v10

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v17, v10, 0x2

    aget-byte v15, v14, v15

    shl-int/lit8 v12, v15, 0x8

    const v15, 0xff00

    and-int/2addr v12, v15

    or-int/2addr v4, v12

    add-int/lit8 v12, v10, 0x3

    aget-byte v15, v14, v17

    shl-int/lit8 v15, v15, 0x10

    const/high16 v17, 0xff0000

    and-int v15, v15, v17

    or-int/2addr v4, v15

    add-int/2addr v10, v13

    aget-byte v12, v14, v12

    shl-int/lit8 v12, v12, 0x18

    const/high16 v13, -0x1000000

    and-int/2addr v12, v13

    or-int/2addr v4, v12

    aput v4, v11, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    goto :goto_0

    :cond_0
    move/from16 v16, v4

    and-int v4, v5, v7

    not-int v9, v5

    and-int/2addr v9, v1

    or-int/2addr v4, v9

    .line 15
    iget-object v9, v0, Lnts/き;->ᙕ:[I

    aget v10, v9, v2

    add-int/2addr v4, v10

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x3

    ushr-int/lit8 v4, v4, 0x1d

    or-int/2addr v3, v4

    and-int v4, v3, v5

    not-int v11, v3

    and-int/2addr v11, v7

    or-int/2addr v4, v11

    .line 16
    aget v11, v9, v16

    add-int/2addr v4, v11

    add-int/2addr v4, v1

    shl-int/lit8 v1, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v1, v4

    and-int v4, v1, v3

    not-int v11, v1

    and-int/2addr v11, v5

    or-int/2addr v4, v11

    .line 17
    aget v11, v9, v6

    add-int/2addr v4, v11

    add-int/2addr v4, v7

    shl-int/lit8 v7, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v4, v7

    and-int v7, v4, v1

    not-int v11, v4

    and-int/2addr v11, v3

    or-int/2addr v7, v11

    .line 18
    aget v11, v9, v8

    add-int/2addr v7, v11

    add-int/2addr v7, v5

    shl-int/lit8 v5, v7, 0x13

    const/16 v11, 0xd

    ushr-int/2addr v7, v11

    or-int/2addr v5, v7

    and-int v7, v5, v4

    not-int v14, v5

    and-int/2addr v14, v1

    or-int/2addr v7, v14

    .line 19
    aget v14, v9, v13

    add-int/2addr v7, v14

    add-int/2addr v7, v3

    shl-int/lit8 v3, v7, 0x3

    ushr-int/lit8 v7, v7, 0x1d

    or-int/2addr v3, v7

    and-int v7, v3, v5

    not-int v14, v3

    and-int/2addr v14, v4

    or-int/2addr v7, v14

    const/4 v14, 0x5

    .line 20
    aget v15, v9, v14

    add-int/2addr v7, v15

    add-int/2addr v7, v1

    shl-int/lit8 v1, v7, 0x7

    ushr-int/lit8 v7, v7, 0x19

    or-int/2addr v1, v7

    and-int v7, v1, v3

    not-int v15, v1

    and-int/2addr v15, v5

    or-int/2addr v7, v15

    const/4 v15, 0x6

    .line 21
    aget v17, v9, v15

    add-int v7, v7, v17

    add-int/2addr v7, v4

    shl-int/lit8 v4, v7, 0xb

    ushr-int/lit8 v7, v7, 0x15

    or-int/2addr v4, v7

    and-int v7, v4, v1

    move/from16 v17, v6

    not-int v6, v4

    and-int/2addr v6, v3

    or-int/2addr v6, v7

    const/4 v7, 0x7

    .line 22
    aget v18, v9, v7

    add-int v6, v6, v18

    add-int/2addr v6, v5

    shl-int/lit8 v5, v6, 0x13

    ushr-int/2addr v6, v11

    or-int/2addr v5, v6

    and-int v6, v5, v4

    move/from16 v18, v7

    not-int v7, v5

    and-int/2addr v7, v1

    or-int/2addr v6, v7

    .line 23
    aget v7, v9, v12

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    shl-int/lit8 v3, v6, 0x3

    ushr-int/lit8 v6, v6, 0x1d

    or-int/2addr v3, v6

    and-int v6, v3, v5

    not-int v7, v3

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    const/16 v7, 0x9

    .line 24
    aget v19, v9, v7

    add-int v6, v6, v19

    add-int/2addr v6, v1

    shl-int/lit8 v1, v6, 0x7

    ushr-int/lit8 v6, v6, 0x19

    or-int/2addr v1, v6

    and-int v6, v1, v3

    move/from16 v19, v7

    not-int v7, v1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    const/16 v7, 0xa

    .line 25
    aget v7, v9, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    shl-int/lit8 v4, v6, 0xb

    ushr-int/lit8 v6, v6, 0x15

    or-int/2addr v4, v6

    and-int v6, v4, v1

    not-int v7, v4

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    const/16 v7, 0xb

    .line 26
    aget v20, v9, v7

    add-int v6, v6, v20

    add-int/2addr v6, v5

    shl-int/lit8 v5, v6, 0x13

    ushr-int/2addr v6, v11

    or-int/2addr v5, v6

    and-int v6, v5, v4

    move/from16 v20, v7

    not-int v7, v5

    and-int/2addr v7, v1

    or-int/2addr v6, v7

    const/16 v7, 0xc

    .line 27
    aget v7, v9, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    shl-int/lit8 v3, v6, 0x3

    ushr-int/lit8 v6, v6, 0x1d

    or-int/2addr v3, v6

    and-int v6, v3, v5

    not-int v7, v3

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    .line 28
    aget v7, v9, v11

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    shl-int/lit8 v1, v6, 0x7

    ushr-int/lit8 v6, v6, 0x19

    or-int/2addr v1, v6

    and-int v6, v1, v3

    not-int v7, v1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    const/16 v7, 0xe

    .line 29
    aget v7, v9, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    shl-int/lit8 v4, v6, 0xb

    ushr-int/lit8 v6, v6, 0x15

    or-int/2addr v4, v6

    and-int v6, v4, v1

    not-int v7, v4

    and-int/2addr v7, v3

    or-int/2addr v7, v6

    const/16 v21, 0xf

    .line 30
    aget v22, v9, v21

    add-int v7, v7, v22

    add-int/2addr v7, v5

    shl-int/lit8 v5, v7, 0x13

    ushr-int/2addr v7, v11

    or-int/2addr v5, v7

    and-int v7, v5, v4

    or-int v22, v4, v1

    and-int v22, v22, v5

    or-int v6, v22, v6

    move/from16 v22, v8

    const v8, 0x5a827999

    .line 34
    invoke-static {v6, v10, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    and-int v6, v3, v5

    or-int v10, v5, v4

    and-int/2addr v10, v3

    or-int/2addr v7, v10

    .line 35
    aget v10, v9, v13

    invoke-static {v7, v10, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v7

    and-int v7, v1, v3

    or-int v10, v3, v5

    and-int/2addr v10, v1

    or-int/2addr v6, v10

    .line 36
    aget v10, v9, v12

    invoke-static {v6, v10, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0x9

    ushr-int/lit8 v4, v4, 0x17

    or-int/2addr v4, v6

    and-int v6, v4, v1

    or-int v10, v1, v3

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    const/16 v10, 0xc

    .line 37
    aget v10, v9, v10

    invoke-static {v7, v10, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v7, v5, 0xd

    ushr-int/lit8 v5, v5, 0x13

    or-int/2addr v5, v7

    and-int v7, v5, v4

    or-int v10, v4, v1

    and-int/2addr v10, v5

    or-int/2addr v6, v10

    .line 38
    aget v10, v9, v16

    invoke-static {v6, v10, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    and-int v6, v3, v5

    or-int v10, v5, v4

    and-int/2addr v10, v3

    or-int/2addr v7, v10

    .line 39
    aget v10, v9, v14

    invoke-static {v7, v10, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v7

    and-int v7, v1, v3

    or-int v10, v3, v5

    and-int/2addr v10, v1

    or-int/2addr v6, v10

    .line 40
    aget v10, v9, v19

    invoke-static {v6, v10, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0x9

    ushr-int/lit8 v4, v4, 0x17

    or-int/2addr v4, v6

    and-int v6, v4, v1

    or-int v10, v1, v3

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    .line 41
    aget v10, v9, v11

    invoke-static {v7, v10, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v7, v5, 0xd

    ushr-int/lit8 v5, v5, 0x13

    or-int/2addr v5, v7

    and-int v7, v5, v4

    or-int v10, v4, v1

    and-int/2addr v10, v5

    or-int/2addr v6, v10

    .line 42
    aget v10, v9, v17

    invoke-static {v6, v10, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    and-int v6, v3, v5

    or-int v10, v5, v4

    and-int/2addr v10, v3

    or-int/2addr v7, v10

    .line 43
    aget v10, v9, v15

    invoke-static {v7, v10, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v7

    and-int v7, v1, v3

    or-int v10, v3, v5

    and-int/2addr v10, v1

    or-int/2addr v6, v10

    const/16 v10, 0xa

    .line 44
    aget v10, v9, v10

    invoke-static {v6, v10, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0x9

    ushr-int/lit8 v4, v4, 0x17

    or-int/2addr v4, v6

    and-int v6, v4, v1

    or-int v10, v1, v3

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    const/16 v10, 0xe

    .line 45
    aget v10, v9, v10

    invoke-static {v7, v10, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v7, v5, 0xd

    ushr-int/lit8 v5, v5, 0x13

    or-int/2addr v5, v7

    and-int v7, v5, v4

    or-int v10, v4, v1

    and-int/2addr v10, v5

    or-int/2addr v6, v10

    .line 46
    aget v10, v9, v22

    invoke-static {v6, v10, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    and-int v6, v3, v5

    or-int v10, v5, v4

    and-int/2addr v10, v3

    or-int/2addr v7, v10

    .line 47
    aget v10, v9, v18

    invoke-static {v7, v10, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v7

    and-int v7, v1, v3

    or-int v10, v3, v5

    and-int/2addr v10, v1

    or-int/2addr v6, v10

    .line 48
    aget v10, v9, v20

    invoke-static {v6, v10, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0x9

    ushr-int/lit8 v4, v4, 0x17

    or-int/2addr v4, v6

    or-int v6, v1, v3

    and-int/2addr v6, v4

    or-int/2addr v6, v7

    .line 49
    aget v7, v9, v21

    invoke-static {v6, v7, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v6, v5, 0xd

    ushr-int/lit8 v5, v5, 0x13

    or-int/2addr v5, v6

    xor-int v6, v5, v4

    xor-int/2addr v6, v1

    .line 53
    aget v7, v9, v2

    const v8, 0x6ed9eba1

    invoke-static {v6, v7, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    xor-int v6, v3, v5

    xor-int/2addr v6, v4

    .line 54
    aget v7, v9, v12

    invoke-static {v6, v7, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v6, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v6

    xor-int v6, v1, v3

    xor-int/2addr v6, v5

    .line 55
    aget v7, v9, v13

    invoke-static {v6, v7, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v4, v6

    xor-int v6, v4, v1

    xor-int/2addr v6, v3

    const/16 v7, 0xc

    .line 56
    aget v7, v9, v7

    invoke-static {v6, v7, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    xor-int v6, v5, v4

    xor-int/2addr v6, v1

    .line 57
    aget v7, v9, v17

    invoke-static {v6, v7, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    xor-int v6, v3, v5

    xor-int/2addr v6, v4

    const/16 v7, 0xa

    .line 58
    aget v7, v9, v7

    invoke-static {v6, v7, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v6, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v6

    xor-int v6, v1, v3

    xor-int/2addr v6, v5

    .line 59
    aget v7, v9, v15

    invoke-static {v6, v7, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v4, v6

    xor-int v6, v4, v1

    xor-int/2addr v6, v3

    const/16 v7, 0xe

    .line 60
    aget v7, v9, v7

    invoke-static {v6, v7, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    xor-int v6, v5, v4

    xor-int/2addr v6, v1

    .line 61
    aget v7, v9, v16

    invoke-static {v6, v7, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    xor-int v6, v3, v5

    xor-int/2addr v6, v4

    .line 62
    aget v7, v9, v19

    invoke-static {v6, v7, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v6, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v6

    xor-int v6, v1, v3

    xor-int/2addr v6, v5

    .line 63
    aget v7, v9, v14

    invoke-static {v6, v7, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v4, v6

    xor-int v6, v4, v1

    xor-int/2addr v6, v3

    .line 64
    aget v7, v9, v11

    invoke-static {v6, v7, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    xor-int v6, v5, v4

    xor-int/2addr v6, v1

    .line 65
    aget v7, v9, v22

    invoke-static {v6, v7, v8, v3}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v3

    shl-int/lit8 v6, v3, 0x3

    ushr-int/lit8 v3, v3, 0x1d

    or-int/2addr v3, v6

    xor-int v6, v3, v5

    xor-int/2addr v6, v4

    .line 66
    aget v7, v9, v20

    invoke-static {v6, v7, v8, v1}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v1

    shl-int/lit8 v6, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v6

    xor-int v6, v1, v3

    xor-int/2addr v6, v5

    .line 67
    aget v7, v9, v18

    invoke-static {v6, v7, v8, v4}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v4

    shl-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v4, v6

    xor-int v6, v4, v1

    xor-int/2addr v6, v3

    .line 68
    aget v7, v9, v21

    invoke-static {v6, v7, v8, v5}, Lnts/ㆃ;->ㆃ(IIII)I

    move-result v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    .line 70
    iget-object v6, v0, Lnts/き;->Ͼ:[I

    aget v7, v6, v2

    add-int/2addr v7, v3

    aput v7, v6, v2

    .line 71
    aget v3, v6, v16

    add-int/2addr v3, v5

    aput v3, v6, v16

    .line 72
    aget v3, v6, v17

    add-int/2addr v3, v4

    aput v3, v6, v17

    .line 73
    aget v3, v6, v22

    add-int/2addr v3, v1

    aput v3, v6, v22

    .line 75
    iput v2, v0, Lnts/き;->て:I

    return-void
.end method

.method public ᇭ([BII)V
    .locals 6

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget v0, p0, Lnts/き;->て:I

    const/16 v1, 0x40

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lnts/き;->ౠ:[B

    iget v3, p0, Lnts/き;->て:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    .line 5
    iget-wide v2, p0, Lnts/き;->ዲ:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnts/き;->ዲ:J

    .line 6
    iget v2, p0, Lnts/き;->て:I

    add-int/2addr v2, v0

    iput v2, p0, Lnts/き;->て:I

    if-ne v2, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lnts/き;->Ͼ()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ᇭ()[B
    .locals 12

    .line 9
    iget-object v0, p0, Lnts/き;->ౠ:[B

    iget v1, p0, Lnts/き;->て:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/き;->て:I

    const/16 v3, -0x80

    aput-byte v3, v0, v1

    const/16 v0, 0x40

    const/4 v1, 0x0

    const/16 v3, 0x38

    if-le v2, v3, :cond_1

    .line 11
    :goto_0
    iget v2, p0, Lnts/き;->て:I

    if-ge v2, v0, :cond_0

    .line 12
    iget-object v4, p0, Lnts/き;->ౠ:[B

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 13
    iput v2, p0, Lnts/き;->て:I

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lnts/き;->Ͼ()V

    .line 18
    :cond_1
    :goto_1
    iget v2, p0, Lnts/き;->て:I

    if-ge v2, v3, :cond_2

    .line 19
    iget-object v4, p0, Lnts/き;->ౠ:[B

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 20
    iput v2, p0, Lnts/き;->て:I

    goto :goto_1

    .line 23
    :cond_2
    iget-wide v2, p0, Lnts/き;->ዲ:J

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lnts/き;->ዲ:J

    :goto_2
    iget v2, p0, Lnts/き;->て:I

    const/16 v3, 0x18

    const/16 v4, 0x10

    if-ge v2, v0, :cond_3

    .line 24
    iget-object v5, p0, Lnts/き;->ౠ:[B

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lnts/き;->て:I

    iget-wide v7, p0, Lnts/き;->ዲ:J

    const-wide/16 v9, 0xff

    and-long/2addr v9, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v2

    add-int/lit8 v9, v2, 0x2

    .line 25
    iput v9, p0, Lnts/き;->て:I

    const/16 v10, 0x8

    ushr-long v10, v7, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v5, v6

    add-int/lit8 v6, v2, 0x3

    .line 26
    iput v6, p0, Lnts/き;->て:I

    ushr-long v10, v7, v4

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v5, v9

    add-int/lit8 v2, v2, 0x4

    .line 27
    iput v2, p0, Lnts/き;->て:I

    ushr-long v2, v7, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    const/16 v2, 0x20

    ushr-long v2, v7, v2

    .line 28
    iput-wide v2, p0, Lnts/き;->ዲ:J

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p0}, Lnts/き;->Ͼ()V

    .line 36
    new-array v0, v4, [B

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    move v0, v1

    move v2, v0

    :goto_3
    const/4 v4, 0x4

    if-ge v0, v4, :cond_4

    .line 39
    iget-object v5, p0, Lnts/ዃ;->ᾨ:[B

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lnts/き;->Ͼ:[I

    aget v8, v7, v0

    and-int/lit16 v9, v8, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v2

    add-int/lit8 v9, v2, 0x2

    ushr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    .line 40
    aput-byte v10, v5, v6

    add-int/lit8 v6, v2, 0x3

    ushr-int/lit8 v10, v8, 0x10

    int-to-byte v10, v10

    .line 41
    aput-byte v10, v5, v9

    add-int/2addr v2, v4

    ushr-int/lit8 v4, v8, 0x18

    int-to-byte v4, v4

    .line 42
    aput-byte v4, v5, v6

    .line 43
    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 46
    :cond_4
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0
.end method

.method public ᰛ()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/き;->て:I

    int-to-long v1, v0

    iput-wide v1, p0, Lnts/き;->ዲ:J

    .line 3
    iget-object v1, p0, Lnts/き;->Ͼ:[I

    const v2, 0x67452301

    aput v2, v1, v0

    const/4 v0, 0x1

    const v2, -0x10325477

    .line 4
    aput v2, v1, v0

    const/4 v0, 0x2

    const v2, -0x67452302

    .line 5
    aput v2, v1, v0

    const/4 v0, 0x3

    const v2, 0x10325476

    .line 6
    aput v2, v1, v0

    return-void
.end method
