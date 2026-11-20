.class public abstract Lnts/ኝ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:[B

.field public ౠ:[Lnts/ᵕ;

.field public ᇭ:I

.field public ዲ:I

.field public ᙕ:[Lnts/ᵕ;

.field public ᰛ:[B

.field public ᾨ:I

.field public て:I

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lnts/ኝ;->ᰛ:[B

    .line 7
    iput-object v0, p0, Lnts/ኝ;->Ͼ:[B

    return-void
.end method


# virtual methods
.method public abstract ᇭ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public ᇭ(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 2
    aget-object v2, v2, v1

    .line 3
    iget v3, v2, Lnts/ᵕ;->ㆃ:I

    :goto_1
    if-ne v3, p1, :cond_0

    .line 6
    iput p1, p0, Lnts/ኝ;->ㆃ:I

    return-void

    .line 4
    :cond_0
    iget v4, v2, Lnts/ᵕ;->ᾨ:I

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v4, v2, Lnts/ᵕ;->ᇭ:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Lnts/ẩ;

    const/16 v1, 0x29

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ᰛ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public ᾨ()Lnts/Ҫ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnts/ኝ;->Ͼ:[B

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lnts/ኝ;->ᰛ()V

    .line 7
    :cond_0
    iget-object v0, p0, Lnts/ኝ;->ᰛ:[B

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lnts/ኝ;->ᇭ()V

    .line 10
    :cond_1
    iget-object v0, p0, Lnts/ኝ;->Ͼ:[B

    iget-object v1, p0, Lnts/ኝ;->ᰛ:[B

    invoke-virtual {p0, v0, v1}, Lnts/ኝ;->ᾨ([B[B)Lnts/Ҫ;

    move-result-object v0

    return-object v0
.end method

.method public abstract ᾨ([B[B)Lnts/Ҫ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public ᾨ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnts/ኝ;->ᇭ:I

    return-void
.end method

.method public ᾨ([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lnts/ኝ;->ᇭ(I)V

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ኝ;->Ͼ:[B

    return-void
.end method

.method public ㆃ()Lnts/Ҫ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnts/ኝ;->Ͼ:[B

    iget-object v1, p0, Lnts/ኝ;->ᰛ:[B

    invoke-virtual {p0, v0, v1}, Lnts/ኝ;->ㆃ([B[B)Lnts/Ҫ;

    move-result-object v0

    return-object v0
.end method

.method public abstract ㆃ([B[B)Lnts/Ҫ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public ㆃ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 6
    iget-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    aget-object v1, v1, v0

    .line 7
    iget v2, v1, Lnts/ᵕ;->ᇭ:I

    if-lez v2, :cond_1

    .line 8
    iget v2, v1, Lnts/ᵕ;->ㆃ:I

    .line 9
    :goto_1
    iget v3, v1, Lnts/ᵕ;->ᾨ:I

    if-gt v2, v3, :cond_2

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget v3, v1, Lnts/ᵕ;->ᇭ:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 11
    :cond_1
    iget v2, v1, Lnts/ᵕ;->ㆃ:I

    if-eq p1, v2, :cond_3

    .line 12
    iget v1, v1, Lnts/ᵕ;->ᾨ:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :goto_2
    iput p1, p0, Lnts/ኝ;->ᾨ:I

    return-void

    .line 14
    :cond_4
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x2b

    const/16 v1, 0x18

    const/16 v2, 0x29

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([B)V
    .locals 1

    .line 1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    iput v0, p0, Lnts/ኝ;->ᇭ:I

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ኝ;->ᰛ:[B

    return-void
.end method
