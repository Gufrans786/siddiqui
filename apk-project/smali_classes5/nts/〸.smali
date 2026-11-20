.class public Lnts/〸;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ㆃ:Lnts/ሠ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnts/ሠ;

    invoke-direct {v0}, Lnts/ሠ;-><init>()V

    iput-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnts/〸;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ᇭ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    .line 2
    iget v0, v0, Lnts/ሠ;->ᾨ:I

    return v0
.end method

.method public ᇭ(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    .line 4
    iget v0, v0, Lnts/ሠ;->ᾨ:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v0, p1}, Lnts/ሠ;->ᰛ(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lnts/ሠ;->ᾨ([B)Lnts/ሠ;

    const/4 p1, 0x0

    return p1
.end method

.method public ᰛ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v0}, Lnts/ሠ;->ᇭ()V

    const/4 v0, 0x0

    return v0
.end method

.method public ᾨ([B)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lnts/〸;->ᰛ()I

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v1, p1}, Lnts/ሠ;->ᾨ([B)Lnts/ሠ;

    return v0
.end method

.method public ᾨ([BI)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lnts/〸;->ᰛ()I

    return v0

    :cond_0
    if-ltz p2, :cond_1

    .line 4
    iget-object v1, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    .line 5
    invoke-virtual {v1, p1, v0, p2}, Lnts/ሠ;->ᾨ([BII)Lnts/ሠ;

    :cond_1
    return v0
.end method

.method public ᾨ()[B
    .locals 1

    .line 6
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v0}, Lnts/ሠ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method

.method public ᾨ(I)[B
    .locals 2

    if-ltz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lnts/〸;->ᇭ()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    .line 9
    iget v1, v0, Lnts/ሠ;->ᾨ:I

    invoke-virtual {v0, p1, v1}, Lnts/ሠ;->ᾨ(II)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ㆃ(I)C
    .locals 2

    .line 4
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    .line 5
    iget v1, v0, Lnts/ሠ;->ᾨ:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-object v0, v0, Lnts/ሠ;->ㆃ:[B

    aget-byte p1, v0, p1

    int-to-char p1, p1

    return p1
.end method

.method public ㆃ([B)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v0, p1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ([BI)I
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 2
    iget-object v1, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v1, p1, v0, p2}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    :cond_0
    return v0
.end method

.method public ㆃ()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/〸;->ㆃ:Lnts/ሠ;

    invoke-virtual {v0}, Lnts/ሠ;->ㆃ()[B

    move-result-object v0

    invoke-static {v0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
