.class public Lnts/ഌ;
.super Lnts/ዃ;
.source "SourceFile"


# static fields
.field public static ዲ:[I

.field public static ᎊ:[[B


# instance fields
.field public Ͼ:[B

.field public ౠ:[B

.field public ᙕ:S

.field public て:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ഌ;->ዲ:[I

    const/16 v0, 0x11

    .line 22
    new-array v0, v0, [[B

    sput-object v0, Lnts/ഌ;->ᎊ:[[B

    const/4 v0, 0x0

    move v1, v0

    .line 29
    :goto_0
    sget-object v2, Lnts/ഌ;->ᎊ:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 30
    new-array v3, v1, [B

    aput-object v3, v2, v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 32
    sget-object v3, Lnts/ഌ;->ᎊ:[[B

    aget-object v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2e
        0x43
        0xc9
        0xa2
        0xd8
        0x7c
        0x1
        0x3d
        0x36
        0x54
        0xa1
        0xec
        0xf0
        0x6
        0x13
        0x62
        0xa7
        0x5
        0xf3
        0xc0
        0xc7
        0x73
        0x8c
        0x98
        0x93
        0x2b
        0xd9
        0xbc
        0x4c
        0x82
        0xca
        0x1e
        0x9b
        0x57
        0x3c
        0xfd
        0xd4
        0xe0
        0x16
        0x67
        0x42
        0x6f
        0x18
        0x8a
        0x17
        0xe5
        0x12
        0xbe
        0x4e
        0xc4
        0xd6
        0xda
        0x9e
        0xde
        0x49
        0xa0
        0xfb
        0xf5
        0x8e
        0xbb
        0x2f
        0xee
        0x7a
        0xa9
        0x68
        0x79
        0x91
        0x15
        0xb2
        0x7
        0x3f
        0x94
        0xc2
        0x10
        0x89
        0xb
        0x22
        0x5f
        0x21
        0x80
        0x7f
        0x5d
        0x9a
        0x5a
        0x90
        0x32
        0x27
        0x35
        0x3e
        0xcc
        0xe7
        0xbf
        0xf7
        0x97
        0x3
        0xff
        0x19
        0x30
        0xb3
        0x48
        0xa5
        0xb5
        0xd1
        0xd7
        0x5e
        0x92
        0x2a
        0xac
        0x56
        0xaa
        0xc6
        0x4f
        0xb8
        0x38
        0xd2
        0x96
        0xa4
        0x7d
        0xb6
        0x76
        0xfc
        0x6b
        0xe2
        0x9c
        0x74
        0x4
        0xf1
        0x45
        0x9d
        0x70
        0x59
        0x64
        0x71
        0x87
        0x20
        0x86
        0x5b
        0xcf
        0x65
        0xe6
        0x2d
        0xa8
        0x2
        0x1b
        0x60
        0x25
        0xad
        0xae
        0xb0
        0xb9
        0xf6
        0x1c
        0x46
        0x61
        0x69
        0x34
        0x40
        0x7e
        0xf
        0x55
        0x47
        0xa3
        0x23
        0xdd
        0x51
        0xaf
        0x3a
        0xc3
        0x5c
        0xf9
        0xce
        0xba
        0xc5
        0xea
        0x26
        0x2c
        0x53
        0xd
        0x6e
        0x85
        0x28
        0x84
        0x9
        0xd3
        0xdf
        0xcd
        0xf4
        0x41
        0x81
        0x4d
        0x52
        0x6a
        0xdc
        0x37
        0xc8
        0x6c
        0xc1
        0xab
        0xfa
        0x24
        0xe1
        0x7b
        0x8
        0xc
        0xbd
        0xb1
        0x4a
        0x78
        0x88
        0x95
        0x8b
        0xe3
        0x63
        0xe8
        0x6d
        0xe9
        0xcb
        0xd5
        0xfe
        0x3b
        0x0
        0x1d
        0x39
        0xf2
        0xef
        0xb7
        0xe
        0x66
        0x58
        0xd0
        0xe4
        0xa6
        0x77
        0x72
        0xf8
        0xeb
        0x75
        0x4b
        0xa
        0x31
        0x44
        0x50
        0xb4
        0x8f
        0xed
        0x1f
        0x1a
        0xdb
        0x99
        0x8d
        0x33
        0x9f
        0x11
        0x83
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ഌ;->Ͼ:[B

    .line 3
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ഌ;->ౠ:[B

    const/4 v1, 0x0

    .line 4
    iput-short v1, p0, Lnts/ഌ;->ᙕ:S

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ഌ;->て:[B

    const/16 v0, 0x80

    .line 16
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 17
    invoke-virtual {p0}, Lnts/ഌ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public ᇭ([BII)V
    .locals 4

    .line 1
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-short v0, p0, Lnts/ഌ;->ᙕ:S

    add-int v2, v0, p3

    and-int/lit8 v2, v2, 0xf

    int-to-short v2, v2

    .line 6
    iput-short v2, p0, Lnts/ഌ;->ᙕ:S

    rsub-int/lit8 v2, v0, 0x10

    if-lt p3, v2, :cond_1

    .line 10
    iget-object v3, p0, Lnts/ഌ;->て:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Lnts/ഌ;->て:[B

    invoke-virtual {p0, v0, v1}, Lnts/ഌ;->ㆃ([BI)V

    :goto_0
    add-int/lit8 v0, v2, 0xf

    if-ge v0, p3, :cond_0

    add-int v0, p2, v2

    .line 14
    invoke-virtual {p0, p1, v0}, Lnts/ഌ;->ㆃ([BI)V

    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    :cond_1
    add-int/2addr p2, v1

    .line 19
    iget-object v2, p0, Lnts/ഌ;->て:[B

    sub-int/2addr p3, v1

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 20
    :cond_2
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x13

    const-string p3, "LD1\"lw\'blxyonm{ku>"

    const/16 v0, 0x12

    .line 21
    invoke-static {p3, v1, v0, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2be

    .line 22
    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᇭ()[B
    .locals 4

    .line 23
    iget-short v0, p0, Lnts/ഌ;->ᙕ:S

    const/16 v1, 0x10

    rsub-int/lit8 v0, v0, 0x10

    .line 25
    sget-object v2, Lnts/ഌ;->ᎊ:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lnts/ഌ;->ᇭ([BII)V

    .line 26
    iget-object v0, p0, Lnts/ഌ;->ౠ:[B

    invoke-virtual {p0, v0, v3, v1}, Lnts/ഌ;->ᇭ([BII)V

    .line 28
    new-array v0, v1, [B

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    .line 29
    iget-object v0, p0, Lnts/ഌ;->Ͼ:[B

    iget-object v2, p0, Lnts/ዃ;->ᾨ:[B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-virtual {p0}, Lnts/ഌ;->ᰛ()V

    .line 32
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0
.end method

.method public ᰛ()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lnts/ഌ;->Ͼ:[B

    aput-byte v0, v2, v1

    .line 2
    iget-object v2, p0, Lnts/ഌ;->ౠ:[B

    aput-byte v0, v2, v1

    .line 3
    iget-object v2, p0, Lnts/ഌ;->て:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-short v0, p0, Lnts/ഌ;->ᙕ:S

    return-void
.end method

.method public final ㆃ([BI)V
    .locals 10

    const/16 v0, 0x30

    .line 1
    new-array v1, v0, [B

    .line 2
    iget-object v2, p0, Lnts/ഌ;->Ͼ:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {p1, p2, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    add-int/lit8 v5, v2, 0x20

    .line 5
    iget-object v6, p0, Lnts/ഌ;->Ͼ:[B

    aget-byte v6, v6, v2

    add-int v7, p2, v2

    aget-byte v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    move v5, v2

    :goto_1
    const/16 v6, 0x12

    if-ge v2, v6, :cond_2

    move v6, v3

    :goto_2
    if-ge v6, v0, :cond_1

    .line 10
    aget-byte v7, v1, v6

    sget-object v8, Lnts/ഌ;->ዲ:[I

    aget v5, v8, v5

    int-to-byte v5, v5

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_2

    :cond_1
    add-int/2addr v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    .line 16
    :cond_2
    iget-object v2, p0, Lnts/ഌ;->Ͼ:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v2, p0, Lnts/ഌ;->ౠ:[B

    const/16 v5, 0xf

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_3

    .line 20
    iget-object v6, p0, Lnts/ഌ;->ౠ:[B

    aget-byte v7, v6, v5

    sget-object v8, Lnts/ഌ;->ዲ:[I

    add-int v9, p2, v5

    aget-byte v9, p1, v9

    xor-int/2addr v2, v9

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    int-to-byte v2, v2

    xor-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v6, v5

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_4
    if-ge p1, v0, :cond_4

    .line 25
    aput-byte v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
