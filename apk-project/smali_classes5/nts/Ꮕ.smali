.class public Lnts/Ꮕ;
.super Lnts/ᣎ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x80

    const/16 v4, 0x100

    const/16 v5, 0x40

    invoke-direct {v2, v3, v4, v5}, Lnts/ᵕ;-><init>(III)V

    const/4 v6, 0x0

    aput-object v2, v1, v6

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 3
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    invoke-direct {v2, v3, v4, v5}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v6

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 5
    iput v3, p0, Lnts/ኝ;->ᾨ:I

    .line 6
    iput v3, p0, Lnts/ኝ;->ᇭ:I

    .line 7
    iput v4, p0, Lnts/ኝ;->ㆃ:I

    .line 8
    iput v0, p0, Lnts/ኝ;->て:I

    .line 9
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

    invoke-virtual {p0, v0}, Lnts/ኝ;->ㆃ([B)V

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
    new-instance v0, Lnts/ㆆ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v1, p0, Lnts/ኝ;->ᾨ:I

    div-int/lit8 v5, v1, 0x8

    iget v6, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnts/ㆆ;-><init>([B[BIIII)V

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᗧ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v1, p0, Lnts/ኝ;->ᾨ:I

    div-int/lit8 v5, v1, 0x8

    iget v6, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnts/ᗧ;-><init>([B[BIIII)V

    return-object v0
.end method
