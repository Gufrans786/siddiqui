.class public Lnts/ᥠ$ᾨ;
.super Lnts/ᥠ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᥠ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1fa8"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ᥠ;-><init>()V

    return-void
.end method


# virtual methods
.method public Ͼ()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᥠ;->ౠ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public ᾨ(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᥠ;->Ͼ:Ljava/math/BigInteger;

    return-void
.end method

.method public ㆃ()V
    .locals 3

    .line 2
    iget-object v0, p0, Lnts/ᥠ;->Ͼ:Ljava/math/BigInteger;

    iget-object v1, p0, Lnts/ᥠ;->ᇭ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ᥠ;->ㆃ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnts/ᥠ;->ᰛ:Ljava/math/BigInteger;

    return-void
.end method

.method public ㆃ(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᥠ;->ౠ:Ljava/math/BigInteger;

    return-void
.end method
