.class public Lnts/ᓌ;
.super Lnts/バ;
.source "SourceFile"


# static fields
.field public static final ᎊ:[B

.field public static final ᛃ:[B

.field public static final ᡲ:[B

.field public static final Ὺ:[B

.field public static final Ⲳ:[B


# instance fields
.field public Ͼ:Ljava/security/PublicKey;

.field public ౠ:Ljava/security/Signature;

.field public ᇭ:Ljava/lang/String;

.field public ዲ:I

.field public ᙕ:Ljavax/crypto/Cipher;

.field public ᰛ:Ljava/security/PrivateKey;

.field public て:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ᓌ;->ᎊ:[B

    const/16 v0, 0x13

    .line 7
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lnts/ᓌ;->ᡲ:[B

    .line 14
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lnts/ᓌ;->Ὺ:[B

    .line 21
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lnts/ᓌ;->Ⲳ:[B

    .line 28
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lnts/ᓌ;->ᛃ:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
        0x4t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x41t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x5t
        0x0t
        0x4t
        0x30t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x51t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x5t
        0x0t
        0x4t
        0x40t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x2dt
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lnts/バ;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnts/ᓌ;->ዲ:I

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v1, 0x3e

    const/16 v2, 0x4a

    const/4 v3, 0x3

    .line 6
    invoke-static {v2, v3, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x800

    const/4 v2, 0x0

    const/16 v4, 0x1000

    if-eqz p1, :cond_0

    .line 7
    new-array p1, v0, [Lnts/ᵕ;

    new-instance v0, Lnts/ᵕ;

    const/16 v3, 0x180

    const/16 v5, 0x8

    invoke-direct {v0, v3, v4, v5}, Lnts/ᵕ;-><init>(III)V

    aput-object v0, p1, v2

    iput-object p1, p0, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    .line 8
    iput v1, p0, Lnts/バ;->ㆃ:I

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v5, 0x4d

    const/16 v6, 0x14

    invoke-static {v5, v3, v6}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-array p1, v0, [Lnts/ᵕ;

    new-instance v0, Lnts/ᵕ;

    const/16 v3, 0x200

    const/16 v5, 0x40

    invoke-direct {v0, v3, v4, v5}, Lnts/ᵕ;-><init>(III)V

    aput-object v0, p1, v2

    iput-object p1, p0, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    .line 11
    iput v1, p0, Lnts/バ;->ㆃ:I

    :cond_1
    return-void
.end method

.method public static ᇭ([B)Ljava/math/BigInteger;
    .locals 2

    .line 1
    invoke-static {p0}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static ᾨ(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    const/16 v1, 0x53

    const/16 v2, 0x2e3

    .line 6
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    const/16 v0, 0x60

    const/16 v1, 0x2e7

    invoke-static {v1, p0, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x2ec

    const/16 v1, 0x31

    const/4 v2, 0x6

    .line 7
    invoke-static {v0, v2, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_1

    const/16 p0, 0x2f2

    const/16 v0, 0x36

    invoke-static {p0, v1, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x2f9

    const/16 v3, 0x71

    .line 8
    invoke-static {v0, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x2ff

    const/16 v0, 0x3e

    invoke-static {p0, v1, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x306

    const/16 v3, 0x26

    .line 9
    invoke-static {v0, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x30c

    const/16 v0, 0x75

    invoke-static {p0, v1, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x313

    const/16 v3, 0x48

    .line 10
    invoke-static {v0, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x319

    const/16 v0, 0x3b

    invoke-static {p0, v1, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static ᾨ([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 4
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ㆃ(Lnts/ܔ;Lnts/ܔ;Ljava/lang/String;ZZ[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 282
    :try_start_0
    iget v0, p0, Lnts/ܔ;->ᙕ:I

    invoke-static {v0}, Lnts/ܔ;->ᾨ(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    iget v0, p0, Lnts/ܔ;->ᙕ:I

    invoke-static {v0}, Lnts/ⴻ;->ㆃ(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 284
    new-instance v1, Lnts/ჴ;

    invoke-virtual {p0}, Lnts/ܔ;->Ⲳ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnts/ܔ;->ㆃ:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnts/ܔ;->Ͼ:[B

    :goto_0
    invoke-static {v0}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v0, p0, Lnts/ܔ;->ᾨ:[B

    invoke-static {v0}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v3

    iget-object p0, p0, Lnts/ܔ;->ᇭ:[B

    invoke-static {p0}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lnts/ჴ;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    .line 285
    new-instance p0, Lnts/ት;

    iget-object v0, p1, Lnts/ܔ;->ᾨ:[B

    invoke-static {v0}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p1, p1, Lnts/ܔ;->ᇭ:[B

    invoke-static {p1}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, v0, p1, v5, v6}, Lnts/ት;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x6

    const/4 v2, 0x4

    if-eqz p4, :cond_1

    .line 288
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x9

    const/16 v3, 0x55

    const/16 v4, 0x430

    invoke-static {v4, p4, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x439

    const/16 p4, 0x49

    invoke-static {p3, v2, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x43d

    const/16 p4, 0x79

    invoke-static {p3, v0, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p2

    const/16 p3, 0x33

    const/16 p4, 0x5d

    const/16 v0, 0x45e

    .line 289
    invoke-static {v0, p3, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 290
    new-array p4, p1, [Ljava/lang/Class;

    const-class v0, [B

    const/4 v2, 0x0

    aput-object v0, p4, v2

    invoke-virtual {p3, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 291
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/spec/AlgorithmParameterSpec;

    .line 292
    invoke-virtual {p2, v1, p3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    const/4 p2, 0x5

    const/16 p3, 0x4f

    const/16 p4, 0x443

    .line 294
    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/16 p2, 0x448

    const/16 p3, 0x30

    invoke-static {p2, v2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/16 p3, 0x44c

    const/16 p4, 0x3e

    invoke-static {p3, v0, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p2

    .line 295
    invoke-virtual {p2, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 297
    :goto_2
    invoke-virtual {p2, p0, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 298
    invoke-virtual {p2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 300
    new-instance p1, Lnts/ẩ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ᾨ(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lnts/ᓌ;->ㆃ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᾨ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v1, 0x320

    const/4 v2, 0x3

    const/16 v3, 0x68

    invoke-static {v1, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    if-eqz p2, :cond_3

    .line 14
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x33c

    const/16 v4, 0x11

    invoke-static {v1, v4, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xe

    const/16 v3, 0x50

    const/16 v4, 0x34d

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object v1, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x35b

    const/16 v3, 0x3b

    .line 16
    invoke-static {v1, v0, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    :cond_1
    const/16 p2, 0x8

    if-nez p4, :cond_2

    .line 19
    iget-object p3, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    iget-object p4, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {p3, v2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lnts/ᓌ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/16 v4, 0x361

    const/4 v5, 0x4

    invoke-static {v4, v5, p2}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-static {p5}, Lnts/ᓌ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v5, p5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance p5, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p5, p3}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v3, p4, v4, v5, p5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 23
    :goto_0
    iget-object p3, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    new-instance p4, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p5, 0x365

    invoke-static {p5, v2, p2}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p4}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_3
    :try_start_1
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    if-nez p2, :cond_4

    const/16 p2, 0x15

    const/16 p3, 0x4a

    const/16 p4, 0x368

    .line 32
    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x37d

    const/16 p4, 0x4c

    invoke-static {p3, v0, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    .line 34
    :cond_4
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    iget-object p3, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {p2, v2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p4, 0x383

    const/16 p5, 0x22

    invoke-static {p4, v2, p5}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, p3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 37
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_5
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x19

    const/16 p3, 0x20

    const/16 p4, 0x323

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ㆃ(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    .line 66
    :cond_0
    instance-of v1, p2, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_2

    .line 67
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    if-eqz p1, :cond_1

    .line 69
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iget v1, p0, Lnts/ᓌ;->て:I

    invoke-static {v1}, Lnts/ܔ;->ㆃ(I)I

    move-result v1

    invoke-static {p1, v1}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object p1

    iput-object p1, v0, Lnts/ܔ;->ㆃ:[B

    .line 71
    :cond_1
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iget v1, p0, Lnts/ᓌ;->て:I

    invoke-static {v1}, Lnts/ܔ;->ㆃ(I)I

    move-result v1

    invoke-static {p1, v1}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object p1

    iput-object p1, v0, Lnts/ܔ;->ᾨ:[B

    .line 72
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iget p2, p0, Lnts/ᓌ;->て:I

    invoke-static {p2}, Lnts/ܔ;->ㆃ(I)I

    move-result p2

    invoke-static {p1, p2}, Lnts/ܔ;->ㆃ([BI)[B

    move-result-object p1

    iput-object p1, v0, Lnts/ܔ;->ᇭ:[B

    .line 73
    iget p1, p0, Lnts/ᓌ;->て:I

    iput p1, v0, Lnts/ܔ;->ᙕ:I

    return-object v0

    .line 75
    :cond_2
    instance-of v1, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_4

    .line 76
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    if-eqz p1, :cond_3

    .line 78
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lnts/څ;->て:[B

    .line 80
    :cond_3
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lnts/څ;->ㆃ:[B

    .line 81
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lnts/څ;->ᾨ:[B

    return-object v0

    .line 83
    :cond_4
    instance-of v1, p2, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_5

    .line 84
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    .line 85
    check-cast p2, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lnts/Ӥ;->ㆃ:[B

    .line 87
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lnts/Ӥ;->ᾨ:[B

    .line 88
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lnts/Ӥ;->ᇭ:[B

    .line 89
    invoke-interface {p2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    iput-object p2, v0, Lnts/Ӥ;->ᰛ:[B

    if-eqz p1, :cond_5

    .line 91
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lnts/Ӥ;->Ͼ:[B

    :cond_5
    return-object v0
.end method

.method public ㆃ(Z)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v2, 0xc7

    const/4 v3, 0x4

    const/16 v4, 0x23

    invoke-static {v2, v3, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-nez v0, :cond_3

    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v7, 0xcb

    const/4 v8, 0x5

    invoke-static {v7, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v3, 0xe3

    const/16 v4, 0x7a

    const/4 v7, 0x3

    invoke-static {v3, v7, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget v3, p0, Lnts/バ;->ㆃ:I

    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v0, v3, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 13
    :try_start_0
    iget-object v3, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v4, 0xe6

    const/16 v7, 0x76

    invoke-static {v4, v6, v7}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    const/16 v4, 0xec

    .line 14
    invoke-static {v4, v5, v2}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf3

    const/16 v5, 0x2f

    invoke-static {v4, v6, v5}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v2, 0xf9

    const/16 v3, 0x3a

    invoke-static {v2, v7, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    :try_start_1
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v2, 0xfc

    const/16 v3, 0x39

    invoke-static {v2, v6, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 21
    iget v0, p0, Lnts/バ;->ㆃ:I

    const/16 v2, 0x102

    const/16 v4, 0x4c

    invoke-static {v2, v5, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x109

    const/16 v5, 0x12

    invoke-static {v4, v6, v5}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 23
    new-instance v0, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v3, v1

    goto/16 :goto_2

    .line 24
    :cond_3
    :goto_0
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    iget v7, p0, Lnts/ᓌ;->て:I

    const/16 v8, 0x9

    if-nez v7, :cond_4

    const/16 v2, 0x2a4

    const/16 v3, 0x48

    .line 25
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    const/16 v2, 0x2ad

    const/16 v3, 0x13

    .line 27
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v9, 0x2

    if-ne v7, v9, :cond_6

    const/16 v2, 0x2b6

    const/16 v3, 0x58

    .line 29
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    if-ne v7, v2, :cond_7

    const/16 v2, 0x2bf

    const/16 v3, 0x75

    .line 31
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    if-ne v7, v8, :cond_8

    const/16 v2, 0x2c8

    const/16 v3, 0x4d

    .line 33
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    if-ne v7, v3, :cond_9

    const/16 v2, 0x2d1

    const/16 v3, 0x73

    .line 35
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    if-ne v7, v5, :cond_a

    const/16 v2, 0x2da

    const/16 v3, 0x25

    .line 37
    invoke-static {v2, v8, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_a
    const-string v2, ""

    .line 38
    :goto_1
    invoke-direct {v0, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 40
    :try_start_2
    iget-object v2, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v3, 0xd0

    const/16 v7, 0x11

    invoke-static {v3, v6, v7}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    const/16 v2, 0xd6

    .line 41
    invoke-static {v2, v5, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xdd

    const/16 v5, 0x57

    invoke-static {v4, v6, v5}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :goto_2
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    .line 63
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    goto :goto_3

    :catch_2
    move-exception p1

    .line 64
    new-instance v0, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    if-eqz p1, :cond_c

    .line 65
    iget-object v1, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    :cond_c
    iget-object p1, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {p0, v1, p1}, Lnts/ᓌ;->ㆃ(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ㆃ(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_f

    .line 92
    :cond_0
    instance-of v0, p1, Lnts/څ;

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 93
    check-cast p1, Lnts/څ;

    const/16 v0, 0x10f

    const/16 v4, 0x55

    .line 94
    invoke-static {v0, v1, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x112

    const/16 v4, 0xd

    invoke-static {v1, v2, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 95
    iget-object v1, p1, Lnts/څ;->ㆃ:[B

    invoke-static {v1}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v2, p1, Lnts/څ;->ᾨ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p1, Lnts/څ;->ㆃ:[B

    invoke-static {v4}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 96
    :goto_0
    iget-object v2, p1, Lnts/څ;->て:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 97
    iget-object v2, p1, Lnts/څ;->ㆃ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lnts/څ;->ᇭ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lnts/څ;->ᰛ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_5

    .line 98
    iget-object v2, p1, Lnts/څ;->て:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v2, p1, Lnts/څ;->ᇭ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v2, p1, Lnts/څ;->ᰛ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v8

    .line 99
    iget-object v2, p1, Lnts/څ;->Ͼ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lnts/څ;->Ͼ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_1
    move-object v9, v2

    .line 100
    iget-object v2, p1, Lnts/څ;->ౠ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lnts/څ;->ౠ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    :cond_3
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_2
    move-object v10, v2

    .line 101
    iget-object v2, p1, Lnts/څ;->ᙕ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lnts/څ;->ᙕ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_3
    move-object v11, v2

    .line 102
    new-instance v3, Ljava/security/spec/RSAPrivateCrtKeySpec;

    iget-object v2, p1, Lnts/څ;->ᾨ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v4

    iget-object p1, p1, Lnts/څ;->ㆃ:[B

    invoke-static {p1}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v3 .. v11}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_4

    .line 104
    :cond_5
    new-instance v3, Ljava/security/spec/RSAPrivateKeySpec;

    iget-object v2, p1, Lnts/څ;->ᾨ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object p1, p1, Lnts/څ;->て:[B

    invoke-static {p1}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_6
    :goto_4
    move-object p1, v3

    move-object v3, v1

    goto/16 :goto_e

    .line 107
    :cond_7
    instance-of v0, p1, Lnts/ܔ;

    if-eqz v0, :cond_f

    .line 108
    check-cast p1, Lnts/ܔ;

    const/4 v0, 0x5

    const/16 v1, 0x3b

    const/16 v4, 0x118

    .line 109
    invoke-static {v4, v0, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11d

    const/16 v4, 0x47

    invoke-static {v1, v2, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 111
    iget-object v1, p1, Lnts/ܔ;->ᾨ:[B

    invoke-static {v1}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lnts/ܔ;->ᇭ:[B

    invoke-static {v1}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lnts/ܔ;->ᾨ:[B

    invoke-static {v1}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lnts/ܔ;->ᇭ:[B

    invoke-static {v2}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v1, v3

    move-object v2, v1

    .line 112
    :goto_5
    iget-object v4, p1, Lnts/ܔ;->ㆃ:[B

    invoke-static {v4}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p1, Lnts/ܔ;->ㆃ:[B

    invoke-static {v4}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_6

    :cond_9
    move-object v4, v3

    :goto_6
    if-eqz v1, :cond_a

    if-nez v2, :cond_b

    :cond_a
    if-eqz v4, :cond_e

    .line 114
    :cond_b
    iget v5, p1, Lnts/ܔ;->ᙕ:I

    invoke-static {v5}, Lnts/ⴻ;->ㆃ(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 115
    new-instance v6, Ljava/security/spec/ECPublicKeySpec;

    new-instance v7, Ljava/security/spec/ECPoint;

    invoke-direct {v7, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v6, v7, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_7

    :cond_c
    move-object v6, v3

    :goto_7
    if-eqz v4, :cond_d

    .line 116
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 117
    :cond_d
    iget p1, p1, Lnts/ܔ;->ᙕ:I

    iput p1, p0, Lnts/ᓌ;->て:I

    move-object p1, v3

    move-object v3, v6

    goto/16 :goto_e

    .line 118
    :cond_e
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x32

    const/16 v1, 0x60

    const/16 v2, 0x123

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_f
    instance-of v0, p1, Lnts/Ӥ;

    if-eqz v0, :cond_1a

    .line 124
    check-cast p1, Lnts/Ӥ;

    .line 126
    iget-object v0, p1, Lnts/Ӥ;->ㆃ:[B

    invoke-static {v0}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lnts/Ӥ;->ㆃ:[B

    invoke-static {v0}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_8

    :cond_10
    move-object v0, v3

    .line 127
    :goto_8
    iget-object v4, p1, Lnts/Ӥ;->ᾨ:[B

    invoke-static {v4}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p1, Lnts/Ӥ;->ᾨ:[B

    invoke-static {v4}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_9

    :cond_11
    move-object v4, v3

    .line 128
    :goto_9
    iget-object v5, p1, Lnts/Ӥ;->ᇭ:[B

    invoke-static {v5}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p1, Lnts/Ӥ;->ᇭ:[B

    invoke-static {v5}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_a

    :cond_12
    move-object v5, v3

    .line 129
    :goto_a
    iget-object v6, p1, Lnts/Ӥ;->ᰛ:[B

    invoke-static {v6}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p1, Lnts/Ӥ;->ᰛ:[B

    invoke-static {v6}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_b

    :cond_13
    move-object v6, v3

    .line 130
    :goto_b
    iget-object v7, p1, Lnts/Ӥ;->Ͼ:[B

    invoke-static {v7}, Lnts/ᓌ;->ᾨ([B)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object p1, p1, Lnts/Ӥ;->Ͼ:[B

    invoke-static {p1}, Lnts/ᓌ;->ᇭ([B)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_c

    :cond_14
    move-object p1, v3

    :goto_c
    const/16 v7, 0x72

    if-eqz v0, :cond_19

    if-eqz v4, :cond_19

    if-eqz v5, :cond_19

    if-nez v6, :cond_16

    if-eqz p1, :cond_15

    goto :goto_d

    .line 132
    :cond_15
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x184

    const/16 v1, 0x33

    invoke-static {v0, v1, v7}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_d
    if-nez v6, :cond_17

    .line 133
    invoke-virtual {v5, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_17
    const/16 v7, 0x1b7

    const/16 v8, 0x40

    .line 134
    invoke-static {v7, v1, v8}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1ba

    const/16 v8, 0x71

    invoke-static {v7, v2, v8}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v2, v6, v0, v4, v5}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    if-eqz p1, :cond_18

    .line 136
    new-instance v3, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v3, p1, v0, v4, v5}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_18
    move-object v0, v1

    move-object p1, v3

    move-object v3, v2

    goto :goto_e

    .line 137
    :cond_19
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x155

    const/16 v1, 0x2f

    invoke-static {v0, v1, v7}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    move-object p1, v3

    move-object v0, p1

    :goto_e
    if-eqz v3, :cond_1b

    .line 144
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    :cond_1b
    if-eqz p1, :cond_1c

    .line 145
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    :cond_1c
    :goto_f
    return-void
.end method

.method public ㆃ(Ljava/lang/String;ZZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-eqz p3, :cond_3

    .line 146
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v2, 0xe

    const/16 v3, 0x23

    const/16 v4, 0x1c0

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 147
    iget-object v2, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x1ce

    const/16 v3, 0x2e

    .line 148
    invoke-static {v2, v0, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    iput-object p3, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    :cond_1
    if-gez p4, :cond_2

    .line 152
    invoke-static {p1}, Lnts/ቩ;->ౠ(Ljava/lang/String;)I

    move-result p3

    div-int/lit8 p4, p3, 0x8

    :cond_2
    move v4, p4

    .line 154
    iget-object p3, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const/16 p4, 0x1d4

    const/16 v2, 0x28

    invoke-static {p4, v1, v2}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v3, p1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object p4, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    .line 155
    invoke-virtual {p4}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 156
    invoke-virtual {p3, v0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 159
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p3, 0x1d8

    const/16 p4, 0x68

    invoke-static {p3, v1, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object p3, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    const/16 p3, 0x1dc

    const/16 p4, 0x18

    .line 161
    invoke-static {p3, v0, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    iput-object p1, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 165
    iget-object p1, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    iget-object p2, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void

    .line 167
    :cond_6
    iget-object p1, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    iget-object p2, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 170
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ㆃ([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ㆃ([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/4 v1, 0x5

    const/16 v2, 0x6b

    const/16 v3, 0x1e7

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x1ec

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Lnts/ⶖ;

    invoke-direct {v0}, Lnts/ⶖ;-><init>()V

    .line 183
    invoke-static {p1, v0}, Lnts/ቩ;->ㆃ([BLnts/ⶖ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {p1}, Lnts/ݡ;->ᰛ([B)[B

    move-result-object p1

    .line 187
    :cond_1
    iget-object v0, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 189
    new-instance v0, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ㆃ([BLjava/lang/String;[BZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 190
    :try_start_0
    iget-object v0, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x233

    const/16 v3, 0x67

    invoke-static {v2, v1, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const/16 v3, 0xa

    const/16 v4, 0x23b

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    .line 193
    :cond_0
    iget-object v0, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    iget-object v2, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 194
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v2, 0x241

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_1

    .line 209
    iget-object p4, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {p0, p2}, Lnts/ᓌ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/security/Signature;->update([B)V

    goto :goto_0

    .line 210
    :cond_1
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x2b

    const/16 p3, 0xf

    const/16 p4, 0x244

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_2
    :goto_0
    iget-object p2, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/4 p4, 0x5

    const/16 v0, 0x35

    const/16 v1, 0x26f

    invoke-static {v1, p4, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 p4, 0x274

    const/16 v0, 0x52

    invoke-static {p4, v3, v0}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 215
    :cond_3
    new-instance p2, Lnts/ⶖ;

    invoke-direct {p2}, Lnts/ⶖ;-><init>()V

    .line 216
    invoke-static {p3, p2}, Lnts/ቩ;->ㆃ([BLnts/ⶖ;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 217
    invoke-static {p3}, Lnts/ݡ;->ᰛ([B)[B

    move-result-object p3

    .line 220
    :cond_4
    iget-object p2, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 221
    iget-object p1, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-static {p3}, Lnts/ቩ;->ᇭ([B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 223
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ㆃ()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 175
    iget-object v1, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/4 v2, 0x5

    const/16 v3, 0x61

    const/16 v4, 0x1e2

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lnts/ᓌ;->ዲ:I

    if-nez v1, :cond_0

    .line 176
    iget v1, p0, Lnts/ᓌ;->て:I

    invoke-static {v0, v1}, Lnts/ݡ;->ㆃ([BI)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ㆃ(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_6

    const/4 v0, 0x4

    const/16 v1, 0x37

    const/16 v2, 0x277

    .line 225
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x27b

    const/16 v1, 0x2f

    const/4 v2, 0x6

    .line 227
    invoke-static {v0, v2, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget-object p1, Lnts/ᓌ;->ᡲ:[B

    return-object p1

    :cond_2
    const/16 v0, 0x281

    const/16 v1, 0x2b

    .line 229
    invoke-static {v0, v2, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    sget-object p1, Lnts/ᓌ;->Ὺ:[B

    return-object p1

    :cond_3
    const/16 v0, 0x287

    const/16 v1, 0x79

    .line 231
    invoke-static {v0, v2, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    sget-object p1, Lnts/ᓌ;->Ⲳ:[B

    return-object p1

    :cond_4
    const/16 v0, 0x28d

    const/16 v1, 0x1e

    .line 233
    invoke-static {v0, v2, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 234
    sget-object p1, Lnts/ᓌ;->ᛃ:[B

    return-object p1

    .line 236
    :cond_5
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x11

    const/4 v1, 0x7

    const/16 v2, 0x293

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_6
    :goto_0
    sget-object p1, Lnts/ᓌ;->ᎊ:[B

    return-object p1
.end method

.method public ㆃ(Lnts/ܔ;I[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    .line 278
    iget-object v0, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    iget-object v1, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {p0, v0, v1}, Lnts/ᓌ;->ㆃ(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnts/ܔ;

    .line 279
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lnts/ᓌ;->ㆃ(Lnts/ܔ;Lnts/ܔ;Ljava/lang/String;ZZ[B)[B

    move-result-object p1

    .line 280
    invoke-static {p2, p3, p1, p4, p5}, Lnts/ݡ;->ㆃ(I[B[B[B[B)[B

    move-result-object p1

    return-object p1

    .line 281
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x1e

    const/4 p3, 0x3

    const/16 p4, 0x412

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ(Lnts/ܔ;Ljava/lang/String;[B[B[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 266
    invoke-static {p3, p4, p5, p6, p7}, Lnts/ݡ;->ㆃ([B[B[B[B[B)[B

    move-result-object p6

    .line 267
    iget-object p3, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    iget-object p4, p0, Lnts/ᓌ;->Ͼ:Ljava/security/PublicKey;

    invoke-virtual {p0, p3, p4}, Lnts/ᓌ;->ㆃ(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnts/ܔ;

    const/4 p4, 0x0

    const/4 p5, 0x1

    move-object v0, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v0

    .line 268
    invoke-static/range {p1 .. p6}, Lnts/ᓌ;->ㆃ(Lnts/ܔ;Lnts/ܔ;Ljava/lang/String;ZZ[B)[B

    move-result-object p1

    .line 269
    invoke-static {p3}, Lnts/ቩ;->ౠ(Ljava/lang/String;)I

    move-result p2

    div-int/lit8 p2, p2, 0x8

    .line 270
    array-length p3, p1

    if-gt p2, p3, :cond_1

    .line 272
    array-length p3, p1

    if-ne p2, p3, :cond_0

    return-object p1

    .line 275
    :cond_0
    new-array p3, p2, [B

    const/4 p4, 0x0

    .line 276
    invoke-static {p1, p4, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    .line 277
    :cond_1
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x26

    const/4 p3, 0x3

    const/16 p4, 0x3ec

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v1, 0x3f

    const/16 v2, 0x386

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-eqz p2, :cond_3

    .line 241
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v4, 0x24

    const/16 v5, 0x3a2

    invoke-static {v5, v2, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v2, 0xe

    const/16 v4, 0x8

    const/16 v5, 0x3b3

    invoke-static {v5, v2, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 242
    iget-object v2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x3c1

    const/16 v4, 0x1e

    .line 243
    invoke-static {v2, v0, v4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    :cond_1
    if-nez p4, :cond_2

    .line 246
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    iget-object p3, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    invoke-virtual {p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lnts/ᓌ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/16 v4, 0x3c7

    const/16 v5, 0x3b

    invoke-static {v4, v1, v5}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-static {p5}, Lnts/ᓌ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v5, p5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance p5, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p5, p3}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v2, p4, v4, v5, p5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {p2, v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 250
    :goto_0
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    const/16 p3, 0x3cb

    const/16 p4, 0x31

    invoke-static {p3, v3, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 252
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    .line 258
    :cond_3
    :try_start_1
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    if-nez p2, :cond_4

    const/16 p2, 0x15

    const/16 p3, 0x76

    const/16 p4, 0x3ce

    .line 259
    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x3e3

    const/16 p4, 0x39

    invoke-static {p3, v0, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    .line 261
    :cond_4
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    iget-object p3, p0, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    invoke-virtual {p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 262
    iget-object p2, p0, Lnts/ᓌ;->ᙕ:Ljavax/crypto/Cipher;

    const/16 p3, 0x3e9

    const/16 p4, 0xc

    invoke-static {p3, v3, p4}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 264
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2

    .line 265
    :cond_5
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x19

    const/16 p3, 0x50

    const/16 p4, 0x389

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method
