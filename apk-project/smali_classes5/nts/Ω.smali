.class public Lnts/Ω;
.super Lnts/ኝ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/Ω$ㆃ;,
        Lnts/Ω$ᾨ;
    }
.end annotation


# instance fields
.field public ᎊ:Ljavax/crypto/KeyGenerator;

.field public ᡲ:Ljava/lang/String;

.field public Ὺ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnts/ኝ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/Ω;->ᎊ:Ljavax/crypto/KeyGenerator;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lnts/Ω;->Ὺ:Ljava/lang/String;

    const/4 p2, 0x3

    const/16 v0, 0x22

    const/16 v1, 0xbc

    .line 9
    invoke-static {v1, p2, v0}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x40

    const/4 v1, 0x1

    const/16 v2, 0x80

    if-eqz p1, :cond_0

    .line 10
    new-array p1, v1, [Lnts/ᵕ;

    new-instance v3, Lnts/ᵕ;

    const/16 v4, 0x100

    invoke-direct {v3, v2, v4, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v3, p1, p2

    iput-object p1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 11
    new-array p1, v1, [Lnts/ᵕ;

    new-instance v0, Lnts/ᵕ;

    invoke-direct {v0, v2, v2, p2}, Lnts/ᵕ;-><init>(III)V

    aput-object v0, p1, p2

    iput-object p1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 13
    iput v2, p0, Lnts/ኝ;->ᾨ:I

    .line 14
    iput v2, p0, Lnts/ኝ;->ᇭ:I

    .line 15
    iput v4, p0, Lnts/ኝ;->ㆃ:I

    .line 16
    iput v1, p0, Lnts/ኝ;->て:I

    .line 17
    iput v1, p0, Lnts/ኝ;->ዲ:I

    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    const/4 v3, 0x4

    const/16 v4, 0xa

    const/16 v5, 0xbf

    invoke-static {v5, v3, v4}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    const/16 v3, 0x9

    const/16 v4, 0x70

    const/16 v5, 0xc3

    invoke-static {v5, v3, v4}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x6

    const/16 v3, 0x6d

    const/16 v4, 0xcc

    .line 19
    invoke-static {v4, p1, v3}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    .line 21
    new-array p1, v1, [Lnts/ᵕ;

    new-instance v1, Lnts/ᵕ;

    const/16 v3, 0xc0

    invoke-direct {v1, v2, v3, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v1, p1, p2

    iput-object p1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 22
    iput v2, p0, Lnts/ኝ;->ㆃ:I

    .line 23
    iput v0, p0, Lnts/ኝ;->ᾨ:I

    .line 24
    iput v0, p0, Lnts/ኝ;->ᇭ:I

    return-void
.end method

.method public static ᰛ(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const/16 p0, 0xe1

    const/16 v1, 0x30

    .line 15
    invoke-static {p0, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p0, 0xde

    const/16 v1, 0x47

    .line 16
    invoke-static {p0, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0xdb

    const/16 v1, 0x2e

    .line 17
    invoke-static {p0, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 p0, 0xd8

    const/16 v1, 0x27

    .line 18
    invoke-static {p0, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p0, 0xd5

    const/16 v1, 0x5f

    .line 19
    invoke-static {p0, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/16 p0, 0xd2

    const/16 v1, 0xa

    .line 20
    invoke-static {p0, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ㆃ(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    const/16 v1, 0xc

    if-eq p0, v0, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 p0, 0x105

    const/16 p1, 0x11

    .line 2
    invoke-static {p0, p1, p1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x116

    const/16 p1, 0x45

    .line 4
    invoke-static {p0, v1, p1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x15

    const/16 v0, 0x7f

    const/16 v1, 0x122

    invoke-static {v1, p1, v0}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez p1, :cond_4

    const/16 p0, 0xed

    const/16 p1, 0x52

    .line 7
    invoke-static {p0, v1, p1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0xf9

    const/16 p1, 0x3b

    .line 9
    invoke-static {p0, v1, p1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 p0, 0x9

    const/16 p1, 0x61

    const/16 v0, 0xe4

    .line 10
    invoke-static {v0, p0, p1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ᇭ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ᾨ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ᒚ;->ㆃ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/Ω;->ᎊ:Ljavax/crypto/KeyGenerator;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lnts/Ω;->Ὺ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lnts/Ω;->ᎊ:Ljavax/crypto/KeyGenerator;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lnts/Ω;->ᎊ:Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    iget-object v0, p0, Lnts/Ω;->ᎊ:Ljavax/crypto/KeyGenerator;

    iget v1, p0, Lnts/ኝ;->ㆃ:I

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_1
    :goto_1
    iget-object v0, p0, Lnts/Ω;->ᎊ:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ω$ᾨ;

    iget v4, p0, Lnts/ኝ;->て:I

    iget v5, p0, Lnts/ኝ;->ዲ:I

    iget v6, p0, Lnts/ኝ;->ᇭ:I

    iget-object v7, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    iget-object v8, p0, Lnts/Ω;->Ὺ:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lnts/Ω$ᾨ;-><init>(Lnts/Ω;[B[BIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ω$ㆃ;

    iget v4, p0, Lnts/ኝ;->て:I

    iget v5, p0, Lnts/ኝ;->ዲ:I

    iget v6, p0, Lnts/ኝ;->ᇭ:I

    iget-object v7, p0, Lnts/Ω;->ᡲ:Ljava/lang/String;

    iget-object v8, p0, Lnts/Ω;->Ὺ:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lnts/Ω$ㆃ;-><init>(Lnts/Ω;[B[BIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
