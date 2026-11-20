.class public Lnts/ᖎ;
.super Lnts/ᒁ;
.source "SourceFile"


# instance fields
.field public ౠ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnts/ᖎ;->ౠ:[B

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 1

    .line 7
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 8
    new-instance p1, Lnts/ᖛ;

    .line 9
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 10
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 11
    invoke-virtual {p1}, Lnts/ᖛ;->Ὺ()[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᖎ;->ౠ:[B

    return-void
.end method

.method public ㆃ()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ᖎ;->ౠ:[B

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    const/4 v1, 0x6

    .line 3
    iput v1, p0, Lnts/ᒁ;->ᾨ:I

    .line 4
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    .line 5
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 6
    invoke-super {p0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method
