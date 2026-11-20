.class public Lnts/ͷ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Z

.field public ᡲ:Lnts/ᬓ;

.field public Ὺ:Lnts/ᛩ;

.field public Ⲳ:Lnts/ⱑ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ᬓ;

    invoke-direct {v0}, Lnts/ᬓ;-><init>()V

    iput-object v0, p0, Lnts/ͷ;->ᡲ:Lnts/ᬓ;

    .line 3
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    iput-object v0, p0, Lnts/ͷ;->Ὺ:Lnts/ᛩ;

    .line 4
    new-instance v0, Lnts/ⱑ;

    invoke-direct {v0}, Lnts/ⱑ;-><init>()V

    iput-object v0, p0, Lnts/ͷ;->Ⲳ:Lnts/ⱑ;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lnts/ͷ;->ᛃ:Z

    const/16 v0, 0x30

    .line 48
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 49
    iget-object v0, p0, Lnts/ͷ;->Ὺ:Lnts/ᛩ;

    const/4 v1, 0x1

    .line 50
    iput v1, v0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ͷ;->ᡲ:Lnts/ᬓ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ͷ;->ᡲ:Lnts/ᬓ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lnts/ͷ;->ᛃ:Z

    if-nez v0, :cond_3

    .line 7
    array-length v0, p1

    if-lt p2, v0, :cond_1

    :goto_0
    return p2

    .line 8
    :cond_1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lnts/ͷ;->Ὺ:Lnts/ᛩ;

    .line 10
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lnts/ͷ;->Ὺ:Lnts/ᛩ;

    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    .line 13
    :goto_1
    iput-boolean v1, p0, Lnts/ͷ;->ᛃ:Z

    .line 14
    :cond_3
    iget-object v0, p0, Lnts/ͷ;->Ὺ:Lnts/ᛩ;

    .line 15
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 19
    :cond_4
    iget-object v0, p0, Lnts/ͷ;->Ⲳ:Lnts/ⱑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 20
    iget-object v0, p0, Lnts/ͷ;->Ⲳ:Lnts/ⱑ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_5

    return p2

    .line 24
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
    iget-object v1, p0, Lnts/ͷ;->ᡲ:Lnts/ᬓ;

    invoke-virtual {v1, v0}, Lnts/ᬓ;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/ͷ;->Ὺ:Lnts/ᛩ;

    .line 4
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lnts/ͷ;->Ⲳ:Lnts/ⱑ;

    invoke-virtual {v1, v0}, Lnts/ⱑ;->ㆃ(Lnts/Ḭ;)V

    .line 8
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 9
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 10
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
