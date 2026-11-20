.class public Lnts/ᕴ;
.super Lnts/ᣎ;
.source "SourceFile"


# instance fields
.field public ᎊ:J

.field public ᡲ:I

.field public Ὺ:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnts/ᕴ;->ᎊ:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/ᕴ;->ᡲ:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lnts/ᕴ;->Ὺ:I

    .line 7
    new-array v2, v1, [Lnts/ᵕ;

    new-instance v3, Lnts/ᵕ;

    const/16 v4, 0x80

    const/16 v5, 0x100

    invoke-direct {v3, v4, v5, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 8
    new-array v2, v1, [Lnts/ᵕ;

    new-instance v3, Lnts/ᵕ;

    const/16 v4, 0x200

    invoke-direct {v3, v4, v4, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 10
    iput v4, p0, Lnts/ኝ;->ᾨ:I

    .line 11
    iput v4, p0, Lnts/ኝ;->ᇭ:I

    .line 12
    iput v5, p0, Lnts/ኝ;->ㆃ:I

    const/16 v0, 0x14

    .line 14
    iput v0, p0, Lnts/ᕴ;->ᡲ:I

    .line 15
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
    iget v0, p0, Lnts/ኝ;->ᇭ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ᕴ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 6
    iget v0, p0, Lnts/ኝ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ᰛ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x54

    const-string v1, "*\u0017\u0019]\u0014\u000e\u0015\u001b\u0013\u0005T\u001a\u0014S\u0002\u001e\u001b\u0001\u0008\u001eJ\u0006\u001d\u001a\u0012G\u0006\u0000B[LAomp}5)xkfy"

    const/4 v2, 0x0

    const/16 v3, 0x2a

    .line 2
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput p1, p0, Lnts/ᕴ;->ᡲ:I

    return-void
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ὗ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget-wide v5, p0, Lnts/ᕴ;->ᎊ:J

    iget v7, p0, Lnts/ᕴ;->ᡲ:I

    iget v8, p0, Lnts/ᕴ;->Ὺ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lnts/Ὗ;-><init>([B[BIIJII)V

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    new-instance v0, Lnts/ᦦ;

    iget v3, p0, Lnts/ኝ;->て:I

    iget v4, p0, Lnts/ኝ;->ዲ:I

    iget-wide v5, p0, Lnts/ᕴ;->ᎊ:J

    iget v7, p0, Lnts/ᕴ;->ᡲ:I

    iget v8, p0, Lnts/ᕴ;->Ὺ:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lnts/ᦦ;-><init>([B[BIIJII)V

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
