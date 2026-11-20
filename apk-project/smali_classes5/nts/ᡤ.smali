.class public Lnts/ᡤ;
.super Lnts/લ;
.source "SourceFile"


# static fields
.field public static final ᛃ:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ᡤ;->ᛃ:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x1c20
        0x3840
        0x2460
        0x7080
        0x6ca0
        0x48c0
        0x54e0
        0xe100
        0xfd20
        0xd940
        0xc560
        0x9180
        0x8da0
        0xa9c0
        0xb5e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/લ;-><init>()V

    return-void
.end method

.method public static ᇭ(Lnts/Ф;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/Ф;->Ͼ:I

    const/16 v1, 0x12

    const/16 v2, 0x10

    if-gt v0, v2, :cond_4

    if-ltz v0, :cond_4

    .line 4
    iget v3, p0, Lnts/Ф;->ౠ:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/16 v1, 0x8

    if-lez v0, :cond_0

    .line 10
    iget-wide v3, p0, Lnts/Ф;->ዲ:J

    mul-int/2addr v0, v1

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lnts/Ф;->ዲ:J

    .line 11
    iget-object v0, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v0}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 14
    :cond_0
    iget-wide v3, p0, Lnts/Ф;->て:J

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    long-to-int v3, v3

    iget-object v4, p0, Lnts/Ф;->ᰛ:[B

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lnts/ᡤ;->ㆃ(I[BI)V

    .line 15
    iget-wide v3, p0, Lnts/Ф;->て:J

    long-to-int v3, v3

    iget-object v4, p0, Lnts/Ф;->ᰛ:[B

    const/4 v6, 0x4

    invoke-static {v3, v4, v6}, Lnts/ᡤ;->ㆃ(I[BI)V

    .line 16
    iget-wide v3, p0, Lnts/Ф;->ዲ:J

    ushr-long/2addr v3, v0

    long-to-int v0, v3

    iget-object v3, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v0, v3, v1}, Lnts/ᡤ;->ㆃ(I[BI)V

    .line 17
    iget-wide v0, p0, Lnts/Ф;->ዲ:J

    long-to-int v0, v0

    iget-object v1, p0, Lnts/Ф;->ᰛ:[B

    const/16 v3, 0xc

    invoke-static {v0, v1, v3}, Lnts/ᡤ;->ㆃ(I[BI)V

    move v0, v5

    :goto_0
    if-ge v0, v2, :cond_1

    .line 20
    iget-object v1, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v3, v1, v0

    iget-object v4, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v0}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 25
    iget-object v0, p0, Lnts/Ф;->ᇭ:[B

    iget-object v1, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v0, p0, Lnts/Ф;->ᰛ:[B

    iget-object v1, p0, Lnts/Ф;->Ⲳ:[I

    iget v3, p0, Lnts/Ф;->ᛃ:I

    invoke-static {v0, v1, v3}, Lnts/ᜧ;->ᾨ([B[II)V

    move v0, v5

    :goto_1
    if-ge v0, v2, :cond_2

    .line 28
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 29
    iget-object v1, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v1, v1, v0

    iget-object v3, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v3, v3, v0

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_2
    iput v5, p0, Lnts/Ф;->ౠ:I

    return-void

    .line 32
    :cond_3
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x79

    const/16 v0, 0x2f

    invoke-static {p1, v1, v0}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_4
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x67

    const/16 v0, 0x5b

    invoke-static {p1, v1, v0}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᰛ(Lnts/Ф;[B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xf

    .line 1
    aget-byte v3, v1, v2

    and-int/2addr v3, v2

    int-to-byte v3, v3

    .line 2
    iget-object v4, v0, Lnts/Ф;->ᎊ:[J

    aget-wide v5, v4, v3

    .line 3
    iget-object v4, v0, Lnts/Ф;->ᡲ:[J

    aget-wide v3, v4, v3

    move v7, v2

    :goto_0
    const/4 v8, 0x4

    if-ltz v7, :cond_1

    .line 6
    aget-byte v9, v1, v7

    and-int/lit8 v10, v9, 0xf

    int-to-byte v10, v10

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v8

    int-to-byte v9, v9

    const-wide/16 v13, 0xf

    const/16 v15, 0x30

    const/16 v16, 0x3c

    if-eq v7, v2, :cond_0

    and-long v11, v5, v13

    long-to-int v11, v11

    shl-long v17, v3, v16

    ushr-long/2addr v5, v8

    or-long v5, v17, v5

    ushr-long/2addr v3, v8

    .line 13
    sget-object v12, Lnts/ᡤ;->ᛃ:[J

    aget-wide v11, v12, v11

    shl-long/2addr v11, v15

    xor-long/2addr v3, v11

    .line 14
    iget-object v11, v0, Lnts/Ф;->ᎊ:[J

    aget-wide v17, v11, v10

    xor-long v5, v5, v17

    .line 15
    iget-object v11, v0, Lnts/Ф;->ᡲ:[J

    aget-wide v10, v11, v10

    xor-long/2addr v3, v10

    :cond_0
    and-long v10, v5, v13

    long-to-int v10, v10

    shl-long v11, v3, v16

    ushr-long/2addr v5, v8

    or-long/2addr v5, v11

    ushr-long/2addr v3, v8

    .line 21
    sget-object v8, Lnts/ᡤ;->ᛃ:[J

    aget-wide v10, v8, v10

    shl-long/2addr v10, v15

    xor-long/2addr v3, v10

    .line 22
    iget-object v8, v0, Lnts/Ф;->ᎊ:[J

    aget-wide v10, v8, v9

    xor-long/2addr v5, v10

    .line 23
    iget-object v8, v0, Lnts/Ф;->ᡲ:[J

    aget-wide v9, v8, v9

    xor-long/2addr v3, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    ushr-long v9, v3, v0

    long-to-int v2, v9

    const/4 v7, 0x0

    .line 25
    invoke-static {v2, v1, v7}, Lnts/ᡤ;->ㆃ(I[BI)V

    long-to-int v2, v3

    .line 26
    invoke-static {v2, v1, v8}, Lnts/ᡤ;->ㆃ(I[BI)V

    ushr-long v2, v5, v0

    long-to-int v0, v2

    const/16 v2, 0x8

    .line 27
    invoke-static {v0, v1, v2}, Lnts/ᡤ;->ㆃ(I[BI)V

    long-to-int v0, v5

    const/16 v2, 0xc

    .line 28
    invoke-static {v0, v1, v2}, Lnts/ᡤ;->ㆃ(I[BI)V

    return-void
.end method

.method public static ᾨ(Lnts/Ф;)V
    .locals 15

    const/16 v0, 0x10

    .line 1
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/Ф;->ㆃ:[B

    .line 2
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/Ф;->ᾨ:[B

    .line 3
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/Ф;->ᇭ:[B

    .line 4
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/Ф;->ᰛ:[B

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lnts/Ф;->Ͼ:I

    .line 6
    iput v1, p0, Lnts/Ф;->ౠ:I

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lnts/Ф;->ᙕ:Z

    const-wide/16 v3, 0x0

    .line 8
    iput-wide v3, p0, Lnts/Ф;->て:J

    .line 9
    iput-wide v3, p0, Lnts/Ф;->ዲ:J

    .line 10
    new-array v3, v0, [J

    iput-object v3, p0, Lnts/Ф;->ᎊ:[J

    .line 11
    new-array v3, v0, [J

    iput-object v3, p0, Lnts/Ф;->ᡲ:[J

    const/4 v3, 0x0

    .line 12
    iput-object v3, p0, Lnts/Ф;->Ὺ:[B

    const/4 v3, -0x1

    .line 13
    iput v3, p0, Lnts/Ф;->ᵑ:I

    .line 14
    new-array v0, v0, [B

    .line 19
    iget-object v3, p0, Lnts/Ф;->Ⲳ:[I

    iget v4, p0, Lnts/Ф;->ᛃ:I

    invoke-static {v0, v3, v4}, Lnts/ᜧ;->ᾨ([B[II)V

    .line 20
    invoke-static {v0, v1}, Lnts/ᡤ;->ㆃ([BI)J

    move-result-wide v3

    const/4 v5, 0x4

    .line 21
    invoke-static {v0, v5}, Lnts/ᡤ;->ㆃ([BI)J

    move-result-wide v6

    const/16 v8, 0x20

    shl-long/2addr v3, v8

    or-long/2addr v3, v6

    const/16 v6, 0x8

    .line 24
    invoke-static {v0, v6}, Lnts/ᡤ;->ㆃ([BI)J

    move-result-wide v9

    const/16 v7, 0xc

    .line 25
    invoke-static {v0, v7}, Lnts/ᡤ;->ㆃ([BI)J

    move-result-wide v11

    shl-long/2addr v9, v8

    or-long/2addr v9, v11

    .line 28
    iget-object v0, p0, Lnts/Ф;->ᎊ:[J

    aput-wide v9, v0, v6

    .line 29
    iget-object v0, p0, Lnts/Ф;->ᡲ:[J

    aput-wide v3, v0, v6

    :goto_0
    if-lez v5, :cond_0

    const-wide/16 v11, 0x1

    and-long/2addr v11, v9

    const-wide/32 v13, -0x1f000000

    mul-long/2addr v11, v13

    const/16 v0, 0x3f

    shl-long v13, v3, v0

    ushr-long/2addr v9, v2

    or-long/2addr v9, v13

    ushr-long/2addr v3, v2

    shl-long/2addr v11, v8

    xor-long/2addr v3, v11

    .line 35
    iget-object v0, p0, Lnts/Ф;->ᎊ:[J

    aput-wide v9, v0, v5

    .line 36
    iget-object v0, p0, Lnts/Ф;->ᡲ:[J

    aput-wide v3, v0, v5

    ushr-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_1
    if-gt v0, v6, :cond_2

    .line 40
    iget-object v2, p0, Lnts/Ф;->ᎊ:[J

    aget-wide v3, v2, v0

    .line 41
    iget-object v2, p0, Lnts/Ф;->ᡲ:[J

    aget-wide v7, v2, v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_1

    .line 43
    iget-object v5, p0, Lnts/Ф;->ᎊ:[J

    add-int v9, v0, v2

    aget-wide v10, v5, v2

    xor-long/2addr v10, v3

    aput-wide v10, v5, v9

    .line 44
    iget-object v5, p0, Lnts/Ф;->ᡲ:[J

    aget-wide v10, v5, v2

    xor-long/2addr v10, v7

    aput-wide v10, v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static ᾨ(Lnts/Ф;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 45
    iget v0, p0, Lnts/Ф;->ౠ:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-nez v0, :cond_9

    .line 48
    iget v0, p0, Lnts/Ф;->Ͼ:I

    if-ltz v0, :cond_8

    const/16 v3, 0x10

    if-ge v0, v3, :cond_8

    if-nez p1, :cond_0

    .line 52
    new-array p1, v2, [B

    .line 53
    :cond_0
    array-length v0, p1

    iget v1, p0, Lnts/Ф;->Ͼ:I

    add-int/2addr v0, v1

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 54
    iput-boolean v2, p0, Lnts/Ф;->ᙕ:Z

    .line 59
    :cond_1
    iget v0, p0, Lnts/Ф;->Ͼ:I

    const-wide/16 v4, 0x80

    if-nez v0, :cond_3

    move v0, v2

    .line 60
    :goto_0
    array-length v1, p1

    and-int/lit8 v1, v1, -0x10

    if-ge v0, v1, :cond_4

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    .line 62
    iget-object v6, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v7, v6, v1

    add-int v8, v0, v1

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_2
    iget-object v1, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v1}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 65
    iget-wide v6, p0, Lnts/Ф;->て:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lnts/Ф;->て:J

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    move v1, v0

    .line 70
    :goto_2
    array-length v6, p1

    if-ge v0, v6, :cond_7

    .line 71
    iget-object v6, p0, Lnts/Ф;->ᰛ:[B

    iget v7, p0, Lnts/Ф;->Ͼ:I

    aget-byte v8, p1, v1

    aput-byte v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 73
    iput v7, p0, Lnts/Ф;->Ͼ:I

    .line 74
    iget v6, p0, Lnts/Ф;->Ͼ:I

    if-ne v6, v3, :cond_6

    move v6, v2

    :goto_3
    if-ge v6, v3, :cond_5

    .line 76
    iget-object v7, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v8, v7, v6

    iget-object v9, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v9, v9, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 78
    :cond_5
    iget-object v6, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v6}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 79
    iput v2, p0, Lnts/Ф;->Ͼ:I

    .line 80
    iget-wide v6, p0, Lnts/Ф;->て:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lnts/Ф;->て:J

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void

    .line 81
    :cond_8
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x12

    const/16 v0, 0x1b

    invoke-static {v1, p1, v0}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_9
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x33

    invoke-static {v2, v1, p1}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ([BI)J
    .locals 6

    .line 151
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    const-wide/16 v2, 0xff

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static ㆃ(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 152
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 153
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 154
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    .line 155
    aput-byte p0, p1, p2

    return-void
.end method

.method public static ㆃ(Lnts/Ф;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 156
    iget v0, p0, Lnts/Ф;->ᵑ:I

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 159
    iput v0, p0, Lnts/Ф;->ᵑ:I

    const/16 v0, 0xf

    :goto_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lnts/Ф;->ᾨ:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    and-int/lit16 v1, v2, 0xff

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 162
    :cond_2
    new-instance p0, Lnts/ẩ;

    const/16 v0, 0x10

    const/16 v1, 0x77

    const/16 v2, 0x8b

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Lnts/Ф;[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/Ф;->Ͼ:I

    const/16 v1, 0x12

    const/16 v2, 0x10

    if-gt v0, v2, :cond_d

    if-ltz v0, :cond_d

    .line 5
    iget v3, p0, Lnts/Ф;->ౠ:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    .line 7
    iget-boolean v3, p0, Lnts/Ф;->ᙕ:Z

    const/16 v6, 0xc

    if-eqz v3, :cond_0

    if-ne v0, v6, :cond_0

    .line 9
    iget-object v0, p0, Lnts/Ф;->ᰛ:[B

    iget-object v3, p0, Lnts/Ф;->ᾨ:[B

    invoke-static {v0, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Lnts/Ф;->ᾨ:[B

    aput-byte v5, v0, v6

    const/16 v3, 0xd

    .line 11
    aput-byte v5, v0, v3

    const/16 v3, 0xe

    .line 12
    aput-byte v5, v0, v3

    const/16 v3, 0xf

    .line 13
    aput-byte v4, v0, v3

    goto :goto_3

    :cond_0
    move v0, v5

    .line 16
    :goto_0
    iget v3, p0, Lnts/Ф;->Ͼ:I

    if-ge v0, v3, :cond_1

    .line 17
    iget-object v3, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v7, v3, v0

    iget-object v8, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v8, v8, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-lez v3, :cond_2

    .line 20
    iget-wide v7, p0, Lnts/Ф;->て:J

    mul-int/2addr v3, v0

    int-to-long v9, v3

    add-long/2addr v7, v9

    iput-wide v7, p0, Lnts/Ф;->て:J

    .line 21
    iget-object v3, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v3}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    :cond_2
    move v3, v5

    :goto_1
    if-ge v3, v0, :cond_3

    .line 25
    iget-object v7, p0, Lnts/Ф;->ᰛ:[B

    aput-byte v5, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28
    :cond_3
    iget-wide v7, p0, Lnts/Ф;->て:J

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    long-to-int v3, v7

    iget-object v7, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v3, v7, v0}, Lnts/ᡤ;->ㆃ(I[BI)V

    .line 29
    iget-wide v7, p0, Lnts/Ф;->て:J

    long-to-int v0, v7

    iget-object v3, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v0, v3, v6}, Lnts/ᡤ;->ㆃ(I[BI)V

    move v0, v5

    :goto_2
    if-ge v0, v2, :cond_4

    .line 32
    iget-object v3, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v6, v3, v0

    iget-object v7, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34
    :cond_4
    iget-object v0, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v0}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 35
    iget-object v0, p0, Lnts/Ф;->ㆃ:[B

    iget-object v3, p0, Lnts/Ф;->ᾨ:[B

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    new-array v0, v2, [B

    iput-object v0, p0, Lnts/Ф;->ㆃ:[B

    .line 39
    :goto_3
    iget-object v0, p0, Lnts/Ф;->ᾨ:[B

    iget-object v3, p0, Lnts/Ф;->ᇭ:[B

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-array v0, v2, [B

    iput-object v0, p0, Lnts/Ф;->ᰛ:[B

    .line 41
    iput v5, p0, Lnts/Ф;->Ͼ:I

    const-wide/16 v6, 0x0

    .line 42
    iput-wide v6, p0, Lnts/Ф;->て:J

    .line 43
    iput v4, p0, Lnts/Ф;->ౠ:I

    .line 46
    :cond_5
    iget v0, p0, Lnts/Ф;->ౠ:I

    if-ne v0, v4, :cond_c

    iget v0, p0, Lnts/Ф;->Ͼ:I

    if-ge v0, v2, :cond_c

    if-nez p1, :cond_6

    .line 51
    new-array p1, v5, [B

    .line 54
    :cond_6
    iget v0, p0, Lnts/Ф;->Ͼ:I

    const-wide/16 v6, 0x80

    if-nez v0, :cond_8

    move v0, v5

    .line 55
    :goto_4
    array-length v1, p1

    and-int/lit8 v1, v1, -0x10

    if-ge v0, v1, :cond_9

    move v1, v5

    :goto_5
    if-ge v1, v2, :cond_7

    .line 57
    iget-object v3, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v8, v3, v1

    add-int v9, v0, v1

    aget-byte v9, p1, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 59
    :cond_7
    iget-object v1, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v1}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 60
    iget-wide v8, p0, Lnts/Ф;->て:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lnts/Ф;->て:J

    add-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_8
    move v0, v5

    :cond_9
    move v1, v0

    .line 65
    :goto_6
    array-length v3, p1

    if-ge v0, v3, :cond_b

    .line 66
    iget-object v3, p0, Lnts/Ф;->ㆃ:[B

    iget v8, p0, Lnts/Ф;->Ͼ:I

    aget-byte v9, v3, v8

    aget-byte v10, p1, v1

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    add-int/2addr v1, v4

    add-int/2addr v8, v4

    .line 68
    iput v8, p0, Lnts/Ф;->Ͼ:I

    .line 70
    iget v8, p0, Lnts/Ф;->Ͼ:I

    if-ne v8, v2, :cond_a

    .line 71
    invoke-static {p0, v3}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 72
    iput v5, p0, Lnts/Ф;->Ͼ:I

    .line 73
    iget-wide v8, p0, Lnts/Ф;->て:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lnts/Ф;->て:J

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return-void

    .line 74
    :cond_c
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x31

    const/16 v0, 0x2c

    invoke-static {p1, v1, v0}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_d
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x1f

    const/16 v0, 0x11

    invoke-static {p1, v1, v0}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Lnts/Ф;[B[BZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 76
    iget v0, p0, Lnts/Ф;->Ͼ:I

    const/16 v1, 0x12

    const/16 v2, 0x10

    if-gt v0, v2, :cond_c

    if-ltz v0, :cond_c

    .line 80
    iget v3, p0, Lnts/Ф;->ౠ:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    if-lez v0, :cond_0

    .line 82
    iget-wide v7, p0, Lnts/Ф;->て:J

    mul-int/lit8 v0, v0, 0x8

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Lnts/Ф;->て:J

    .line 83
    iget-object v0, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v0}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 86
    :cond_0
    invoke-static {p0}, Lnts/ᡤ;->ㆃ(Lnts/Ф;)V

    .line 87
    iget-object v0, p0, Lnts/Ф;->ᾨ:[B

    iget-object v3, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v0, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v0, p0, Lnts/Ф;->ᰛ:[B

    iget-object v3, p0, Lnts/Ф;->Ⲳ:[I

    iget v5, p0, Lnts/Ф;->ᛃ:I

    invoke-static {v0, v3, v5}, Lnts/ᜧ;->ᾨ([B[II)V

    .line 89
    iput v6, p0, Lnts/Ф;->Ͼ:I

    .line 90
    iput v4, p0, Lnts/Ф;->ౠ:I

    .line 93
    :cond_1
    iget v0, p0, Lnts/Ф;->ౠ:I

    if-ne v0, v4, :cond_b

    if-nez p1, :cond_2

    .line 97
    new-array p1, v6, [B

    .line 100
    :cond_2
    iget v0, p0, Lnts/Ф;->Ͼ:I

    const-wide/16 v3, 0x80

    if-nez v0, :cond_6

    if-eqz p3, :cond_4

    move v0, v6

    .line 102
    :goto_0
    array-length v1, p1

    and-int/lit8 v1, v1, -0x10

    if-ge v0, v1, :cond_7

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_3

    add-int v5, v0, v1

    .line 104
    aget-byte v7, p1, v5

    iget-object v8, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v8, v8, v1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p2, v5

    .line 105
    iget-object v7, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v8, v7, v1

    aget-byte v5, p2, v5

    xor-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_3
    iget-wide v7, p0, Lnts/Ф;->ዲ:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lnts/Ф;->ዲ:J

    .line 108
    iget-object v1, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v1}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 110
    invoke-static {p0}, Lnts/ᡤ;->ㆃ(Lnts/Ф;)V

    .line 111
    iget-object v1, p0, Lnts/Ф;->ᾨ:[B

    iget-object v5, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v1, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v1, p0, Lnts/Ф;->ᰛ:[B

    iget-object v5, p0, Lnts/Ф;->Ⲳ:[I

    iget v7, p0, Lnts/Ф;->ᛃ:I

    invoke-static {v1, v5, v7}, Lnts/ᜧ;->ᾨ([B[II)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_4
    move v0, v6

    .line 115
    :goto_2
    array-length v1, p1

    and-int/lit8 v1, v1, -0x10

    if-ge v0, v1, :cond_7

    move v1, v6

    :goto_3
    if-ge v1, v2, :cond_5

    .line 117
    iget-object v5, p0, Lnts/Ф;->ㆃ:[B

    aget-byte v7, v5, v1

    add-int v8, v0, v1

    aget-byte v9, p2, v8

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 118
    aget-byte v5, p2, v8

    iget-object v7, p0, Lnts/Ф;->ᰛ:[B

    aget-byte v7, v7, v1

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, p1, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 120
    :cond_5
    iget-wide v7, p0, Lnts/Ф;->ዲ:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lnts/Ф;->ዲ:J

    .line 121
    iget-object v1, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v1}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 123
    invoke-static {p0}, Lnts/ᡤ;->ㆃ(Lnts/Ф;)V

    .line 124
    iget-object v1, p0, Lnts/Ф;->ᾨ:[B

    iget-object v5, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v1, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v1, p0, Lnts/Ф;->ᰛ:[B

    iget-object v5, p0, Lnts/Ф;->Ⲳ:[I

    iget v7, p0, Lnts/Ф;->ᛃ:I

    invoke-static {v1, v5, v7}, Lnts/ᜧ;->ᾨ([B[II)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_6
    move v0, v6

    .line 131
    :cond_7
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_a

    .line 132
    iget v1, p0, Lnts/Ф;->Ͼ:I

    if-ne v1, v2, :cond_8

    .line 133
    iget-wide v7, p0, Lnts/Ф;->ዲ:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lnts/Ф;->ዲ:J

    .line 134
    iget-object v1, p0, Lnts/Ф;->ㆃ:[B

    invoke-static {p0, v1}, Lnts/ᡤ;->ᰛ(Lnts/Ф;[B)V

    .line 135
    invoke-static {p0}, Lnts/ᡤ;->ㆃ(Lnts/Ф;)V

    .line 136
    iget-object v1, p0, Lnts/Ф;->ᾨ:[B

    iget-object v5, p0, Lnts/Ф;->ᰛ:[B

    invoke-static {v1, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v1, p0, Lnts/Ф;->ᰛ:[B

    iget-object v5, p0, Lnts/Ф;->Ⲳ:[I

    iget v7, p0, Lnts/Ф;->ᛃ:I

    invoke-static {v1, v5, v7}, Lnts/ᜧ;->ᾨ([B[II)V

    .line 138
    iput v6, p0, Lnts/Ф;->Ͼ:I

    :cond_8
    if-eqz p3, :cond_9

    .line 142
    aget-byte v1, p1, v0

    iget-object v5, p0, Lnts/Ф;->ᰛ:[B

    iget v7, p0, Lnts/Ф;->Ͼ:I

    aget-byte v5, v5, v7

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_5

    .line 145
    :cond_9
    aget-byte v1, p2, v0

    .line 146
    iget-object v5, p0, Lnts/Ф;->ᰛ:[B

    iget v7, p0, Lnts/Ф;->Ͼ:I

    aget-byte v5, v5, v7

    xor-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 148
    :goto_5
    iget-object v5, p0, Lnts/Ф;->ㆃ:[B

    iget v7, p0, Lnts/Ф;->Ͼ:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnts/Ф;->Ͼ:I

    aget-byte v8, v5, v7

    xor-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 149
    :cond_b
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x55

    const/16 p2, 0xa

    invoke-static {p1, v1, p2}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_c
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x43

    const/16 p2, 0x40

    invoke-static {p1, v1, p2}, Lnts/ݶ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method
