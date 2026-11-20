.class public Lnts/ๅ;
.super Lnts/ᒁ;
.source "SourceFile"


# instance fields
.field public ౠ:I

.field public ᙕ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnts/ๅ;->ౠ:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lnts/ๅ;->ᙕ:[B

    return-void
.end method


# virtual methods
.method public ᾨ()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/ᒁ;->ᇭ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㆃ([B)V
    .locals 5

    .line 12
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 13
    new-instance p1, Lnts/ᖛ;

    .line 14
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 15
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 16
    iget v0, p0, Lnts/ᒁ;->ㆃ:I

    .line 17
    iget v1, p0, Lnts/ᒁ;->ᇭ:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 18
    invoke-virtual {p1}, Lnts/ᖛ;->ᰛ()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnts/ๅ;->ౠ:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 20
    iget v2, p0, Lnts/ᒁ;->ㆃ:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v3, 0x6b

    const/16 v4, 0x18

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    iget v2, p0, Lnts/ๅ;->ౠ:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    const/16 v3, 0x42

    const/16 v4, 0x4a

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ๅ;->ᙕ:[B

    return-void
.end method

.method public ㆃ()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ๅ;->ౠ:I

    if-lez v1, :cond_0

    int-to-byte v1, v1

    .line 3
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ㆃ(B)V

    .line 4
    iget v1, p0, Lnts/ᒁ;->ᇭ:I

    or-int/lit8 v1, v1, 0x8

    .line 5
    iput v1, p0, Lnts/ᒁ;->ᇭ:I

    .line 6
    :cond_0
    iget-object v1, p0, Lnts/ๅ;->ᙕ:[B

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    .line 7
    iget v1, p0, Lnts/ๅ;->ౠ:I

    if-lez v1, :cond_1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lnts/ᒁ;->ᾨ:I

    .line 9
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    .line 10
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 11
    invoke-super {p0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method
