.class public Lnts/ᚙ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ㆭ;

.field public Ὺ:Lnts/ᛩ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ㆭ;

    invoke-direct {v0}, Lnts/ㆭ;-><init>()V

    iput-object v0, p0, Lnts/ᚙ;->ᡲ:Lnts/ㆭ;

    .line 3
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    iput-object v0, p0, Lnts/ᚙ;->Ὺ:Lnts/ᛩ;

    const/16 v0, 0x30

    .line 6
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 7
    iget-object v0, p0, Lnts/ᚙ;->Ὺ:Lnts/ᛩ;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lnts/ᛩ;->ᇭ:Z

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᚙ;->ᡲ:Lnts/ㆭ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ᚙ;->ᡲ:Lnts/ㆭ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ᚙ;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ᚙ;->Ὺ:Lnts/ᛩ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_1

    return p2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lnts/ᛩ;->ㆃ()V

    .line 10
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
    iget-object v1, p0, Lnts/ᚙ;->ᡲ:Lnts/ㆭ;

    .line 3
    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ᾨ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/ᚙ;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    invoke-virtual {v0}, Lnts/Ḭ;->ᎊ()V

    .line 6
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
