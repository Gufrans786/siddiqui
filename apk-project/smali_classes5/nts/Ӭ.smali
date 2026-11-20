.class public Lnts/Ӭ;
.super Lnts/ᚬ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᚬ;-><init>()V

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 4
    invoke-virtual {p0}, Lnts/Ӭ;->ᰛ()V

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
    new-instance v0, Lnts/Ӭ;

    invoke-direct {v0}, Lnts/Ӭ;-><init>()V

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

    const-wide v2, 0x22312194fc2bf72cL

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, -0x60aaa05c37b39b3eL    # -9.72970814723832E-158

    .line 4
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x2393b86b6f53b151L    # 2.649582645705357E-137

    .line 5
    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, -0x69c788e6a6bf1543L

    .line 6
    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, -0x69d7c11d5771001dL    # -6.186523666642969E-202

    .line 7
    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, -0x41a1e1daac79c66eL    # -2.8049347040832504E-8

    .line 8
    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, 0x2b0199fc2c85b8aaL

    .line 9
    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0xeb72ddc81c52ca2L    # 8.898992968396314E-238

    .line 10
    aput-wide v2, v0, v1

    return-void
.end method
