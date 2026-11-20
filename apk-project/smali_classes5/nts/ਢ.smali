.class public Lnts/ਢ;
.super Lnts/ᒁ;
.source "SourceFile"


# instance fields
.field public ౠ:I

.field public ᙕ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ਢ;->ౠ:I

    .line 3
    iput v0, p0, Lnts/ਢ;->ᙕ:I

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 1

    .line 8
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 9
    new-instance p1, Lnts/ᖛ;

    .line 10
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 11
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 12
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ਢ;->ౠ:I

    .line 13
    invoke-virtual {p1}, Lnts/ᖛ;->ᰛ()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnts/ਢ;->ᙕ:I

    return-void
.end method

.method public ㆃ()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ਢ;->ౠ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 3
    iget v1, p0, Lnts/ਢ;->ᙕ:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ㆃ(B)V

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lnts/ᒁ;->ᾨ:I

    .line 5
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    .line 6
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 7
    invoke-super {p0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method
