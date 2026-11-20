.class public Lnts/ᄶ;
.super Lnts/ᣎ;
.source "SourceFile"


# instance fields
.field public ᎊ:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnts/ᄶ;->ᎊ:J

    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 5
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v5, 0x200

    invoke-direct {v2, v5, v5, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 7
    iput v5, p0, Lnts/ኝ;->ᾨ:I

    .line 8
    iput v5, p0, Lnts/ኝ;->ᇭ:I

    .line 9
    iput v3, p0, Lnts/ኝ;->ㆃ:I

    .line 10
    iput v0, p0, Lnts/ኝ;->ዲ:I

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ᾨ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ᄶ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᖶ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget-wide v5, p0, Lnts/ᄶ;->ᎊ:J

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnts/ᖶ;-><init>([B[BIIJ)V

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    new-instance v0, Lnts/ㄠ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget-wide v5, p0, Lnts/ᄶ;->ᎊ:J

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnts/ㄠ;-><init>([B[BIIJ)V

    return-object v0
.end method

.method public ㆃ([B)V
    .locals 0

    .line 1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ኝ;->ᰛ:[B

    return-void
.end method
