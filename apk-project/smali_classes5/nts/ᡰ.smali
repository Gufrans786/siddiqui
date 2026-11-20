.class public Lnts/ᡰ;
.super Lnts/ߎ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ߎ;-><init>()V

    return-void
.end method

.method public static ㆃ([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static ㆃ(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    .line 5
    aput-byte p0, p1, p2

    return-void
.end method

.method public static ㆃ([B[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    .line 6
    invoke-static {p0, v1}, Lnts/ᡰ;->ㆃ([BI)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ㆃ([B[II)V
    .locals 9

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lnts/ᡰ;->ㆃ([BI)I

    move-result v1

    const/4 v2, 0x4

    .line 8
    invoke-static {p0, v2}, Lnts/ᡰ;->ㆃ([BI)I

    move-result v3

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, p2, :cond_0

    const v6, -0x61c88647

    add-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x4

    .line 12
    aget v7, p1, v0

    add-int/2addr v6, v7

    add-int v7, v3, v5

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v3, 0x5

    const/4 v8, 0x1

    aget v8, p1, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    const/4 v7, 0x2

    .line 13
    aget v7, p1, v7

    add-int/2addr v6, v7

    add-int v7, v1, v5

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v1, 0x5

    const/4 v8, 0x3

    aget v8, p1, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v1, p0, v0}, Lnts/ᡰ;->ㆃ(I[BI)V

    .line 17
    invoke-static {v3, p0, v2}, Lnts/ᡰ;->ㆃ(I[BI)V

    return-void
.end method
