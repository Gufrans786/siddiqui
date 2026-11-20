.class public Lnts/ᨠ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ⷊ;

.field public Ὺ:Lnts/ᅶ;

.field public Ⲳ:Lnts/ᣑ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ⷊ;

    invoke-direct {v0}, Lnts/ⷊ;-><init>()V

    iput-object v0, p0, Lnts/ᨠ;->ᡲ:Lnts/ⷊ;

    .line 3
    new-instance v0, Lnts/ᅶ;

    invoke-direct {v0}, Lnts/ᅶ;-><init>()V

    iput-object v0, p0, Lnts/ᨠ;->Ὺ:Lnts/ᅶ;

    .line 4
    new-instance v0, Lnts/ᣑ;

    invoke-direct {v0}, Lnts/ᣑ;-><init>()V

    iput-object v0, p0, Lnts/ᨠ;->Ⲳ:Lnts/ᣑ;

    const/16 v0, 0x30

    .line 7
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᨠ;->ᡲ:Lnts/ⷊ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ᨠ;->ᡲ:Lnts/ⷊ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ᨠ;->Ὺ:Lnts/ᅶ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ᨠ;->Ὺ:Lnts/ᅶ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 9
    :cond_1
    iget-object v0, p0, Lnts/ᨠ;->Ⲳ:Lnts/ᣑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 10
    iget-object v0, p0, Lnts/ᨠ;->Ⲳ:Lnts/ᣑ;

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
    iget-object v1, p0, Lnts/ᨠ;->ᡲ:Lnts/ⷊ;

    invoke-virtual {v1, v0}, Lnts/ⷊ;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/ᨠ;->Ὺ:Lnts/ᅶ;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 4
    iget-object v1, p0, Lnts/ᨠ;->Ⲳ:Lnts/ᣑ;

    .line 5
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᇭ([BI)V

    .line 6
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 7
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 8
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
