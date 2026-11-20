.class public Lnts/ਘ$ᾨ;
.super Lnts/ḗ;
.source "SourceFile"

# interfaces
.implements Lnts/ⵋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ਘ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1fa8"
.end annotation


# instance fields
.field public final synthetic ᚹ:Lnts/ਘ;

.field public ᛃ:[B

.field public ᵑ:Ljavax/crypto/SecretKey;

.field public Ὺ:Ljavax/crypto/Cipher;

.field public Ⲳ:[B

.field public ⴗ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnts/ਘ;Ljavax/crypto/SecretKey;[B[BIILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p3

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/4 p3, 0x0

    .line 3
    iput-object p3, v0, Lnts/ਘ$ᾨ;->Ⲳ:[B

    .line 4
    iput-object p3, v0, Lnts/ਘ$ᾨ;->ᛃ:[B

    .line 5
    iput-object p3, v0, Lnts/ਘ$ᾨ;->ᵑ:Ljavax/crypto/SecretKey;

    const/4 p6, 0x1

    .line 10
    iput-boolean p6, v0, Lnts/ⵄ;->ㆃ:Z

    .line 12
    iput-boolean p6, v0, Lnts/ⵄ;->て:Z

    .line 13
    iput-object p2, v0, Lnts/ਘ$ᾨ;->ᵑ:Ljavax/crypto/SecretKey;

    .line 14
    iput-object v1, v0, Lnts/ਘ$ᾨ;->Ⲳ:[B

    .line 15
    iput-object p4, v0, Lnts/ਘ$ᾨ;->ᛃ:[B

    .line 16
    iput-object p7, v0, Lnts/ਘ$ᾨ;->ⴗ:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p5}, Lnts/ᔟ;->ᰛ(I)V

    .line 18
    iput-object p3, v0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x1d

    const/16 v2, 0x11

    const/16 v3, 0x13b

    invoke-static {v3, v1, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Ὺ([BII[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    .line 5
    iget-object v0, v0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/4 v1, 0x7

    const/16 v2, 0x4d

    const/16 v3, 0x158

    .line 6
    invoke-static {v3, v1, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x58

    const/16 v2, 0x22

    const/16 v3, 0x11

    if-eqz v0, :cond_0

    const/16 v0, 0x15f

    const/16 v4, 0x3f

    .line 7
    invoke-static {v0, v3, v4}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x170

    .line 9
    invoke-static {v3, v2, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x192

    const/16 v4, 0x69

    .line 11
    invoke-static {v0, v3, v4}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1a3

    .line 12
    invoke-static {v3, v2, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_0
    iget-object v2, p0, Lnts/ਘ$ᾨ;->ⴗ:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 15
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v0, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    .line 19
    :goto_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, [B

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    .line 22
    iget v1, v1, Lnts/ᔟ;->Ὺ:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lnts/ਘ$ᾨ;->Ⲳ:[B

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    iget-object v5, p0, Lnts/ਘ$ᾨ;->ᵑ:Ljavax/crypto/SecretKey;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v0, 0x9

    const/16 v1, 0x4f

    const/16 v5, 0x1c5

    .line 25
    invoke-static {v5, v0, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    aput-object v4, v1, v3

    const-class v2, Ljavax/crypto/Cipher;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lnts/ਘ$ᾨ;->ᛃ:[B

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    iget-object v3, p0, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    return p1
.end method

.method public ㆃ([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual/range {p0 .. p5}, Lnts/ਘ$ᾨ;->Ὺ([BII[BI)I

    move-result p1

    return p1
.end method

.method public ㆃ([B)V
    .locals 0

    return-void
.end method

.method public ㆃ([B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnts/ਘ$ᾨ;->Ⲳ:[B

    .line 2
    iput-object p2, p0, Lnts/ਘ$ᾨ;->ᛃ:[B

    .line 3
    iget-object p1, p0, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    invoke-virtual {p1, p3}, Lnts/ᔟ;->ᰛ(I)V

    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    iget-object v0, v0, Lnts/ᔟ;->ᎊ:[B

    return-object v0
.end method

.method public ㆃ([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int v0, p2, p3

    .line 4
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 7
    new-array v6, p3, [B

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 8
    invoke-virtual/range {v2 .. v7}, Lnts/ਘ$ᾨ;->Ὺ([BII[BI)I

    move-result p1

    .line 9
    iget-object p2, v2, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    iget-object p3, v2, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p3

    iput-object p3, p2, Lnts/ᔟ;->ᎊ:[B

    const/4 p2, 0x0

    .line 10
    iput-object p2, v2, Lnts/ਘ$ᾨ;->Ὺ:Ljavax/crypto/Cipher;

    .line 11
    iget-object p2, v2, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    iget-object p3, p2, Lnts/ᔟ;->ᎊ:[B

    array-length v0, p3

    .line 12
    iget p2, p2, Lnts/ᔟ;->Ὺ:I

    .line 13
    div-int/lit8 p2, p2, 0x8

    sub-int/2addr v0, p2

    sub-int p2, v5, p1

    if-ne v0, p2, :cond_1

    if-ge p1, v5, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-static {p3, v0, v6, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object p1, v2, Lnts/ਘ$ᾨ;->ᚹ:Lnts/ਘ;

    iget-object p3, p1, Lnts/ᔟ;->ᎊ:[B

    array-length v0, p3

    sub-int/2addr v0, p2

    invoke-static {p3, p2, v0}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p2

    iput-object p2, p1, Lnts/ᔟ;->ᎊ:[B

    :cond_0
    return-object v6

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x11

    const/4 p3, 0x5

    const/16 v0, 0x208

    invoke-static {v0, p2, p3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v2, p0

    .line 18
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x3a

    const/16 p3, 0x70

    const/16 v0, 0x1ce

    invoke-static {v0, p2, p3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
