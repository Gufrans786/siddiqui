.class public Lnts/ࠂ;
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

.field public ᡲ:Z

.field public て:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ࠂ;->Ὺ:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/16 v0, 0x8

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ࠂ;->Ͼ:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/ࠂ;->ౠ:I

    const/16 v1, 0x40

    .line 5
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ࠂ;->ᙕ:[B

    .line 7
    iput v0, p0, Lnts/ࠂ;->て:I

    .line 8
    iput v0, p0, Lnts/ࠂ;->ዲ:I

    .line 10
    iput-boolean v0, p0, Lnts/ࠂ;->ᎊ:Z

    .line 11
    iput-boolean v0, p0, Lnts/ࠂ;->ᡲ:Z

    const/16 v0, 0x100

    .line 14
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 15
    invoke-virtual {p0}, Lnts/ࠂ;->ᰛ()V

    return-void
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
    new-instance v0, Lnts/ࠂ;

    invoke-direct {v0}, Lnts/ࠂ;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lnts/ࠂ;->ㆃ(Lnts/ࠂ;)V

    return-object v0
.end method

.method public final Ͼ()V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x40

    .line 1
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x10

    const/4 v6, 0x3

    if-ge v4, v5, :cond_0

    .line 7
    iget-object v7, v0, Lnts/ࠂ;->ᙕ:[B

    mul-int/lit8 v8, v4, 0x4

    aget-byte v9, v7, v8

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    aput v9, v2, v4

    add-int/lit8 v10, v8, 0x1

    .line 8
    aget-byte v10, v7, v10

    shl-int/lit8 v5, v10, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v5, v10

    or-int/2addr v5, v9

    aput v5, v2, v4

    add-int/lit8 v9, v8, 0x2

    .line 9
    aget-byte v9, v7, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    or-int/2addr v5, v9

    aput v5, v2, v4

    add-int/2addr v8, v6

    .line 10
    aget-byte v6, v7, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v4, 0x7

    if-ge v5, v1, :cond_1

    add-int/lit8 v7, v5, -0xf

    .line 14
    aget v8, v2, v7

    invoke-virtual {v0, v8, v4}, Lnts/ࠂ;->ㆃ(II)I

    move-result v4

    aget v8, v2, v7

    const/16 v9, 0x12

    invoke-virtual {v0, v8, v9}, Lnts/ࠂ;->ㆃ(II)I

    move-result v8

    xor-int/2addr v4, v8

    aget v7, v2, v7

    ushr-int/2addr v7, v6

    xor-int/2addr v4, v7

    add-int/lit8 v7, v5, -0x2

    .line 15
    aget v8, v2, v7

    const/16 v9, 0x11

    invoke-virtual {v0, v8, v9}, Lnts/ࠂ;->ㆃ(II)I

    move-result v8

    aget v9, v2, v7

    const/16 v10, 0x13

    invoke-virtual {v0, v9, v10}, Lnts/ࠂ;->ㆃ(II)I

    move-result v9

    xor-int/2addr v8, v9

    aget v7, v2, v7

    ushr-int/lit8 v7, v7, 0xa

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0x10

    .line 16
    aget v8, v2, v8

    add-int/2addr v8, v4

    add-int/lit8 v4, v5, -0x7

    aget v4, v2, v4

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    aput v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_1
    iget-object v5, v0, Lnts/ࠂ;->Ͼ:[I

    aget v7, v5, v3

    const/4 v8, 0x1

    .line 20
    aget v9, v5, v8

    const/4 v10, 0x2

    .line 21
    aget v11, v5, v10

    .line 22
    aget v12, v5, v6

    const/4 v13, 0x4

    .line 23
    aget v14, v5, v13

    const/4 v15, 0x5

    .line 24
    aget v16, v5, v15

    move/from16 v17, v4

    const/4 v4, 0x6

    .line 25
    aget v18, v5, v4

    .line 26
    aget v5, v5, v17

    move/from16 v19, v6

    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_2

    .line 29
    invoke-virtual {v0, v7, v10}, Lnts/ࠂ;->ㆃ(II)I

    move-result v20

    const/16 v1, 0xd

    invoke-virtual {v0, v7, v1}, Lnts/ࠂ;->ㆃ(II)I

    move-result v1

    xor-int v1, v20, v1

    move/from16 v20, v8

    const/16 v8, 0x16

    invoke-virtual {v0, v7, v8}, Lnts/ࠂ;->ㆃ(II)I

    move-result v8

    xor-int/2addr v1, v8

    and-int v8, v7, v9

    and-int v21, v7, v11

    xor-int v8, v8, v21

    and-int v21, v9, v11

    xor-int v8, v8, v21

    add-int/2addr v1, v8

    .line 32
    invoke-virtual {v0, v14, v4}, Lnts/ࠂ;->ㆃ(II)I

    move-result v8

    move/from16 v21, v4

    const/16 v4, 0xb

    invoke-virtual {v0, v14, v4}, Lnts/ࠂ;->ㆃ(II)I

    move-result v4

    xor-int/2addr v4, v8

    const/16 v8, 0x19

    invoke-virtual {v0, v14, v8}, Lnts/ࠂ;->ㆃ(II)I

    move-result v8

    xor-int/2addr v4, v8

    and-int v8, v14, v16

    move/from16 v22, v10

    not-int v10, v14

    and-int v10, v10, v18

    xor-int/2addr v8, v10

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    .line 34
    sget-object v4, Lnts/ࠂ;->Ὺ:[I

    aget v4, v4, v6

    add-int/2addr v5, v4

    aget v4, v2, v6

    add-int/2addr v5, v4

    add-int v4, v12, v5

    add-int/2addr v1, v5

    add-int/lit8 v6, v6, 0x1

    move v12, v11

    move/from16 v5, v18

    move/from16 v8, v20

    move/from16 v10, v22

    move v11, v9

    move/from16 v18, v16

    move v9, v7

    move/from16 v16, v14

    move v7, v1

    move v14, v4

    move/from16 v4, v21

    const/16 v1, 0x40

    goto :goto_2

    :cond_2
    move/from16 v21, v4

    move/from16 v20, v8

    move/from16 v22, v10

    .line 46
    iget-object v1, v0, Lnts/ࠂ;->Ͼ:[I

    aget v2, v1, v3

    add-int/2addr v2, v7

    aput v2, v1, v3

    .line 47
    aget v2, v1, v20

    add-int/2addr v2, v9

    aput v2, v1, v20

    .line 48
    aget v2, v1, v22

    add-int/2addr v2, v11

    aput v2, v1, v22

    .line 49
    aget v2, v1, v19

    add-int/2addr v2, v12

    aput v2, v1, v19

    .line 50
    aget v2, v1, v13

    add-int/2addr v2, v14

    aput v2, v1, v13

    .line 51
    aget v2, v1, v15

    add-int v2, v2, v16

    aput v2, v1, v15

    .line 52
    aget v2, v1, v21

    add-int v2, v2, v18

    aput v2, v1, v21

    .line 53
    aget v2, v1, v17

    add-int/2addr v2, v5

    aput v2, v1, v17

    .line 55
    iput v3, v0, Lnts/ࠂ;->ౠ:I

    return-void
.end method

.method public ᇭ([BII)V
    .locals 4

    if-eqz p1, :cond_3

    :goto_0
    if-lez p3, :cond_2

    .line 42
    iget-boolean v0, p0, Lnts/ࠂ;->ᡲ:Z

    if-nez v0, :cond_2

    add-int/lit8 p3, p3, -0x1

    .line 44
    iget-object v0, p0, Lnts/ࠂ;->ᙕ:[B

    iget v1, p0, Lnts/ࠂ;->ౠ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/ࠂ;->ౠ:I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v0, v1

    .line 45
    iget p2, p0, Lnts/ࠂ;->ዲ:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Lnts/ࠂ;->ዲ:I

    if-nez p2, :cond_0

    .line 47
    iget p2, p0, Lnts/ࠂ;->て:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lnts/ࠂ;->て:I

    if-nez p2, :cond_0

    .line 49
    iput-boolean v0, p0, Lnts/ࠂ;->ᡲ:Z

    :cond_0
    const/16 p2, 0x40

    if-ne v2, p2, :cond_1

    .line 54
    invoke-virtual {p0}, Lnts/ࠂ;->Ͼ()V

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    return-void

    .line 55
    :cond_3
    new-instance p1, Lnts/ቂ;

    const/16 p2, 0x63

    const-string p3, "\u0003\u0007\u0011\u0005"

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 56
    invoke-static {p3, v0, v1, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᇭ()[B
    .locals 6

    .line 1
    iget-boolean v0, p0, Lnts/ࠂ;->ᎊ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    iget v0, p0, Lnts/ࠂ;->ౠ:I

    const/16 v2, 0x37

    const/16 v3, -0x80

    const/16 v4, 0x38

    if-le v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lnts/ࠂ;->ᙕ:[B

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lnts/ࠂ;->ౠ:I

    aput-byte v3, v2, v0

    .line 4
    :goto_0
    iget v0, p0, Lnts/ࠂ;->ౠ:I

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Lnts/ࠂ;->ᙕ:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lnts/ࠂ;->ౠ:I

    aput-byte v1, v2, v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lnts/ࠂ;->Ͼ()V

    .line 9
    :goto_1
    iget v0, p0, Lnts/ࠂ;->ౠ:I

    if-ge v0, v4, :cond_2

    .line 10
    iget-object v2, p0, Lnts/ࠂ;->ᙕ:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lnts/ࠂ;->ౠ:I

    aput-byte v1, v2, v0

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lnts/ࠂ;->ᙕ:[B

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lnts/ࠂ;->ౠ:I

    aput-byte v3, v2, v0

    .line 14
    :goto_2
    iget v0, p0, Lnts/ࠂ;->ౠ:I

    if-ge v0, v4, :cond_2

    .line 15
    iget-object v2, p0, Lnts/ࠂ;->ᙕ:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lnts/ࠂ;->ౠ:I

    aput-byte v1, v2, v0

    goto :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lnts/ࠂ;->ᙕ:[B

    iget v2, p0, Lnts/ࠂ;->て:I

    ushr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x39

    .line 21
    aput-byte v3, v0, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x3a

    .line 22
    aput-byte v3, v0, v4

    int-to-byte v2, v2

    const/16 v3, 0x3b

    .line 23
    aput-byte v2, v0, v3

    .line 24
    iget v2, p0, Lnts/ࠂ;->ዲ:I

    ushr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    const/16 v4, 0x3c

    aput-byte v3, v0, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x3d

    .line 25
    aput-byte v3, v0, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x3e

    .line 26
    aput-byte v3, v0, v4

    int-to-byte v2, v2

    const/16 v3, 0x3f

    .line 27
    aput-byte v2, v0, v3

    .line 29
    invoke-virtual {p0}, Lnts/ࠂ;->Ͼ()V

    move v0, v1

    .line 30
    :goto_3
    iget-object v2, p0, Lnts/ࠂ;->ᙕ:[B

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 31
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 33
    :cond_3
    iput v1, p0, Lnts/ࠂ;->ዲ:I

    .line 34
    iput v1, p0, Lnts/ࠂ;->て:I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lnts/ࠂ;->ᎊ:Z

    .line 38
    :cond_4
    iget v0, p0, Lnts/ዃ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    .line 40
    :goto_4
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 41
    iget-object v2, p0, Lnts/ࠂ;->Ͼ:[I

    ushr-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    rsub-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v0
.end method

.method public ᰛ()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ࠂ;->ዲ:I

    .line 2
    iput v0, p0, Lnts/ࠂ;->て:I

    .line 3
    iput v0, p0, Lnts/ࠂ;->ౠ:I

    .line 5
    iget-object v1, p0, Lnts/ࠂ;->Ͼ:[I

    const v2, 0x6a09e667

    aput v2, v1, v0

    const/4 v2, 0x1

    const v3, -0x4498517b

    .line 6
    aput v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x3c6ef372

    .line 7
    aput v3, v1, v2

    const/4 v2, 0x3

    const v3, -0x5ab00ac6

    .line 8
    aput v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x510e527f

    .line 9
    aput v3, v1, v2

    const/4 v2, 0x5

    const v3, -0x64fa9774

    .line 10
    aput v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x1f83d9ab

    .line 11
    aput v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x5be0cd19

    .line 12
    aput v3, v1, v2

    .line 14
    iput-boolean v0, p0, Lnts/ࠂ;->ᎊ:Z

    .line 15
    iput-boolean v0, p0, Lnts/ࠂ;->ᡲ:Z

    return-void
.end method

.method public final ㆃ(II)I
    .locals 1

    ushr-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method public ㆃ(Lnts/ࠂ;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lnts/ࠂ;->Ͼ:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2
    iget-object v3, p1, Lnts/ࠂ;->Ͼ:[I

    aget v2, v2, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lnts/ࠂ;->ౠ:I

    iput v1, p1, Lnts/ࠂ;->ౠ:I

    .line 5
    :goto_1
    iget-object v1, p0, Lnts/ࠂ;->ᙕ:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 6
    iget-object v2, p1, Lnts/ࠂ;->ᙕ:[B

    aget-byte v1, v1, v0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget v0, p0, Lnts/ࠂ;->て:I

    iput v0, p1, Lnts/ࠂ;->て:I

    .line 9
    iget v0, p0, Lnts/ࠂ;->ዲ:I

    iput v0, p1, Lnts/ࠂ;->ዲ:I

    .line 10
    iget-boolean v0, p0, Lnts/ࠂ;->ᎊ:Z

    iput-boolean v0, p1, Lnts/ࠂ;->ᎊ:Z

    .line 11
    iget-boolean v0, p0, Lnts/ࠂ;->ᡲ:Z

    iput-boolean v0, p1, Lnts/ࠂ;->ᡲ:Z

    return-void
.end method
