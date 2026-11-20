.class public Lnts/ᜧ;
.super Lnts/Ё;
.source "SourceFile"


# static fields
.field public static ཞ:[I

.field public static ᎊ:[I

.field public static ᚹ:[I

.field public static ᛃ:[I

.field public static ᡲ:[I

.field public static ᯋ:[I

.field public static ᯚ:[I

.field public static ᵑ:[I

.field public static Ṳ:[I

.field public static Ὺ:[I

.field public static ⱋ:[I

.field public static ⱪ:[I

.field public static Ⲳ:[I

.field public static ⴗ:[I

.field public static せ:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    .line 1
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ᎊ:[I

    .line 2
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ᡲ:[I

    .line 3
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->Ὺ:[I

    .line 4
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->Ⲳ:[I

    .line 5
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ᛃ:[I

    .line 8
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ᵑ:[I

    .line 9
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ⴗ:[I

    .line 10
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ᚹ:[I

    .line 11
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->せ:[I

    .line 12
    new-array v1, v0, [I

    sput-object v1, Lnts/ᜧ;->ⱪ:[I

    const/16 v1, 0xa

    .line 15
    new-array v2, v1, [I

    sput-object v2, Lnts/ᜧ;->ᯚ:[I

    .line 18
    new-array v2, v0, [I

    sput-object v2, Lnts/ᜧ;->Ṳ:[I

    .line 19
    new-array v2, v0, [I

    sput-object v2, Lnts/ᜧ;->ཞ:[I

    .line 20
    new-array v2, v0, [I

    sput-object v2, Lnts/ᜧ;->ᯋ:[I

    .line 21
    new-array v2, v0, [I

    sput-object v2, Lnts/ᜧ;->ⱋ:[I

    .line 36
    new-array v2, v0, [I

    .line 37
    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v4

    move v7, v5

    :goto_0
    if-ge v6, v0, :cond_0

    .line 41
    aput v7, v2, v6

    .line 42
    aput v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    .line 43
    invoke-static {v7}, Lnts/ᜧ;->Ͼ(I)I

    move-result v8

    xor-int/2addr v7, v8

    goto :goto_0

    :cond_0
    move v6, v4

    move v7, v5

    :goto_1
    if-ge v6, v1, :cond_1

    .line 50
    sget-object v8, Lnts/ᜧ;->ᯚ:[I

    shl-int/lit8 v9, v7, 0x18

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    .line 51
    invoke-static {v7}, Lnts/ᜧ;->Ͼ(I)I

    move-result v7

    goto :goto_1

    .line 55
    :cond_1
    sget-object v1, Lnts/ᜧ;->ᎊ:[I

    const/16 v6, 0x63

    aput v6, v1, v4

    .line 56
    sget-object v1, Lnts/ᜧ;->ᵑ:[I

    aput v4, v1, v6

    :goto_2
    if-ge v5, v0, :cond_2

    .line 59
    aget v1, v3, v5

    rsub-int v1, v1, 0xff

    aget v1, v2, v1

    shl-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v1, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v1, v7

    shl-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v1, v7

    shl-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v1, v7

    shl-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v7, v6

    xor-int/2addr v1, v7

    .line 67
    sget-object v7, Lnts/ᜧ;->ᎊ:[I

    aput v1, v7, v5

    .line 68
    sget-object v7, Lnts/ᜧ;->ᵑ:[I

    aput v5, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_3

    .line 73
    sget-object v5, Lnts/ᜧ;->ᎊ:[I

    aget v5, v5, v1

    invoke-static {v5}, Lnts/ᜧ;->Ͼ(I)I

    move-result v6

    .line 75
    sget-object v7, Lnts/ᜧ;->ᡲ:[I

    xor-int v8, v5, v6

    shl-int/lit8 v9, v5, 0x8

    xor-int/2addr v8, v9

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v5, v8

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v5, v6

    aput v5, v7, v1

    .line 76
    sget-object v6, Lnts/ᜧ;->Ὺ:[I

    invoke-static {v5}, Lnts/ᜧ;->ᰛ(I)I

    move-result v5

    aput v5, v6, v1

    .line 77
    sget-object v5, Lnts/ᜧ;->Ⲳ:[I

    sget-object v6, Lnts/ᜧ;->Ὺ:[I

    aget v6, v6, v1

    invoke-static {v6}, Lnts/ᜧ;->ᰛ(I)I

    move-result v6

    aput v6, v5, v1

    .line 78
    sget-object v5, Lnts/ᜧ;->ᛃ:[I

    sget-object v6, Lnts/ᜧ;->Ⲳ:[I

    aget v6, v6, v1

    invoke-static {v6}, Lnts/ᜧ;->ᰛ(I)I

    move-result v6

    aput v6, v5, v1

    .line 80
    sget-object v5, Lnts/ᜧ;->ᵑ:[I

    aget v5, v5, v1

    .line 82
    sget-object v6, Lnts/ᜧ;->ⴗ:[I

    const/16 v7, 0xb

    invoke-static {v7, v5, v2, v3}, Lnts/ᜧ;->ㆃ(II[I[I)I

    move-result v7

    const/16 v8, 0xd

    .line 83
    invoke-static {v8, v5, v2, v3}, Lnts/ᜧ;->ㆃ(II[I[I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    xor-int/2addr v7, v8

    const/16 v8, 0x9

    .line 84
    invoke-static {v8, v5, v2, v3}, Lnts/ᜧ;->ㆃ(II[I[I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v7, v8

    const/16 v8, 0xe

    .line 85
    invoke-static {v8, v5, v2, v3}, Lnts/ᜧ;->ㆃ(II[I[I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v5, v7

    aput v5, v6, v1

    .line 86
    sget-object v5, Lnts/ᜧ;->ᚹ:[I

    sget-object v6, Lnts/ᜧ;->ⴗ:[I

    aget v6, v6, v1

    invoke-static {v6}, Lnts/ᜧ;->ᰛ(I)I

    move-result v6

    aput v6, v5, v1

    .line 87
    sget-object v5, Lnts/ᜧ;->せ:[I

    sget-object v6, Lnts/ᜧ;->ᚹ:[I

    aget v6, v6, v1

    invoke-static {v6}, Lnts/ᜧ;->ᰛ(I)I

    move-result v6

    aput v6, v5, v1

    .line 88
    sget-object v5, Lnts/ᜧ;->ⱪ:[I

    sget-object v6, Lnts/ᜧ;->せ:[I

    aget v6, v6, v1

    invoke-static {v6}, Lnts/ᜧ;->ᰛ(I)I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_3
    :goto_4
    if-ge v4, v0, :cond_4

    .line 93
    sget-object v1, Lnts/ᜧ;->Ṳ:[I

    sget-object v2, Lnts/ᜧ;->ⴗ:[I

    sget-object v3, Lnts/ᜧ;->ᎊ:[I

    aget v5, v3, v4

    aget v2, v2, v5

    aput v2, v1, v4

    .line 94
    sget-object v1, Lnts/ᜧ;->ཞ:[I

    sget-object v2, Lnts/ᜧ;->ᚹ:[I

    aget v5, v3, v4

    aget v2, v2, v5

    aput v2, v1, v4

    .line 95
    sget-object v1, Lnts/ᜧ;->ᯋ:[I

    sget-object v2, Lnts/ᜧ;->せ:[I

    aget v5, v3, v4

    aget v2, v2, v5

    aput v2, v1, v4

    .line 96
    sget-object v1, Lnts/ᜧ;->ⱋ:[I

    sget-object v2, Lnts/ᜧ;->ⱪ:[I

    aget v3, v3, v4

    aget v2, v2, v3

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/Ё;-><init>()V

    return-void
.end method

.method public static Ͼ(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public static ᰛ(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static ᾨ([B[II)V
    .locals 20

    const/4 v0, 0x4

    .line 1
    new-array v1, v0, [I

    .line 2
    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 7
    aget v5, p1, v5

    add-int/lit8 v8, v6, 0x1

    aget-byte v9, p0, v6

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v8, p0, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v8, v11

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x3

    aget-byte v10, p0, v10

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/2addr v6, v0

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    xor-int/2addr v5, v8

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move v6, v4

    :goto_1
    const/4 v7, 0x3

    const/4 v8, 0x2

    move/from16 v9, p2

    if-ge v6, v9, :cond_1

    add-int/lit8 v10, v5, 0x1

    .line 15
    aget v11, p1, v5

    sget-object v12, Lnts/ᜧ;->ᡲ:[I

    aget v13, v2, v3

    ushr-int/lit8 v13, v13, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    sget-object v13, Lnts/ᜧ;->Ὺ:[I

    aget v14, v2, v4

    ushr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v13, v15

    xor-int/2addr v11, v15

    sget-object v15, Lnts/ᜧ;->Ⲳ:[I

    aget v16, v2, v8

    move/from16 v17, v3

    ushr-int/lit8 v3, v16, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v3, v11

    sget-object v11, Lnts/ᜧ;->ᛃ:[I

    move/from16 v18, v4

    aget v4, v2, v7

    move/from16 v19, v7

    and-int/lit16 v7, v4, 0xff

    aget v7, v11, v7

    xor-int/2addr v3, v7

    aput v3, v1, v17

    add-int/lit8 v3, v5, 0x2

    .line 21
    aget v7, p1, v10

    ushr-int/lit8 v10, v14, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v7, v10

    ushr-int/lit8 v10, v16, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v13, v10

    xor-int/2addr v7, v10

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v7, v10

    aget v10, v2, v17

    and-int/lit16 v14, v10, 0xff

    aget v14, v11, v14

    xor-int/2addr v7, v14

    aput v7, v1, v18

    add-int/lit8 v7, v5, 0x3

    .line 27
    aget v3, p1, v3

    ushr-int/lit8 v14, v16, 0x18

    and-int/lit16 v14, v14, 0xff

    aget v14, v12, v14

    xor-int/2addr v3, v14

    ushr-int/lit8 v14, v4, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v14, v13, v14

    xor-int/2addr v3, v14

    ushr-int/lit8 v14, v10, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v14, v15, v14

    xor-int/2addr v3, v14

    aget v14, v2, v18

    move/from16 v16, v8

    and-int/lit16 v8, v14, 0xff

    aget v8, v11, v8

    xor-int/2addr v3, v8

    aput v3, v1, v16

    add-int/lit8 v5, v5, 0x4

    .line 33
    aget v3, p1, v7

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v10, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v13, v4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v14, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v15, v4

    xor-int/2addr v3, v4

    aget v4, v2, v16

    and-int/lit16 v4, v4, 0xff

    aget v4, v11, v4

    xor-int/2addr v3, v4

    aput v3, v1, v19

    add-int/lit8 v6, v6, 0x1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v7

    move/from16 v16, v8

    add-int/lit8 v3, v5, 0x1

    .line 45
    aget v4, p1, v5

    sget-object v6, Lnts/ᜧ;->ᎊ:[I

    aget v7, v2, v17

    ushr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v4, v7

    aget v7, v2, v18

    ushr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v4, v8

    aget v8, v2, v16

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v4, v9

    aget v9, v2, v19

    and-int/lit16 v10, v9, 0xff

    aget v10, v6, v10

    xor-int/2addr v4, v10

    aput v4, v1, v17

    add-int/lit8 v4, v5, 0x2

    .line 51
    aget v3, p1, v3

    ushr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v3, v7

    ushr-int/lit8 v7, v8, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v3, v7

    ushr-int/lit8 v7, v9, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v3, v7

    aget v7, v2, v17

    and-int/lit16 v10, v7, 0xff

    aget v10, v6, v10

    xor-int/2addr v3, v10

    aput v3, v1, v18

    add-int/lit8 v5, v5, 0x3

    .line 57
    aget v3, p1, v4

    ushr-int/lit8 v4, v8, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v9, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    aget v4, v2, v18

    and-int/lit16 v8, v4, 0xff

    aget v8, v6, v8

    xor-int/2addr v3, v8

    aput v3, v1, v16

    .line 63
    aget v3, p1, v5

    ushr-int/lit8 v5, v9, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v3, v5

    ushr-int/lit8 v5, v7, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v3, v5

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    aget v2, v2, v16

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    xor-int/2addr v2, v3

    aput v2, v1, v19

    move/from16 v3, v17

    :goto_2
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v17, 0x1

    .line 70
    aget v4, v1, v3

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    aput-byte v5, p0, v17

    add-int/lit8 v5, v17, 0x2

    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    .line 71
    aput-byte v6, p0, v2

    add-int/lit8 v2, v17, 0x3

    ushr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    .line 72
    aput-byte v6, p0, v5

    add-int/lit8 v17, v17, 0x4

    int-to-byte v4, v4

    .line 73
    aput-byte v4, p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ㆃ(II[I[I)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    aget p0, p3, p0

    aget p1, p3, p1

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0xff

    aget p0, p2, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ㆃ([BII[I[I)I
    .locals 14

    const/16 v0, 0x8

    mul-int/lit8 v1, p2, 0x8

    const/16 v2, 0x100

    const/16 v3, 0xc0

    const/16 v4, 0xa

    const/16 v5, 0x80

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0xe

    goto :goto_1

    :cond_1
    const/16 v6, 0xc

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :goto_1
    const/4 v7, 0x0

    move v8, v7

    :goto_2
    ushr-int/lit8 v9, v1, 0x5

    const/4 v10, 0x3

    if-ge v8, v9, :cond_3

    mul-int/lit8 v9, v8, 0x4

    add-int/2addr v9, p1

    .line 2
    aget-byte v11, p0, v9

    shl-int/lit8 v11, v11, 0x18

    const/high16 v12, -0x1000000

    and-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x1

    aget-byte v12, p0, v12

    shl-int/lit8 v12, v12, 0x10

    const/high16 v13, 0xff0000

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x2

    aget-byte v12, p0, v12

    shl-int/2addr v12, v0

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/2addr v9, v10

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v11

    .line 3
    aput v9, p3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eq v1, v5, :cond_6

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    move p1, v7

    goto/16 :goto_6

    :cond_4
    move p0, v7

    move p1, p0

    :goto_3
    const/4 v1, 0x7

    if-ge p0, v1, :cond_7

    add-int/lit8 v1, p1, 0x8

    .line 38
    aget v2, p3, p1

    sget-object v3, Lnts/ᜧ;->ᯚ:[I

    aget v3, v3, p0

    xor-int/2addr v2, v3

    sget-object v3, Lnts/ᜧ;->ᎊ:[I

    add-int/lit8 v4, p1, 0x7

    aget v5, p3, v4

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v3, v8

    shl-int/lit8 v8, v8, 0x18

    xor-int/2addr v2, v8

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v3, v8

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v2, v8

    and-int/lit16 v8, v5, 0xff

    aget v8, v3, v8

    shl-int/2addr v8, v0

    xor-int/2addr v2, v8

    ushr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v5, v3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v1

    add-int/lit8 v5, p1, 0x9

    add-int/lit8 v8, p1, 0x1

    .line 44
    aget v8, p3, v8

    xor-int/2addr v2, v8

    aput v2, p3, v5

    add-int/lit8 v5, p1, 0xa

    add-int/lit8 v8, p1, 0x2

    .line 45
    aget v8, p3, v8

    xor-int/2addr v2, v8

    aput v2, p3, v5

    add-int/lit8 v5, p1, 0xb

    add-int/lit8 v8, p1, 0x3

    .line 46
    aget v8, p3, v8

    xor-int/2addr v2, v8

    aput v2, p3, v5

    add-int/lit8 v5, p1, 0xc

    add-int/lit8 v8, p1, 0x4

    .line 48
    aget v8, p3, v8

    ushr-int/lit8 v9, v2, 0x18

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v2, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    shl-int/2addr v9, v0

    xor-int/2addr v8, v9

    and-int/lit16 v2, v2, 0xff

    aget v2, v3, v2

    xor-int/2addr v2, v8

    aput v2, p3, v5

    add-int/lit8 v3, p1, 0xd

    add-int/lit8 v5, p1, 0x5

    .line 54
    aget v5, p3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v3

    add-int/lit8 v3, p1, 0xe

    add-int/lit8 v5, p1, 0x6

    .line 55
    aget v5, p3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v3

    add-int/lit8 p1, p1, 0xf

    .line 56
    aget v3, p3, v4

    xor-int/2addr v2, v3

    aput v2, p3, p1

    add-int/lit8 p0, p0, 0x1

    move p1, v1

    goto/16 :goto_3

    :cond_5
    move p0, v7

    move p1, p0

    :goto_4
    if-ge p0, v0, :cond_7

    add-int/lit8 v1, p1, 0x6

    .line 57
    aget v2, p3, p1

    sget-object v3, Lnts/ᜧ;->ᯚ:[I

    aget v3, v3, p0

    xor-int/2addr v2, v3

    sget-object v3, Lnts/ᜧ;->ᎊ:[I

    add-int/lit8 v4, p1, 0x5

    aget v5, p3, v4

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v3, v8

    shl-int/lit8 v8, v8, 0x18

    xor-int/2addr v2, v8

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v3, v8

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v2, v8

    and-int/lit16 v8, v5, 0xff

    aget v8, v3, v8

    shl-int/2addr v8, v0

    xor-int/2addr v2, v8

    ushr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, p3, v1

    add-int/lit8 v3, p1, 0x7

    add-int/lit8 v5, p1, 0x1

    .line 63
    aget v5, p3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v3

    add-int/lit8 v3, p1, 0x8

    add-int/lit8 v5, p1, 0x2

    .line 64
    aget v5, p3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v3

    add-int/lit8 v3, p1, 0x9

    add-int/lit8 v5, p1, 0x3

    .line 65
    aget v5, p3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v3

    add-int/lit8 v3, p1, 0xa

    add-int/lit8 v5, p1, 0x4

    .line 66
    aget v5, p3, v5

    xor-int/2addr v2, v5

    aput v2, p3, v3

    add-int/lit8 p1, p1, 0xb

    .line 67
    aget v3, p3, v4

    xor-int/2addr v2, v3

    aput v2, p3, p1

    add-int/lit8 p0, p0, 0x1

    move p1, v1

    goto :goto_4

    :cond_6
    move p0, v7

    move p1, p0

    :goto_5
    if-ge p0, v4, :cond_7

    add-int/lit8 v1, p1, 0x4

    .line 68
    aget v2, p3, p1

    sget-object v3, Lnts/ᜧ;->ᯚ:[I

    aget v3, v3, p0

    xor-int/2addr v2, v3

    sget-object v3, Lnts/ᜧ;->ᎊ:[I

    add-int/lit8 v5, p1, 0x3

    aget v8, p3, v5

    ushr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v2, v9

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v2, v9

    and-int/lit16 v9, v8, 0xff

    aget v9, v3, v9

    shl-int/2addr v9, v0

    xor-int/2addr v2, v9

    ushr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v3, v3, v8

    xor-int/2addr v2, v3

    aput v2, p3, v1

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v8, p1, 0x1

    .line 73
    aget v8, p3, v8

    xor-int/2addr v2, v8

    aput v2, p3, v3

    add-int/lit8 v3, p1, 0x6

    add-int/lit8 v8, p1, 0x2

    .line 74
    aget v8, p3, v8

    xor-int/2addr v2, v8

    aput v2, p3, v3

    add-int/lit8 p1, p1, 0x7

    .line 75
    aget v3, p3, v5

    xor-int/2addr v2, v3

    aput v2, p3, p1

    add-int/lit8 p0, p0, 0x1

    move p1, v1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 p0, p1, 0x1

    .line 120
    aget v0, p3, p1

    aput v0, p4, v7

    add-int/lit8 v0, p1, 0x2

    .line 121
    aget p0, p3, p0

    const/4 v1, 0x1

    aput p0, p4, v1

    add-int/lit8 p0, p1, 0x3

    .line 122
    aget v0, p3, v0

    const/4 v2, 0x2

    aput v0, p4, v2

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 123
    aget p0, p3, p0

    aput p0, p4, v10

    :goto_7
    if-ge v1, v6, :cond_8

    add-int/lit8 p0, p1, -0x8

    add-int/lit8 v2, v0, 0x1

    .line 128
    sget-object v3, Lnts/ᜧ;->Ṳ:[I

    aget p0, p3, p0

    ushr-int/lit8 v4, p0, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v4, v3, v4

    sget-object v5, Lnts/ᜧ;->ཞ:[I

    ushr-int/lit8 v7, p0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    xor-int/2addr v4, v7

    sget-object v7, Lnts/ᜧ;->ᯋ:[I

    ushr-int/lit8 v8, p0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    xor-int/2addr v4, v8

    sget-object v8, Lnts/ᜧ;->ⱋ:[I

    and-int/lit16 p0, p0, 0xff

    aget p0, v8, p0

    xor-int/2addr p0, v4

    aput p0, p4, v0

    add-int/lit8 p0, p1, -0x7

    add-int/lit8 v4, v0, 0x2

    .line 133
    aget p0, p3, p0

    ushr-int/lit8 v9, p0, 0x18

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    ushr-int/lit8 v11, p0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, p0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v7, v11

    xor-int/2addr v9, v11

    and-int/lit16 p0, p0, 0xff

    aget p0, v8, p0

    xor-int/2addr p0, v9

    aput p0, p4, v2

    add-int/lit8 p0, p1, -0x6

    add-int/lit8 v2, v0, 0x3

    .line 138
    aget p0, p3, p0

    ushr-int/lit8 v9, p0, 0x18

    and-int/lit16 v9, v9, 0xff

    aget v9, v3, v9

    ushr-int/lit8 v11, p0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, p0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v7, v11

    xor-int/2addr v9, v11

    and-int/lit16 p0, p0, 0xff

    aget p0, v8, p0

    xor-int/2addr p0, v9

    aput p0, p4, v4

    add-int/lit8 p0, p1, -0x5

    add-int/lit8 v0, v0, 0x4

    .line 143
    aget p0, p3, p0

    ushr-int/lit8 v4, p0, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    ushr-int/lit8 v4, p0, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v5, v4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, p0, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v3, v4

    and-int/lit16 p0, p0, 0xff

    aget p0, v8, p0

    xor-int/2addr p0, v3

    aput p0, p4, v2

    add-int/lit8 p1, p1, -0x4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_8
    add-int/lit8 p0, p1, -0x8

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p1, -0x7

    .line 151
    aget p0, p3, p0

    aput p0, p4, v0

    add-int/lit8 p0, v0, 0x2

    add-int/lit8 v3, p1, -0x6

    .line 152
    aget v2, p3, v2

    aput v2, p4, v1

    add-int/2addr v0, v10

    add-int/lit8 p1, p1, -0x5

    .line 153
    aget v1, p3, v3

    aput v1, p4, p0

    .line 154
    aget p0, p3, p1

    aput p0, p4, v0

    return v6
.end method

.method public static ㆃ([B[II)V
    .locals 20

    const/4 v0, 0x4

    .line 155
    new-array v1, v0, [I

    .line 156
    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 161
    aget v5, p1, v5

    add-int/lit8 v8, v6, 0x1

    aget-byte v9, p0, v6

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v8, p0, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v8, v11

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x3

    aget-byte v10, p0, v10

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/2addr v6, v0

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    xor-int/2addr v5, v8

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_0
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x3

    const/4 v8, 0x2

    move/from16 v9, p2

    if-ge v6, v9, :cond_1

    add-int/lit8 v10, v5, 0x1

    .line 169
    aget v11, p1, v5

    sget-object v12, Lnts/ᜧ;->ⴗ:[I

    aget v13, v2, v3

    ushr-int/lit8 v13, v13, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    sget-object v13, Lnts/ᜧ;->ᚹ:[I

    aget v14, v2, v7

    ushr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v13, v15

    xor-int/2addr v11, v15

    sget-object v15, Lnts/ᜧ;->せ:[I

    move/from16 v16, v3

    aget v3, v2, v8

    const/16 v17, 0x1

    ushr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v15, v4

    xor-int/2addr v4, v11

    sget-object v11, Lnts/ᜧ;->ⱪ:[I

    move/from16 v18, v7

    aget v7, v2, v17

    move/from16 v19, v8

    and-int/lit16 v8, v7, 0xff

    aget v8, v11, v8

    xor-int/2addr v4, v8

    aput v4, v1, v16

    add-int/lit8 v4, v5, 0x2

    .line 175
    aget v8, p1, v10

    ushr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int/2addr v7, v8

    aget v8, v2, v16

    ushr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v13, v10

    xor-int/2addr v7, v10

    ushr-int/lit8 v10, v14, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v7, v10

    and-int/lit16 v10, v3, 0xff

    aget v10, v11, v10

    xor-int/2addr v7, v10

    aput v7, v1, v17

    add-int/lit8 v7, v5, 0x3

    .line 181
    aget v4, p1, v4

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v12, v3

    xor-int/2addr v3, v4

    aget v4, v2, v17

    ushr-int/lit8 v10, v4, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v13, v10

    xor-int/2addr v3, v10

    ushr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v14, 0xff

    aget v10, v11, v10

    xor-int/2addr v3, v10

    aput v3, v1, v19

    add-int/lit8 v5, v5, 0x4

    .line 187
    aget v3, p1, v7

    ushr-int/lit8 v7, v14, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int/2addr v3, v7

    aget v7, v2, v19

    ushr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v13, v7

    xor-int/2addr v3, v7

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v15, v4

    xor-int/2addr v3, v4

    and-int/lit16 v4, v8, 0xff

    aget v4, v11, v4

    xor-int/2addr v3, v4

    aput v3, v1, v18

    add-int/lit8 v6, v6, 0x1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_1
    move/from16 v16, v3

    move/from16 v18, v7

    move/from16 v19, v8

    const/16 v17, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 199
    aget v4, p1, v5

    sget-object v6, Lnts/ᜧ;->ᵑ:[I

    aget v7, v2, v16

    ushr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v4, v7

    aget v7, v2, v18

    ushr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v4, v8

    aget v8, v2, v19

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v4, v9

    aget v9, v2, v17

    and-int/lit16 v10, v9, 0xff

    aget v10, v6, v10

    xor-int/2addr v4, v10

    aput v4, v1, v16

    add-int/lit8 v4, v5, 0x2

    .line 205
    aget v3, p1, v3

    ushr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v3, v9

    aget v9, v2, v16

    ushr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v3, v10

    ushr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v3, v10

    and-int/lit16 v10, v8, 0xff

    aget v10, v6, v10

    xor-int/2addr v3, v10

    aput v3, v1, v17

    add-int/lit8 v5, v5, 0x3

    .line 211
    aget v3, p1, v4

    ushr-int/lit8 v4, v8, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v3, v4

    aget v4, v2, v17

    ushr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v3, v8

    ushr-int/lit8 v8, v9, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x8

    xor-int/2addr v3, v8

    and-int/lit16 v8, v7, 0xff

    aget v8, v6, v8

    xor-int/2addr v3, v8

    aput v3, v1, v19

    .line 217
    aget v3, p1, v5

    ushr-int/lit8 v5, v7, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v3, v5

    aget v2, v2, v19

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v4, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    and-int/lit16 v3, v9, 0xff

    aget v3, v6, v3

    xor-int/2addr v2, v3

    aput v2, v1, v18

    move/from16 v3, v16

    :goto_2
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v16, 0x1

    .line 224
    aget v4, v1, v3

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    aput-byte v5, p0, v16

    add-int/lit8 v5, v16, 0x2

    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    .line 225
    aput-byte v6, p0, v2

    add-int/lit8 v2, v16, 0x3

    ushr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    .line 226
    aput-byte v6, p0, v5

    add-int/lit8 v16, v16, 0x4

    int-to-byte v4, v4

    .line 227
    aput-byte v4, p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
