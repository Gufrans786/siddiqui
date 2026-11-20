.class public Lnts/Д;
.super Lnts/Ⴧ;
.source "SourceFile"


# instance fields
.field public ᾨ:[I

.field public ㆃ:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnts/Ⴧ;-><init>()V

    const/16 v0, 0x100

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/Д;->ㆃ:[I

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/Д;->ᾨ:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    aput v2, v0, v2

    return-void
.end method


# virtual methods
.method public ᾨ([B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnts/Д;->ᾨ:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lnts/Д;->ㆃ:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-ge v2, v1, :cond_2

    .line 14
    iget-object v3, p0, Lnts/Д;->ㆃ:[I

    aget v4, v3, v2

    add-int/2addr v0, v4

    array-length v5, p1

    rem-int v5, v2, v5

    aget-byte v5, p1, v5

    add-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    .line 17
    aget v5, v3, v0

    aput v5, v3, v2

    .line 18
    aput v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public ㆃ([B)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lnts/Д;->ᾨ:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 4
    aget v0, v0, v3

    move v4, v1

    .line 7
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 9
    iget-object v5, p0, Lnts/Д;->ㆃ:[I

    aget v6, v5, v2

    add-int/2addr v0, v6

    and-int/lit16 v0, v0, 0xff

    .line 12
    aget v7, v5, v0

    aput v7, v5, v2

    .line 13
    aput v6, v5, v0

    .line 14
    aget v7, v5, v2

    add-int/2addr v7, v6

    and-int/lit16 v6, v7, 0xff

    aget v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lnts/Д;->ᾨ:[I

    aput v2, p1, v1

    .line 18
    aput v0, p1, v3

    :cond_2
    :goto_1
    return-void
.end method
