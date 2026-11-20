.class public Lnts/Я;
.super Lnts/ᚲ;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/math/BigInteger;

.field public ౠ:Ljava/math/BigInteger;

.field public ᙕ:Ljava/math/BigInteger;

.field public ᰛ:Ljava/math/BigInteger;

.field public て:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᚲ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/Я;->ᰛ:Ljava/math/BigInteger;

    .line 3
    iput-object v0, p0, Lnts/Я;->Ͼ:Ljava/math/BigInteger;

    .line 4
    iput-object v0, p0, Lnts/Я;->ౠ:Ljava/math/BigInteger;

    .line 5
    iput-object v0, p0, Lnts/Я;->ᙕ:Ljava/math/BigInteger;

    .line 6
    iput-object v0, p0, Lnts/Я;->て:Ljava/math/BigInteger;

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lnts/ᚲ;->ᇭ:I

    return-void
.end method


# virtual methods
.method public ㆃ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/Я;->Ͼ:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
