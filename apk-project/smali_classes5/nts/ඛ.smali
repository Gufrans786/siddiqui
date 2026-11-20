.class public Lnts/ඛ;
.super Lnts/ዃ;
.source "SourceFile"


# static fields
.field public static final Ὺ:[I


# instance fields
.field public Ͼ:[I

.field public ౠ:I

.field public ዲ:I

.field public ᎊ:Z

.field public ᙕ:[B

.field public ᡲ:[I

.field public て:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const v0, -0x70e44324

    const v1, -0x359d3e2a    # -3715189.5f

    const v2, 0x5a827999

    const v3, 0x6ed9eba1

    .line 1
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lnts/ඛ;->Ὺ:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/16 v0, 0x14

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ඛ;->Ͼ:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/ඛ;->ౠ:I

    const/16 v1, 0x40

    .line 4
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ඛ;->ᙕ:[B

    .line 6
    iput v0, p0, Lnts/ඛ;->て:I

    .line 7
    iput v0, p0, Lnts/ඛ;->ዲ:I

    .line 9
    iput-boolean v0, p0, Lnts/ඛ;->ᎊ:Z

    const/16 v0, 0x50

    .line 10
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ඛ;->ᡲ:[I

    const/16 v0, 0xa0

    .line 13
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 14
    invoke-virtual {p0}, Lnts/ඛ;->ᰛ()V

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
    new-instance v0, Lnts/ඛ;

    invoke-direct {v0}, Lnts/ඛ;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, v0, Lnts/ඛ;->Ͼ:[I

    iget-object v4, p0, Lnts/ඛ;->Ͼ:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lnts/ඛ;->ౠ:I

    iput v2, v0, Lnts/ඛ;->ౠ:I

    move v2, v1

    .line 6
    :goto_1
    iget-object v3, p0, Lnts/ඛ;->ᙕ:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 7
    iget-object v4, v0, Lnts/ඛ;->ᙕ:[B

    aget-byte v3, v3, v2

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget v2, p0, Lnts/ඛ;->て:I

    iput v2, v0, Lnts/ඛ;->て:I

    .line 10
    iget v2, p0, Lnts/ඛ;->ዲ:I

    iput v2, v0, Lnts/ඛ;->ዲ:I

    .line 11
    iget-boolean v2, p0, Lnts/ඛ;->ᎊ:Z

    iput-boolean v2, v0, Lnts/ඛ;->ᎊ:Z

    .line 12
    :goto_2
    iget-object v2, p0, Lnts/ඛ;->ᡲ:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 13
    iget-object v3, v0, Lnts/ඛ;->ᡲ:[I

    aget v2, v2, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public final Ͼ()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    const/4 v4, 0x3

    if-ge v2, v3, :cond_0

    .line 1
    iget-object v5, v0, Lnts/ඛ;->ᡲ:[I

    iget-object v6, v0, Lnts/ඛ;->ᙕ:[B

    mul-int/lit8 v7, v2, 0x4

    aget-byte v8, v6, v7

    shl-int/lit8 v8, v8, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    aput v8, v5, v2

    add-int/lit8 v9, v7, 0x1

    .line 2
    aget-byte v9, v6, v9

    shl-int/lit8 v3, v9, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v3, v9

    or-int/2addr v3, v8

    aput v3, v5, v2

    add-int/lit8 v8, v7, 0x2

    .line 3
    aget-byte v8, v6, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v3, v8

    aput v3, v5, v2

    add-int/2addr v7, v4

    .line 4
    aget-byte v4, v6, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x50

    if-ge v3, v2, :cond_1

    .line 8
    iget-object v2, v0, Lnts/ඛ;->ᡲ:[I

    add-int/lit8 v5, v3, -0x3

    aget v5, v2, v5

    add-int/lit8 v6, v3, -0x8

    aget v6, v2, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v3, -0xe

    aget v6, v2, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v3, -0x10

    aget v6, v2, v6

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v6

    .line 9
    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, v0, Lnts/ඛ;->Ͼ:[I

    aget v5, v3, v1

    const/4 v6, 0x1

    .line 13
    aget v7, v3, v6

    const/4 v8, 0x2

    .line 14
    aget v9, v3, v8

    .line 15
    aget v10, v3, v4

    const/4 v11, 0x4

    .line 16
    aget v3, v3, v11

    move v12, v1

    :goto_2
    const/16 v13, 0x14

    if-ge v12, v13, :cond_2

    shl-int/lit8 v13, v5, 0x5

    ushr-int/lit8 v14, v5, 0x1b

    or-int/2addr v13, v14

    and-int v14, v7, v9

    not-int v15, v7

    and-int/2addr v15, v10

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v3

    .line 19
    iget-object v3, v0, Lnts/ඛ;->ᡲ:[I

    aget v3, v3, v12

    add-int/2addr v13, v3

    sget-object v3, Lnts/ඛ;->Ὺ:[I

    aget v3, v3, v1

    add-int/2addr v3, v13

    shl-int/lit8 v13, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v5

    move v5, v3

    move v3, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_2

    :cond_2
    :goto_3
    move/from16 v16, v5

    move v5, v3

    move v3, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v16

    const/16 v12, 0x28

    if-ge v13, v12, :cond_3

    shl-int/lit8 v12, v7, 0x5

    ushr-int/lit8 v14, v7, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v9, v10

    xor-int/2addr v14, v3

    add-int/2addr v12, v14

    add-int/2addr v12, v5

    .line 28
    iget-object v5, v0, Lnts/ඛ;->ᡲ:[I

    aget v5, v5, v13

    add-int/2addr v12, v5

    sget-object v5, Lnts/ඛ;->Ὺ:[I

    aget v5, v5, v6

    add-int/2addr v5, v12

    shl-int/lit8 v12, v9, 0x1e

    ushr-int/lit8 v9, v9, 0x2

    or-int/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    move/from16 v16, v5

    move v5, v3

    move v3, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v16

    const/16 v13, 0x3c

    if-ge v12, v13, :cond_4

    shl-int/lit8 v13, v9, 0x5

    ushr-int/lit8 v14, v9, 0x1b

    or-int/2addr v13, v14

    or-int v14, v3, v5

    and-int/2addr v14, v10

    and-int v15, v3, v5

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v7

    .line 37
    iget-object v7, v0, Lnts/ඛ;->ᡲ:[I

    aget v7, v7, v12

    add-int/2addr v13, v7

    sget-object v7, Lnts/ඛ;->Ὺ:[I

    aget v7, v7, v8

    add-int/2addr v7, v13

    shl-int/lit8 v13, v10, 0x1e

    ushr-int/lit8 v10, v10, 0x2

    or-int/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v13, v2, :cond_5

    shl-int/lit8 v12, v9, 0x5

    ushr-int/lit8 v14, v9, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v3

    xor-int/2addr v14, v5

    add-int/2addr v12, v14

    add-int/2addr v12, v7

    .line 46
    iget-object v7, v0, Lnts/ඛ;->ᡲ:[I

    aget v7, v7, v13

    add-int/2addr v12, v7

    sget-object v7, Lnts/ඛ;->Ὺ:[I

    aget v7, v7, v4

    add-int/2addr v7, v12

    shl-int/lit8 v12, v10, 0x1e

    ushr-int/lit8 v10, v10, 0x2

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v5

    move v5, v3

    move v3, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_5

    .line 54
    :cond_5
    iget-object v2, v0, Lnts/ඛ;->Ͼ:[I

    aget v12, v2, v1

    add-int/2addr v12, v9

    aput v12, v2, v1

    .line 55
    aget v9, v2, v6

    add-int/2addr v9, v10

    aput v9, v2, v6

    .line 56
    aget v6, v2, v8

    add-int/2addr v6, v3

    aput v6, v2, v8

    .line 57
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    .line 58
    aget v3, v2, v11

    add-int/2addr v3, v7

    aput v3, v2, v11

    .line 60
    iput v1, v0, Lnts/ඛ;->ౠ:I

    return-void
.end method

.method public ᇭ([BII)V
    .locals 4

    .line 49
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 57
    iget v0, p0, Lnts/ඛ;->ౠ:I

    const/16 v1, 0x40

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    iget v3, p0, Lnts/ඛ;->ౠ:I

    .line 59
    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 60
    iget v2, p0, Lnts/ඛ;->ౠ:I

    add-int/2addr v2, v0

    iput v2, p0, Lnts/ඛ;->ౠ:I

    .line 61
    iget v3, p0, Lnts/ඛ;->ዲ:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v3

    if-gez v3, :cond_1

    if-ltz v0, :cond_1

    .line 63
    iget v3, p0, Lnts/ඛ;->て:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnts/ඛ;->て:I

    if-nez v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    iput v0, p0, Lnts/ඛ;->ዲ:I

    if-ne v2, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lnts/ඛ;->Ͼ()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 71
    :cond_3
    new-instance p1, Lnts/ቂ;

    const/4 p2, 0x4

    const/16 p3, 0x5f

    const/16 v0, 0x26

    invoke-static {v0, p2, p3}, Lnts/ᨾ;->ዲ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_4
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x18

    const/16 p3, 0x13

    invoke-static {p3, p3, p2}, Lnts/ᨾ;->ዲ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2be

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᇭ()[B
    .locals 7

    .line 1
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6
    iget-boolean v0, p0, Lnts/ඛ;->ᎊ:Z

    if-nez v0, :cond_4

    .line 7
    iget v0, p0, Lnts/ඛ;->ౠ:I

    const/16 v2, 0x37

    const/16 v3, 0x40

    const/16 v4, -0x80

    const/16 v5, 0x38

    if-le v0, v2, :cond_1

    .line 8
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lnts/ඛ;->ౠ:I

    aput-byte v4, v2, v0

    .line 9
    :goto_0
    iget v0, p0, Lnts/ඛ;->ౠ:I

    if-ge v0, v3, :cond_0

    .line 10
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lnts/ඛ;->ౠ:I

    aput-byte v1, v2, v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lnts/ඛ;->Ͼ()V

    .line 14
    :goto_1
    iget v0, p0, Lnts/ඛ;->ౠ:I

    if-ge v0, v5, :cond_2

    .line 15
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lnts/ඛ;->ౠ:I

    aput-byte v1, v2, v0

    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lnts/ඛ;->ౠ:I

    aput-byte v4, v2, v0

    .line 19
    :goto_2
    iget v0, p0, Lnts/ඛ;->ౠ:I

    if-ge v0, v5, :cond_2

    .line 20
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lnts/ඛ;->ౠ:I

    aput-byte v1, v2, v0

    goto :goto_2

    .line 25
    :cond_2
    iget-object v0, p0, Lnts/ඛ;->ᙕ:[B

    iget v2, p0, Lnts/ඛ;->て:I

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    const/16 v5, 0x39

    .line 26
    aput-byte v4, v0, v5

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    const/16 v5, 0x3a

    .line 27
    aput-byte v4, v0, v5

    int-to-byte v2, v2

    const/16 v4, 0x3b

    .line 28
    aput-byte v2, v0, v4

    .line 29
    iget v2, p0, Lnts/ඛ;->ዲ:I

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    const/16 v5, 0x3c

    aput-byte v4, v0, v5

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    const/16 v5, 0x3d

    .line 30
    aput-byte v4, v0, v5

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    const/16 v5, 0x3e

    .line 31
    aput-byte v4, v0, v5

    int-to-byte v2, v2

    const/16 v4, 0x3f

    .line 32
    aput-byte v2, v0, v4

    .line 34
    invoke-virtual {p0}, Lnts/ඛ;->Ͼ()V

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_3

    .line 35
    iget-object v2, p0, Lnts/ඛ;->ᙕ:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 37
    :cond_3
    iput v1, p0, Lnts/ඛ;->ዲ:I

    .line 38
    iput v1, p0, Lnts/ඛ;->て:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lnts/ඛ;->ᎊ:Z

    :cond_4
    const/16 v0, 0x14

    .line 42
    new-array v2, v0, [B

    iput-object v2, p0, Lnts/ዃ;->ᾨ:[B

    :goto_4
    if-ge v1, v0, :cond_5

    .line 45
    iget-object v2, p0, Lnts/ዃ;->ᾨ:[B

    iget-object v3, p0, Lnts/ඛ;->Ͼ:[I

    ushr-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    and-int/lit8 v4, v1, 0x3

    rsub-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x8

    ushr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 47
    :cond_5
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0

    .line 48
    :cond_6
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x13

    const/16 v3, 0x66

    invoke-static {v1, v2, v3}, Lnts/ᨾ;->ዲ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2be

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᰛ()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ඛ;->ዲ:I

    .line 2
    iput v0, p0, Lnts/ඛ;->て:I

    .line 3
    iput v0, p0, Lnts/ඛ;->ౠ:I

    .line 5
    iget-object v1, p0, Lnts/ඛ;->Ͼ:[I

    const v2, 0x67452301

    aput v2, v1, v0

    const/4 v2, 0x1

    const v3, -0x10325477

    .line 6
    aput v3, v1, v2

    const/4 v2, 0x2

    const v3, -0x67452302

    .line 7
    aput v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x10325476

    .line 8
    aput v3, v1, v2

    const/4 v2, 0x4

    const v3, -0x3c2d1e10

    .line 9
    aput v3, v1, v2

    .line 11
    iput-boolean v0, p0, Lnts/ඛ;->ᎊ:Z

    return-void
.end method
