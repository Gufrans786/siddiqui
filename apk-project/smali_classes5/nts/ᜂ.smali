.class public Lnts/ᜂ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ᥛ;


# instance fields
.field public ᇭ:I

.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xfff1

    .line 2
    iput v0, p0, Lnts/ᜂ;->ㆃ:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lnts/ᜂ;->ᾨ:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnts/ᜂ;->ᇭ:I

    return-void
.end method


# virtual methods
.method public ᾨ()[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lnts/ᜂ;->ㆃ()J

    move-result-wide v0

    const/4 v2, 0x4

    .line 2
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    mul-int/lit8 v5, v4, 0x8

    rsub-int/lit8 v5, v5, 0x18

    shr-long v5, v0, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 4
    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public ㆃ()J
    .locals 4

    .line 3
    iget v0, p0, Lnts/ᜂ;->ᇭ:I

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    iget v2, p0, Lnts/ᜂ;->ᾨ:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ㆃ([BII)V
    .locals 4

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 1
    iget v1, p0, Lnts/ᜂ;->ᾨ:I

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iget v2, p0, Lnts/ᜂ;->ㆃ:I

    rem-int/2addr v1, v2

    iput v1, p0, Lnts/ᜂ;->ᾨ:I

    .line 2
    iget v3, p0, Lnts/ᜂ;->ᇭ:I

    add-int/2addr v3, v1

    rem-int/2addr v3, v2

    iput v3, p0, Lnts/ᜂ;->ᇭ:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
