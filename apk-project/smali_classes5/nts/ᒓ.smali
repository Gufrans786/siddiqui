.class public Lnts/ᒓ;
.super Lnts/ࠂ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ࠂ;-><init>()V

    const/16 v0, 0xe0

    .line 3
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 4
    invoke-virtual {p0}, Lnts/ᒓ;->ᰛ()V

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
    new-instance v0, Lnts/ᒓ;

    invoke-direct {v0}, Lnts/ᒓ;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lnts/ࠂ;->ㆃ(Lnts/ࠂ;)V

    return-object v0
.end method

.method public ᰛ()V
    .locals 3

    .line 1
    invoke-super {p0}, Lnts/ࠂ;->ᰛ()V

    .line 3
    iget-object v0, p0, Lnts/ࠂ;->Ͼ:[I

    const/4 v1, 0x0

    const v2, -0x3efa6128

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x367cd507

    .line 4
    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3070dd17

    .line 5
    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0x8f1a6c7

    .line 6
    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0x3ff4cf

    .line 7
    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x68581511

    .line 8
    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x64f98fa7

    .line 9
    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x4105b05c

    .line 10
    aput v2, v0, v1

    return-void
.end method
