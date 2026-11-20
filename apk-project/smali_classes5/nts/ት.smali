.class public Lnts/ት;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field public ᇭ:Ljava/lang/String;

.field public ᾨ:Ljava/security/spec/ECParameterSpec;

.field public ㆃ:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    .line 3
    iput-object p3, p0, Lnts/ት;->ᾨ:Ljava/security/spec/ECParameterSpec;

    .line 4
    iput-object p4, p0, Lnts/ት;->ᇭ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lnts/ት;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lnts/ት;

    .line 3
    iget-object v0, p0, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    .line 4
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p1, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    .line 5
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p1, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnts/ት;->ᇭ:Ljava/lang/String;

    iget-object p1, p1, Lnts/ት;->ᇭ:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnts/Ꭲ;->ᯋ:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 1
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ት;->ᇭ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/ܔ;->ㆃ(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lnts/ܔ;->Ͼ()I

    move-result v2

    invoke-static {v1, v2}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object v1

    iput-object v1, v0, Lnts/ܔ;->ᾨ:[B

    .line 4
    iget-object v1, p0, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lnts/ܔ;->Ͼ()I

    move-result v2

    invoke-static {v1, v2}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object v1

    iput-object v1, v0, Lnts/ܔ;->ᇭ:[B

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lnts/ܔ;->ㆃ(Z)[B

    move-result-object v0

    .line 7
    new-instance v1, Lnts/ᇌ;

    invoke-direct {v1}, Lnts/ᇌ;-><init>()V

    .line 8
    iget-object v2, p0, Lnts/ት;->ᇭ:Ljava/lang/String;

    iput-object v2, v1, Lnts/ᇌ;->ᡲ:Ljava/lang/String;

    .line 9
    iput-object v0, v1, Lnts/ᇌ;->Ὺ:[B

    .line 10
    invoke-virtual {v1}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ት;->ᾨ:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ት;->ㆃ:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
