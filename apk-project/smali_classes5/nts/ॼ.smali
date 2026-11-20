.class public Lnts/ॼ;
.super Lnts/ၜ;
.source "SourceFile"


# instance fields
.field public ᎊ:[I

.field public ᚹ:I

.field public ᛃ:[S

.field public ᡲ:Lnts/ᣝ;

.field public ᵑ:[S

.field public Ὺ:I

.field public Ⲳ:I

.field public ⴗ:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lnts/ၜ;-><init>()V

    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/ॼ;->ᎊ:[I

    const/16 v2, 0x50

    .line 15
    iput v2, p0, Lnts/ॼ;->Ὺ:I

    const/4 v3, 0x0

    .line 76
    aput v0, v1, v3

    const/16 v0, 0x14

    const/4 v4, 0x1

    .line 77
    aput v0, v1, v4

    const/4 v0, 0x2

    const/16 v5, 0x2d

    .line 78
    aput v5, v1, v0

    const/4 v0, 0x3

    .line 79
    aput v2, v1, v0

    const/4 v0, 0x4

    const/16 v2, 0xc8

    .line 80
    aput v2, v1, v0

    const/4 v0, 0x5

    const/16 v2, 0x3e8

    .line 81
    aput v2, v1, v0

    .line 83
    new-instance v0, Lnts/ᣝ;

    invoke-direct {v0}, Lnts/ᣝ;-><init>()V

    iput-object v0, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    .line 84
    new-instance v0, Lnts/ሐ;

    invoke-direct {v0}, Lnts/ሐ;-><init>()V

    iput-object v0, p0, Lnts/ၜ;->て:Lnts/ሐ;

    .line 85
    iput v3, p0, Lnts/ၜ;->ዲ:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lnts/ၜ;->ᙕ:J

    const v2, 0xffff

    .line 87
    new-array v5, v2, [B

    iput-object v5, p0, Lnts/ၜ;->ㆃ:[B

    .line 88
    iput v3, p0, Lnts/ၜ;->ᾨ:I

    .line 89
    iput v3, p0, Lnts/ၜ;->ᇭ:I

    const/16 v5, 0x4000

    .line 90
    new-array v6, v5, [S

    iput-object v6, p0, Lnts/ॼ;->ᛃ:[S

    move v6, v3

    :goto_0
    const/4 v7, -0x1

    if-ge v6, v5, :cond_0

    .line 92
    iget-object v8, p0, Lnts/ॼ;->ᛃ:[S

    aput-short v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 94
    :cond_0
    new-array v6, v2, [S

    iput-object v6, p0, Lnts/ॼ;->ᵑ:[S

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_1

    .line 96
    iget-object v8, p0, Lnts/ॼ;->ᵑ:[S

    aput-short v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    :cond_1
    iput v3, p0, Lnts/ၜ;->ዲ:I

    .line 98
    iput-wide v0, p0, Lnts/ၜ;->ᙕ:J

    .line 99
    iget-object v0, p0, Lnts/ၜ;->て:Lnts/ሐ;

    .line 100
    iput v3, v0, Lnts/ሐ;->ᾨ:I

    .line 101
    iput v3, v0, Lnts/ሐ;->ᇭ:I

    .line 102
    iput v3, v0, Lnts/ሐ;->Ͼ:I

    .line 103
    iput v4, p0, Lnts/ၜ;->ᾨ:I

    .line 104
    iput v4, p0, Lnts/ၜ;->ᇭ:I

    .line 105
    iget-object v0, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    invoke-virtual {v0}, Lnts/ᣝ;->ㆃ()V

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_2

    .line 107
    iget-object v1, p0, Lnts/ॼ;->ᛃ:[S

    aput-short v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v3, v2, :cond_3

    .line 110
    iget-object v0, p0, Lnts/ॼ;->ᵑ:[S

    aput-short v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public final ㆃ(III)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    shl-int/lit8 p2, p2, 0x3

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    and-int/lit16 p1, p1, 0x3fff

    return p1
.end method

.method public final ㆃ(II)V
    .locals 6

    .line 4
    iget v0, p0, Lnts/ॼ;->Ὺ:I

    .line 5
    iget-object v1, p0, Lnts/ॼ;->ᛃ:[S

    aget-short p1, v1, p1

    const v1, 0xffff

    and-int/2addr p1, v1

    .line 6
    iget v2, p0, Lnts/ၜ;->ᾨ:I

    add-int/2addr v2, p2

    :goto_0
    if-eq p1, v1, :cond_3

    add-int/lit16 p2, v2, -0x8000

    if-lt p1, p2, :cond_3

    if-lez v0, :cond_3

    .line 13
    iget-object p2, p0, Lnts/ၜ;->ㆃ:[B

    iget v3, p0, Lnts/ॼ;->ⴗ:I

    add-int v4, p1, v3

    aget-byte v4, p2, v4

    add-int/2addr v3, v2

    aget-byte p2, p2, v3

    if-ne v4, p2, :cond_1

    const/4 p2, 0x0

    .line 16
    :goto_1
    iget v3, p0, Lnts/ॼ;->Ⲳ:I

    if-ge p2, v3, :cond_0

    iget-object v3, p0, Lnts/ၜ;->ㆃ:[B

    add-int v4, p1, p2

    aget-byte v4, v3, v4

    add-int v5, v2, p2

    aget-byte v3, v3, v5

    if-ne v4, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 19
    :cond_0
    iget v3, p0, Lnts/ॼ;->ⴗ:I

    if-le p2, v3, :cond_1

    .line 20
    iput p2, p0, Lnts/ॼ;->ⴗ:I

    .line 21
    iput p1, p0, Lnts/ॼ;->ᚹ:I

    .line 22
    iget v3, p0, Lnts/ॼ;->Ⲳ:I

    if-ne p2, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x2

    if-nez v0, :cond_2

    .line 28
    iget-object p2, p0, Lnts/ॼ;->ᵑ:[S

    const/4 v0, -0x1

    aput-short v0, p2, p1

    return-void

    .line 31
    :cond_2
    iget-object p2, p0, Lnts/ॼ;->ᵑ:[S

    aget-short p1, p2, p1

    and-int/2addr p1, v1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final ㆃ(IIII)V
    .locals 1

    shl-int/lit8 p1, p1, 0x6

    shl-int/lit8 p2, p2, 0x3

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    and-int/lit16 p1, p1, 0x3fff

    .line 1
    iget-object p2, p0, Lnts/ॼ;->ᛃ:[S

    aget-short p3, p2, p1

    int-to-short v0, p4

    .line 2
    aput-short v0, p2, p1

    .line 3
    iget-object p1, p0, Lnts/ॼ;->ᵑ:[S

    aput-short p3, p1, p4

    return-void
.end method

.method public final ㆃ(Z)Z
    .locals 12

    .line 32
    iget v0, p0, Lnts/ၜ;->ᇭ:I

    add-int/lit16 v0, v0, -0x103

    const/16 v1, 0x102

    .line 33
    iput v1, p0, Lnts/ॼ;->Ⲳ:I

    .line 35
    :cond_0
    iget v2, p0, Lnts/ၜ;->ᾨ:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v0, :cond_6

    .line 36
    iget-object v8, p0, Lnts/ၜ;->ㆃ:[B

    aget-byte v9, v8, v2

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v8, v10

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v8, v2

    invoke-virtual {p0, v9, v10, v2}, Lnts/ॼ;->ㆃ(III)I

    move-result v2

    .line 37
    iput v5, p0, Lnts/ॼ;->ⴗ:I

    .line 39
    iget-object v8, p0, Lnts/ॼ;->ᛃ:[S

    aget-short v8, v8, v2

    if-eq v8, v3, :cond_1

    .line 40
    invoke-virtual {p0, v2, v5}, Lnts/ॼ;->ㆃ(II)V

    .line 42
    :cond_1
    iget v2, p0, Lnts/ॼ;->ⴗ:I

    if-le v2, v6, :cond_4

    .line 45
    iget-object v5, p0, Lnts/ၜ;->ㆃ:[B

    iget v6, p0, Lnts/ၜ;->ᾨ:I

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v5, v8

    add-int/lit8 v9, v6, 0x2

    aget-byte v9, v5, v9

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    invoke-virtual {p0, v8, v9, v5}, Lnts/ॼ;->ㆃ(III)I

    move-result v5

    .line 46
    iget-object v6, p0, Lnts/ॼ;->ᛃ:[S

    aget-short v6, v6, v5

    if-eq v6, v3, :cond_2

    .line 48
    invoke-virtual {p0, v5, v7}, Lnts/ॼ;->ㆃ(II)V

    .line 49
    iget v3, p0, Lnts/ॼ;->ⴗ:I

    if-ge v2, v3, :cond_2

    .line 50
    iget-object v2, p0, Lnts/ၜ;->ㆃ:[B

    iget v3, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v5, v2, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    add-int/lit8 v8, v3, 0x2

    aget-byte v2, v2, v8

    invoke-virtual {p0, v5, v6, v2, v3}, Lnts/ॼ;->ㆃ(IIII)V

    .line 51
    iget-object v2, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget-object v3, p0, Lnts/ၜ;->ㆃ:[B

    iget v5, p0, Lnts/ၜ;->ᾨ:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Lnts/ᣝ;->ᇭ(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v7

    .line 59
    :cond_2
    iget-object v2, p0, Lnts/ၜ;->ㆃ:[B

    iget v3, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v5, v2, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    add-int/lit8 v8, v3, 0x2

    aget-byte v2, v2, v8

    invoke-virtual {p0, v5, v6, v2, v3}, Lnts/ॼ;->ㆃ(IIII)V

    .line 60
    iget-object v2, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget v3, p0, Lnts/ॼ;->ⴗ:I

    iget v5, p0, Lnts/ၜ;->ᾨ:I

    iget v6, p0, Lnts/ॼ;->ᚹ:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Lnts/ᣝ;->ㆃ(II)Z

    move-result v2

    .line 62
    iget v3, p0, Lnts/ၜ;->ᾨ:I

    iget v5, p0, Lnts/ॼ;->ⴗ:I

    add-int/2addr v5, v3

    add-int/2addr v3, v7

    .line 63
    iput v3, p0, Lnts/ၜ;->ᾨ:I

    if-eqz v2, :cond_3

    .line 65
    iput v5, p0, Lnts/ၜ;->ᾨ:I

    return v7

    .line 67
    :cond_3
    :goto_0
    iget v3, p0, Lnts/ၜ;->ᾨ:I

    if-ge v3, v5, :cond_5

    .line 69
    iget-object v6, p0, Lnts/ၜ;->ㆃ:[B

    aget-byte v8, v6, v3

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v9, v3, 0x1

    aget-byte v10, v6, v9

    shl-int/2addr v10, v4

    xor-int/2addr v8, v10

    add-int/lit8 v10, v3, 0x2

    aget-byte v6, v6, v10

    xor-int/2addr v6, v8

    and-int/lit16 v6, v6, 0x3fff

    .line 70
    iget-object v8, p0, Lnts/ॼ;->ᛃ:[S

    aget-short v10, v8, v6

    int-to-short v11, v3

    .line 71
    aput-short v11, v8, v6

    .line 72
    iget-object v6, p0, Lnts/ॼ;->ᵑ:[S

    int-to-short v8, v10

    aput-short v8, v6, v3

    .line 76
    iput v9, p0, Lnts/ၜ;->ᾨ:I

    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p0, Lnts/ၜ;->ㆃ:[B

    iget v3, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v5, v2, v3

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v3, 0x1

    aget-byte v8, v2, v6

    shl-int/lit8 v4, v8, 0x3

    xor-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x3fff

    .line 81
    iget-object v5, p0, Lnts/ॼ;->ᛃ:[S

    aget-short v8, v5, v4

    int-to-short v9, v3

    .line 82
    aput-short v9, v5, v4

    .line 83
    iget-object v4, p0, Lnts/ॼ;->ᵑ:[S

    int-to-short v5, v8

    aput-short v5, v4, v3

    .line 87
    iget-object v4, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iput v6, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Lnts/ᣝ;->ᇭ(I)Z

    move-result v2

    :cond_5
    if-eqz v2, :cond_0

    return v7

    :cond_6
    if-eqz p1, :cond_7

    return v5

    .line 88
    :cond_7
    iget p1, p0, Lnts/ၜ;->ᾨ:I

    iget v0, p0, Lnts/ၜ;->ᇭ:I

    sub-int/2addr v0, v6

    if-ge p1, v0, :cond_d

    .line 89
    iget-object v0, p0, Lnts/ၜ;->ㆃ:[B

    aget-byte v2, v0, p1

    add-int/lit8 v8, p1, 0x1

    aget-byte v8, v0, v8

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, v0, p1

    invoke-virtual {p0, v2, v8, p1}, Lnts/ॼ;->ㆃ(III)I

    move-result p1

    .line 91
    iput v5, p0, Lnts/ॼ;->ⴗ:I

    .line 92
    iget-object v0, p0, Lnts/ॼ;->ᛃ:[S

    aget-short v0, v0, p1

    if-eq v0, v3, :cond_9

    .line 93
    iget v0, p0, Lnts/ၜ;->ᇭ:I

    iget v2, p0, Lnts/ၜ;->ᾨ:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :goto_1
    iput v0, p0, Lnts/ॼ;->Ⲳ:I

    .line 94
    invoke-virtual {p0, p1, v5}, Lnts/ॼ;->ㆃ(II)V

    .line 97
    :cond_9
    iget-object p1, p0, Lnts/ၜ;->ㆃ:[B

    iget v0, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v2, p1, v0

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p1, v8

    add-int/lit8 v9, v0, 0x2

    aget-byte p1, p1, v9

    invoke-virtual {p0, v2, v8, p1, v0}, Lnts/ॼ;->ㆃ(IIII)V

    .line 98
    iget p1, p0, Lnts/ॼ;->ⴗ:I

    if-lt p1, v4, :cond_b

    .line 99
    iget-object v0, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget v2, p0, Lnts/ၜ;->ᾨ:I

    iget v8, p0, Lnts/ॼ;->ᚹ:I

    sub-int/2addr v2, v8

    invoke-virtual {v0, p1, v2}, Lnts/ᣝ;->ㆃ(II)Z

    move-result p1

    .line 101
    iget v0, p0, Lnts/ၜ;->ᾨ:I

    iget v2, p0, Lnts/ॼ;->ⴗ:I

    add-int/2addr v2, v0

    add-int/2addr v0, v7

    .line 102
    iput v0, p0, Lnts/ၜ;->ᾨ:I

    .line 103
    :goto_2
    iget v0, p0, Lnts/ၜ;->ᾨ:I

    if-ge v0, v2, :cond_c

    .line 104
    iget v8, p0, Lnts/ၜ;->ᇭ:I

    sub-int/2addr v8, v6

    if-ge v0, v8, :cond_a

    .line 105
    iget-object v8, p0, Lnts/ၜ;->ㆃ:[B

    aget-byte v9, v8, v0

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v8, v10

    add-int/lit8 v11, v0, 0x2

    aget-byte v8, v8, v11

    invoke-virtual {p0, v9, v10, v8, v0}, Lnts/ॼ;->ㆃ(IIII)V

    .line 107
    :cond_a
    iget v0, p0, Lnts/ၜ;->ᾨ:I

    add-int/2addr v0, v7

    iput v0, p0, Lnts/ၜ;->ᾨ:I

    goto :goto_2

    .line 110
    :cond_b
    iget-object p1, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget-object v0, p0, Lnts/ၜ;->ㆃ:[B

    iget v2, p0, Lnts/ၜ;->ᾨ:I

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lnts/ၜ;->ᾨ:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lnts/ᣝ;->ᇭ(I)Z

    move-result p1

    :cond_c
    if-eqz p1, :cond_7

    goto :goto_3

    .line 117
    :cond_d
    iget p1, p0, Lnts/ၜ;->ᾨ:I

    iget v0, p0, Lnts/ၜ;->ᇭ:I

    if-ge p1, v0, :cond_e

    .line 118
    iget-object v0, p0, Lnts/ॼ;->ᡲ:Lnts/ᣝ;

    iget-object v1, p0, Lnts/ၜ;->ㆃ:[B

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lnts/ၜ;->ᾨ:I

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Lnts/ᣝ;->ᇭ(I)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_e
    :goto_3
    return v7
.end method
