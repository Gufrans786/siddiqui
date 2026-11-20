.class public Lnts/ᕐ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ౠ:[B


# instance fields
.field public Ͼ:Lnts/ሐ;

.field public ᇭ:[S

.field public ᰛ:[B

.field public ᾨ:[S

.field public ㆃ:B


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lnts/ᕐ;->ౠ:[B

    const/4 v1, 0x0

    .line 2
    aput-byte v1, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 3
    aput-byte v2, v0, v3

    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 4
    aput-byte v4, v0, v2

    const/16 v5, 0xc

    const/4 v6, 0x3

    .line 5
    aput-byte v5, v0, v6

    :goto_0
    if-ge v1, v4, :cond_0

    .line 7
    sget-object v0, Lnts/ᕐ;->ౠ:[B

    add-int/lit8 v5, v1, 0x4

    aget-byte v7, v0, v1

    add-int/2addr v7, v2

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v1, 0x8

    .line 8
    aget-byte v7, v0, v1

    add-int/2addr v7, v3

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v1, 0xc

    .line 9
    aget-byte v7, v0, v1

    add-int/2addr v7, v6

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lnts/ᕐ;->Ͼ:Lnts/ሐ;

    int-to-byte p2, p2

    .line 36
    iput-byte p2, p0, Lnts/ᕐ;->ㆃ:B

    .line 37
    new-array p2, p1, [S

    iput-object p2, p0, Lnts/ᕐ;->ᾨ:[S

    .line 38
    new-array p2, p1, [S

    iput-object p2, p0, Lnts/ᕐ;->ᇭ:[S

    .line 39
    new-array p2, p1, [B

    iput-object p2, p0, Lnts/ᕐ;->ᰛ:[B

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    iget-object v1, p0, Lnts/ᕐ;->ᾨ:[S

    aput-short p2, v1, v0

    .line 42
    iget-object v1, p0, Lnts/ᕐ;->ᇭ:[S

    aput-short p2, v1, v0

    .line 43
    iget-object v1, p0, Lnts/ᕐ;->ᰛ:[B

    aput-byte p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ᾨ(I)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ᕐ;->ౠ:[B

    and-int/lit8 v1, p0, 0xf

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0xc

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    shr-int/lit8 p0, p0, 0xc

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v1

    int-to-short p0, p0

    return p0
.end method


# virtual methods
.method public ᾨ()I
    .locals 2

    .line 2
    iget-object v0, p0, Lnts/ᕐ;->ᰛ:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :goto_0
    iget-object v1, p0, Lnts/ᕐ;->ᰛ:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final ㆃ([S)Lnts/ẝ;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 14
    new-instance v0, Lnts/ᡢ;

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lnts/ᡢ;-><init>([SI)V

    .line 15
    :goto_0
    iget p1, v0, Lnts/ᡢ;->ᾨ:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 16
    invoke-virtual {v0}, Lnts/ᡢ;->ㆃ()Lnts/ẝ;

    move-result-object p1

    .line 17
    invoke-virtual {v0}, Lnts/ᡢ;->ㆃ()Lnts/ẝ;

    move-result-object v2

    .line 18
    new-instance v3, Lnts/ẝ;

    invoke-direct {v3, p1, v2}, Lnts/ẝ;-><init>(Lnts/ẝ;Lnts/ẝ;)V

    .line 19
    iget p1, v0, Lnts/ᡢ;->ᾨ:I

    iget-object v2, v0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    array-length v2, v2

    if-eq p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 20
    iput p1, v0, Lnts/ᡢ;->ᾨ:I

    .line 21
    iget p1, v0, Lnts/ᡢ;->ᾨ:I

    sub-int/2addr p1, v1

    :goto_1
    if-lez p1, :cond_0

    .line 22
    iget-object v1, v0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v2, v2, 0x2

    aget-object v4, v1, v2

    iget v4, v4, Lnts/ẝ;->ㆃ:I

    iget v5, v3, Lnts/ẝ;->ㆃ:I

    if-le v4, v5, :cond_0

    .line 23
    aget-object v4, v1, v2

    aput-object v4, v1, p1

    move p1, v2

    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, v0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    aput-object v3, v1, p1

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0xe

    const/16 v1, 0x55

    const/16 v2, 0x36

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->て(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc7

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    invoke-virtual {v0}, Lnts/ᡢ;->ㆃ()Lnts/ẝ;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lnts/ᕐ;->ᾨ:[S

    invoke-virtual {p0, v1}, Lnts/ᕐ;->ㆃ([S)Lnts/ẝ;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lnts/ᕐ;->ᰛ:[B

    invoke-virtual {v1, v2, v0}, Lnts/ẝ;->ㆃ([BI)V

    .line 3
    iget-object v1, p0, Lnts/ᕐ;->ᰛ:[B

    invoke-virtual {p0, v1}, Lnts/ᕐ;->ㆃ([B)[S

    move-result-object v1

    .line 4
    iget-object v2, p0, Lnts/ᕐ;->ᰛ:[B

    invoke-virtual {p0, v2, v1}, Lnts/ᕐ;->ㆃ([B[S)V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 5
    iget v2, v1, Lnts/ᛎ;->ㆃ:I

    const/16 v3, 0x84

    if-ne v2, v3, :cond_2

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lnts/ᕐ;->ᾨ:[S

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-short v3, v2, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    array-length v2, v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 9
    iget-object v0, p0, Lnts/ᕐ;->ᰛ:[B

    aput-byte v3, v0, v1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lnts/ᕐ;->ᰛ:[B

    aput-byte v3, v1, v0

    :goto_1
    return-void

    .line 12
    :cond_2
    throw v1
.end method

.method public ㆃ(I)V
    .locals 3

    .line 13
    iget-object v0, p0, Lnts/ᕐ;->Ͼ:Lnts/ሐ;

    iget-object v1, p0, Lnts/ᕐ;->ᇭ:[S

    aget-short v1, v1, p1

    iget-object v2, p0, Lnts/ᕐ;->ᰛ:[B

    aget-byte p1, v2, p1

    invoke-virtual {v0, v1, p1}, Lnts/ሐ;->ㆃ(II)V

    return-void
.end method

.method public final ㆃ([B[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    aput-short v0, p2, v0

    .line 75
    iget-byte v1, p0, Lnts/ᕐ;->ㆃ:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    move v4, v0

    move v3, v2

    .line 76
    :goto_0
    iget-byte v5, p0, Lnts/ᕐ;->ㆃ:B

    if-gt v3, v5, :cond_0

    .line 77
    aput v4, v1, v3

    .line 78
    aget-short v5, p2, v3

    rsub-int/lit8 v6, v3, 0x10

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000

    if-ne v4, p2, :cond_3

    .line 82
    :goto_1
    array-length p2, p1

    if-ge v0, p2, :cond_2

    .line 83
    aget-byte p2, p1, v0

    if-eqz p2, :cond_1

    .line 84
    iget-object v3, p0, Lnts/ᕐ;->ᇭ:[S

    aget p2, v1, p2

    invoke-static {p2}, Lnts/ᕐ;->ᾨ(I)S

    move-result p2

    aput-short p2, v3, v0

    .line 85
    aget-byte p2, p1, v0

    aget v3, v1, p2

    rsub-int/lit8 v4, p2, 0x10

    shl-int v4, v2, v4

    add-int/2addr v3, v4

    aput v3, v1, p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 86
    :cond_3
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x13

    const/16 v0, 0x43

    const/16 v1, 0x6c

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->て(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xc7

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final ㆃ([B)[S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 29
    iget-byte v0, p0, Lnts/ᕐ;->ㆃ:B

    add-int/lit8 v0, v0, 0x64

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 30
    :goto_0
    iget-byte v3, p0, Lnts/ᕐ;->ㆃ:B

    add-int/lit8 v4, v3, 0x64

    if-ge v2, v4, :cond_0

    .line 31
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 34
    new-array v3, v3, [S

    move v4, v1

    .line 35
    :goto_1
    iget-byte v5, p0, Lnts/ᕐ;->ㆃ:B

    if-gt v4, v5, :cond_1

    .line 36
    aput-short v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    move v5, v4

    .line 37
    :goto_2
    array-length v6, p1

    if-ge v4, v6, :cond_3

    .line 38
    aget-byte v6, p1, v4

    iget-byte v7, p0, Lnts/ᕐ;->ㆃ:B

    if-le v6, v7, :cond_2

    .line 39
    aget-byte v5, v0, v6

    add-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 40
    aput-byte v7, p1, v4

    move v5, v2

    .line 43
    :cond_2
    aget-byte v6, p1, v4

    aget-short v7, v3, v6

    add-int/2addr v7, v2

    int-to-short v7, v7

    aput-short v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_d

    .line 44
    iget-byte v4, p0, Lnts/ᕐ;->ㆃ:B

    add-int/lit8 v4, v4, 0x63

    move v5, v1

    move v6, v5

    :goto_3
    iget-byte v7, p0, Lnts/ᕐ;->ㆃ:B

    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0xc7

    if-lt v4, v8, :cond_5

    .line 45
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_4

    .line 46
    div-int/lit8 v5, v5, 0x2

    .line 47
    aget-byte v7, v0, v4

    add-int v8, v7, v5

    add-int/2addr v6, v8

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 49
    :cond_4
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x10

    const/16 v1, 0x52

    const/16 v2, 0x5c

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->て(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v9, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, -0x1

    .line 50
    aget-short v0, v3, v7

    if-nez v0, :cond_6

    goto :goto_4

    .line 52
    :cond_6
    :goto_5
    aget-short v0, v3, v7

    sub-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v7

    add-int/lit8 v0, v7, 0x1

    .line 53
    aget-short v4, v3, v0

    add-int/2addr v4, v2

    int-to-short v4, v4

    aput-short v4, v3, v0

    .line 54
    iget-byte v4, p0, Lnts/ᕐ;->ㆃ:B

    sub-int v5, v4, v7

    shl-int v5, v2, v5

    sub-int/2addr v6, v5

    if-lez v6, :cond_8

    if-lt v0, v4, :cond_7

    goto :goto_6

    :cond_7
    move v7, v0

    goto :goto_5

    :cond_8
    :goto_6
    if-gtz v6, :cond_c

    if-gez v6, :cond_9

    .line 60
    aget-short v0, v3, v4

    div-int/lit8 v6, v6, 0x2

    int-to-short v5, v6

    add-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, v3, v4

    sub-int/2addr v4, v2

    .line 61
    aget-short v0, v3, v4

    sub-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, v3, v4

    .line 66
    :cond_9
    :try_start_0
    new-instance v0, Lnts/ᡢ;

    iget-object v4, p0, Lnts/ᕐ;->ᾨ:[S

    array-length v5, v4

    invoke-direct {v0, v4, v5}, Lnts/ᡢ;-><init>([SI)V

    .line 67
    iget-byte v4, p0, Lnts/ᕐ;->ㆃ:B

    :goto_7
    if-lt v4, v2, :cond_d

    move v5, v1

    .line 68
    :goto_8
    aget-short v6, v3, v4

    if-ge v5, v6, :cond_a

    .line 69
    invoke-virtual {v0}, Lnts/ᡢ;->ㆃ()Lnts/ẝ;

    move-result-object v6

    iget v6, v6, Lnts/ẝ;->ᾨ:I

    int-to-byte v7, v4

    aput-byte v7, p1, v6
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 70
    iget v0, p1, Lnts/ᛎ;->ㆃ:I

    const/16 v1, 0x84

    if-ne v0, v1, :cond_b

    .line 71
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x18

    const/16 v1, 0x29

    const/16 v2, 0x44

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->て(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v9, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 73
    :cond_b
    throw p1

    :cond_c
    move v7, v0

    goto :goto_4

    :cond_d
    return-object v3
.end method
