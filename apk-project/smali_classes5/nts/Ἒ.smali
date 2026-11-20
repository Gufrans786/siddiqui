.class public Lnts/Ἒ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ᇭ:[B

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnts/Ἒ;->ᇭ:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/Ἒ;->ᰛ:I

    .line 7
    iput v0, p0, Lnts/Ἒ;->Ͼ:I

    .line 10
    iput p1, p0, Lnts/Ἒ;->ㆃ:I

    add-int/lit8 v0, p1, -0x1

    .line 11
    iput v0, p0, Lnts/Ἒ;->ᾨ:I

    .line 12
    new-array p1, p1, [B

    iput-object p1, p0, Lnts/Ἒ;->ᇭ:[B

    return-void
.end method


# virtual methods
.method public ㆃ(Lnts/ፍ;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/Ἒ;->ㆃ:I

    iget v1, p0, Lnts/Ἒ;->ᰛ:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_0

    move p2, v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lnts/ፍ;->ᇭ()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lnts/ፍ;->ᇭ()I

    move-result p2

    .line 9
    :cond_1
    iget v0, p0, Lnts/Ἒ;->ㆃ:I

    iget v1, p0, Lnts/Ἒ;->Ͼ:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_2

    .line 11
    iget-object v2, p0, Lnts/Ἒ;->ᇭ:[B

    invoke-virtual {p1, v2, v1, v0}, Lnts/ፍ;->ㆃ([BII)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 13
    iget-object v2, p0, Lnts/Ἒ;->ᇭ:[B

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, p2}, Lnts/ፍ;->ㆃ([BII)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lnts/Ἒ;->ᇭ:[B

    invoke-virtual {p1, v0, v1, p2}, Lnts/ፍ;->ㆃ([BII)I

    move-result v1

    .line 18
    :cond_3
    :goto_0
    iget p1, p0, Lnts/Ἒ;->Ͼ:I

    add-int/2addr p1, v1

    iget p2, p0, Lnts/Ἒ;->ᾨ:I

    and-int/2addr p1, p2

    iput p1, p0, Lnts/Ἒ;->Ͼ:I

    .line 19
    iget p1, p0, Lnts/Ἒ;->ᰛ:I

    add-int/2addr p1, v1

    iput p1, p0, Lnts/Ἒ;->ᰛ:I

    return v1
.end method
