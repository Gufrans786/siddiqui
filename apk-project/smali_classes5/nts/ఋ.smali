.class public Lnts/ఋ;
.super Lnts/ᔟ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ఋ$ㆃ;,
        Lnts/ఋ$ᾨ;,
        Lnts/ఋ$ᇭ;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ᔟ;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 3
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v5, 0x40

    const/16 v6, 0x100

    invoke-direct {v2, v3, v6, v5}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 4
    new-array v0, v0, [Lnts/ᵕ;

    new-instance v1, Lnts/ᵕ;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3, v2}, Lnts/ᵕ;-><init>(III)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lnts/ᔟ;->Ⲳ:[Lnts/ᵕ;

    .line 5
    iput v6, p0, Lnts/ኝ;->ㆃ:I

    .line 6
    iput v3, p0, Lnts/ኝ;->ᾨ:I

    .line 7
    iput v3, p0, Lnts/ኝ;->ᇭ:I

    .line 8
    invoke-virtual {p0, v3}, Lnts/ᔟ;->ᰛ(I)V

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

    const/16 v0, 0xb

    .line 1
    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ᔟ;->ㆃ([B)V

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

.method public ㆃ([B[B[B)Lnts/ⵋ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ఋ$ᾨ;

    .line 2
    iget v5, p0, Lnts/ᔟ;->Ὺ:I

    .line 3
    iget v6, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lnts/ఋ$ᾨ;-><init>(Lnts/ఋ;[B[B[BII)V

    return-object v0
.end method

.method public ㆃ([B[B[B[B)Lnts/ⵋ;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    new-instance v0, Lnts/ఋ$ㆃ;

    .line 5
    iget v6, p0, Lnts/ᔟ;->Ὺ:I

    .line 6
    iget v7, p0, Lnts/ኝ;->ᇭ:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lnts/ఋ$ㆃ;-><init>(Lnts/ఋ;[B[B[B[BII)V

    return-object v0
.end method
