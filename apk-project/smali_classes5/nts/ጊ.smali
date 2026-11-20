.class public Lnts/ጊ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:[B

.field public ᡲ:Lnts/ࠌ;

.field public Ὺ:Lnts/క;

.field public Ⲳ:Lnts/ᣑ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ࠌ;

    invoke-direct {v0}, Lnts/ࠌ;-><init>()V

    iput-object v0, p0, Lnts/ጊ;->ᡲ:Lnts/ࠌ;

    .line 3
    new-instance v0, Lnts/క;

    invoke-direct {v0}, Lnts/క;-><init>()V

    iput-object v0, p0, Lnts/ጊ;->Ὺ:Lnts/క;

    .line 4
    new-instance v0, Lnts/ᣑ;

    invoke-direct {v0}, Lnts/ᣑ;-><init>()V

    iput-object v0, p0, Lnts/ጊ;->Ⲳ:Lnts/ᣑ;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnts/ጊ;->ᛃ:[B

    const/16 v0, 0x30

    .line 8
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ጊ;->ᡲ:Lnts/ࠌ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ጊ;->ᡲ:Lnts/ࠌ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ጊ;->Ὺ:Lnts/క;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ጊ;->Ὺ:Lnts/క;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 9
    :cond_1
    iget-object v0, p0, Lnts/ጊ;->Ⲳ:Lnts/ᣑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 10
    iget-object v0, p0, Lnts/ጊ;->Ⲳ:Lnts/ᣑ;

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
    iget-object v0, p0, Lnts/ጊ;->ᛃ:[B

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ([B)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 5
    iget-object v1, p0, Lnts/ጊ;->ᡲ:Lnts/ࠌ;

    invoke-virtual {v1, v0}, Lnts/ࠌ;->ㆃ(Lnts/Ḭ;)V

    .line 6
    iget-object v1, p0, Lnts/ጊ;->Ὺ:Lnts/క;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 7
    iget-object v1, p0, Lnts/ጊ;->Ⲳ:Lnts/ᣑ;

    .line 8
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᇭ([BI)V

    .line 9
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 10
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 11
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
