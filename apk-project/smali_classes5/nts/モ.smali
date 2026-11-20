.class public Lnts/モ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ౠ:Lnts/ᗋ;

.field public ᰛ:Lnts/ܔ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    iput-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    .line 3
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/モ;->Ͼ:Lnts/ᗋ;

    .line 4
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/モ;->ౠ:Lnts/ᗋ;

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

.method public Ͼ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->ౠ()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ౠ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->ⴗ()V

    .line 2
    iget-object v0, p0, Lnts/モ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 3
    iget-object v0, p0, Lnts/モ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lnts/モ;->ㆃ(I)V

    return-void
.end method

.method public ᇭ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    iget v0, v0, Lnts/ܔ;->ᙕ:I

    return v0
.end method

.method public ᰛ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->ᙕ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->ౠ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᾨ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/モ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->Ͼ()V

    .line 2
    iget-object v0, p0, Lnts/モ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->Ͼ()V

    return-void
.end method

.method public ㆃ(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    iput p1, v0, Lnts/ܔ;->ᙕ:I

    return-void
.end method

.method public ㆃ(Lnts/ܔ;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    invoke-virtual {v0, p1, p2}, Lnts/ܔ;->ㆃ(Lnts/ܔ;Z)V

    return-void
.end method

.method public ㆃ(Lnts/モ;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lnts/モ;->ᰛ:Lnts/ܔ;

    iget-object p1, p1, Lnts/モ;->ᰛ:Lnts/ܔ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lnts/ܔ;->ㆃ(Lnts/ܔ;Z)V

    return-void
.end method
