.class public Lnts/ḥ;
.super Lnts/ᒁ;
.source "SourceFile"


# instance fields
.field public ౠ:I

.field public ᙕ:I

.field public て:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ḥ;->ౠ:I

    .line 3
    iput v0, p0, Lnts/ḥ;->ᙕ:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/ḥ;->て:[B

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 1

    .line 9
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 10
    new-instance p1, Lnts/ᖛ;

    .line 11
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 12
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 13
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ḥ;->ౠ:I

    .line 14
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ḥ;->ᙕ:I

    .line 15
    invoke-virtual {p1}, Lnts/ᖛ;->ᇭ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lnts/ᖛ;->Ὺ()[B

    move-result-object p1

    iput-object p1, p0, Lnts/ḥ;->て:[B

    :cond_0
    return-void
.end method

.method public ㆃ()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ḥ;->ౠ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 3
    iget v1, p0, Lnts/ḥ;->ᙕ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 4
    iget-object v1, p0, Lnts/ḥ;->て:[B

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    :cond_0
    const/4 v1, 0x7

    .line 5
    iput v1, p0, Lnts/ᒁ;->ᾨ:I

    .line 6
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    .line 7
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 8
    invoke-super {p0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method
