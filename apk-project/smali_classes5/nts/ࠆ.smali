.class public Lnts/ࠆ;
.super Lnts/ዃ;
.source "SourceFile"


# static fields
.field public static final ᎊ:[J

.field public static final ᡲ:[[J


# instance fields
.field public Ͼ:[[J

.field public ౠ:[B

.field public ዲ:I

.field public ᙕ:I

.field public て:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x18

    .line 1
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ࠆ;->ᎊ:[J

    const/4 v0, 0x5

    .line 12
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    new-array v2, v0, [J

    fill-array-data v2, :array_2

    new-array v3, v0, [J

    fill-array-data v3, :array_3

    new-array v4, v0, [J

    fill-array-data v4, :array_4

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    filled-new-array {v1, v2, v3, v4, v0}, [[J

    move-result-object v0

    sput-object v0, Lnts/ࠆ;->ᡲ:[[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x24
        0x3
        0x29
        0x12
    .end array-data

    :array_2
    .array-data 8
        0x1
        0x2c
        0xa
        0x2d
        0x2
    .end array-data

    :array_3
    .array-data 8
        0x3e
        0x6
        0x2b
        0xf
        0x3d
    .end array-data

    :array_4
    .array-data 8
        0x1c
        0x37
        0x19
        0x15
        0x38
    .end array-data

    :array_5
    .array-data 8
        0x1b
        0x14
        0x27
        0x8
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ࠆ;->Ͼ:[[J

    .line 3
    iput-object v0, p0, Lnts/ࠆ;->ౠ:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/ࠆ;->ᙕ:I

    const/16 v0, 0x200

    .line 9
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    const/16 v0, 0x48

    .line 10
    iput v0, p0, Lnts/ࠆ;->て:I

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lnts/ࠆ;->ዲ:I

    .line 12
    invoke-virtual {p0}, Lnts/ࠆ;->ᰛ()V

    return-void
.end method

.method public static ㆃ(II)I
    .locals 0

    if-gez p1, :cond_0

    neg-int p0, p0

    neg-int p1, p1

    .line 66
    invoke-static {p0, p1}, Lnts/ࠆ;->ㆃ(II)I

    move-result p0

    return p0

    .line 68
    :cond_0
    rem-int/2addr p0, p1

    if-gez p0, :cond_1

    add-int/2addr p0, p1

    :cond_1
    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ࠆ;

    invoke-direct {v0}, Lnts/ࠆ;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lnts/ࠆ;->ㆃ(Lnts/ࠆ;)V

    return-object v0
.end method

.method public ᇭ([BII)V
    .locals 4

    if-eqz p1, :cond_4

    .line 34
    iget v0, p0, Lnts/ࠆ;->て:I

    iget v1, p0, Lnts/ࠆ;->ᙕ:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 35
    iget-object v0, p0, Lnts/ࠆ;->ౠ:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget p1, p0, Lnts/ࠆ;->ᙕ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ࠆ;->ᙕ:I

    return-void

    :cond_0
    const/4 p2, 0x0

    if-lez v1, :cond_1

    .line 43
    iget-object v2, p0, Lnts/ࠆ;->ౠ:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v1, p0, Lnts/ࠆ;->ౠ:[B

    iget v2, p0, Lnts/ࠆ;->て:I

    invoke-virtual {p0, v1, v2}, Lnts/ࠆ;->ㆃ([BI)V

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    sub-int v1, p3, v0

    .line 47
    iget v2, p0, Lnts/ࠆ;->て:I

    if-lt v1, v2, :cond_2

    .line 48
    rem-int v2, v1, v2

    sub-int v2, v1, v2

    new-array v3, v2, [B

    .line 49
    invoke-static {p1, v0, v3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-virtual {p0, v3, v2}, Lnts/ࠆ;->ㆃ([BI)V

    .line 52
    :cond_2
    iget v0, p0, Lnts/ࠆ;->て:I

    rem-int/2addr v1, v0

    iput v1, p0, Lnts/ࠆ;->ᙕ:I

    if-lez v1, :cond_3

    sub-int/2addr p3, v1

    .line 55
    iget-object v0, p0, Lnts/ࠆ;->ౠ:[B

    invoke-static {p1, p3, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void

    .line 56
    :cond_4
    new-instance p1, Lnts/ቂ;

    const/4 p2, 0x4

    const/16 p3, 0x35

    const/16 v0, 0x10

    invoke-static {v0, p2, p3}, Lnts/ᨾ;->ᎊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᇭ()[B
    .locals 11

    .line 1
    iget-object v0, p0, Lnts/ࠆ;->ౠ:[B

    iget v1, p0, Lnts/ࠆ;->ᙕ:I

    .line 2
    iget v2, p0, Lnts/ࠆ;->て:I

    add-int v3, v1, v2

    rem-int v2, v1, v2

    sub-int/2addr v3, v2

    .line 3
    new-array v2, v3, [B

    const/4 v4, 0x0

    .line 4
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p0, Lnts/ࠆ;->て:I

    rem-int v5, v1, v0

    add-int/lit8 v6, v0, -0x2

    if-le v5, v6, :cond_0

    const/16 v3, -0x7f

    .line 7
    aput-byte v3, v2, v1

    goto :goto_1

    .line 9
    :cond_0
    iget v5, p0, Lnts/ࠆ;->ዲ:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    const/4 v5, 0x6

    .line 10
    aput-byte v5, v2, v1

    goto :goto_0

    .line 13
    :cond_1
    aput-byte v6, v2, v1

    :goto_0
    sub-int/2addr v3, v6

    const/16 v1, -0x80

    .line 16
    aput-byte v1, v2, v3

    .line 17
    :goto_1
    invoke-virtual {p0, v2, v0}, Lnts/ࠆ;->ㆃ([BI)V

    .line 19
    iget v0, p0, Lnts/ዃ;->ㆃ:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    move v0, v4

    move v2, v0

    :goto_2
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_3

    mul-int/lit8 v6, v0, 0x5

    add-int/2addr v6, v5

    .line 23
    iget v7, p0, Lnts/ࠆ;->て:I

    div-int/2addr v7, v1

    if-ge v6, v7, :cond_2

    .line 24
    iget-object v6, p0, Lnts/ࠆ;->Ͼ:[[J

    aget-object v6, v6, v5

    aget-wide v7, v6, v0

    move v6, v4

    :goto_4
    if-ge v6, v1, :cond_2

    .line 25
    iget v9, p0, Lnts/ዃ;->ㆃ:I

    div-int/2addr v9, v1

    if-ge v2, v9, :cond_2

    .line 26
    iget-object v9, p0, Lnts/ዃ;->ᾨ:[B

    long-to-int v10, v7

    int-to-byte v10, v10

    aput-byte v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    shr-long/2addr v7, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 33
    :cond_4
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0
.end method

.method public ᰛ()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ࠆ;->ᙕ:I

    const/4 v1, 0x5

    .line 2
    new-array v2, v1, [[J

    iput-object v2, p0, Lnts/ࠆ;->Ͼ:[[J

    .line 3
    :goto_0
    iget-object v2, p0, Lnts/ࠆ;->Ͼ:[[J

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 4
    new-array v3, v1, [J

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x90

    .line 6
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ࠆ;->ౠ:[B

    return-void
.end method

.method public ㆃ(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x10

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->ᎊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lnts/ࠆ;->ዲ:I

    return-void
.end method

.method public ㆃ(Lnts/ࠆ;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 4
    iget-object v4, p1, Lnts/ࠆ;->Ͼ:[[J

    aget-object v4, v4, v1

    iget-object v5, p0, Lnts/ࠆ;->Ͼ:[[J

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lnts/ࠆ;->ౠ:[B

    iget-object v2, p1, Lnts/ࠆ;->ౠ:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Lnts/ࠆ;->ᙕ:I

    iput v0, p1, Lnts/ࠆ;->ᙕ:I

    .line 9
    iget v0, p0, Lnts/ࠆ;->て:I

    iput v0, p1, Lnts/ࠆ;->て:I

    .line 10
    iget v0, p0, Lnts/ዃ;->ㆃ:I

    iput v0, p1, Lnts/ዃ;->ㆃ:I

    .line 11
    iget v0, p0, Lnts/ࠆ;->ዲ:I

    iput v0, p1, Lnts/ࠆ;->ዲ:I

    return-void
.end method

.method public ㆃ([BI)V
    .locals 25

    move-object/from16 v0, p0

    .line 12
    iget v1, v0, Lnts/ࠆ;->て:I

    rem-int v2, p2, v1

    if-nez v2, :cond_e

    const/16 v2, 0x8

    .line 16
    div-int/2addr v1, v2

    const/4 v5, 0x0

    .line 17
    :goto_0
    iget v6, v0, Lnts/ࠆ;->て:I

    div-int v6, p2, v6

    if-ge v5, v6, :cond_d

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x18

    const/4 v8, 0x5

    if-ge v6, v8, :cond_2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    mul-int/lit8 v10, v6, 0x5

    add-int v11, v9, v10

    if-ge v11, v1, :cond_0

    .line 21
    iget-object v11, v0, Lnts/ࠆ;->Ͼ:[[J

    aget-object v11, v11, v9

    aget-wide v12, v11, v6

    mul-int v14, v5, v1

    add-int/2addr v14, v9

    add-int/2addr v14, v10

    mul-int/2addr v14, v2

    add-int/lit8 v10, v14, 0x7

    .line 22
    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    move/from16 v16, v5

    const/4 v15, 0x0

    int-to-long v4, v10

    const/16 v10, 0x38

    shl-long/2addr v4, v10

    add-int/lit8 v10, v14, 0x6

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    move/from16 v18, v2

    const/16 v17, 0x40

    int-to-long v2, v10

    const/16 v10, 0x30

    shl-long/2addr v2, v10

    or-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v10, 0x28

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v10, 0x20

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v10, 0x10

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long v4, v4, v18

    or-long/2addr v2, v4

    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    xor-long/2addr v2, v12

    .line 23
    aput-wide v2, v11, v6

    goto :goto_3

    :cond_0
    move/from16 v18, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    const/16 v17, 0x40

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    move/from16 v2, v18

    goto :goto_2

    :cond_1
    move/from16 v18, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    const/16 v17, 0x40

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_2
    move/from16 v18, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    const/16 v17, 0x40

    .line 27
    iget-object v2, v0, Lnts/ࠆ;->Ͼ:[[J

    move v3, v15

    :goto_4
    if-ge v3, v7, :cond_c

    .line 28
    sget-object v4, Lnts/ࠆ;->ᎊ:[J

    aget-wide v5, v4, v3

    .line 29
    new-array v4, v8, [J

    .line 30
    new-array v9, v8, [J

    .line 31
    new-array v10, v8, [[J

    move v11, v15

    :goto_5
    if-ge v11, v8, :cond_3

    .line 33
    new-array v12, v8, [J

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    move v11, v15

    :goto_6
    const/4 v12, 0x1

    if-ge v11, v8, :cond_4

    .line 38
    aget-object v13, v2, v11

    aget-wide v19, v13, v15

    aget-wide v21, v13, v12

    xor-long v19, v19, v21

    const/4 v12, 0x2

    aget-wide v21, v13, v12

    xor-long v19, v19, v21

    const/4 v12, 0x3

    aget-wide v21, v13, v12

    xor-long v19, v19, v21

    const/4 v12, 0x4

    aget-wide v12, v13, v12

    xor-long v12, v19, v12

    aput-wide v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_4
    move v11, v15

    :goto_7
    if-ge v11, v8, :cond_5

    add-int/lit8 v13, v11, 0x4

    .line 41
    rem-int/2addr v13, v8

    aget-wide v13, v4, v13

    add-int/lit8 v19, v11, 0x1

    rem-int/lit8 v20, v19, 0x5

    aget-wide v20, v4, v20

    shl-long v22, v20, v12

    const/16 v24, 0x3f

    ushr-long v20, v20, v24

    or-long v20, v22, v20

    xor-long v13, v13, v20

    aput-wide v13, v9, v11

    move/from16 v11, v19

    goto :goto_7

    :cond_5
    move v4, v15

    :goto_8
    if-ge v4, v8, :cond_7

    move v11, v15

    :goto_9
    if-ge v11, v8, :cond_6

    .line 45
    aget-object v12, v2, v4

    aget-wide v13, v12, v11

    aget-wide v19, v9, v4

    xor-long v13, v13, v19

    aput-wide v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    move v4, v15

    :goto_a
    if-ge v4, v8, :cond_9

    move v9, v15

    :goto_b
    if-ge v9, v8, :cond_8

    .line 52
    aget-object v11, v10, v9

    mul-int/lit8 v12, v4, 0x2

    mul-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    invoke-static {v13, v8}, Lnts/ࠆ;->ㆃ(II)I

    move-result v12

    aget-object v13, v2, v4

    aget-wide v19, v13, v9

    sget-object v13, Lnts/ࠆ;->ᡲ:[[J

    aget-object v13, v13, v4

    aget-wide v7, v13, v9

    long-to-int v13, v7

    shl-long v22, v19, v13

    long-to-int v7, v7

    rsub-int/lit8 v7, v7, 0x40

    ushr-long v7, v19, v7

    or-long v7, v22, v7

    aput-wide v7, v11, v12

    add-int/lit8 v9, v9, 0x1

    const/16 v7, 0x18

    const/4 v8, 0x5

    goto :goto_b

    :cond_8
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x18

    const/4 v8, 0x5

    goto :goto_a

    :cond_9
    move v7, v8

    move v4, v15

    :goto_c
    if-ge v4, v7, :cond_b

    move v8, v15

    :goto_d
    if-ge v8, v7, :cond_a

    .line 59
    aget-object v9, v2, v4

    aget-object v11, v10, v4

    aget-wide v12, v11, v8

    add-int/lit8 v11, v4, 0x1

    invoke-static {v11, v7}, Lnts/ࠆ;->ㆃ(II)I

    move-result v11

    aget-object v11, v10, v11

    move/from16 v19, v15

    aget-wide v14, v11, v8

    not-long v14, v14

    add-int/lit8 v11, v4, 0x2

    invoke-static {v11, v7}, Lnts/ࠆ;->ㆃ(II)I

    move-result v11

    aget-object v11, v10, v11

    aget-wide v21, v11, v8

    and-long v14, v14, v21

    xor-long v11, v12, v14

    aput-wide v11, v9, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v19

    goto :goto_d

    :cond_a
    move/from16 v19, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_b
    move/from16 v19, v15

    .line 64
    aget-object v4, v2, v19

    aget-wide v8, v4, v19

    xor-long/2addr v5, v8

    aput-wide v5, v4, v19

    add-int/lit8 v3, v3, 0x1

    move v8, v7

    const/16 v7, 0x18

    goto/16 :goto_4

    :cond_c
    move/from16 v19, v15

    add-int/lit8 v5, v16, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_d
    return-void

    :cond_e
    const/16 v17, 0x40

    .line 65
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x14

    const/16 v3, 0x4a

    move/from16 v4, v17

    invoke-static {v2, v4, v3}, Lnts/ᨾ;->ᎊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1
.end method
