.class public Lnts/ᢆ;
.super Lnts/ᒁ;
.source "SourceFile"


# instance fields
.field public ౠ:I

.field public ዲ:Ljava/util/Vector;

.field public ᎊ:Lnts/ᶛ;

.field public ᙕ:I

.field public て:[B


# direct methods
.method public constructor <init>(Lnts/ᶛ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ᢆ;->ౠ:I

    .line 3
    iput v0, p0, Lnts/ᢆ;->ᙕ:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/ᢆ;->て:[B

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ᢆ;->ዲ:Ljava/util/Vector;

    .line 15
    iput-object p1, p0, Lnts/ᢆ;->ᎊ:Lnts/ᶛ;

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 3

    .line 14
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 15
    new-instance p1, Lnts/ᖛ;

    .line 16
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 17
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 18
    iget v0, p0, Lnts/ᒁ;->ㆃ:I

    .line 19
    iget v1, p0, Lnts/ᒁ;->ᇭ:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 20
    invoke-virtual {p1}, Lnts/ᖛ;->ᰛ()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnts/ᢆ;->ౠ:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v1

    iput v1, p0, Lnts/ᢆ;->ᙕ:I

    add-int/lit8 v0, v0, -0x4

    .line 24
    invoke-virtual {p1, v0}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᢆ;->て:[B

    .line 25
    array-length v0, p1

    iget v1, p0, Lnts/ᢆ;->ౠ:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnts/ᢆ;->ᎊ:Lnts/ᶛ;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lnts/ӻ;->ㆃ([BIILnts/ᶛ;)Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢆ;->ዲ:Ljava/util/Vector;

    return-void
.end method

.method public ㆃ()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ᢆ;->ౠ:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ዲ(I)V

    .line 4
    iget v1, p0, Lnts/ᒁ;->ᇭ:I

    or-int/lit8 v1, v1, 0x8

    .line 5
    iput v1, p0, Lnts/ᒁ;->ᇭ:I

    .line 6
    :cond_0
    iget v1, p0, Lnts/ᢆ;->ᙕ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 7
    iget-object v1, p0, Lnts/ᢆ;->て:[B

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    .line 8
    iget v1, p0, Lnts/ᢆ;->ౠ:I

    if-lez v1, :cond_1

    .line 9
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    :cond_1
    const/4 v1, 0x5

    .line 10
    iput v1, p0, Lnts/ᒁ;->ᾨ:I

    .line 11
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    .line 12
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 13
    invoke-super {p0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method
