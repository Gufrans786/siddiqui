.class public Lorg/bouncycastle/math/ec/ECCurve$F2m;
.super Lorg/bouncycastle/math/ec/ECCurve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private h:Ljava/math/BigInteger;

.field private infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private n:Ljava/math/BigInteger;

.field private si:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECCurve;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    iput p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k3 must be 0 if k2 == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-le p3, p2, :cond_3

    if-le p4, p3, :cond_2

    :goto_0
    invoke-virtual {p0, p5}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {p1, p0, v0, v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k3 must be > k2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be > k1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k1 must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method private decompressPoint([BI)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    :goto_0
    iget p2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    sub-int/2addr p2, v6

    if-ge v1, p2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->solveQuadradicEquation(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eq v1, p2, :cond_1

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v6, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    :cond_2
    new-instance p2, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {p2, p0, v0, p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid point compression"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private solveQuadradicEquation(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 9

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    :cond_1
    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v6, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v7, Ljava/math/BigInteger;

    iget v8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v7, v8, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    const/4 v3, 0x1

    move-object v6, p1

    move-object v4, v0

    move v5, v3

    :goto_0
    iget v7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    sub-int/2addr v7, v3

    if-gt v5, v7, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v6, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v4
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 12

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid point encoding 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v0

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v2

    div-int/2addr v1, v3

    new-array v4, v1, [B

    array-length v5, p1

    sub-int/2addr v5, v2

    div-int/2addr v5, v3

    new-array v3, v5, [B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    invoke-static {p1, v1, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    new-instance v5, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v9, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v6, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v9, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v10, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p1, p0, v5, v6, v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object p1

    :cond_2
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p1, p1, v0

    if-ne p1, v3, :cond_3

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_4
    array-length p1, p1

    if-gt p1, v2, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid point encoding"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(Lorg/bouncycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    :cond_0
    iget-byte v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/Tnaf;->getSi(Lorg/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isKoblitz()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
