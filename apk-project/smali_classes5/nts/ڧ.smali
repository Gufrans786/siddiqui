.class public Lnts/ڧ;
.super Lnts/ᚲ;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/math/BigInteger;

.field public ౠ:Ljava/math/BigInteger;

.field public ዲ:Ljava/math/BigInteger;

.field public ᎊ:Ljava/math/BigInteger;

.field public ᙕ:Ljava/math/BigInteger;

.field public ᡲ:Ljava/math/BigInteger;

.field public ᰛ:Ljava/math/BigInteger;

.field public て:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᚲ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ڧ;->ᰛ:Ljava/math/BigInteger;

    .line 3
    iput-object v0, p0, Lnts/ڧ;->Ͼ:Ljava/math/BigInteger;

    .line 4
    iput-object v0, p0, Lnts/ڧ;->ౠ:Ljava/math/BigInteger;

    .line 5
    iput-object v0, p0, Lnts/ڧ;->ᙕ:Ljava/math/BigInteger;

    .line 6
    iput-object v0, p0, Lnts/ڧ;->て:Ljava/math/BigInteger;

    .line 7
    iput-object v0, p0, Lnts/ڧ;->ዲ:Ljava/math/BigInteger;

    .line 8
    iput-object v0, p0, Lnts/ڧ;->ᎊ:Ljava/math/BigInteger;

    .line 9
    iput-object v0, p0, Lnts/ڧ;->ᡲ:Ljava/math/BigInteger;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lnts/ᚲ;->ᇭ:I

    return-void
.end method


# virtual methods
.method public ㆃ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ڧ;->ᰛ:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
