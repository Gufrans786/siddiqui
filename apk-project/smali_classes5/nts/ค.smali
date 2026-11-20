.class public Lnts/ค;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:[B

.field public ౠ:Z

.field public ᰛ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lnts/ค;->ᰛ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ค;->Ͼ:[B

    .line 4
    iput-boolean v0, p0, Lnts/ค;->ౠ:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 12
    iput-object p1, p0, Lnts/ค;->ᰛ:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lnts/ค;->Ͼ:[B

    .line 14
    iput-boolean p3, p0, Lnts/ค;->ౠ:Z

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
    invoke-super {p0}, Lnts/Ί;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
