.class public Lnts/ⷊ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ಠ;

.field public Ὺ:Lnts/ጊ;

.field public Ⲳ:Lnts/ϴ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/ⷊ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/ጊ;

    invoke-direct {v0}, Lnts/ጊ;-><init>()V

    iput-object v0, p0, Lnts/ⷊ;->Ὺ:Lnts/ጊ;

    .line 4
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/ⷊ;->Ⲳ:Lnts/ϴ;

    const/16 v0, 0x30

    .line 7
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⷊ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ⷊ;->ᡲ:Lnts/ಠ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ⷊ;->Ὺ:Lnts/ጊ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ⷊ;->Ὺ:Lnts/ጊ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 9
    :cond_1
    iget-object v0, p0, Lnts/ⷊ;->Ⲳ:Lnts/ϴ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 10
    iget-object v0, p0, Lnts/ⷊ;->Ⲳ:Lnts/ϴ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 13
    :cond_2
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
    iget-object v1, p0, Lnts/ⷊ;->ᡲ:Lnts/ಠ;

    .line 3
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 4
    iget-object v1, p0, Lnts/ⷊ;->Ὺ:Lnts/ጊ;

    invoke-virtual {v1, v0}, Lnts/ጊ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget-object v1, p0, Lnts/ⷊ;->Ⲳ:Lnts/ϴ;

    .line 6
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 7
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 8
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 9
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
