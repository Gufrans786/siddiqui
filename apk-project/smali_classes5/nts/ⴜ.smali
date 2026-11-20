.class public Lnts/ⴜ;
.super Lnts/ࠆ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ࠆ;-><init>()V

    const/16 v0, 0xe0

    .line 3
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    const/16 v0, 0x90

    .line 4
    iput v0, p0, Lnts/ࠆ;->て:I

    .line 5
    invoke-virtual {p0}, Lnts/ࠆ;->ᰛ()V

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
    new-instance v0, Lnts/ⴜ;

    invoke-direct {v0}, Lnts/ⴜ;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lnts/ࠆ;->ㆃ(Lnts/ࠆ;)V

    return-object v0
.end method
