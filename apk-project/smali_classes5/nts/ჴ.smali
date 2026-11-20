.class public Lnts/ჴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ᇭ:Ljava/math/BigInteger;

.field public ᰛ:Ljava/security/spec/ECParameterSpec;

.field public ᾨ:Ljava/math/BigInteger;

.field public ㆃ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lnts/ჴ;->ㆃ:Ljava/math/BigInteger;

    .line 10
    iput-object p2, p0, Lnts/ჴ;->ᾨ:Ljava/math/BigInteger;

    .line 11
    iput-object p3, p0, Lnts/ჴ;->ᇭ:Ljava/math/BigInteger;

    .line 12
    iput-object p4, p0, Lnts/ჴ;->ᰛ:Ljava/security/spec/ECParameterSpec;

    .line 13
    iput-object p5, p0, Lnts/ჴ;->Ͼ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnts/Ꭲ;->ᯋ:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    .line 1
    new-instance v0, Lnts/Ꮆ;

    invoke-direct {v0}, Lnts/Ꮆ;-><init>()V

    .line 2
    new-instance v1, Lnts/ܔ;

    invoke-direct {v1}, Lnts/ܔ;-><init>()V

    iput-object v1, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    .line 3
    iget-object v1, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    iget-object v2, p0, Lnts/ჴ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnts/ܔ;->ㆃ(Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    iget-object v2, p0, Lnts/ჴ;->ㆃ:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v3, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    invoke-virtual {v3}, Lnts/ܔ;->Ͼ()I

    move-result v3

    invoke-static {v2, v3}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object v2

    iput-object v2, v1, Lnts/ܔ;->ㆃ:[B

    .line 5
    iget-object v1, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    iget-object v2, p0, Lnts/ჴ;->ᾨ:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v3, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    invoke-virtual {v3}, Lnts/ܔ;->Ͼ()I

    move-result v3

    invoke-static {v2, v3}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object v2

    iput-object v2, v1, Lnts/ܔ;->ᾨ:[B

    .line 6
    iget-object v1, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    iget-object v2, p0, Lnts/ჴ;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v3, v0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    invoke-virtual {v3}, Lnts/ܔ;->Ͼ()I

    move-result v3

    invoke-static {v2, v3}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object v2

    iput-object v2, v1, Lnts/ܔ;->ᇭ:[B

    .line 7
    invoke-virtual {v0}, Lnts/ᛩ;->ᰛ()[B

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
    iget-object v0, p0, Lnts/ჴ;->ᰛ:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ჴ;->ㆃ:Ljava/math/BigInteger;

    return-object v0
.end method
