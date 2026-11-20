.class public Lnts/Ẇ;
.super Lnts/ฯ;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ᰛ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ฯ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/Ẇ;->ᰛ:I

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lnts/Ẇ;->Ͼ:I

    .line 5
    new-instance v1, Lnts/ᗋ;

    invoke-direct {v1}, Lnts/ᗋ;-><init>()V

    const/4 v1, 0x3

    .line 6
    iput v1, p0, Lnts/ฯ;->ᾨ:I

    .line 7
    iput v0, p0, Lnts/Ẇ;->Ͼ:I

    return-void
.end method


# virtual methods
.method public ᾨ([BII)V
    .locals 8

    .line 1
    iget p3, p0, Lnts/Ẇ;->Ͼ:I

    const/16 v0, 0x64

    const/16 v1, 0x6e

    const/4 v2, 0x1

    if-eq p3, v0, :cond_16

    const/16 v0, 0x78

    if-eq p3, v1, :cond_15

    const/16 v1, 0x82

    const/16 v3, 0x8c

    const/16 v4, 0x96

    const/16 v5, 0xa0

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq p3, v0, :cond_10

    if-eq p3, v3, :cond_c

    if-eq p3, v4, :cond_a

    if-eq p3, v5, :cond_9

    const/16 v0, 0x83

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 19
    :cond_0
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    .line 20
    iget p1, p0, Lnts/Ẇ;->ᰛ:I

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_1

    .line 21
    iput v3, p0, Lnts/Ẇ;->Ͼ:I

    .line 22
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_1
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_2

    .line 23
    iput v4, p0, Lnts/Ẇ;->Ͼ:I

    .line 24
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_2
    and-int/2addr p1, v7

    if-eqz p1, :cond_3

    .line 25
    iput v5, p0, Lnts/Ẇ;->Ͼ:I

    .line 26
    iput v7, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 27
    :cond_3
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 28
    :cond_4
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v2

    .line 29
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p3, p1

    if-lez p3, :cond_5

    .line 33
    iput v0, p0, Lnts/Ẇ;->Ͼ:I

    .line 34
    iput p3, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 35
    :cond_5
    iget p1, p0, Lnts/Ẇ;->ᰛ:I

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_6

    .line 36
    iput v3, p0, Lnts/Ẇ;->Ͼ:I

    .line 37
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_6
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_7

    .line 38
    iput v4, p0, Lnts/Ẇ;->Ͼ:I

    .line 39
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_7
    and-int/2addr p1, v7

    if-eqz p1, :cond_8

    .line 40
    iput v5, p0, Lnts/Ẇ;->Ͼ:I

    .line 41
    iput v7, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 42
    :cond_8
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 2
    :cond_9
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 3
    :cond_a
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-nez p1, :cond_f

    .line 6
    iget p1, p0, Lnts/Ẇ;->ᰛ:I

    and-int/2addr p1, v7

    if-eqz p1, :cond_b

    .line 7
    iput v5, p0, Lnts/Ẇ;->Ͼ:I

    .line 8
    iput v7, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 9
    :cond_b
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 10
    :cond_c
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-nez p1, :cond_f

    .line 13
    iget p1, p0, Lnts/Ẇ;->ᰛ:I

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_d

    .line 14
    iput v4, p0, Lnts/Ẇ;->Ͼ:I

    .line 15
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_d
    and-int/2addr p1, v7

    if-eqz p1, :cond_e

    .line 16
    iput v5, p0, Lnts/Ẇ;->Ͼ:I

    .line 17
    iput v7, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 18
    :cond_e
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    :cond_f
    :goto_0
    return-void

    .line 43
    :cond_10
    iget p1, p0, Lnts/Ẇ;->ᰛ:I

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_11

    .line 44
    iput v1, p0, Lnts/Ẇ;->Ͼ:I

    .line 45
    iput v7, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_11
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_12

    .line 46
    iput v3, p0, Lnts/Ẇ;->Ͼ:I

    .line 47
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_12
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_13

    .line 48
    iput v4, p0, Lnts/Ẇ;->Ͼ:I

    .line 49
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void

    :cond_13
    and-int/2addr p1, v7

    if-eqz p1, :cond_14

    .line 50
    iput v5, p0, Lnts/Ẇ;->Ͼ:I

    .line 51
    iput v7, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 52
    :cond_14
    iput v6, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 53
    :cond_15
    aget-byte p1, p1, p2

    iput p1, p0, Lnts/Ẇ;->ᰛ:I

    .line 54
    iput v0, p0, Lnts/Ẇ;->Ͼ:I

    const/4 p1, 0x6

    .line 55
    iput p1, p0, Lnts/ฯ;->ᾨ:I

    return-void

    .line 56
    :cond_16
    iput v1, p0, Lnts/Ẇ;->Ͼ:I

    .line 57
    iput v2, p0, Lnts/ฯ;->ᾨ:I

    return-void
.end method
