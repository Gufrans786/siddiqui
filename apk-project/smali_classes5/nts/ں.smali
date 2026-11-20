.class public Lnts/ں;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Z

.field public ᡲ:Lnts/ன;

.field public Ὺ:Lnts/ⱑ;

.field public Ⲳ:Lnts/ᐘ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ன;

    invoke-direct {v0}, Lnts/ன;-><init>()V

    iput-object v0, p0, Lnts/ں;->ᡲ:Lnts/ன;

    .line 3
    new-instance v0, Lnts/ⱑ;

    invoke-direct {v0}, Lnts/ⱑ;-><init>()V

    iput-object v0, p0, Lnts/ں;->Ὺ:Lnts/ⱑ;

    .line 4
    new-instance v0, Lnts/ᐘ;

    invoke-direct {v0}, Lnts/ᐘ;-><init>()V

    iput-object v0, p0, Lnts/ں;->Ⲳ:Lnts/ᐘ;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lnts/ں;->ᛃ:Z

    const/16 v0, 0x30

    .line 46
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ں;->ᡲ:Lnts/ன;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ں;->ᡲ:Lnts/ன;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ں;->Ὺ:Lnts/ⱑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ں;->Ὺ:Lnts/ⱑ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean v0, p0, Lnts/ں;->ᛃ:Z

    if-nez v0, :cond_4

    .line 11
    array-length v0, p1

    if-lt p2, v0, :cond_2

    :goto_0
    return p2

    .line 12
    :cond_2
    iget-object v0, p0, Lnts/ں;->Ⲳ:Lnts/ᐘ;

    .line 13
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 14
    :goto_1
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 15
    iput-boolean v3, p0, Lnts/ں;->ᛃ:Z

    .line 16
    :cond_4
    iget-object v0, p0, Lnts/ں;->Ⲳ:Lnts/ᐘ;

    .line 17
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 21
    :cond_5
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ں;->ᡲ:Lnts/ன;

    invoke-virtual {v1, v0}, Lnts/ன;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/ں;->Ὺ:Lnts/ⱑ;

    invoke-virtual {v1, v0}, Lnts/ⱑ;->ㆃ(Lnts/Ḭ;)V

    .line 4
    iget-object v1, p0, Lnts/ں;->Ⲳ:Lnts/ᐘ;

    .line 5
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    .line 6
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 7
    :cond_0
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 8
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 9
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
