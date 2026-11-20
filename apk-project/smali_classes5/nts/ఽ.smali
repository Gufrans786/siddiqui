.class public Lnts/ఽ;
.super Lnts/ⱑ;
.source "SourceFile"


# instance fields
.field public ᡲ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ⱑ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ఽ;->ᡲ:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method

.method public constructor <init>(Lnts/ᾭ;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lnts/ⱑ;-><init>()V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lnts/ఽ;->ᡲ:I

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 16
    iput p1, p0, Lnts/ఽ;->ᡲ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    :goto_0
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_9

    .line 3
    iput-boolean v2, p0, Lnts/ᛩ;->ዲ:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->Ͼ([BI)I

    move-result v0

    .line 5
    iput-boolean v1, p0, Lnts/ᛩ;->て:Z

    .line 6
    iget-boolean v3, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    iget-boolean v4, p0, Lnts/ᛩ;->ዲ:Z

    if-nez v4, :cond_1

    .line 9
    iput-boolean v1, p0, Lnts/ᛩ;->ዲ:Z

    return p2

    :cond_1
    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 15
    :cond_2
    iget v3, p0, Lnts/ᛩ;->ౠ:I

    if-lez v3, :cond_3

    iget v3, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v3, v0

    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 19
    iget-object p2, p0, Lnts/ᛩ;->ᾨ:[B

    invoke-static {p2}, Lnts/ၽ;->ౠ([B)[B

    move-result-object p2

    .line 20
    array-length v3, p2

    iget v4, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lnts/ᛩ;->ᾨ:[B

    .line 21
    iget-object v3, p0, Lnts/ᛩ;->ᾨ:[B

    array-length v4, p2

    invoke-static {p2, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v3, p0, Lnts/ᛩ;->ᾨ:[B

    array-length p2, p2

    iget v4, p0, Lnts/ᛩ;->ᙕ:I

    invoke-static {p1, v0, v3, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget p2, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_3
    return p2

    .line 29
    :cond_4
    iget-boolean v0, p0, Lnts/ᛩ;->ዲ:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_a

    .line 31
    iget v4, p0, Lnts/ᛩ;->ౠ:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 33
    :goto_1
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_7

    if-ge p2, v3, :cond_7

    .line 34
    iput-boolean v2, p0, Lnts/ᛩ;->ዲ:Z

    .line 35
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->Ͼ([BI)I

    move-result p2

    .line 36
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_7

    if-le p2, v3, :cond_5

    goto :goto_2

    .line 38
    :cond_5
    iget-boolean v0, p0, Lnts/ᛩ;->ዲ:Z

    if-nez v0, :cond_6

    .line 39
    iput-boolean v1, p0, Lnts/ᛩ;->ዲ:Z

    goto :goto_2

    .line 43
    :cond_6
    iget v0, p0, Lnts/ᛩ;->ౠ:I

    if-lez v0, :cond_7

    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v0, p2

    array-length v4, p1

    if-gt v0, v4, :cond_7

    .line 47
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    invoke-static {v0}, Lnts/ၽ;->ౠ([B)[B

    move-result-object v0

    .line 48
    array-length v4, v0

    iget v5, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, p0, Lnts/ᛩ;->ᾨ:[B

    .line 49
    iget-object v4, p0, Lnts/ᛩ;->ᾨ:[B

    array-length v5, v0

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v4, p0, Lnts/ᛩ;->ᾨ:[B

    array-length v0, v0

    iget v5, p0, Lnts/ᛩ;->ᙕ:I

    invoke-static {p1, p2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr p2, v0

    goto :goto_1

    .line 57
    :cond_7
    :goto_2
    iput-boolean v1, p0, Lnts/ᛩ;->ᎊ:Z

    return v3

    .line 63
    :cond_8
    invoke-static {p1, p2, v0}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v0

    iput-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    .line 65
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr p2, v0

    .line 79
    :cond_9
    :goto_3
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    .line 80
    :cond_a
    iget-boolean p1, p0, Lnts/ᛩ;->ዲ:Z

    return p2
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 2
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lnts/Ḭ;->ᛃ:Z

    .line 4
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    or-int/lit8 v1, v1, 0x20

    .line 5
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 6
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void

    .line 7
    :cond_0
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ᰛ([BI)V

    return-void
.end method
