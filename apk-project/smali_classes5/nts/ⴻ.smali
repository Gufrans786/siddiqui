.class public Lnts/ⴻ;
.super Lnts/ᚲ;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/math/BigInteger;

.field public ౠ:Ljava/math/BigInteger;

.field public ᙕ:I

.field public ᰛ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᚲ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ⴻ;->ᰛ:Ljava/math/BigInteger;

    .line 3
    iput-object v0, p0, Lnts/ⴻ;->Ͼ:Ljava/math/BigInteger;

    .line 4
    iput-object v0, p0, Lnts/ⴻ;->ౠ:Ljava/math/BigInteger;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnts/ⴻ;->ᙕ:I

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lnts/ᚲ;->ᇭ:I

    return-void
.end method

.method public static ᾨ(I)Ljava/security/spec/ECParameterSpec;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lnts/ⴻ;->ㆃ(I)Ljava/security/spec/ECParameterSpec;

    move-result-object p0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lnts/ᛎ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x118

    invoke-direct {v0, v1, p0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static ㆃ(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x4e3b

    const/16 v2, 0x39

    const/16 v3, 0x8

    .line 9
    invoke-static {v1, v3, v2}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 v1, 0x4e43

    const/16 v2, 0x17

    .line 11
    invoke-static {v1, v3, v2}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/16 v1, 0x4e4b

    const/16 v2, 0x2c

    .line 13
    invoke-static {v1, v3, v2}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0
.end method

.method public static ㆃ(Ljava/security/spec/ECParameterSpec;)I
    .locals 10

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldFp;

    .line 15
    new-instance v2, Lnts/ྈ;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lnts/ⴻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lnts/ⴻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lnts/ⴻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lnts/ⴻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lnts/ⴻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 17
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lnts/ⴻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v8

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lnts/ྈ;-><init>([B[B[B[B[B[B[B)V

    .line 18
    invoke-virtual {v2}, Lnts/ྈ;->ㆃ()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    const/16 v1, 0xe

    const/16 v2, 0xa

    if-ne p0, v1, :cond_4

    return v2

    :cond_4
    const/16 v1, 0xc

    if-ne p0, v1, :cond_5

    const/16 p0, 0x9

    return p0

    :cond_5
    if-ne p0, v2, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    const/4 v1, 0x7

    if-ne p0, v1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public static ㆃ(I)Ljava/security/spec/ECParameterSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    if-ne p0, v0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    if-ne p0, v1, :cond_3

    const/16 p0, 0xe

    goto :goto_1

    :cond_3
    const/16 v2, 0x9

    if-ne p0, v2, :cond_4

    const/16 p0, 0xc

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    if-ne p0, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, -0x1

    .line 1
    :goto_1
    sget-object v1, Lnts/ྈ;->ⴗ:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lnts/ྈ;

    if-eqz p0, :cond_7

    .line 4
    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lnts/ྈ;->ㆃ:[B

    invoke-direct {v3, v0, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lnts/ྈ;->ᾨ:[B

    invoke-direct {v3, v0, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lnts/ྈ;->ᇭ:[B

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 5
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lnts/ྈ;->ᰛ:[B

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lnts/ྈ;->Ͼ:[B

    invoke-direct {v5, v0, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lnts/ྈ;->ౠ:[B

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    iget p0, p0, Lnts/ྈ;->て:I

    invoke-direct {v2, v1, v3, v4, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v2

    .line 6
    :cond_7
    new-instance p0, Lnts/ẩ;

    const/16 v0, 0x29

    const/16 v1, 0x6b

    const/16 v2, 0x4e12

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Ljava/math/BigInteger;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ㆃ()I
    .locals 1

    .line 7
    iget-object v0, p0, Lnts/ⴻ;->ౠ:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lnts/ⴻ;->ᰛ:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
