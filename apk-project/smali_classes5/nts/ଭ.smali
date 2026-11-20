.class public Lnts/ଭ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Z

.field public ᡲ:Lnts/ጊ;

.field public Ὺ:Lnts/ᨠ;

.field public Ⲳ:Lnts/ሠ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    .line 3
    iput-object v0, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    .line 4
    new-instance v0, Lnts/ሠ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnts/ሠ;-><init>(I)V

    iput-object v0, p0, Lnts/ଭ;->Ⲳ:Lnts/ሠ;

    .line 18
    iput-boolean v1, p0, Lnts/ଭ;->ᛃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ([BI)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object v0, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    .line 7
    :cond_1
    iget-object v0, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_2

    iput-object v1, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    .line 9
    :cond_2
    iget-boolean v0, p0, Lnts/ଭ;->ᛃ:Z

    if-nez v0, :cond_6

    .line 10
    array-length v0, p1

    if-lt p2, v0, :cond_3

    .line 11
    iget-object v0, p0, Lnts/ଭ;->Ⲳ:Lnts/ሠ;

    invoke-virtual {v0, p1, p2, p2}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    return p2

    .line 12
    :cond_3
    aget-byte v0, p1, p2

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0xa0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 13
    new-instance v0, Lnts/ᨠ;

    invoke-direct {v0}, Lnts/ᨠ;-><init>()V

    iput-object v0, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    .line 14
    iput-boolean v3, p0, Lnts/ଭ;->ᛃ:Z

    goto :goto_0

    :cond_4
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-ne v0, v1, :cond_5

    .line 16
    new-instance v0, Lnts/ጊ;

    invoke-direct {v0}, Lnts/ጊ;-><init>()V

    iput-object v0, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    .line 17
    iput-boolean v3, p0, Lnts/ଭ;->ᛃ:Z

    goto :goto_0

    .line 19
    :cond_5
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x40

    const/16 v0, 0x34

    const/16 v1, 0x1e7

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xde

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 23
    :cond_6
    :goto_0
    iget-object v0, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result v0

    .line 25
    iget-object v1, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    iget v2, v1, Lnts/ᛩ;->Ͼ:I

    iput v2, p0, Lnts/ᛩ;->Ͼ:I

    .line 26
    iget v1, v1, Lnts/ᛩ;->ᙕ:I

    iput v1, p0, Lnts/ᛩ;->ᙕ:I

    .line 27
    iget-object v1, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    iget-boolean v1, v1, Lnts/ᛩ;->ᎊ:Z

    iput-boolean v1, p0, Lnts/ᛩ;->ᎊ:Z

    goto :goto_1

    .line 28
    :cond_7
    iget-object v0, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result v0

    .line 30
    iget-object v1, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    iget v2, v1, Lnts/ᛩ;->Ͼ:I

    iput v2, p0, Lnts/ᛩ;->Ͼ:I

    .line 31
    iget v2, v1, Lnts/ᛩ;->ᙕ:I

    iput v2, p0, Lnts/ᛩ;->ᙕ:I

    .line 32
    iget-boolean v1, v1, Lnts/ᛩ;->ᎊ:Z

    iput-boolean v1, p0, Lnts/ᛩ;->ᎊ:Z

    goto :goto_1

    :cond_8
    move v0, p2

    .line 34
    :goto_1
    iget-object v1, p0, Lnts/ଭ;->Ⲳ:Lnts/ሠ;

    invoke-virtual {v1, p1, p2, v0}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    return v0
.end method

.method public ᰛ()[B
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnts/ଭ;->Ⲳ:Lnts/ሠ;

    .line 2
    iget v1, v0, Lnts/ሠ;->ᾨ:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lnts/ሠ;->ㆃ()[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v0

    return-object v0
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    if-nez v0, :cond_1

    iget-object v1, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x47

    const/16 v1, 0x6e

    const/16 v2, 0x1a0

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lnts/ጊ;->ㆃ(Lnts/Ḭ;)V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lnts/ଭ;->Ὺ:Lnts/ᨠ;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Lnts/ᨠ;->ㆃ(Lnts/Ḭ;)V

    :cond_3
    return-void
.end method
