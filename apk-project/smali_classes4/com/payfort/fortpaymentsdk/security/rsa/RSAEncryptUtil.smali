.class public Lcom/payfort/fortpaymentsdk/security/rsa/RSAEncryptUtil;
.super Ljava/lang/Object;
.source "RSAEncryptUtil.java"


# static fields
.field protected static final ALGORITHM:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/payfort/fortpaymentsdk/security/rsa/RSAEncryptUtil;->init()V

    return-void
.end method

.method private static encodeBASE64([B)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/security/rsa/RSAEncryptUtil;->encrypt([BLjava/security/PublicKey;)[B

    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/payfort/fortpaymentsdk/security/rsa/RSAEncryptUtil;->encodeBASE64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([BLjava/security/PublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 51
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static init()V
    .locals 1

    .line 31
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method
