.class public Lnts/ਘ;
.super Lnts/ᔟ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ਘ$ㆃ;,
        Lnts/ਘ$ᾨ;
    }
.end annotation


# instance fields
.field public ᛃ:Ljava/lang/String;

.field public ᵑ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ᔟ;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 3
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v5, 0x100

    const/16 v6, 0x8

    invoke-direct {v2, v3, v5, v6}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 4
    new-array v0, v0, [Lnts/ᵕ;

    new-instance v1, Lnts/ᵕ;

    const/16 v2, 0x60

    invoke-direct {v1, v2, v3, v6}, Lnts/ᵕ;-><init>(III)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lnts/ᔟ;->Ⲳ:[Lnts/ᵕ;

    .line 5
    iput v5, p0, Lnts/ኝ;->ㆃ:I

    .line 6
    iput v3, p0, Lnts/ኝ;->ᾨ:I

    .line 7
    iput v3, p0, Lnts/ኝ;->ᇭ:I

    .line 8
    iput-object p1, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lnts/ਘ;->ᵑ:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v2}, Lnts/ᔟ;->ᰛ(I)V

    return-void
.end method

.method public static Ͼ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0xc

    const/16 v1, 0x35

    const/16 v2, 0x106

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2d

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-le v2, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    return-void

    .line 13
    :cond_3
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x29

    const/16 v2, 0x6e

    const/16 v3, 0x112

    invoke-static {v3, v1, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ᇭ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lnts/ᒚ;->ㆃ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ᔟ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    .line 2
    sget-object v1, Lnts/ᒚ;->ᾨ:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    const/4 v1, 0x7

    const/16 v2, 0x69

    const/16 v3, 0xa

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->て(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnts/ᒚ;->ㆃ(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    sput-object v1, Lnts/ᒚ;->ᾨ:Ljava/security/SecureRandom;

    .line 3
    :cond_0
    new-array v0, v0, [B

    .line 4
    sget-object v1, Lnts/ᒚ;->ᾨ:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 5
    invoke-virtual {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ㆃ([B[B[B)Lnts/ⵋ;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-static {}, Lnts/ਘ;->Ͼ()V

    .line 3
    iget-object v0, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/16 v1, 0x70

    const/16 v2, 0xcc

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/16 v1, 0xd2

    const/16 v2, 0x3d

    const/4 v4, 0x7

    invoke-static {v1, v4, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/16 v1, 0xd9

    const/16 v2, 0x56

    invoke-static {v1, v4, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0xe3

    const/16 v2, 0x1a

    invoke-static {v1, v3, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x3

    const/16 v2, 0x67

    const/16 v3, 0xe0

    invoke-static {v3, v1, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_1
    move-object v4, v0

    .line 11
    new-instance v2, Lnts/ਘ$ᾨ;

    .line 12
    iget v7, p0, Lnts/ᔟ;->Ὺ:I

    .line 13
    iget v8, p0, Lnts/ኝ;->ᇭ:I

    iget-object v9, p0, Lnts/ਘ;->ᵑ:Ljava/lang/String;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v9}, Lnts/ਘ$ᾨ;-><init>(Lnts/ਘ;Ljavax/crypto/SecretKey;[B[BIILjava/lang/String;)V

    return-object v2
.end method

.method public ㆃ([B[B[B[B)Lnts/ⵋ;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 14
    invoke-static {}, Lnts/ਘ;->Ͼ()V

    .line 16
    iget-object v0, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0xe9

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/16 v1, 0xef

    const/16 v2, 0x58

    const/4 v4, 0x7

    invoke-static {v1, v4, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnts/ਘ;->ᛃ:Ljava/lang/String;

    const/16 v1, 0xf6

    const/16 v2, 0x1b

    invoke-static {v1, v4, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0x100

    const/16 v2, 0x1f

    invoke-static {v1, v3, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/16 v3, 0xfd

    invoke-static {v3, v1, v2}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_1
    move-object v4, v0

    .line 24
    new-instance v2, Lnts/ਘ$ㆃ;

    .line 25
    iget v8, p0, Lnts/ᔟ;->Ὺ:I

    .line 26
    iget v9, p0, Lnts/ኝ;->ᇭ:I

    iget-object v10, p0, Lnts/ਘ;->ᵑ:Ljava/lang/String;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v10}, Lnts/ਘ$ㆃ;-><init>(Lnts/ਘ;Ljavax/crypto/SecretKey;[B[B[BIILjava/lang/String;)V

    return-object v2
.end method
