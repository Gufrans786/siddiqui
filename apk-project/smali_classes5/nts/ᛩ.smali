.class public Lnts/ᛩ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᇭ:Z

.field public ዲ:Z

.field public ᎊ:Z

.field public ᙕ:I

.field public ᰛ:Z

.field public ᾨ:[B

.field public て:Z

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ᛩ;->ᾨ:[B

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lnts/ᛩ;->ᇭ:Z

    .line 11
    iput-boolean v1, p0, Lnts/ᛩ;->ᰛ:Z

    .line 13
    iput v0, p0, Lnts/ᛩ;->Ͼ:I

    .line 14
    iput v0, p0, Lnts/ᛩ;->ౠ:I

    .line 15
    iput v0, p0, Lnts/ᛩ;->ᙕ:I

    .line 16
    iput-boolean v0, p0, Lnts/ᛩ;->て:Z

    .line 18
    iput-boolean v0, p0, Lnts/ᛩ;->ዲ:Z

    .line 19
    iput-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    return-void
.end method


# virtual methods
.method public Ͼ([BI)I
    .locals 7

    .line 1
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte v2, p1, p2

    and-int/lit16 v3, v2, 0xff

    .line 3
    iput v3, p0, Lnts/ᛩ;->ౠ:I

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_9

    add-int/lit8 v2, p2, 0x2

    .line 9
    invoke-virtual {p0, p1, v0}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    .line 14
    iget v3, p0, Lnts/ᛩ;->ౠ:I

    and-int/lit8 v3, v3, -0x21

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    and-int/lit8 v3, v0, -0x21

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    and-int/lit16 v3, v0, 0x80

    if-lez v3, :cond_7

    and-int/lit16 v0, v0, -0x81

    int-to-byte v0, v0

    if-nez v0, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    .line 22
    :goto_1
    iput-boolean v3, p0, Lnts/ᛩ;->て:Z

    if-eqz v3, :cond_4

    .line 24
    iput-boolean v5, p0, Lnts/ᛩ;->ዲ:Z

    return v2

    :cond_4
    const/4 v3, 0x4

    if-gt v0, v3, :cond_6

    .line 31
    iput v4, p0, Lnts/ᛩ;->ᙕ:I

    add-int v3, v2, v0

    .line 32
    array-length v6, p1

    if-le v3, v6, :cond_5

    return p2

    :cond_5
    :goto_2
    if-ge v4, v0, :cond_8

    .line 36
    iget p2, p0, Lnts/ᛩ;->ᙕ:I

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p1, v2}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v2

    or-int/2addr p2, v2

    iput p2, p0, Lnts/ᛩ;->ᙕ:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_2

    .line 37
    :cond_6
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0xf

    const/16 v0, 0x27

    const/16 v1, 0x31

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1be

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 48
    :cond_7
    iput v0, p0, Lnts/ᛩ;->ᙕ:I

    .line 51
    :cond_8
    iput-boolean v5, p0, Lnts/ᛩ;->ዲ:Z

    .line 52
    iput v1, p0, Lnts/ᛩ;->Ͼ:I

    return v2

    .line 53
    :cond_9
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x14

    const/16 v0, 0x4a

    const/16 v1, 0x1d

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x131

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᇭ([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-boolean v0, p0, Lnts/ᛩ;->ዲ:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->Ͼ([BI)I

    move-result p2

    .line 8
    iget-boolean v0, p0, Lnts/ᛩ;->ዲ:Z

    if-nez v0, :cond_1

    return p2

    .line 10
    :cond_1
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    return p2

    .line 13
    :cond_2
    iget-boolean v0, p0, Lnts/ᛩ;->ᇭ:Z

    if-eqz v0, :cond_4

    .line 14
    iget v0, p0, Lnts/ᛩ;->ౠ:I

    and-int/lit8 v0, v0, -0x21

    .line 15
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    and-int/lit8 v1, v1, -0x21

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Lnts/ᛎ;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x1d

    const/16 v1, 0x68

    const/16 v2, 0x40

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x8

    const/16 v1, 0xf

    const/16 v2, 0x5d

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lnts/ᛩ;->ౠ:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xde

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ᰛ([BI)I

    move-result p1

    .line 19
    iget-boolean p2, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p0}, Lnts/ᛩ;->ᾨ()V

    :cond_5
    return p1
.end method

.method public ᇭ()Lnts/ᖝ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 21
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    .line 23
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    return-object v0
.end method

.method public ᰛ([BI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    if-nez v0, :cond_1

    .line 16
    iget-boolean v0, p0, Lnts/ᛩ;->ዲ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_0

    .line 17
    invoke-static {p1, p2, v0}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v0

    iput-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    .line 18
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr p2, v0

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    .line 24
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    :cond_0
    return p2

    .line 25
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x10

    const/16 v0, 0x69

    const/16 v1, 0xd

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2be

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᰛ()[B
    .locals 1

    .line 26
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 27
    invoke-virtual {p0, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    .line 28
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lnts/ᖝ;->ㆃ:[B

    return-object v0
.end method

.method public ᾨ([BI)I
    .locals 0

    .line 1
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public ᾨ()V
    .locals 0

    return-void
.end method

.method public ㆃ([BI)I
    .locals 2

    .line 7
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 8
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return p2

    .line 9
    :cond_0
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0}, Lnts/ᛩ;->ᾨ([BI)I

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0xf

    const/16 v0, 0x73

    const/16 v1, 0x65

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1be

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    return p2
.end method

.method public ㆃ()V
    .locals 1

    .line 6
    iget v0, p0, Lnts/ᛩ;->ౠ:I

    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ᰛ([BI)V

    return-void
.end method

.method public ㆃ([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lnts/ᛩ;->ᇭ([BI)I

    .line 4
    iget-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0xd

    const/16 v2, 0x4b

    invoke-static {v0, v1, v2}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1bf

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method
