.class public Lnts/ᡢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:I

.field public ㆃ:[Lnts/ẝ;


# direct methods
.method public constructor <init>([SI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ᡢ;->ᾨ:I

    .line 23
    new-array p2, p2, [Lnts/ẝ;

    iput-object p2, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    .line 24
    iput v0, p0, Lnts/ᡢ;->ᾨ:I

    move p2, v0

    .line 25
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 26
    aget-short v1, p1, p2

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    iget v2, p0, Lnts/ᡢ;->ᾨ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ᡢ;->ᾨ:I

    new-instance v3, Lnts/ẝ;

    aget-short v4, p1, p2

    invoke-direct {v3, v4, p2}, Lnts/ẝ;-><init>(II)V

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    iget p1, p0, Lnts/ᡢ;->ᾨ:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_3

    .line 31
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Lnts/ᡢ;->ㆃ(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void

    .line 33
    :cond_3
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x17

    const/4 v1, 0x6

    invoke-static {v0, p2, v1}, Lnts/ࡁ;->て(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x84

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ㆃ()Lnts/ẝ;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 13
    iget v0, p0, Lnts/ᡢ;->ᾨ:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 14
    iget-object v2, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    sub-int/2addr v0, v1

    .line 15
    aget-object v1, v2, v0

    aput-object v1, v2, v3

    .line 16
    iput v0, p0, Lnts/ᡢ;->ᾨ:I

    .line 17
    invoke-virtual {p0, v3}, Lnts/ᡢ;->ㆃ(I)V

    return-object v4

    .line 18
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x1f

    const/16 v2, 0x5f

    const/16 v3, 0x17

    invoke-static {v3, v1, v2}, Lnts/ࡁ;->て(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc7

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final ㆃ(I)V
    .locals 5

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 1
    iget v2, p0, Lnts/ᡢ;->ᾨ:I

    const v3, 0x2faf080

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    aget-object v2, v2, v1

    iget v2, v2, Lnts/ẝ;->ㆃ:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/lit8 v0, v0, 0x2

    .line 2
    iget v4, p0, Lnts/ᡢ;->ᾨ:I

    if-ge v0, v4, :cond_1

    iget-object v3, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    aget-object v3, v3, v0

    iget v3, v3, Lnts/ẝ;->ㆃ:I

    .line 4
    :cond_1
    iget-object v4, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    aget-object v4, v4, p1

    iget v4, v4, Lnts/ẝ;->ㆃ:I

    if-ge v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    .line 6
    :goto_1
    iget-object v2, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    aget-object v2, v2, v1

    iget v2, v2, Lnts/ẝ;->ㆃ:I

    if-ge v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eq v0, p1, :cond_4

    .line 9
    iget-object v1, p0, Lnts/ᡢ;->ㆃ:[Lnts/ẝ;

    aget-object v2, v1, p1

    .line 10
    aget-object v3, v1, v0

    aput-object v3, v1, p1

    .line 11
    aput-object v2, v1, v0

    .line 12
    invoke-virtual {p0, v0}, Lnts/ᡢ;->ㆃ(I)V

    :cond_4
    return-void
.end method
