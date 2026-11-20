.class public Lnts/₩;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Z

.field public ᇭ:Z

.field public ᰛ:J

.field public ᾨ:I

.field public ㆃ:Lnts/ᵗ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnts/₩;->ᇭ:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lnts/₩;->ᰛ:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnts/₩;->Ͼ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnts/₩;->ᇭ:Z

    return v0
.end method

.method public ᰛ()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lnts/₩;->ᰛ:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnts/₩;->ᰛ:J

    return-wide v0
.end method

.method public ᾨ()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    .line 2
    iget-object v0, v0, Lnts/ᵗ;->ᛃ:[B

    return-object v0
.end method

.method public ㆃ()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnts/₩;->ᇭ:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnts/₩;->ᰛ:J

    return-void
.end method

.method public ㆃ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/₩;->Ͼ:Z

    invoke-static {p1, v0}, Lnts/ᵗ;->ㆃ(IZ)Lnts/ᵗ;

    move-result-object p1

    iput-object p1, p0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    return-void
.end method

.method public ㆃ([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnts/₩;->ㆃ:Lnts/ᵗ;

    .line 5
    iget-object v1, v0, Lnts/ᵗ;->ዲ:Lnts/ᙱ;

    invoke-static {v1, p1}, Lnts/ቩ;->ㆃ(Lnts/ᙱ;[B)V

    .line 6
    iput-object p1, v0, Lnts/ᵗ;->ᎊ:[B

    return-void
.end method
