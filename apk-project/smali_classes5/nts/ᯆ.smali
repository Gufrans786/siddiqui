.class public Lnts/ᯆ;
.super Lnts/Ⴧ;
.source "SourceFile"


# instance fields
.field public ㆃ:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ⴧ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᯆ;->ㆃ:Ljava/security/SecureRandom;

    .line 5
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnts/ᯆ;->ㆃ:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᯆ;->ㆃ:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method
