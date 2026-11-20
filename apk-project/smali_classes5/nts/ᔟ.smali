.class public abstract Lnts/ᔟ;
.super Lnts/ᣎ;
.source "SourceFile"


# instance fields
.field public ᎊ:[B

.field public ᡲ:[B

.field public Ὺ:I

.field public Ⲳ:[Lnts/ᵕ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x36

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ݶ;->И(III)Ljava/lang/String;

    const/16 v0, 0x11

    const/16 v1, 0x30

    .line 2
    invoke-static {v2, v0, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    const/16 v0, 0x18

    const/16 v1, 0x35

    .line 3
    invoke-static {v0, v2, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [B

    iput-object v1, p0, Lnts/ᔟ;->ᎊ:[B

    .line 13
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ᔟ;->ᡲ:[B

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lnts/ᔟ;->Ⲳ:[Lnts/ᵕ;

    return-void
.end method


# virtual methods
.method public Ͼ(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public ᇭ([B)V
    .locals 0

    .line 1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ᔟ;->ᡲ:[B

    return-void
.end method

.method public ᰛ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lnts/ᔟ;->Ⲳ:[Lnts/ᵕ;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v1, v1, v0

    .line 5
    iget v2, v1, Lnts/ᵕ;->ㆃ:I

    .line 6
    :goto_1
    iget v3, v1, Lnts/ᵕ;->ᾨ:I

    if-gt v2, v3, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget v3, v1, Lnts/ᵕ;->ᇭ:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x18

    const/16 v1, 0x6b

    const/16 v2, 0x1f

    invoke-static {v2, v0, v1}, Lnts/ݶ;->И(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_2
    iput p1, p0, Lnts/ᔟ;->Ὺ:I

    return-void
.end method

.method public ᰛ([B)Z
    .locals 1

    .line 1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lnts/ᔟ;->Ͼ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ኝ;->ᰛ:[B

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ᾨ()Lnts/Ҫ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ኝ;->Ͼ:[B

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnts/ኝ;->ᰛ()V

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ኝ;->Ͼ:[B

    iget-object v1, p0, Lnts/ኝ;->ᰛ:[B

    iget-object v2, p0, Lnts/ᔟ;->ᡲ:[B

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lnts/ᔟ;->ㆃ([B[B[B)Lnts/ⵋ;

    move-result-object v0

    return-object v0
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lnts/ᔟ;->ᡲ:[B

    invoke-virtual {p0, p1, p2, v0}, Lnts/ᔟ;->ㆃ([B[B[B)Lnts/ⵋ;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ()Lnts/Ҫ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnts/ኝ;->Ͼ:[B

    iget-object v1, p0, Lnts/ኝ;->ᰛ:[B

    iget-object v2, p0, Lnts/ᔟ;->ᡲ:[B

    .line 3
    iget-object v3, p0, Lnts/ᔟ;->ᎊ:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Lnts/ᔟ;->ㆃ([B[B[B[B)Lnts/ⵋ;

    move-result-object v0

    return-object v0
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnts/ᔟ;->ᡲ:[B

    iget-object v1, p0, Lnts/ᔟ;->ᎊ:[B

    invoke-virtual {p0, p1, p2, v0, v1}, Lnts/ᔟ;->ㆃ([B[B[B[B)Lnts/ⵋ;

    move-result-object p1

    return-object p1
.end method

.method public abstract ㆃ([B[B[B)Lnts/ⵋ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ㆃ([B[B[B[B)Lnts/ⵋ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
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
