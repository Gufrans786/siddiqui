.class public Lnts/〼;
.super Lnts/ዃ;
.source "SourceFile"


# static fields
.field public static final ᛃ:[I

.field public static final Ⲳ:[J


# instance fields
.field public Ͼ:I

.field public ౠ:[B

.field public ዲ:[J

.field public ᎊ:I

.field public ᙕ:[B

.field public ᡲ:[J

.field public Ὺ:[J

.field public て:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lnts/〼;->Ⲳ:[J

    const/16 v0, 0xc0

    .line 8
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnts/〼;->ᛃ:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x6a09e667f3bcc908L    # 6.344059688352415E202
        -0x4498517a7b3558c5L    # -1.5671250923562117E-22
        0x3c6ef372fe94f82bL    # 1.342284505169847E-17
        -0x5ab00ac5a0e2c90fL
        0x510e527fade682d1L    # 2.876275032471325E82
        -0x64fa9773d4c193e1L
        0x1f83d9abfb41bd6bL    # 7.229011495228878E-157
        0x5be0cd19137e2179L    # 3.816167663240759E134
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0xe
        0xa
        0x4
        0x8
        0x9
        0xf
        0xd
        0x6
        0x1
        0xc
        0x0
        0x2
        0xb
        0x7
        0x5
        0x3
        0xb
        0x8
        0xc
        0x0
        0x5
        0x2
        0xf
        0xd
        0xa
        0xe
        0x3
        0x6
        0x7
        0x1
        0x9
        0x4
        0x7
        0x9
        0x3
        0x1
        0xd
        0xc
        0xb
        0xe
        0x2
        0x6
        0x5
        0xa
        0x4
        0x0
        0xf
        0x8
        0x9
        0x0
        0x5
        0x7
        0x2
        0x4
        0xa
        0xf
        0xe
        0x1
        0xb
        0xc
        0x6
        0x8
        0x3
        0xd
        0x2
        0xc
        0x6
        0xa
        0x0
        0xb
        0x8
        0x3
        0x4
        0xd
        0x7
        0x5
        0xf
        0xe
        0x1
        0x9
        0xc
        0x5
        0x1
        0xf
        0xe
        0xd
        0x4
        0xa
        0x0
        0x7
        0x6
        0x3
        0x9
        0x2
        0x8
        0xb
        0xd
        0xb
        0x7
        0xe
        0xc
        0x1
        0x3
        0x9
        0x5
        0x0
        0xf
        0x4
        0x8
        0x6
        0x2
        0xa
        0x6
        0xf
        0xe
        0x9
        0xb
        0x3
        0x0
        0x8
        0xc
        0x2
        0xd
        0x7
        0x1
        0x4
        0xa
        0x5
        0xa
        0x2
        0x8
        0x4
        0x7
        0x6
        0x1
        0x5
        0xf
        0xb
        0x9
        0xe
        0x3
        0xc
        0xd
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0xe
        0xa
        0x4
        0x8
        0x9
        0xf
        0xd
        0x6
        0x1
        0xc
        0x0
        0x2
        0xb
        0x7
        0x5
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lnts/〼;->Ͼ:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/〼;->ౠ:[B

    const/16 v0, 0x80

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/〼;->ᙕ:[B

    const/16 v0, 0x8

    .line 6
    new-array v0, v0, [J

    iput-object v0, p0, Lnts/〼;->て:[J

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [J

    iput-object v0, p0, Lnts/〼;->ዲ:[J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnts/〼;->ᎊ:I

    const/16 v0, 0x10

    .line 10
    new-array v1, v0, [J

    iput-object v1, p0, Lnts/〼;->ᡲ:[J

    .line 11
    new-array v0, v0, [J

    iput-object v0, p0, Lnts/〼;->Ὺ:[J

    .line 21
    invoke-virtual {p0}, Lnts/〼;->ᰛ()V

    return-void
.end method


# virtual methods
.method public ᇭ([BII)V
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1
    iget v0, p0, Lnts/〼;->ᎊ:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lnts/〼;->ዲ:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    int-to-long v5, v0

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    aget-wide v3, v1, v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v1, v0

    .line 6
    :cond_0
    invoke-virtual {p0, v2}, Lnts/〼;->ㆃ(I)V

    .line 7
    iput v2, p0, Lnts/〼;->ᎊ:I

    .line 9
    :cond_1
    iget-object v0, p0, Lnts/〼;->ᙕ:[B

    iget v1, p0, Lnts/〼;->ᎊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/〼;->ᎊ:I

    aget-byte v2, p1, p2

    aput-byte v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ᇭ()[B
    .locals 8

    .line 10
    iget-object v0, p0, Lnts/〼;->ዲ:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget v4, p0, Lnts/〼;->ᎊ:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-gez v2, :cond_0

    .line 12
    aget-wide v4, v0, v3

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 15
    :cond_0
    :goto_0
    iget v0, p0, Lnts/〼;->ᎊ:I

    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    .line 16
    iget-object v2, p0, Lnts/〼;->ᙕ:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lnts/〼;->ᎊ:I

    aput-byte v1, v2, v0

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v3}, Lnts/〼;->ㆃ(I)V

    .line 20
    iget v0, p0, Lnts/〼;->Ͼ:I

    new-array v0, v0, [B

    .line 21
    :goto_1
    iget v2, p0, Lnts/〼;->Ͼ:I

    if-ge v1, v2, :cond_2

    .line 22
    iget-object v2, p0, Lnts/〼;->て:[J

    shr-int/lit8 v3, v1, 0x3

    aget-wide v3, v2, v3

    and-int/lit8 v2, v1, 0x7

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, v3, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public ᰛ()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lnts/〼;->て:[J

    sget-object v3, Lnts/〼;->Ⲳ:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lnts/〼;->ౠ:[B

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    array-length v1, v1

    .line 5
    :goto_1
    iget-object v2, p0, Lnts/〼;->て:[J

    aget-wide v3, v2, v0

    shl-int/lit8 v5, v1, 0x8

    const/high16 v6, 0x1010000

    xor-int/2addr v5, v6

    iget v6, p0, Lnts/〼;->Ͼ:I

    xor-int/2addr v5, v6

    int-to-long v5, v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 7
    iget-object v2, p0, Lnts/〼;->ዲ:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    const/4 v5, 0x1

    .line 8
    aput-wide v3, v2, v5

    .line 9
    iput v0, p0, Lnts/〼;->ᎊ:I

    move v2, v1

    :goto_2
    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    .line 12
    iget-object v3, p0, Lnts/〼;->ᙕ:[B

    aput-byte v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    .line 15
    iget-object v1, p0, Lnts/〼;->ౠ:[B

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lnts/〼;->ᇭ([BII)V

    .line 16
    iput v3, p0, Lnts/〼;->ᎊ:I

    :cond_3
    return-void
.end method

.method public final ㆃ(I)V
    .locals 15

    const/16 v1, 0x10

    .line 1
    new-array v2, v1, [J

    iput-object v2, p0, Lnts/〼;->ᡲ:[J

    .line 2
    new-array v2, v1, [J

    iput-object v2, p0, Lnts/〼;->Ὺ:[J

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    const/16 v10, 0x8

    if-ge v2, v10, :cond_0

    .line 5
    iget-object v3, p0, Lnts/〼;->ᡲ:[J

    iget-object v4, p0, Lnts/〼;->て:[J

    aget-wide v5, v4, v2

    aput-wide v5, v3, v2

    add-int/lit8 v4, v2, 0x8

    .line 6
    sget-object v5, Lnts/〼;->Ⲳ:[J

    aget-wide v6, v5, v2

    aput-wide v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lnts/〼;->ᡲ:[J

    const/16 v11, 0xc

    aget-wide v3, v2, v11

    iget-object v5, p0, Lnts/〼;->ዲ:[J

    aget-wide v6, v5, v9

    xor-long/2addr v3, v6

    aput-wide v3, v2, v11

    const/16 v3, 0xd

    .line 10
    aget-wide v6, v2, v3

    const/4 v4, 0x1

    aget-wide v4, v5, v4

    xor-long/2addr v4, v6

    aput-wide v4, v2, v3

    if-lez p1, :cond_1

    const/16 v3, 0xe

    .line 12
    aget-wide v4, v2, v3

    not-long v4, v4

    aput-wide v4, v2, v3

    :cond_1
    move v2, v9

    :goto_1
    if-ge v2, v1, :cond_2

    .line 16
    iget-object v3, p0, Lnts/〼;->Ὺ:[J

    iget-object v4, p0, Lnts/〼;->ᙕ:[B

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v6, v5, 0x7

    .line 17
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    add-int/lit8 v8, v5, 0x6

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    const/16 v8, 0x30

    shl-long/2addr v12, v8

    xor-long/2addr v6, v12

    add-int/lit8 v8, v5, 0x5

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    const/16 v8, 0x28

    shl-long/2addr v12, v8

    xor-long/2addr v6, v12

    add-int/lit8 v8, v5, 0x4

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    const/16 v8, 0x20

    shl-long/2addr v12, v8

    xor-long/2addr v6, v12

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    const/16 v8, 0x18

    shl-long/2addr v12, v8

    xor-long/2addr v6, v12

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    shl-long/2addr v12, v1

    xor-long/2addr v6, v12

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    shl-long/2addr v12, v10

    xor-long/2addr v6, v12

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    xor-long/2addr v4, v6

    .line 18
    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v12, v9

    :goto_2
    if-ge v12, v11, :cond_3

    .line 22
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    sget-object v13, Lnts/〼;->ᛃ:[I

    mul-int/lit8 v14, v12, 0x10

    aget v2, v13, v14

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0x1

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0x8

    const/16 v4, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 23
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0x2

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0x3

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 24
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0x4

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0x5

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0xa

    const/16 v4, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 25
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0x6

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0x7

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0xb

    const/16 v4, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 26
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0x8

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0x9

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 27
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0xa

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0xb

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 28
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0xc

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v14, 0xd

    aget v2, v13, v2

    aget-wide v7, v1, v2

    const/16 v3, 0x8

    const/16 v4, 0xd

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    .line 29
    iget-object v1, p0, Lnts/〼;->Ὺ:[J

    add-int/lit8 v2, v14, 0xe

    aget v2, v13, v2

    aget-wide v5, v1, v2

    add-int/lit8 v14, v14, 0xf

    aget v2, v13, v14

    aget-wide v7, v1, v2

    const/16 v3, 0x9

    const/16 v4, 0xe

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual/range {v0 .. v8}, Lnts/〼;->ㆃ(IIIIJJ)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_3
    :goto_3
    if-ge v9, v10, :cond_4

    .line 33
    iget-object v1, p0, Lnts/〼;->て:[J

    aget-wide v2, v1, v9

    iget-object v4, p0, Lnts/〼;->ᡲ:[J

    aget-wide v5, v4, v9

    add-int/lit8 v7, v9, 0x8

    aget-wide v7, v4, v7

    xor-long v4, v5, v7

    xor-long/2addr v2, v4

    aput-wide v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final ㆃ(IIIIJJ)V
    .locals 6

    .line 34
    iget-object v0, p0, Lnts/〼;->ᡲ:[J

    aget-wide v1, v0, p1

    aget-wide v3, v0, p2

    add-long/2addr v1, v3

    add-long/2addr v1, p5

    aput-wide v1, v0, p1

    .line 35
    aget-wide p5, v0, p4

    xor-long/2addr p5, v1

    aput-wide p5, v0, p4

    const/16 v1, 0x20

    shr-long v2, p5, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-long/2addr p5, v1

    xor-long/2addr p5, v2

    .line 36
    aput-wide p5, v0, p4

    .line 37
    aget-wide v1, v0, p3

    add-long/2addr v1, p5

    aput-wide v1, v0, p3

    .line 38
    aget-wide p5, v0, p2

    xor-long/2addr p5, v1

    aput-wide p5, v0, p2

    const/16 v1, 0x18

    shr-long v1, p5, v1

    const-wide v3, 0xffffffffffL

    and-long/2addr v1, v3

    const/16 v3, 0x28

    shl-long/2addr p5, v3

    xor-long/2addr p5, v1

    .line 39
    aput-wide p5, v0, p2

    .line 40
    aget-wide v1, v0, p1

    add-long/2addr v1, p5

    add-long/2addr v1, p7

    aput-wide v1, v0, p1

    .line 41
    aget-wide p5, v0, p4

    xor-long/2addr p5, v1

    aput-wide p5, v0, p4

    const/16 p1, 0x10

    shr-long p7, p5, p1

    const-wide v1, 0xffffffffffffL

    and-long/2addr p7, v1

    const/16 p1, 0x30

    shl-long/2addr p5, p1

    xor-long/2addr p5, p7

    .line 42
    aput-wide p5, v0, p4

    .line 43
    aget-wide p7, v0, p3

    add-long/2addr p7, p5

    aput-wide p7, v0, p3

    .line 44
    aget-wide p3, v0, p2

    xor-long/2addr p3, p7

    aput-wide p3, v0, p2

    const/16 p1, 0x38

    shr-long p5, p3, p1

    const-wide/16 p7, 0xff

    and-long/2addr p5, p7

    const/4 p1, 0x7

    shr-long/2addr p5, p1

    const/4 p1, 0x1

    shl-long/2addr p3, p1

    xor-long/2addr p3, p5

    .line 45
    aput-wide p3, v0, p2

    return-void
.end method
