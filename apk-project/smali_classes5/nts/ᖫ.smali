.class public Lnts/ᖫ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ౠ:I

.field public ᰛ:Lnts/ᗋ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᖫ;->ᰛ:Lnts/ᗋ;

    .line 3
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᖫ;->Ͼ:Lnts/ᗋ;

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lnts/ᖫ;->ౠ:I

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lnts/ᖫ;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lnts/ᖫ;

    .line 3
    iget-object v0, p1, Lnts/ᖫ;->ᰛ:Lnts/ᗋ;

    iget-object v1, p0, Lnts/ᖫ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {v1}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ᗋ;->ᇭ([B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnts/ᖫ;->Ͼ:Lnts/ᗋ;

    iget-object v1, p0, Lnts/ᖫ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v1}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ᗋ;->ᇭ([B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lnts/ᖫ;->ౠ:I

    iget v0, p0, Lnts/ᖫ;->ౠ:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lnts/Ί;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lnts/Ί;->hashCode()I

    move-result v0

    return v0
.end method
