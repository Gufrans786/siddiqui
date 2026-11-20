.class public Lnts/Ј;
.super Lnts/ѻ;
.source "SourceFile"


# static fields
.field public static ᎊ:Ljava/math/BigInteger;


# instance fields
.field public Ͼ:Ljava/math/BigInteger;

.field public ౠ:Ljava/math/BigInteger;

.field public ᇭ:Ljava/math/BigInteger;

.field public ዲ:I

.field public ᙕ:Ljava/math/BigInteger;

.field public ᰛ:Ljava/math/BigInteger;

.field public て:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnts/Ј;->ᎊ:Ljava/math/BigInteger;

    const/16 v1, 0xa0

    .line 2
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnts/ѻ;-><init>()V

    .line 2
    new-instance v0, Lnts/ඛ;

    invoke-direct {v0}, Lnts/ඛ;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    .line 5
    iput-object v0, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    .line 6
    iput-object v0, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    .line 7
    iput-object v0, p0, Lnts/Ј;->ౠ:Ljava/math/BigInteger;

    .line 8
    iput-object v0, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lnts/Ј;->ዲ:I

    .line 20
    iput-boolean v0, p0, Lnts/Ј;->て:Z

    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x1000

    const/16 v4, 0x40

    const/16 v5, 0x200

    invoke-direct {v2, v5, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    const/16 v0, 0x400

    .line 22
    iput v0, p0, Lnts/バ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ㆃ(Lnts/Ӥ;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lnts/Ӥ;->ㆃ:[B

    if-eqz v0, :cond_5

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lnts/Ӥ;->ᾨ:[B

    if-eqz v0, :cond_5

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 2
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lnts/Ӥ;->ᇭ:[B

    if-eqz v0, :cond_5

    iget-object v0, p1, Lnts/Ӥ;->ᰛ:[B

    if-nez v0, :cond_0

    iget-object v0, p1, Lnts/Ӥ;->Ͼ:[B

    if-eqz v0, :cond_5

    .line 7
    :cond_0
    iget-boolean v0, p0, Lnts/Ј;->て:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-static {v0, v4}, Lnts/ቩ;->ㆃ([Lnts/ᵕ;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    invoke-static {p1}, Lnts/ቩ;->ㆃ([Lnts/ᵕ;)V

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lnts/バ;->ㆃ:I

    .line 13
    iput-object v1, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    .line 14
    iput-object v3, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    .line 15
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p1, Lnts/Ӥ;->ᇭ:[B

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    .line 16
    iget-object v0, p1, Lnts/Ӥ;->ᰛ:[B

    if-eqz v0, :cond_3

    .line 17
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lnts/Ј;->ౠ:Ljava/math/BigInteger;

    .line 19
    :cond_3
    iget-object p1, p1, Lnts/Ӥ;->Ͼ:[B

    if-eqz p1, :cond_4

    .line 20
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    :cond_4
    return-void

    .line 21
    :cond_5
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x25

    const/16 v1, 0x35

    const/16 v2, 0x58

    invoke-static {v2, v0, v1}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([BLjava/lang/String;[B)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    if-eqz p1, :cond_12

    if-eqz p2, :cond_11

    const/16 v0, 0x15f

    const/16 v1, 0x4f

    const/4 v2, 0x4

    .line 22
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    const/16 v0, 0xd

    const/16 v3, 0x3a

    const/16 v4, 0x163

    invoke-static {v4, v0, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x170

    const/16 v3, 0x76

    .line 23
    invoke-static {v0, v1, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x176

    const/16 v3, 0x6f

    const/16 v4, 0x16

    invoke-static {v0, v4, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x18c

    const/16 v3, 0x43

    .line 24
    invoke-static {v0, v1, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x192

    invoke-static {v0, v4, v1}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1a8

    const/16 v3, 0x26

    .line 25
    invoke-static {v0, v1, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1ae

    const/16 v5, 0x14

    invoke-static {v0, v4, v5}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1c4

    const/16 v5, 0x65

    .line 26
    invoke-static {v0, v1, v5}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1ca

    const/16 v5, 0x6b

    invoke-static {v0, v4, v5}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1e0

    const/16 v4, 0x9

    .line 27
    invoke-static {v0, v4, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    :cond_0
    if-eqz p3, :cond_10

    .line 28
    iget-object p2, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    const/4 v0, 0x5

    if-eqz p2, :cond_f

    .line 31
    array-length p2, p3

    array-length v3, p1

    const/4 v4, 0x0

    if-ge p2, v3, :cond_1

    goto/16 :goto_1

    .line 32
    :cond_1
    array-length p2, p3

    const/4 v3, 0x1

    if-ge p2, v1, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    aget-byte p2, p3, v4

    const/16 v1, 0x30

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 35
    :cond_3
    aget-byte p2, p3, v3

    and-int/lit16 v1, p2, 0xff

    add-int/2addr v1, v3

    array-length v5, p3

    if-le v1, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    .line 36
    aget-byte v5, p3, v1

    if-eq v5, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x3

    .line 37
    aget-byte v5, p3, v5

    and-int/lit16 v6, v5, 0xff

    add-int/lit8 v7, v6, 0x4

    .line 38
    array-length v8, p3

    if-lt v7, v8, :cond_6

    goto :goto_0

    :cond_6
    add-int/2addr v6, v0

    .line 39
    aget-byte v0, p3, v7

    if-eq v0, v1, :cond_7

    goto :goto_0

    .line 40
    :cond_7
    aget-byte v0, p3, v6

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v6, v0

    array-length v0, p3

    if-ge v6, v0, :cond_9

    .line 43
    new-array v0, v5, [B

    .line 44
    invoke-static {p3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v5, 0x5

    add-int/lit8 v6, v5, 0x6

    .line 46
    aget-byte v1, p3, v1

    if-gtz v1, :cond_8

    goto/16 :goto_1

    .line 48
    :cond_8
    new-array v7, v1, [B

    .line 49
    invoke-static {p3, v6, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    if-eq p2, v1, :cond_b

    goto/16 :goto_1

    .line 53
    :cond_9
    :goto_0
    array-length p2, p1

    new-array v0, p2, [B

    .line 54
    array-length p2, p1

    invoke-static {p3, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length p2, p3

    array-length v1, p1

    sub-int/2addr p2, v1

    if-gtz p2, :cond_a

    goto/16 :goto_1

    .line 57
    :cond_a
    new-array v7, p2, [B

    .line 58
    array-length p2, p1

    array-length v1, p3

    array-length v2, p1

    sub-int/2addr v1, v2

    invoke-static {p3, p2, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    :cond_b
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 62
    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, v3, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 64
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_e

    iget-object v0, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_1

    .line 65
    :cond_c
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_e

    iget-object v0, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_1

    .line 67
    :cond_d
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 69
    iget-object p1, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    iget-object v0, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 71
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    iget-object v1, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v0, p3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 73
    iget-object v0, p0, Lnts/Ј;->ౠ:Ljava/math/BigInteger;

    iget-object v1, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 74
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p3, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p3, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_e
    :goto_1
    return v4

    .line 77
    :cond_f
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x246

    const/16 p3, 0x17

    invoke-static {p2, p3, v0}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_10
    new-instance p1, Lnts/ቂ;

    const/16 p2, 0xc

    const/16 p3, 0xe

    const/16 v0, 0x23a

    invoke-static {v0, p2, p3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_11
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x4a

    const/16 p3, 0x60

    const/16 v0, 0x1e9

    invoke-static {v0, p2, p3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_12
    new-instance p1, Lnts/ቂ;

    const/4 p2, 0x7

    const/16 p3, 0x42

    const/16 v0, 0x158

    invoke-static {v0, p2, p3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1
.end method
