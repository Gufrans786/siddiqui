.class public Lnts/Ω$ㆃ;
.super Lnts/ⴉ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/Ω;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public ᛃ:Ljava/lang/String;

.field public ᵑ:Ljava/lang/String;

.field public Ὺ:Ljavax/crypto/Cipher;

.field public Ⲳ:Ljava/lang/String;

.field public ⴗ:[B


# direct methods
.method public constructor <init>(Lnts/Ω;[B[BIIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    .line 10
    iput-object p7, v0, Lnts/Ω$ㆃ;->Ⲳ:Ljava/lang/String;

    .line 11
    const-string p1, "/"

    invoke-static {p7, p1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v4}, Lnts/Ω;->ᰛ(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, v0, Lnts/Ω$ㆃ;->ᵑ:Ljava/lang/String;

    invoke-static {v5, p3}, Lnts/Ω;->ㆃ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnts/Ω$ㆃ;->ᛃ:Ljava/lang/String;

    .line 12
    iput-object p2, v0, Lnts/Ω$ㆃ;->ⴗ:[B

    .line 13
    iput-object p8, v0, Lnts/Ω$ㆃ;->ᵑ:Ljava/lang/String;

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
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x1d

    const/16 v2, 0x79

    const/16 v3, 0x154

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᰛ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnts/Ω$ㆃ;->ᵑ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnts/Ω$ㆃ;->ᛃ:Ljava/lang/String;

    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lnts/Ω$ㆃ;->ᛃ:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    .line 4
    :goto_0
    iget-object v0, p0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lnts/Ω$ㆃ;->ⴗ:[B

    iget-object v3, p0, Lnts/Ω$ㆃ;->Ⲳ:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget v2, p0, Lnts/ⵄ;->ౠ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lnts/ⵄ;->Ͼ:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public ㆃ([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ω$ㆃ;->ᰛ()V

    .line 2
    iget-object v0, p0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 4
    :cond_0
    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length p1, p1

    return p1
.end method

.method public ㆃ([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lnts/Ω$ㆃ;->ᰛ()V

    .line 7
    iget-object v0, p0, Lnts/Ω$ㆃ;->Ὺ:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1
.end method
