.class public Lnts/ឧ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ᔤ;

.field public Ὺ:Lnts/ⱑ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ᔤ;

    invoke-direct {v0}, Lnts/ᔤ;-><init>()V

    iput-object v0, p0, Lnts/ឧ;->ᡲ:Lnts/ᔤ;

    .line 3
    new-instance v0, Lnts/ⱑ;

    invoke-direct {v0}, Lnts/ⱑ;-><init>()V

    iput-object v0, p0, Lnts/ឧ;->Ὺ:Lnts/ⱑ;

    const/16 v0, 0x30

    .line 6
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ឧ;->ᡲ:Lnts/ᔤ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ឧ;->ᡲ:Lnts/ᔤ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ឧ;->Ὺ:Lnts/ⱑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ឧ;->Ὺ:Lnts/ⱑ;

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

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ឧ;->ᡲ:Lnts/ᔤ;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/ឧ;->Ὺ:Lnts/ⱑ;

    invoke-virtual {v1, v0}, Lnts/ⱑ;->ㆃ(Lnts/Ḭ;)V

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
