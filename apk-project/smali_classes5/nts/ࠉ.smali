.class public Lnts/ࠉ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᾨ:Lnts/ⶽ;

.field public ㆃ:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/ࠉ;->ᇭ:I

    return-void
.end method


# virtual methods
.method public ᇭ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᰛ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 3
    iget-object v0, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnts/ⶽ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lnts/ࠉ;->ᇭ:I

    :cond_1
    return-void
.end method

.method public ᾨ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    if-nez v0, :cond_0

    iget v0, p0, Lnts/ࠉ;->ᇭ:I

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lnts/ⶽ;->ᾨ:I

    return v0
.end method

.method public ᾨ(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    if-eqz v0, :cond_0

    .line 4
    iput p1, v0, Lnts/ⶽ;->ᾨ:I

    return-void

    .line 6
    :cond_0
    iput p1, p0, Lnts/ࠉ;->ᇭ:I

    return-void
.end method

.method public ㆃ()V
    .locals 2

    .line 3
    iget-object v0, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    iget v1, v0, Lnts/ⶽ;->ㆃ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnts/ⶽ;->ㆃ:I

    return-void
.end method

.method public ㆃ(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object v1, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    new-instance v2, Lnts/ⶽ;

    invoke-direct {v2, p1}, Lnts/ⶽ;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lnts/ࠉ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/ⶽ;

    iput-object p1, p0, Lnts/ࠉ;->ᾨ:Lnts/ⶽ;

    return-void
.end method
