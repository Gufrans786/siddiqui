.class public Lnts/ત;
.super Lnts/バ;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/math/BigInteger;

.field public ౠ:Ljava/math/BigInteger;

.field public ᇭ:Ljava/math/BigInteger;

.field public ᰛ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnts/バ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    .line 3
    iput-object v0, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    .line 4
    iput-object v0, p0, Lnts/ત;->Ͼ:Ljava/math/BigInteger;

    .line 5
    iput-object v0, p0, Lnts/ત;->ౠ:Ljava/math/BigInteger;

    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Lnts/ᵕ;

    new-instance v1, Lnts/ᵕ;

    const/16 v2, 0x1000

    const/16 v3, 0x40

    const/16 v4, 0x200

    invoke-direct {v1, v4, v2, v3}, Lnts/ᵕ;-><init>(III)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lnts/バ;->ᾨ:[Lnts/ᵕ;

    const/16 v0, 0x400

    .line 20
    iput v0, p0, Lnts/バ;->ㆃ:I

    return-void
.end method
