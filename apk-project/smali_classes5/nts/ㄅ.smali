.class public Lnts/ㄅ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ᰛ:Lnts/ᗋ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ㄅ;->ᰛ:Lnts/ᗋ;

    .line 3
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ㄅ;->Ͼ:Lnts/ᗋ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 5
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ㄅ;->ᰛ:Lnts/ᗋ;

    .line 6
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ㄅ;->Ͼ:Lnts/ᗋ;

    .line 12
    invoke-virtual {v0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lnts/ㄅ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {p1, p2}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    return-void
.end method
