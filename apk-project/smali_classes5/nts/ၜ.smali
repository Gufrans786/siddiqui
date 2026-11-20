.class public abstract Lnts/ၜ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᇭ:I

.field public ዲ:I

.field public ᙕ:J

.field public ᰛ:[B

.field public ᾨ:I

.field public て:Lnts/ሐ;

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᾨ()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/ၜ;->Ͼ:I

    iget v1, p0, Lnts/ၜ;->ౠ:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v0}, Lnts/ሐ;->ᇭ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㆃ([BII)I
    .locals 2

    .line 2
    iget-object v0, p0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ሐ;->ㆃ([BII)I

    move-result p1

    .line 3
    iget-wide p2, p0, Lnts/ၜ;->ᙕ:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lnts/ၜ;->ᙕ:J

    return p1
.end method

.method public ㆃ()Z
    .locals 1

    .line 1
    iget v0, p0, Lnts/ၜ;->ዲ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnts/ၜ;->て:Lnts/ሐ;

    invoke-virtual {v0}, Lnts/ሐ;->ᇭ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
