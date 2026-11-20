.class public Lnts/く;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ઙ;

.field public Ὺ:Lnts/ཡ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ઙ;

    invoke-direct {v0}, Lnts/ઙ;-><init>()V

    iput-object v0, p0, Lnts/く;->ᡲ:Lnts/ઙ;

    .line 3
    new-instance v0, Lnts/ཡ;

    invoke-direct {v0}, Lnts/ཡ;-><init>()V

    iput-object v0, p0, Lnts/く;->Ὺ:Lnts/ཡ;

    const/16 v0, 0x30

    .line 6
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/く;->ᡲ:Lnts/ઙ;

    invoke-virtual {v0, p1, p2}, Lnts/ઙ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/く;->ᡲ:Lnts/ઙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/く;->Ὺ:Lnts/ཡ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/く;->Ὺ:Lnts/ཡ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 9
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/く;->ᡲ:Lnts/ઙ;

    invoke-virtual {v1, v0}, Lnts/ઙ;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/く;->Ὺ:Lnts/ཡ;

    invoke-virtual {v1, v0}, Lnts/ཡ;->ㆃ(Lnts/Ḭ;)V

    .line 4
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 5
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 6
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
