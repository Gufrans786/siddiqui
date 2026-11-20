.class public Lnts/ᇬ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Lnts/ᵺ;

.field public ᡲ:Lnts/ಠ;

.field public ᵑ:Lnts/ម;

.field public Ὺ:Lnts/く;

.field public Ⲳ:Lnts/Ᏸ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/ᇬ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/く;

    invoke-direct {v0}, Lnts/く;-><init>()V

    iput-object v0, p0, Lnts/ᇬ;->Ὺ:Lnts/く;

    .line 4
    new-instance v0, Lnts/Ᏸ;

    invoke-direct {v0}, Lnts/Ᏸ;-><init>()V

    iput-object v0, p0, Lnts/ᇬ;->Ⲳ:Lnts/Ᏸ;

    .line 5
    new-instance v0, Lnts/ᵺ;

    invoke-direct {v0}, Lnts/ᵺ;-><init>()V

    iput-object v0, p0, Lnts/ᇬ;->ᛃ:Lnts/ᵺ;

    .line 6
    new-instance v0, Lnts/ម;

    invoke-direct {v0}, Lnts/ម;-><init>()V

    iput-object v0, p0, Lnts/ᇬ;->ᵑ:Lnts/ម;

    const/16 v0, 0x30

    .line 9
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᇬ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ᇬ;->ᡲ:Lnts/ಠ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_0

    return p2

    .line 6
    :cond_0
    iget v0, v0, Lnts/ᐘ;->ᡲ:I

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lnts/ᇬ;->Ὺ:Lnts/く;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 9
    iget-object v0, p0, Lnts/ᇬ;->Ὺ:Lnts/く;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 14
    iget-object v0, p0, Lnts/ᇬ;->Ⲳ:Lnts/Ᏸ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 15
    iget-object v0, p0, Lnts/ᇬ;->Ⲳ:Lnts/Ᏸ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 21
    :cond_2
    iget-object v0, p0, Lnts/ᇬ;->ᛃ:Lnts/ᵺ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 22
    iget-object v0, p0, Lnts/ᇬ;->ᛃ:Lnts/ᵺ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_3

    return p2

    .line 25
    :cond_3
    iget-object v0, p0, Lnts/ᇬ;->ᵑ:Lnts/ម;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 26
    iget-object v0, p0, Lnts/ᇬ;->ᵑ:Lnts/ម;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    return p2

    .line 29
    :cond_4
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
    iget-object v1, p0, Lnts/ᇬ;->ᡲ:Lnts/ಠ;

    .line 3
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 4
    iget-object v1, p0, Lnts/ᇬ;->ᡲ:Lnts/ಠ;

    iget v1, v1, Lnts/ᐘ;->ᡲ:I

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ᇬ;->Ὺ:Lnts/く;

    invoke-virtual {v1, v0}, Lnts/く;->ㆃ(Lnts/Ḭ;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lnts/ᇬ;->Ⲳ:Lnts/Ᏸ;

    .line 8
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lnts/ᇬ;->ᛃ:Lnts/ᵺ;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 10
    iget-object v1, p0, Lnts/ᇬ;->ᵑ:Lnts/ម;

    .line 11
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 12
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 13
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 14
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
