.class public Lnts/Ⴤ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ᛩ;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    .line 9
    iput p1, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᇭ([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 7
    iget-object v0, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    iput-object v0, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    .line 11
    :cond_1
    iget-object v0, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 12
    iget-object v0, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 16
    :cond_2
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
.end method

.method public ᰛ([BI)I
    .locals 0

    return p2
.end method

.method public ㆃ([BILnts/ᛩ;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 8
    iget-object v0, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    if-nez v0, :cond_0

    .line 9
    iput-object p3, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    .line 12
    :cond_0
    iget-object p3, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    invoke-virtual {p3, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 13
    iget-object p3, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    iget-boolean p3, p3, Lnts/ᛩ;->ᎊ:Z

    if-nez p3, :cond_1

    return p2

    .line 17
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
    iget-object v1, p0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 4
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 5
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
