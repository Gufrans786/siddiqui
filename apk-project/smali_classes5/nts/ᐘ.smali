.class public Lnts/ᐘ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᾨ()V
    .locals 4

    .line 1
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lnts/ᐘ;->ᡲ:I

    .line 6
    :goto_1
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    if-ge v1, v0, :cond_1

    .line 7
    iget v0, p0, Lnts/ᐘ;->ᡲ:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lnts/ᛩ;->ᾨ:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lnts/ᐘ;->ᡲ:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xf

    const/16 v2, 0x1d

    const/16 v3, 0x93

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1be

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ᐘ;->ᡲ:I

    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ㆃ(II)V

    return-void
.end method
