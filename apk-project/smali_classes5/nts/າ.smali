.class public Lnts/າ;
.super Lnts/Ԅ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnts/Ԅ;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lnts/ᵕ;

    new-instance v1, Lnts/ᵕ;

    const/16 v2, 0x80

    const/16 v3, 0xc0

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v4}, Lnts/ᵕ;-><init>(III)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iput-object v0, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 3
    iput v2, p0, Lnts/ኝ;->ㆃ:I

    .line 4
    iput v4, p0, Lnts/ኝ;->ᾨ:I

    .line 5
    iput v4, p0, Lnts/ኝ;->ᇭ:I

    return-void
.end method

.method public static ᾨ([B[I[I[I)V
    .locals 9

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 5
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x2

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x3

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x4

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x18

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1, p1}, Lnts/ᨿ;->ᾨ([I[I)V

    .line 12
    invoke-static {v1, p2}, Lnts/ᨿ;->ㆃ([I[I)V

    .line 13
    invoke-static {v1, p3}, Lnts/ᨿ;->ᾨ([I[I)V

    move p1, v2

    :goto_1
    if-ge v2, v0, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 16
    aget p3, v1, v2

    int-to-byte v3, p3

    aput-byte v3, p0, p1

    add-int/lit8 v3, p1, 0x2

    ushr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    .line 17
    aput-byte v4, p0, p2

    add-int/lit8 p2, p1, 0x3

    ushr-int/lit8 v4, p3, 0x10

    int-to-byte v4, v4

    .line 18
    aput-byte v4, p0, v3

    add-int/lit8 p1, p1, 0x4

    ushr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    .line 19
    aput-byte p3, p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static ㆃ([B[I[I[I)V
    .locals 9

    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 6
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x2

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x3

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x4

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x18

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v1, p3}, Lnts/ᨿ;->ㆃ([I[I)V

    .line 13
    invoke-static {v1, p2}, Lnts/ᨿ;->ᾨ([I[I)V

    .line 14
    invoke-static {v1, p1}, Lnts/ᨿ;->ㆃ([I[I)V

    move p1, v2

    :goto_1
    if-ge v2, v0, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 17
    aget p3, v1, v2

    int-to-byte v3, p3

    aput-byte v3, p0, p1

    add-int/lit8 v3, p1, 0x2

    ushr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    .line 18
    aput-byte v4, p0, p2

    add-int/lit8 p2, p1, 0x3

    ushr-int/lit8 v4, p3, 0x10

    int-to-byte v4, v4

    .line 19
    aput-byte v4, p0, v3

    add-int/lit8 p1, p1, 0x4

    ushr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    .line 20
    aput-byte p3, p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 6

    .line 20
    new-instance v0, Lnts/ᢪ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnts/ᢪ;-><init>([B[BIII)V

    return-object v0
.end method

.method public ᾨ([B)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lnts/Ԅ;->ᾨ([B)V

    .line 22
    iget-object p1, p0, Lnts/ኝ;->Ͼ:[B

    invoke-static {p1}, Lnts/Ԅ;->ᇭ([B)V

    .line 23
    iget-object p1, p0, Lnts/ኝ;->Ͼ:[B

    invoke-static {p1}, Lnts/Ԅ;->ᇭ([B)V

    .line 24
    iget-object p1, p0, Lnts/ኝ;->Ͼ:[B

    array-length v0, p1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {p1}, Lnts/Ԅ;->ᇭ([B)V

    :cond_0
    return-void
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 6

    .line 1
    new-instance v0, Lnts/ᣞ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnts/ᣞ;-><init>([B[BIII)V

    return-object v0
.end method
