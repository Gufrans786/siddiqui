.class public Lnts/ⱜ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Lnts/ᒎ;

.field public ᡲ:Lnts/ಠ;

.field public ᵑ:[B

.field public Ὺ:Lnts/ᔂ;

.field public Ⲳ:Lnts/ᅌ;

.field public ⴗ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/ⱜ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/ᔂ;

    invoke-direct {v0}, Lnts/ᔂ;-><init>()V

    iput-object v0, p0, Lnts/ⱜ;->Ὺ:Lnts/ᔂ;

    .line 4
    new-instance v0, Lnts/ᅌ;

    invoke-direct {v0}, Lnts/ᅌ;-><init>()V

    iput-object v0, p0, Lnts/ⱜ;->Ⲳ:Lnts/ᅌ;

    .line 5
    new-instance v0, Lnts/ᒎ;

    invoke-direct {v0}, Lnts/ᒎ;-><init>()V

    iput-object v0, p0, Lnts/ⱜ;->ᛃ:Lnts/ᒎ;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lnts/ⱜ;->ᵑ:[B

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lnts/ⱜ;->ⴗ:Z

    const/16 v1, 0x30

    .line 68
    iput v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 69
    iget-object v1, p0, Lnts/ⱜ;->ᛃ:Lnts/ᒎ;

    .line 70
    iput-boolean v0, v1, Lnts/ᛩ;->ᰛ:Z

    const/16 v0, 0xa0

    .line 71
    iput v0, v1, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 4

    .line 1
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v0, p2

    .line 2
    iget-object v1, p0, Lnts/ⱜ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v1, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 3
    iget-object v1, p0, Lnts/ⱜ;->ᡲ:Lnts/ಠ;

    iget-boolean v1, v1, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object v1, p0, Lnts/ⱜ;->Ὺ:Lnts/ᔂ;

    invoke-virtual {v1, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 7
    iget-object v1, p0, Lnts/ⱜ;->Ὺ:Lnts/ᔂ;

    iget-boolean v1, v1, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_1

    return p2

    .line 10
    :cond_1
    iget-object v1, p0, Lnts/ⱜ;->Ⲳ:Lnts/ᅌ;

    invoke-virtual {v1, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 11
    iget-object v1, p0, Lnts/ⱜ;->Ⲳ:Lnts/ᅌ;

    iget-boolean v1, v1, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 15
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    .line 19
    :cond_3
    iget-boolean v1, p0, Lnts/ⱜ;->ⴗ:Z

    if-nez v1, :cond_6

    .line 21
    array-length v1, p1

    if-lt p2, v1, :cond_4

    :goto_0
    return p2

    .line 22
    :cond_4
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    .line 23
    iget-object v1, p0, Lnts/ⱜ;->ᛃ:Lnts/ᒎ;

    .line 24
    iput-boolean v3, v1, Lnts/ᛩ;->ᰛ:Z

    .line 25
    :cond_5
    iput-boolean v3, p0, Lnts/ⱜ;->ⴗ:Z

    .line 26
    :cond_6
    iget-object v1, p0, Lnts/ⱜ;->ᛃ:Lnts/ᒎ;

    .line 27
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {v1, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    :cond_7
    if-ge p2, v0, :cond_8

    .line 31
    array-length v1, p1

    if-gt v0, v1, :cond_8

    sub-int v1, v0, p2

    .line 32
    invoke-static {p1, p2, v1}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p2

    iput-object p2, p0, Lnts/ⱜ;->ᵑ:[B

    goto :goto_1

    :cond_8
    move v0, p2

    .line 36
    :goto_1
    invoke-virtual {p0, p1, v0}, Lnts/ᛩ;->ㆃ([BI)I

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
    iget-object v1, p0, Lnts/ⱜ;->ᡲ:Lnts/ಠ;

    .line 3
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 4
    iget-object v1, p0, Lnts/ⱜ;->Ὺ:Lnts/ᔂ;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget-object v1, p0, Lnts/ⱜ;->Ⲳ:Lnts/ᅌ;

    .line 6
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 7
    iget-object v1, p0, Lnts/ⱜ;->ᛃ:Lnts/ᒎ;

    .line 8
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xa0

    .line 9
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 10
    invoke-virtual {v1, v0}, Lnts/ᒎ;->ㆃ(Lnts/Ḭ;)V

    .line 12
    :cond_0
    iget-object v1, p0, Lnts/ⱜ;->ᵑ:[B

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ([B)V

    .line 13
    :cond_1
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 14
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 15
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
