.class public Lnts/Ⴝ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ಠ;

.field public Ὺ:Lnts/ᩁ;

.field public Ⲳ:Lnts/Έ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/Ⴝ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/ᩁ;

    invoke-direct {v0}, Lnts/ᩁ;-><init>()V

    iput-object v0, p0, Lnts/Ⴝ;->Ὺ:Lnts/ᩁ;

    const/16 v0, 0x30

    .line 11
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 12
    new-instance v0, Lnts/Έ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnts/Έ;-><init>(Lnts/ᾭ;)V

    iput-object v0, p0, Lnts/Ⴝ;->Ⲳ:Lnts/Έ;

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/Ⴝ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/Ⴝ;->ᡲ:Lnts/ಠ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/Ⴝ;->Ὺ:Lnts/ᩁ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/Ⴝ;->Ὺ:Lnts/ᩁ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 10
    :cond_1
    iget-object v0, p0, Lnts/Ⴝ;->Ⲳ:Lnts/Έ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 11
    iget-object v0, p0, Lnts/Ⴝ;->Ⲳ:Lnts/Έ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 15
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
    iget-object v1, p0, Lnts/Ⴝ;->ᡲ:Lnts/ಠ;

    .line 3
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 4
    iget-object v1, p0, Lnts/Ⴝ;->Ὺ:Lnts/ᩁ;

    invoke-virtual {v1, v0}, Lnts/ᩁ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget-object v1, p0, Lnts/Ⴝ;->Ⲳ:Lnts/Έ;

    invoke-virtual {v1, v0}, Lnts/Έ;->ㆃ(Lnts/Ḭ;)V

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
