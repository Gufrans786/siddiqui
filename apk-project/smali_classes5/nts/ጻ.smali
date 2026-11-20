.class public Lnts/ጻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ᚇ:Z = false

.field public static Ἂ:Lnts/څ;

.field public static ⶦ:Ljava/lang/Object;


# instance fields
.field public Ϯ:[B

.field public Ͼ:[B

.field public И:Z

.field public ౠ:[B

.field public ཊ:I

.field public ཞ:[B

.field public ᇭ:S

.field public ዲ:Lnts/Ꭲ;

.field public ᎊ:I

.field public ᙕ:[B

.field public ᚹ:[B

.field public ᛃ:Lnts/ᥠ;

.field public យ:I

.field public ᡲ:Lnts/Ꭲ;

.field public ᯋ:I

.field public ᯚ:[B

.field public ᰛ:S

.field public ᵑ:Lnts/₩;

.field public Ṳ:[B

.field public ᾨ:Z

.field public Ὺ:Lnts/څ;

.field public ⱋ:[B

.field public ⱪ:[B

.field public Ⲳ:Z

.field public ⴗ:Lnts/₩;

.field public せ:[B

.field public て:[B

.field public ㆃ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnts/ጻ;->ⶦ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnts/ጻ;->ㆃ:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnts/ጻ;->ᾨ:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lnts/ጻ;->ዲ:Lnts/Ꭲ;

    .line 11
    iput v0, p0, Lnts/ጻ;->ᎊ:I

    .line 14
    iput-boolean v0, p0, Lnts/ጻ;->Ⲳ:Z

    .line 16
    new-instance v0, Lnts/₩;

    invoke-direct {v0}, Lnts/₩;-><init>()V

    iput-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    .line 17
    new-instance v0, Lnts/₩;

    invoke-direct {v0}, Lnts/₩;-><init>()V

    iput-object v0, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    return-void
.end method

.method public static ᇭ([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 8
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 9
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    .line 10
    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    return-object p0
.end method

.method public static ዲ()Lnts/څ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lnts/ጻ;->ᚇ:Z

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lnts/ጻ;->ⶦ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lnts/ጻ;->ᚇ:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    const/16 v2, 0x7b

    const/16 v3, 0x2b

    .line 4
    invoke-static {v3, v1, v2}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lnts/ቩ;->ㆃ([Lnts/ᵕ;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iput v3, v1, Lnts/バ;->ㆃ:I

    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lnts/ቩ;->ㆃ(Lnts/バ;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnts/څ;

    sput-object v1, Lnts/ጻ;->Ἂ:Lnts/څ;

    .line 10
    sput-boolean v2, Lnts/ጻ;->ᚇ:Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v1, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    invoke-static {v1}, Lnts/ቩ;->ㆃ([Lnts/ᵕ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    throw v0

    .line 12
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 14
    :cond_2
    :goto_1
    sget-object v0, Lnts/ጻ;->Ἂ:Lnts/څ;

    return-object v0
.end method

.method public static ᾨ(I)Z
    .locals 1

    const/16 v0, 0x304

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public Ͼ()Z
    .locals 2

    .line 1
    iget-short v0, p0, Lnts/ጻ;->ᇭ:S

    const/16 v1, 0x303

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ౠ()Z
    .locals 1

    .line 1
    iget-short v0, p0, Lnts/ጻ;->ᇭ:S

    invoke-static {v0}, Lnts/ጻ;->ᾨ(I)Z

    move-result v0

    return v0
.end method

.method public final ᇭ(Lnts/Ꭲ;)Lnts/څ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lnts/Ꭲ;->Ὺ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 12
    iget-boolean v0, p0, Lnts/ጻ;->Ⲳ:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object p1, p0, Lnts/ጻ;->Ὺ:Lnts/څ;

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lnts/Ꭲ;->ᚹ()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 16
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    if-eqz p1, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᾨ:[B

    .line 19
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, v0, Lnts/څ;->ㆃ:[B

    :cond_1
    return-object v0

    .line 24
    :cond_2
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x1b

    const/16 v1, 0x33

    const/16 v2, 0xf8

    invoke-static {v2, v0, v1}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x116

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᇭ([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    invoke-virtual {v0, p2}, Lnts/₩;->ㆃ([B)V

    .line 4
    iget-object p2, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    invoke-virtual {p2, p1}, Lnts/₩;->ㆃ([B)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    invoke-virtual {v0, p1}, Lnts/₩;->ㆃ([B)V

    .line 7
    iget-object p1, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    invoke-virtual {p1, p2}, Lnts/₩;->ㆃ([B)V

    return-void
.end method

.method public ᇭ()Z
    .locals 2

    .line 1
    iget-short v0, p0, Lnts/ጻ;->ᇭ:S

    const/16 v1, 0x300

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᙕ()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    invoke-virtual {v0}, Lnts/ᵗ;->ⴗ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lnts/ጻ;->ᡲ:Lnts/Ꭲ;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lnts/ጻ;->ᾨ(Lnts/Ꭲ;)Lnts/څ;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/math/BigInteger;

    iget-object v0, v0, Lnts/څ;->ᾨ:[B

    invoke-direct {v3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x200

    if-le v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    :catch_0
    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public ᰛ([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    .line 4
    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    invoke-virtual {v0, p1, p2}, Lnts/ᵗ;->ㆃ([B[B)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    .line 6
    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    invoke-virtual {v0, p1, p2}, Lnts/ᵗ;->ㆃ([B[B)V

    return-void
.end method

.method public ᰛ()Z
    .locals 2

    .line 1
    iget-short v0, p0, Lnts/ጻ;->ᇭ:S

    const/16 v1, 0x301

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᾨ(Lnts/Ꭲ;)Lnts/څ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;,
            Lnts/ẩ;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 54
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    .line 55
    invoke-virtual {p1}, Lnts/Ꭲ;->ᵑ()Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 56
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᾨ:[B

    .line 57
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->て:[B

    .line 59
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_0

    .line 60
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 61
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ㆃ:[B

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᇭ:[B

    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᰛ:[B

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->Ͼ:[B

    .line 65
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ౠ:[B

    .line 66
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, v0, Lnts/څ;->ᙕ:[B

    :cond_0
    return-object v0

    .line 67
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x2c

    const/16 v1, 0x2b

    const/16 v2, 0xcc

    invoke-static {v2, v0, v1}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x116

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᾨ([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    .line 4
    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    invoke-virtual {v0, p1, p2}, Lnts/ᵗ;->ㆃ([B[B)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    .line 6
    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    invoke-virtual {v0, p1, p2}, Lnts/ᵗ;->ㆃ([B[B)V

    return-void
.end method

.method public ᾨ()Z
    .locals 2

    .line 1
    iget-short v0, p0, Lnts/ጻ;->ᇭ:S

    const/16 v1, 0x302

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᾨ([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lnts/ጻ;->ᡲ:Lnts/Ꭲ;

    .line 8
    invoke-virtual {v0}, Lnts/Ꭲ;->Ὺ()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    const/16 v1, 0xa2

    const/16 v6, 0x3c

    .line 9
    invoke-static {v1, v3, v6}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget v3, p0, Lnts/ጻ;->ᎊ:I

    if-ne v3, v5, :cond_0

    const/16 v1, 0xa9

    const/16 v3, 0x45

    invoke-static {v1, v4, v3}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_0
    iget v3, p0, Lnts/ጻ;->ᎊ:I

    if-ne v3, v2, :cond_1

    const/16 v1, 0xaf

    const/16 v2, 0x72

    invoke-static {v1, v4, v2}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_1
    invoke-virtual {p0, v0}, Lnts/ጻ;->ᾨ(Lnts/Ꭲ;)Lnts/څ;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lnts/ጻ;->ౠ()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    iget v1, p0, Lnts/ጻ;->ཊ:I

    invoke-static {v1}, Lnts/ଈ;->ᇭ(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_2
    iget v2, p0, Lnts/ጻ;->ཊ:I

    invoke-virtual {p0, v2}, Lnts/ጻ;->ㆃ(I)Z

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[BLjava/lang/String;Z)[B

    move-result-object p1

    return-object p1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lnts/Ꭲ;->Ὺ()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    const/16 v1, 0xb5

    const/16 v6, 0x41

    .line 22
    invoke-static {v1, v3, v6}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    .line 23
    iget v3, p0, Lnts/ጻ;->ᎊ:I

    if-ne v3, v5, :cond_4

    const/16 v1, 0xbc

    const/16 v3, 0x32

    invoke-static {v1, v4, v3}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_4
    iget v3, p0, Lnts/ጻ;->ᎊ:I

    if-ne v3, v2, :cond_5

    const/16 v1, 0xc2

    const/16 v2, 0x53

    invoke-static {v1, v4, v2}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_5
    invoke-virtual {p0}, Lnts/ጻ;->ౠ()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    iget v1, p0, Lnts/ጻ;->ཊ:I

    invoke-static {v1}, Lnts/ଈ;->ᇭ(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object v4, v1

    .line 28
    invoke-virtual {p0, v0}, Lnts/ጻ;->ㆃ(Lnts/Ꭲ;)Lnts/ܔ;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 29
    invoke-static/range {v2 .. v9}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[BLjava/lang/String;ZLjava/lang/String;IZZ)[B

    move-result-object p1

    return-object p1

    :cond_7
    move-object v3, p1

    .line 30
    invoke-virtual {p0}, Lnts/ጻ;->ౠ()Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lnts/Ꭲ;->Ὺ()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 31
    invoke-virtual {p0, v0}, Lnts/ጻ;->ㆃ(Lnts/Ꭲ;)Lnts/ܔ;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v3, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 32
    :cond_8
    invoke-virtual {v0}, Lnts/Ꭲ;->ᵑ()Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .line 34
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    if-eqz p1, :cond_9

    .line 38
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v2

    iput-object v2, v0, Lnts/Ӥ;->Ͼ:[B

    .line 39
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_a

    .line 43
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v2

    iput-object v2, v0, Lnts/Ӥ;->ㆃ:[B

    .line 44
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v2

    iput-object v2, v0, Lnts/Ӥ;->ᇭ:[B

    .line 45
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, v0, Lnts/Ӥ;->ᾨ:[B

    :cond_a
    const/16 p1, 0xc8

    const/16 v2, 0x2d

    .line 46
    invoke-static {p1, v1, v2}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v3, p1, v1}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[BLjava/lang/String;Z)[B

    move-result-object p1

    const/16 v0, 0x14

    .line 48
    new-array v2, v0, [B

    .line 49
    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v4, v3, [B

    .line 51
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-static {p1, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-static {v2, v4}, Lnts/ቩ;->ㆃ([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public て()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    iget-short v1, p0, Lnts/ጻ;->ᇭ:S

    invoke-virtual {v0, v1}, Lnts/ᵗ;->ㆃ(I)I

    move-result v0

    iput v0, p0, Lnts/ጻ;->ᎊ:I

    return-void
.end method

.method public ㆃ()I
    .locals 3

    .line 3
    iget-object v0, p0, Lnts/ጻ;->ᛃ:Lnts/ᥠ;

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lnts/ᥠ;->ᙕ:I

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lnts/ጻ;->ᙕ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x200

    return v0

    .line 8
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnts/ጻ;->ዲ:Lnts/Ꭲ;

    .line 9
    invoke-virtual {p0, v0}, Lnts/ጻ;->ᇭ(Lnts/Ꭲ;)Lnts/څ;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnts/ጻ;->ᡲ:Lnts/Ꭲ;

    .line 10
    invoke-virtual {p0, v0}, Lnts/ጻ;->ᾨ(Lnts/Ꭲ;)Lnts/څ;

    move-result-object v0

    .line 11
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v0, v0, Lnts/څ;->ᾨ:[B

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ㆃ(Lnts/Ꭲ;)Lnts/ܔ;
    .locals 2

    .line 166
    invoke-virtual {p1}, Lnts/Ꭲ;->Ὺ()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 167
    invoke-static {p1}, Lnts/ㇾ;->ᇭ(Lnts/Ꭲ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/ܔ;

    return-object p1

    .line 168
    :cond_0
    invoke-static {p1}, Lnts/ㇾ;->ᾨ(Lnts/Ꭲ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/ܔ;

    return-object p1
.end method

.method public ㆃ(Lnts/څ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ጻ;->Ὺ:Lnts/څ;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lnts/ጻ;->Ⲳ:Z

    return-void
.end method

.method public ㆃ(Lnts/ጻ;)V
    .locals 1

    .line 74
    iget-object v0, p1, Lnts/ጻ;->ᙕ:[B

    iput-object v0, p0, Lnts/ጻ;->ᙕ:[B

    .line 75
    iget-short v0, p1, Lnts/ጻ;->ᰛ:S

    iput-short v0, p0, Lnts/ጻ;->ᰛ:S

    .line 76
    iget-boolean v0, p1, Lnts/ጻ;->ᾨ:Z

    iput-boolean v0, p0, Lnts/ጻ;->ᾨ:Z

    .line 77
    iget-object v0, p1, Lnts/ጻ;->ౠ:[B

    iput-object v0, p0, Lnts/ጻ;->ౠ:[B

    .line 78
    iget-object v0, p1, Lnts/ጻ;->Ὺ:Lnts/څ;

    iput-object v0, p0, Lnts/ጻ;->Ὺ:Lnts/څ;

    .line 79
    iget-boolean v0, p1, Lnts/ጻ;->Ⲳ:Z

    iput-boolean v0, p0, Lnts/ጻ;->Ⲳ:Z

    .line 80
    iget-object v0, p1, Lnts/ጻ;->ᡲ:Lnts/Ꭲ;

    iput-object v0, p0, Lnts/ጻ;->ᡲ:Lnts/Ꭲ;

    .line 81
    iget-object v0, p1, Lnts/ጻ;->ዲ:Lnts/Ꭲ;

    iput-object v0, p0, Lnts/ጻ;->ዲ:Lnts/Ꭲ;

    .line 82
    iget-short v0, p1, Lnts/ጻ;->ᇭ:S

    iput-short v0, p0, Lnts/ጻ;->ᇭ:S

    .line 83
    iget-object v0, p1, Lnts/ጻ;->て:[B

    iput-object v0, p0, Lnts/ጻ;->て:[B

    .line 84
    iget-object v0, p1, Lnts/ጻ;->Ͼ:[B

    iput-object v0, p0, Lnts/ጻ;->Ͼ:[B

    .line 85
    iget p1, p1, Lnts/ጻ;->ᎊ:I

    iput p1, p0, Lnts/ጻ;->ᎊ:I

    return-void
.end method

.method public ㆃ([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 12
    iget-boolean v0, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    .line 14
    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    .line 15
    iput-object p2, v0, Lnts/ᵗ;->ᛃ:[B

    .line 16
    iget-object p2, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    .line 17
    iget-object p2, p2, Lnts/₩;->ㆃ:Lnts/ᵗ;

    .line 18
    iput-object p1, p2, Lnts/ᵗ;->ᛃ:[B

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lnts/ጻ;->ᵑ:Lnts/₩;

    .line 20
    iget-object v0, v0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    .line 21
    iput-object p1, v0, Lnts/ᵗ;->ᛃ:[B

    .line 22
    iget-object p1, p0, Lnts/ጻ;->ⴗ:Lnts/₩;

    .line 23
    iget-object p1, p1, Lnts/₩;->ㆃ:Lnts/ᵗ;

    .line 24
    iput-object p2, p1, Lnts/ᵗ;->ᛃ:[B

    return-void
.end method

.method public final ㆃ(I)Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lnts/ጻ;->ౠ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x804

    if-eq p1, v0, :cond_0

    const/16 v0, 0x805

    if-eq p1, v0, :cond_0

    const/16 v0, 0x806

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ㆃ(Lnts/Ꭲ;[B[BLjava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lnts/Ꭲ;->Ὺ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lnts/ጻ;->ᇭ(Lnts/Ꭲ;)Lnts/څ;

    move-result-object v2

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v7, p4

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .line 142
    invoke-static/range {v2 .. v9}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;ZLjava/lang/String;IZ)Z

    move-result p1

    return p1

    :cond_0
    move-object v2, p2

    move-object v1, p3

    move-object v3, p4

    .line 143
    invoke-virtual {p1}, Lnts/Ꭲ;->Ὺ()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 144
    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ(Lnts/Ꭲ;)Lnts/ܔ;

    move-result-object v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v5, v3

    .line 145
    invoke-static/range {v0 .. v7}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;ZLjava/lang/String;IZ)Z

    move-result p1

    return p1

    .line 146
    :cond_1
    invoke-virtual {p1}, Lnts/Ꭲ;->Ὺ()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 147
    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ(Lnts/Ꭲ;)Lnts/ܔ;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, v1, v2, p2}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;)Z

    move-result p1

    return p1

    .line 148
    :cond_2
    invoke-virtual {p1}, Lnts/Ꭲ;->Ὺ()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 149
    invoke-virtual {p1}, Lnts/Ꭲ;->ᚹ()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz p1, :cond_4

    .line 153
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p2

    iput-object p2, v0, Lnts/Ӥ;->ᰛ:[B

    .line 157
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 161
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p2

    iput-object p2, v0, Lnts/Ӥ;->ㆃ:[B

    .line 162
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p2

    iput-object p2, v0, Lnts/Ӥ;->ᇭ:[B

    .line 163
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, v0, Lnts/Ӥ;->ᾨ:[B

    :cond_3
    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v5, v3

    .line 164
    invoke-static/range {v0 .. v7}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;ZLjava/lang/String;IZ)Z

    move-result p1

    return p1

    .line 165
    :cond_4
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x1b

    const/16 p3, 0x61

    const/16 p4, 0x13f

    invoke-static {p4, p2, p3}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x116

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final ㆃ(Ljava/math/BigInteger;)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lnts/ጻ;->ᇭ([B)[B

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(Z)[B
    .locals 0

    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p0}, Lnts/ጻ;->ᇭ()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-boolean p1, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz p1, :cond_0

    sget-object p1, Lnts/ଈ;->ᡲ:[B

    return-object p1

    :cond_0
    sget-object p1, Lnts/ଈ;->Ὺ:[B

    return-object p1

    .line 67
    :cond_1
    iget-boolean p1, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz p1, :cond_2

    sget-object p1, Lnts/ଈ;->Ͼ:[B

    return-object p1

    :cond_2
    sget-object p1, Lnts/ଈ;->ౠ:[B

    return-object p1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lnts/ጻ;->ᇭ()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 71
    iget-boolean p1, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz p1, :cond_4

    sget-object p1, Lnts/ଈ;->Ὺ:[B

    return-object p1

    :cond_4
    sget-object p1, Lnts/ଈ;->ᡲ:[B

    return-object p1

    .line 73
    :cond_5
    iget-boolean p1, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz p1, :cond_6

    sget-object p1, Lnts/ଈ;->ౠ:[B

    return-object p1

    :cond_6
    sget-object p1, Lnts/ଈ;->Ͼ:[B

    return-object p1
.end method

.method public ㆃ([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 25
    iget v0, p0, Lnts/ጻ;->ᎊ:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 27
    invoke-static {v0, v2, v1}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x18

    const/16 v1, 0x33

    const/16 v2, 0x13

    invoke-static {v2, v0, v1}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x114

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x7c

    .line 34
    invoke-static {v2, v2, v0}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x7

    const/16 v1, 0x3d

    const/16 v2, 0xc

    .line 36
    invoke-static {v2, v0, v1}, Lnts/ӗ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->Ͼ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    return-object p1
.end method

.method public ㆃ([BZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lnts/ጻ;->ㆃ([B)[B

    move-result-object p1

    .line 38
    new-instance v0, Lnts/ሠ;

    invoke-direct {v0}, Lnts/ሠ;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    const/16 v3, 0x20

    .line 40
    invoke-virtual {v0, v3}, Lnts/ሠ;->ㆃ(B)Lnts/ሠ;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-boolean v2, p0, Lnts/ጻ;->ㆃ:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    .line 44
    sget-object v2, Lnts/ଈ;->ᨍ:[B

    invoke-virtual {v0, v2}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    goto :goto_1

    .line 46
    :cond_1
    sget-object v2, Lnts/ଈ;->Ё:[B

    invoke-virtual {v0, v2}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 50
    sget-object v2, Lnts/ଈ;->Ё:[B

    invoke-virtual {v0, v2}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    goto :goto_1

    .line 52
    :cond_3
    sget-object v2, Lnts/ଈ;->ᨍ:[B

    invoke-virtual {v0, v2}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 55
    :goto_1
    invoke-virtual {v0, v1}, Lnts/ሠ;->ㆃ(B)Lnts/ሠ;

    .line 56
    invoke-virtual {v0, p1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    if-eqz p2, :cond_4

    .line 57
    iget p1, p0, Lnts/ጻ;->ཊ:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lnts/ጻ;->ᯋ:I

    :goto_2
    const/16 p2, 0x807

    if-eq p1, p2, :cond_6

    const/16 p2, 0x808

    if-ne p1, p2, :cond_5

    goto :goto_3

    .line 61
    :cond_5
    invoke-static {p1}, Lnts/ଈ;->ᇭ(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p1

    invoke-virtual {v0}, Lnts/ሠ;->ㆃ()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    return-object p1

    .line 63
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lnts/ሠ;->ㆃ()[B

    move-result-object p1

    return-object p1
.end method

.method public ㆃ([B[BI)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lnts/ጻ;->ᇭ()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 91
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-nez v0, :cond_2

    const/16 v0, 0x39

    const/4 v3, 0x3

    .line 92
    invoke-static {v0, v3, v1}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->Ͼ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v0

    const/4 v3, 0x4

    const/16 v4, 0x7d

    const/16 v5, 0x3c

    .line 93
    invoke-static {v5, v3, v4}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnts/ቩ;->Ͼ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v3

    .line 96
    new-array v4, p3, [B

    const/16 v5, 0x64

    .line 97
    new-array v5, v5, [B

    const/16 v6, 0x41

    move v7, v2

    :goto_0
    if-lez p3, :cond_1

    move v8, v2

    :goto_1
    if-ge v8, v1, :cond_0

    .line 103
    aput-byte v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v3}, Lnts/ዃ;->ᰛ()V

    .line 107
    invoke-virtual {v3, v5, v2, v1}, Lnts/ዃ;->ᇭ([BII)V

    .line 108
    invoke-static {v5, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    array-length v8, p1

    .line 110
    invoke-virtual {v3, p1, v2, v8}, Lnts/ዃ;->ᇭ([BII)V

    .line 111
    invoke-static {p1, v2, p1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    array-length v8, p2

    invoke-virtual {v3, p2, v2, v8}, Lnts/ዃ;->ㆃ([BII)[B

    .line 113
    iget-object v8, v3, Lnts/ዃ;->ᾨ:[B

    .line 114
    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 115
    array-length v9, p1

    .line 116
    invoke-virtual {v0, p1, v2, v9}, Lnts/ዃ;->ᇭ([BII)V

    .line 117
    invoke-static {p1, v2, p1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v9, v8

    invoke-virtual {v0, v8, v2, v9}, Lnts/ዃ;->ㆃ([BII)[B

    .line 119
    iget-object v8, v0, Lnts/ዃ;->ᾨ:[B

    .line 120
    array-length v9, v8

    invoke-static {v8, v2, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    array-length v9, v8

    sub-int/2addr p3, v9

    .line 122
    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    goto :goto_0

    :cond_1
    return-object v4

    .line 123
    :cond_2
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x14

    const/16 p3, 0x25

    invoke-static {p2, p3, p3}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_3
    iget v0, p0, Lnts/ጻ;->ᎊ:I

    const/16 v3, 0xa

    if-ne v0, v1, :cond_5

    .line 125
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_4

    .line 126
    invoke-static {p1, p2, p3, v1}, Lnts/പ;->ㆃ([B[BII)[B

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v0, 0x6f

    .line 129
    invoke-static {v2, v3, v0}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lnts/ᙱ;->ᇭ([B)V

    .line 131
    invoke-static {v0, p2, p3}, Lnts/പ;->ㆃ(Lnts/ᙱ;[BI)[B

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 132
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_6

    .line 133
    invoke-static {p1, p2, p3, v1}, Lnts/പ;->ㆃ([B[BII)[B

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v0, 0x50

    .line 136
    invoke-static {v3, v3, v0}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lnts/ᙱ;->ᇭ([B)V

    .line 138
    invoke-static {v0, p2, p3}, Lnts/പ;->ㆃ(Lnts/ᙱ;[BI)[B

    move-result-object p1

    return-object p1

    .line 139
    :cond_7
    invoke-static {p1, p2, p3}, Lnts/പ;->ㆃ([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public ㆃ([B[B[BI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    array-length v0, p2

    if-lez v0, :cond_0

    .line 87
    invoke-static {p2, p3}, Lnts/ଈ;->ㆃ([B[B)[B

    move-result-object p3

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lnts/ጻ;->ㆃ([B[BI)[B

    move-result-object p1

    return-object p1
.end method
