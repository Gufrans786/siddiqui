.class public Lnts/ᔘ;
.super Lnts/ᚬ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᚬ;-><init>()V

    const/16 v0, 0xe0

    .line 3
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 4
    invoke-virtual {p0}, Lnts/ᔘ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᔘ;

    invoke-direct {v0}, Lnts/ᔘ;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lnts/ᚬ;->ㆃ(Lnts/ᚬ;)V

    return-object v0
.end method

.method public ᰛ()V
    .locals 4

    .line 1
    invoke-super {p0}, Lnts/ᚬ;->ᰛ()V

    .line 3
    iget-object v0, p0, Lnts/ᚬ;->Ͼ:[J

    const/4 v1, 0x0

    const-wide v2, -0x73c2c837e6abb25eL

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x73e1996689dcd4d6L    # 1.5750699854893267E250

    .line 4
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x1dfab7ae32ff9c82L    # 2.899734420540132E-164

    .line 5
    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x679dd514582f9fcfL    # 1.3291824942294729E191

    .line 6
    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0xf6d2b697bd44da8L

    .line 7
    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, 0x77e36f7304c48942L

    .line 8
    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, 0x3f9d85a86a1d36c8L    # 0.02883017680806324

    .line 9
    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x1112e6ad91d692a1L

    .line 10
    aput-wide v2, v0, v1

    return-void
.end method
