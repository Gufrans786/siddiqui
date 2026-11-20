.class public Lnts/ᜦ;
.super Lnts/ᣎ;
.source "SourceFile"


# instance fields
.field public ᎊ:I

.field public ᡲ:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ᜦ;->ᎊ:I

    .line 3
    iput v0, p0, Lnts/ᜦ;->ᡲ:I

    const/4 v1, 0x1

    .line 5
    new-array v2, v1, [Lnts/ᵕ;

    new-instance v3, Lnts/ᵕ;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v4, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 6
    new-array v2, v1, [Lnts/ᵕ;

    new-instance v3, Lnts/ᵕ;

    const/16 v5, 0x40

    invoke-direct {v3, v5, v5, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 8
    iput v5, p0, Lnts/ᜦ;->ᎊ:I

    .line 9
    iput v5, p0, Lnts/ኝ;->ᾨ:I

    .line 10
    iput v5, p0, Lnts/ኝ;->ᇭ:I

    .line 11
    iput v4, p0, Lnts/ኝ;->ㆃ:I

    .line 12
    iput v1, p0, Lnts/ኝ;->て:I

    .line 13
    iput v1, p0, Lnts/ኝ;->ዲ:I

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ન;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ᜦ;->ᎊ:I

    iget v6, p0, Lnts/ᜦ;->ᡲ:I

    iget v7, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lnts/ન;-><init>([B[BIIIII)V

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ޚ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget v5, p0, Lnts/ᜦ;->ᎊ:I

    iget v6, p0, Lnts/ᜦ;->ᡲ:I

    iget v7, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lnts/ޚ;-><init>([B[BIIIII)V

    return-object v0
.end method
