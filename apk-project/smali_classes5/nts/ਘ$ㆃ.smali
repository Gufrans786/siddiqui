.class public Lnts/ਘ$ㆃ;
.super Lnts/ⴉ;
.source "SourceFile"

# interfaces
.implements Lnts/ⵋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ਘ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ᚹ:Lnts/ਘ;

.field public ᛃ:[B

.field public ᵑ:Ljavax/crypto/SecretKey;

.field public Ὺ:Ljavax/crypto/Cipher;

.field public Ⲳ:[B

.field public ⴗ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnts/ਘ;Ljavax/crypto/SecretKey;[B[B[BIILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p3

    move v6, p7

    .line 2
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/4 p3, 0x0

    .line 3
    iput-object p3, v0, Lnts/ਘ$ㆃ;->Ⲳ:[B

    .line 4
    iput-object p3, v0, Lnts/ਘ$ㆃ;->ᛃ:[B

    .line 5
    iput-object p3, v0, Lnts/ਘ$ㆃ;->ᵑ:Ljavax/crypto/SecretKey;

    const/4 p7, 0x1

    .line 10
    iput-boolean p7, v0, Lnts/ⵄ;->ㆃ:Z

    .line 12
    iput-boolean p7, v0, Lnts/ⵄ;->て:Z

    .line 13
    iput-object p2, v0, Lnts/ਘ$ㆃ;->ᵑ:Ljavax/crypto/SecretKey;

    .line 14
    iput-object v1, v0, Lnts/ਘ$ㆃ;->Ⲳ:[B

    .line 15
    iput-object p4, v0, Lnts/ਘ$ㆃ;->ᛃ:[B

    .line 16
    iput-object p5, p1, Lnts/ᔟ;->ᎊ:[B

    .line 17
    iput-object p8, v0, Lnts/ਘ$ㆃ;->ⴗ:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p6}, Lnts/ᔟ;->ᰛ(I)V

    .line 19
    iput-object p3, v0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

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

    const/16 v2, 0x76

    const/16 v3, 0x219

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
    iget-object v0, p0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    .line 5
    iget-object v0, v0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x236

    .line 6
    invoke-static {v3, v1, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x22

    const/16 v2, 0x11

    if-eqz v0, :cond_0

    const/16 v0, 0x23d

    const/16 v3, 0x6b

    .line 7
    invoke-static {v0, v2, v3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24e

    const/16 v3, 0x52

    .line 9
    invoke-static {v2, v1, v3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x270

    const/16 v3, 0x3d

    .line 11
    invoke-static {v0, v2, v3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x281

    const/16 v3, 0x34

    .line 12
    invoke-static {v2, v1, v3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_0
    iget-object v2, p0, Lnts/ਘ$ㆃ;->ⴗ:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 15
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v0, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    .line 19
    :goto_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 20
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v5, [B

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    .line 22
    iget v2, v2, Lnts/ᔟ;->Ὺ:I

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v6, p0, Lnts/ਘ$ㆃ;->Ⲳ:[B

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget-object v2, p0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    iget-object v6, p0, Lnts/ਘ$ㆃ;->ᵑ:Ljavax/crypto/SecretKey;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v2, v1, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v0, 0x9

    const/16 v1, 0x2c

    const/16 v2, 0x2a3

    .line 25
    invoke-static {v2, v0, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v5, v1, v4

    const-class v2, Ljavax/crypto/Cipher;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lnts/ਘ$ㆃ;->ᛃ:[B

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    iget-object v3, p0, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

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

    .line 29
    invoke-virtual/range {p0 .. p5}, Lnts/ਘ$ㆃ;->Ὺ([BII[BI)I

    move-result p1

    return p1
.end method

.method public ㆃ([B)V
    .locals 1

    .line 31
    iget-object v0, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    iput-object p1, v0, Lnts/ᔟ;->ᎊ:[B

    return-void
.end method

.method public ㆃ([B[B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnts/ਘ$ㆃ;->Ⲳ:[B

    .line 2
    iput-object p2, p0, Lnts/ਘ$ㆃ;->ᛃ:[B

    .line 3
    iget-object p1, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    iput-object p3, p1, Lnts/ᔟ;->ᎊ:[B

    .line 4
    invoke-virtual {p1, p4}, Lnts/ᔟ;->ᰛ(I)V

    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    iget-object v0, v0, Lnts/ᔟ;->ᎊ:[B

    return-object v0
.end method

.method public ㆃ([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    iget-object v1, v0, Lnts/ᔟ;->ᎊ:[B

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 9
    iget v0, v0, Lnts/ᔟ;->Ὺ:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x16

    const/16 p3, 0x4c

    const/16 v0, 0x2e6

    invoke-static {v0, p2, p3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x26

    const/4 v1, 0x2

    const/16 v2, 0x2fc

    .line 12
    invoke-static {v2, v0, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    .line 14
    iget v2, v1, Lnts/ᔟ;->Ὺ:I

    .line 15
    div-int/lit8 v2, v2, 0x8

    iget-object v1, v1, Lnts/ᔟ;->ᎊ:[B

    array-length v1, v1

    if-ne v2, v1, :cond_3

    .line 19
    new-array v7, p3, [B

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 20
    invoke-virtual/range {v3 .. v8}, Lnts/ਘ$ㆃ;->Ὺ([BII[BI)I

    move-result p1

    .line 21
    iget-object p2, v3, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    iget-object p3, v3, Lnts/ਘ$ㆃ;->ᚹ:Lnts/ਘ;

    iget-object p3, p3, Lnts/ᔟ;->ᎊ:[B

    invoke-virtual {p2, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    const/4 p3, 0x0

    .line 22
    iput-object p3, v3, Lnts/ਘ$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    if-nez p1, :cond_2

    return-object p2

    .line 24
    :cond_2
    array-length p3, p2

    add-int/2addr p3, p1

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 25
    invoke-static {v7, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    array-length v1, p2

    invoke-static {p2, v0, p3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_3
    move-object v3, p0

    .line 27
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x7d1

    invoke-direct {p1, p2, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    move-object v3, p0

    .line 28
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x3a

    const/16 p3, 0x20

    const/16 v0, 0x2ac

    invoke-static {v0, p2, p3}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
