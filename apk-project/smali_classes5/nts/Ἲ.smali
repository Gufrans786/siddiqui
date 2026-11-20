.class public Lnts/Ἲ;
.super Lnts/క;
.source "SourceFile"


# instance fields
.field public ᛃ:Lnts/ႎ;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnts/క;-><init>()V

    .line 2
    new-instance v0, Lnts/ႎ;

    invoke-direct {v0}, Lnts/ႎ;-><init>()V

    iput-object v0, p0, Lnts/Ἲ;->ᛃ:Lnts/ႎ;

    .line 4
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    sget-object v1, Lnts/ᦥ;->ᙕ:Ljava/lang/String;

    iput-object v1, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lnts/Ἲ;->ᛃ:Lnts/ႎ;

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 6
    iget-object v1, v0, Lnts/క;->Ὺ:Lnts/ᛩ;

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    .line 8
    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    sget-object v1, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    iput-object v1, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    return-void
.end method
