.class public Lnts/ⱊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:[I

.field public ౠ:[Z

.field public ᇭ:Ljava/math/BigInteger;

.field public ᰛ:I

.field public ᾨ:Ljava/math/BigInteger;

.field public ㆃ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xdb7

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ⱊ;->Ͼ:[I

    .line 3
    iput-object p1, p0, Lnts/ⱊ;->ㆃ:Ljava/math/BigInteger;

    .line 4
    iput-object p2, p0, Lnts/ⱊ;->ᾨ:Ljava/math/BigInteger;

    .line 5
    iput-object p3, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lnts/ⱊ;->ᰛ:I

    const/4 p2, 0x1

    .line 7
    aput p2, v0, p1

    const/4 p1, 0x3

    move p3, p2

    move v0, p3

    :goto_0
    const/16 v1, 0x7fcf

    if-gt p1, v1, :cond_4

    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_1

    .line 12
    iget-object v2, p0, Lnts/ⱊ;->Ͼ:[I

    aget v2, v2, v1

    rem-int v2, p1, v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ne v1, p3, :cond_3

    .line 16
    iget-object p3, p0, Lnts/ⱊ;->Ͼ:[I

    aput p1, p3, v0

    const/16 p3, 0x36

    if-ge p3, v0, :cond_2

    goto :goto_3

    :cond_2
    move p3, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lnts/ⱊ;->ㆃ()V

    return-void
.end method


# virtual methods
.method public ᾨ()Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ⱊ;->ᰛ:I

    :goto_0
    iget-object v1, p0, Lnts/ⱊ;->ౠ:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    .line 3
    iput v0, p0, Lnts/ⱊ;->ᰛ:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget v0, p0, Lnts/ⱊ;->ᰛ:I

    array-length v2, v1

    if-ne v0, v2, :cond_3

    .line 9
    iget-object v0, p0, Lnts/ⱊ;->ㆃ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    array-length v1, v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnts/ⱊ;->ㆃ:Ljava/math/BigInteger;

    .line 11
    iget-object v1, p0, Lnts/ⱊ;->ᾨ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lnts/ⱊ;->ᰛ:I

    .line 15
    invoke-virtual {p0}, Lnts/ⱊ;->ㆃ()V

    .line 16
    invoke-virtual {p0}, Lnts/ⱊ;->ᾨ()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 19
    iput v1, p0, Lnts/ⱊ;->ᰛ:I

    .line 20
    iget-object v1, p0, Lnts/ⱊ;->ㆃ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ㆃ()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lnts/ⱊ;->ᾨ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ⱊ;->ㆃ:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const v2, 0x8000

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 7
    :goto_0
    new-array v0, v0, [Z

    iput-object v0, p0, Lnts/ⱊ;->ౠ:[Z

    :goto_1
    const/16 v0, 0xdb7

    if-ge v1, v0, :cond_3

    .line 11
    iget-object v0, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ⱊ;->Ͼ:[I

    aget v2, v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lnts/ⱊ;->ౠ:[Z

    iget-object v3, p0, Lnts/ⱊ;->Ͼ:[I

    aget v3, v3, v1

    iget-object v4, p0, Lnts/ⱊ;->ㆃ:Ljava/math/BigInteger;

    iget-object v5, p0, Lnts/ⱊ;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    int-to-long v6, v3

    .line 13
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/2addr v6, v0

    rem-int/2addr v6, v3

    .line 16
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    div-int/lit8 v0, v0, 0x20

    const/4 v7, 0x1

    if-gt v0, v7, :cond_1

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_3

    .line 19
    :cond_1
    :goto_2
    iget-object v0, p0, Lnts/ⱊ;->ౠ:[Z

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 20
    aput-boolean v7, v2, v6

    :goto_3
    add-int/2addr v6, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 21
    :cond_4
    new-instance v0, Lnts/ẩ;

    const/16 v2, 0x3f

    const-string v3, "H{tRDP\u0003QECZBM\u0008EEA\u0014US\u0011jv`r\u0012"

    const/16 v4, 0x1a

    .line 22
    invoke-static {v3, v1, v4, v2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method
