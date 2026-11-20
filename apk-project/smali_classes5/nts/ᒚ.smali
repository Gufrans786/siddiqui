.class public Lnts/ᒚ;
.super Lnts/Ⴧ;
.source "SourceFile"


# static fields
.field public static ᇭ:Ljava/security/SecureRandom;

.field public static ᾨ:Ljava/security/SecureRandom;


# instance fields
.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/Ⴧ;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ᒚ;->ㆃ:Ljava/lang/String;

    return-void
.end method

.method public static ㆃ(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0x14

    const/16 v2, 0x2c

    .line 12
    :try_start_0
    invoke-static {v2, v0, v1}, Lnts/ᨾ;->て(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Lnts/ᛎ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ㆃ(I)[B
    .locals 3

    .line 1
    sget-object v0, Lnts/ᒚ;->ᇭ:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->て(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ᒚ;->ㆃ(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lnts/ᒚ;->ᇭ:Ljava/security/SecureRandom;

    .line 2
    :cond_0
    new-array p0, p0, [B

    .line 3
    sget-object v0, Lnts/ᒚ;->ᇭ:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 4

    .line 4
    iget-object v0, p0, Lnts/ᒚ;->ㆃ:Ljava/lang/String;

    const/16 v1, 0x6d

    const/16 v2, 0x11

    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Lnts/ᨾ;->て(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lnts/ᒚ;->ᇭ:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    const/16 v1, 0x18

    invoke-static {v0, v3, v1}, Lnts/ᨾ;->て(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ᒚ;->ㆃ(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lnts/ᒚ;->ᇭ:Ljava/security/SecureRandom;

    .line 6
    :cond_0
    sget-object v0, Lnts/ᒚ;->ᇭ:Ljava/security/SecureRandom;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lnts/ᒚ;->ᾨ:Ljava/security/SecureRandom;

    if-nez v0, :cond_2

    const/4 v0, 0x7

    const/16 v1, 0x16

    const/16 v2, 0x25

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->て(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ᒚ;->ㆃ(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lnts/ᒚ;->ᾨ:Ljava/security/SecureRandom;

    .line 9
    :cond_2
    sget-object v0, Lnts/ᒚ;->ᾨ:Ljava/security/SecureRandom;

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method
