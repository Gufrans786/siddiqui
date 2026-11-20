.class public Lnts/Ꮿ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ͼ:[I


# instance fields
.field public ᇭ:[B

.field public ᰛ:I

.field public ᾨ:[I

.field public ㆃ:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const v0, 0x79622d32

    const v1, 0x6b206574

    const v2, 0x61707865

    const v3, 0x3320646e

    .line 1
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lnts/Ꮿ;->Ͼ:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/Ꮿ;->ㆃ:[I

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/Ꮿ;->ᾨ:[I

    const/16 v0, 0x40

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/Ꮿ;->ᇭ:[B

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnts/Ꮿ;->ᰛ:I

    .line 9
    invoke-virtual {p0}, Lnts/Ꮿ;->ㆃ()V

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

    .line 30
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

.method public static ㆃ([B[I[I[BI)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    .line 31
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_4

    add-int v5, v4, p4

    .line 32
    rem-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_3

    const/16 v6, 0x10

    .line 33
    invoke-static {v1, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x14

    :goto_1
    const/4 v9, 0x1

    const/16 v10, 0xc

    if-lez v7, :cond_0

    .line 36
    aget v11, v2, v3

    const/4 v12, 0x4

    aget v13, v2, v12

    add-int/2addr v11, v13

    aput v11, v2, v3

    aget v13, v2, v10

    xor-int/2addr v11, v13

    invoke-static {v11, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v10

    const/16 v13, 0x8

    .line 37
    aget v14, v2, v13

    add-int/2addr v14, v11

    aput v14, v2, v13

    aget v11, v2, v12

    xor-int/2addr v11, v14

    invoke-static {v11, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v12

    .line 38
    aget v14, v2, v3

    add-int/2addr v14, v11

    aput v14, v2, v3

    aget v11, v2, v10

    xor-int/2addr v11, v14

    invoke-static {v11, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v10

    .line 39
    aget v14, v2, v13

    add-int/2addr v14, v11

    aput v14, v2, v13

    aget v11, v2, v12

    xor-int/2addr v11, v14

    const/4 v14, 0x7

    invoke-static {v11, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v12

    .line 40
    aget v11, v2, v9

    const/4 v15, 0x5

    aget v16, v2, v15

    add-int v11, v11, v16

    aput v11, v2, v9

    const/16 v16, 0xd

    aget v17, v2, v16

    xor-int v11, v17, v11

    invoke-static {v11, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v16

    const/16 v17, 0x9

    .line 41
    aget v18, v2, v17

    add-int v18, v18, v11

    aput v18, v2, v17

    aget v11, v2, v15

    xor-int v11, v11, v18

    invoke-static {v11, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v15

    .line 42
    aget v18, v2, v9

    add-int v18, v18, v11

    aput v18, v2, v9

    aget v11, v2, v16

    xor-int v11, v11, v18

    invoke-static {v11, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v16

    .line 43
    aget v18, v2, v17

    add-int v18, v18, v11

    aput v18, v2, v17

    aget v11, v2, v15

    xor-int v11, v11, v18

    invoke-static {v11, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v11

    aput v11, v2, v15

    const/4 v11, 0x2

    .line 44
    aget v18, v2, v11

    const/16 v19, 0x6

    aget v20, v2, v19

    add-int v18, v18, v20

    aput v18, v2, v11

    const/16 v20, 0xe

    aget v21, v2, v20

    const/16 v22, 0x3

    xor-int v8, v21, v18

    invoke-static {v8, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v20

    const/16 v18, 0xa

    .line 45
    aget v21, v2, v18

    add-int v21, v21, v8

    aput v21, v2, v18

    aget v8, v2, v19

    xor-int v8, v8, v21

    invoke-static {v8, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v19

    .line 46
    aget v21, v2, v11

    add-int v21, v21, v8

    aput v21, v2, v11

    aget v8, v2, v20

    xor-int v8, v8, v21

    invoke-static {v8, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v20

    .line 47
    aget v21, v2, v18

    add-int v21, v21, v8

    aput v21, v2, v18

    aget v8, v2, v19

    xor-int v8, v8, v21

    invoke-static {v8, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v19

    .line 48
    aget v8, v2, v22

    aget v21, v2, v14

    add-int v8, v8, v21

    aput v8, v2, v22

    const/16 v21, 0xf

    aget v23, v2, v21

    xor-int v8, v23, v8

    invoke-static {v8, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v21

    const/16 v23, 0xb

    .line 49
    aget v24, v2, v23

    add-int v24, v24, v8

    aput v24, v2, v23

    aget v8, v2, v14

    xor-int v8, v8, v24

    invoke-static {v8, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v14

    .line 50
    aget v24, v2, v22

    add-int v24, v24, v8

    aput v24, v2, v22

    aget v8, v2, v21

    xor-int v8, v8, v24

    invoke-static {v8, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v21

    .line 51
    aget v24, v2, v23

    add-int v24, v24, v8

    aput v24, v2, v23

    aget v8, v2, v14

    xor-int v8, v8, v24

    invoke-static {v8, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v14

    .line 52
    aget v8, v2, v3

    aget v24, v2, v15

    add-int v8, v8, v24

    aput v8, v2, v3

    aget v24, v2, v21

    xor-int v8, v24, v8

    invoke-static {v8, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v21

    .line 53
    aget v24, v2, v18

    add-int v24, v24, v8

    aput v24, v2, v18

    aget v8, v2, v15

    xor-int v8, v8, v24

    invoke-static {v8, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v15

    .line 54
    aget v24, v2, v3

    add-int v24, v24, v8

    aput v24, v2, v3

    aget v8, v2, v21

    xor-int v8, v8, v24

    invoke-static {v8, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v21

    .line 55
    aget v21, v2, v18

    add-int v21, v21, v8

    aput v21, v2, v18

    aget v8, v2, v15

    xor-int v8, v8, v21

    invoke-static {v8, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v15

    .line 56
    aget v8, v2, v9

    aget v15, v2, v19

    add-int/2addr v8, v15

    aput v8, v2, v9

    aget v15, v2, v10

    xor-int/2addr v8, v15

    invoke-static {v8, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v10

    .line 57
    aget v15, v2, v23

    add-int/2addr v15, v8

    aput v15, v2, v23

    aget v8, v2, v19

    xor-int/2addr v8, v15

    invoke-static {v8, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v19

    .line 58
    aget v15, v2, v9

    add-int/2addr v15, v8

    aput v15, v2, v9

    aget v8, v2, v10

    xor-int/2addr v8, v15

    invoke-static {v8, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v10

    .line 59
    aget v9, v2, v23

    add-int/2addr v9, v8

    aput v9, v2, v23

    aget v8, v2, v19

    xor-int/2addr v8, v9

    invoke-static {v8, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v19

    .line 60
    aget v8, v2, v11

    aget v9, v2, v14

    add-int/2addr v8, v9

    aput v8, v2, v11

    aget v9, v2, v16

    xor-int/2addr v8, v9

    invoke-static {v8, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v16

    .line 61
    aget v9, v2, v13

    add-int/2addr v9, v8

    aput v9, v2, v13

    aget v8, v2, v14

    xor-int/2addr v8, v9

    invoke-static {v8, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v14

    .line 62
    aget v9, v2, v11

    add-int/2addr v9, v8

    aput v9, v2, v11

    aget v8, v2, v16

    xor-int/2addr v8, v9

    invoke-static {v8, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v16

    .line 63
    aget v9, v2, v13

    add-int/2addr v9, v8

    aput v9, v2, v13

    aget v8, v2, v14

    xor-int/2addr v8, v9

    invoke-static {v8, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v14

    .line 64
    aget v8, v2, v22

    aget v9, v2, v12

    add-int/2addr v8, v9

    aput v8, v2, v22

    aget v9, v2, v20

    xor-int/2addr v8, v9

    invoke-static {v8, v6}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v20

    .line 65
    aget v9, v2, v17

    add-int/2addr v9, v8

    aput v9, v2, v17

    aget v8, v2, v12

    xor-int/2addr v8, v9

    invoke-static {v8, v10}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v12

    .line 66
    aget v9, v2, v22

    add-int/2addr v9, v8

    aput v9, v2, v22

    aget v8, v2, v20

    xor-int/2addr v8, v9

    invoke-static {v8, v13}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v20

    .line 67
    aget v9, v2, v17

    add-int/2addr v9, v8

    aput v9, v2, v17

    aget v8, v2, v12

    xor-int/2addr v8, v9

    invoke-static {v8, v14}, Lnts/Ꮿ;->ㆃ(II)I

    move-result v8

    aput v8, v2, v12

    add-int/lit8 v7, v7, -0x2

    goto/16 :goto_1

    :cond_0
    const/16 v22, 0x3

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_1

    .line 71
    aget v8, v2, v7

    aget v11, v1, v7

    add-int/2addr v8, v11

    mul-int/lit8 v11, v7, 0x4

    add-int/lit8 v12, v11, 0x1

    int-to-byte v13, v8

    .line 72
    aput-byte v13, p3, v11

    add-int/lit8 v13, v11, 0x2

    ushr-int/lit8 v14, v8, 0x8

    int-to-byte v14, v14

    .line 73
    aput-byte v14, p3, v12

    add-int/lit8 v11, v11, 0x3

    ushr-int/lit8 v12, v8, 0x10

    int-to-byte v12, v12

    .line 74
    aput-byte v12, p3, v13

    ushr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    .line 75
    aput-byte v8, p3, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 76
    :cond_1
    aget v6, v1, v10

    add-int/2addr v6, v9

    aput v6, v1, v10

    if-eqz v6, :cond_2

    goto :goto_3

    .line 77
    :cond_2
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x2b

    const-string v2, "c^P\u0014pZPsW_\u001d_TOWLBT\u0005KUGSFCAZ\u0002"

    const/16 v4, 0x1c

    .line 78
    invoke-static {v2, v3, v4, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    :goto_3
    aget-byte v5, p3, v5

    aget-byte v6, v0, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public ㆃ()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lnts/Ꮿ;->ㆃ:[I

    iget-object v3, p0, Lnts/Ꮿ;->ᾨ:[I

    aput v0, v3, v1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lnts/Ꮿ;->ᇭ:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Lnts/Ꮿ;->ᰛ:I

    return-void
.end method

.method public ㆃ([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lnts/Ꮿ;->ㆃ:[I

    iget-object v1, p0, Lnts/Ꮿ;->ᾨ:[I

    iget-object v2, p0, Lnts/Ꮿ;->ᇭ:[B

    iget v3, p0, Lnts/Ꮿ;->ᰛ:I

    invoke-static {p1, v0, v1, v2, v3}, Lnts/Ꮿ;->ㆃ([B[I[I[BI)V

    .line 28
    iget v0, p0, Lnts/Ꮿ;->ᰛ:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lnts/Ꮿ;->ᰛ:I

    .line 29
    rem-int/lit8 v0, v0, 0x40

    iput v0, p0, Lnts/Ꮿ;->ᰛ:I

    return-void
.end method

.method public ㆃ([B[BJ)V
    .locals 10

    .line 7
    iget-object v0, p0, Lnts/Ꮿ;->ㆃ:[I

    .line 8
    sget-object v1, Lnts/Ꮿ;->Ͼ:[I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {p1, v2}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v1

    aput v1, v0, v3

    .line 10
    invoke-static {p1, v3}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v1

    const/4 v4, 0x5

    aput v1, v0, v4

    const/16 v1, 0x8

    .line 11
    invoke-static {p1, v1}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v4

    const/4 v5, 0x6

    aput v4, v0, v5

    const/16 v4, 0xc

    .line 12
    invoke-static {p1, v4}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v5

    const/4 v6, 0x7

    aput v5, v0, v6

    const/16 v5, 0x10

    .line 13
    invoke-static {p1, v5}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v5

    aput v5, v0, v1

    const/16 v5, 0x14

    .line 14
    invoke-static {p1, v5}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v5

    const/16 v6, 0x9

    aput v5, v0, v6

    const/16 v5, 0x18

    .line 15
    invoke-static {p1, v5}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result v5

    const/16 v6, 0xa

    aput v5, v0, v6

    const/16 v5, 0x1c

    .line 16
    invoke-static {p1, v5}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result p1

    const/16 v5, 0xb

    aput p1, v0, v5

    .line 17
    array-length p1, p2

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    if-ne p1, v4, :cond_0

    long-to-int p1, p3

    .line 18
    aput p1, v0, v4

    .line 19
    invoke-static {p2, v2}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result p1

    aput p1, v0, v7

    .line 20
    invoke-static {p2, v3}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result p1

    aput p1, v0, v6

    .line 21
    invoke-static {p2, v1}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result p1

    aput p1, v0, v5

    return-void

    .line 22
    :cond_0
    array-length p1, p2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x20

    ushr-long v8, p3, p1

    long-to-int p1, v8

    .line 23
    aput p1, v0, v4

    long-to-int p1, p3

    .line 24
    aput p1, v0, v7

    .line 25
    invoke-static {p2, v2}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result p1

    aput p1, v0, v6

    .line 26
    invoke-static {p2, v3}, Lnts/Ꮿ;->ㆃ([BI)I

    move-result p1

    aput p1, v0, v5

    :cond_1
    return-void
.end method
