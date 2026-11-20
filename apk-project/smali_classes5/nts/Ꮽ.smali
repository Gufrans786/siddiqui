.class public Lnts/Ꮽ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᚹ:Lnts/ଙ;

.field public ᛃ:Lnts/ଙ;

.field public ᡲ:Lnts/ಠ;

.field public ᯚ:Lnts/ᛙ;

.field public ᵑ:Lnts/ଙ;

.field public Ṳ:Z

.field public Ὺ:Lnts/ଙ;

.field public ⱪ:Lnts/ଙ;

.field public Ⲳ:Lnts/ଙ;

.field public ⴗ:Lnts/ଙ;

.field public せ:Lnts/ଙ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->Ὺ:Lnts/ଙ;

    .line 4
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->Ⲳ:Lnts/ଙ;

    .line 5
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ᛃ:Lnts/ଙ;

    .line 6
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ᵑ:Lnts/ଙ;

    .line 7
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ⴗ:Lnts/ଙ;

    .line 8
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ᚹ:Lnts/ଙ;

    .line 9
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->せ:Lnts/ଙ;

    .line 10
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ⱪ:Lnts/ଙ;

    .line 11
    new-instance v0, Lnts/ᛙ;

    invoke-direct {v0}, Lnts/ᛙ;-><init>()V

    iput-object v0, p0, Lnts/Ꮽ;->ᯚ:Lnts/ᛙ;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lnts/Ꮽ;->Ṳ:Z

    const/16 v0, 0x30

    .line 89
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/Ꮽ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/Ꮽ;->ᡲ:Lnts/ಠ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/Ꮽ;->Ὺ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/Ꮽ;->Ὺ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 9
    :cond_1
    iget-object v0, p0, Lnts/Ꮽ;->Ⲳ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 10
    iget-object v0, p0, Lnts/Ꮽ;->Ⲳ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 13
    :cond_2
    iget-object v0, p0, Lnts/Ꮽ;->ᛃ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 14
    iget-object v0, p0, Lnts/Ꮽ;->ᛃ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_3

    return p2

    .line 17
    :cond_3
    iget-object v0, p0, Lnts/Ꮽ;->ᵑ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 18
    iget-object v0, p0, Lnts/Ꮽ;->ᵑ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    return p2

    .line 21
    :cond_4
    iget-object v0, p0, Lnts/Ꮽ;->ⴗ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 22
    iget-object v0, p0, Lnts/Ꮽ;->ⴗ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_5

    return p2

    .line 25
    :cond_5
    iget-object v0, p0, Lnts/Ꮽ;->ᚹ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 26
    iget-object v0, p0, Lnts/Ꮽ;->ᚹ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_6

    return p2

    .line 29
    :cond_6
    iget-object v0, p0, Lnts/Ꮽ;->せ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 30
    iget-object v0, p0, Lnts/Ꮽ;->せ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_7

    return p2

    .line 33
    :cond_7
    iget-object v0, p0, Lnts/Ꮽ;->ⱪ:Lnts/ଙ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 34
    iget-object v0, p0, Lnts/Ꮽ;->ⱪ:Lnts/ଙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_8

    return p2

    .line 38
    :cond_8
    iget-boolean v0, p0, Lnts/Ꮽ;->Ṳ:Z

    if-nez v0, :cond_b

    .line 39
    array-length v0, p1

    if-lt p2, v0, :cond_9

    .line 40
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    .line 41
    :cond_9
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 42
    iget-object v0, p0, Lnts/Ꮽ;->ᯚ:Lnts/ᛙ;

    .line 43
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    .line 44
    :cond_a
    iput-boolean v2, p0, Lnts/Ꮽ;->Ṳ:Z

    .line 45
    :cond_b
    iget-object v0, p0, Lnts/Ꮽ;->ᯚ:Lnts/ᛙ;

    .line 46
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_c

    .line 47
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 50
    :cond_c
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
    iget-object v1, p0, Lnts/Ꮽ;->ᡲ:Lnts/ಠ;

    .line 3
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 4
    iget-object v1, p0, Lnts/Ꮽ;->Ὺ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget-object v1, p0, Lnts/Ꮽ;->Ⲳ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 6
    iget-object v1, p0, Lnts/Ꮽ;->ᛃ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 7
    iget-object v1, p0, Lnts/Ꮽ;->ᵑ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 8
    iget-object v1, p0, Lnts/Ꮽ;->ⴗ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 9
    iget-object v1, p0, Lnts/Ꮽ;->ᚹ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 10
    iget-object v1, p0, Lnts/Ꮽ;->せ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 11
    iget-object v1, p0, Lnts/Ꮽ;->ⱪ:Lnts/ଙ;

    invoke-virtual {v1, v0}, Lnts/ଙ;->ㆃ(Lnts/Ḭ;)V

    .line 12
    iget-object v1, p0, Lnts/Ꮽ;->ᯚ:Lnts/ᛙ;

    .line 13
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xa0

    .line 14
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 15
    invoke-virtual {v1, v0}, Lnts/ᛙ;->ㆃ(Lnts/Ḭ;)V

    .line 17
    :cond_0
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 18
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 19
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
