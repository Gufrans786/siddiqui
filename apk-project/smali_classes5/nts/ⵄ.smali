.class public abstract Lnts/ⵄ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/Ҫ;


# instance fields
.field public Ͼ:[B

.field public ౠ:I

.field public ᇭ:I

.field public ዲ:[B

.field public ᎊ:I

.field public ᙕ:I

.field public ᡲ:I

.field public ᰛ:[B

.field public ᾨ:I

.field public て:Z

.field public ㆃ:Z


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lnts/ⵄ;->ㆃ:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    .line 8
    iput-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    .line 11
    iput-boolean p3, p0, Lnts/ⵄ;->て:Z

    .line 12
    iput-object v0, p0, Lnts/ⵄ;->ዲ:[B

    .line 13
    iput p3, p0, Lnts/ⵄ;->ᎊ:I

    .line 14
    iput p3, p0, Lnts/ⵄ;->ᡲ:I

    .line 17
    iput p2, p0, Lnts/ⵄ;->ᾨ:I

    .line 19
    iput p6, p0, Lnts/ⵄ;->ᇭ:I

    .line 20
    iput p4, p0, Lnts/ⵄ;->ౠ:I

    .line 21
    iput p5, p0, Lnts/ⵄ;->ᙕ:I

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_0
    iput-object v0, p0, Lnts/ⵄ;->Ͼ:[B

    .line 24
    iget p1, p0, Lnts/ⵄ;->ᾨ:I

    new-array p2, p1, [B

    iput-object p2, p0, Lnts/ⵄ;->ᰛ:[B

    mul-int/lit8 p1, p1, 0x2

    .line 25
    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ⵄ;->ዲ:[B

    .line 26
    iput p3, p0, Lnts/ⵄ;->ᎊ:I

    .line 27
    iput p3, p0, Lnts/ⵄ;->ᡲ:I

    return-void
.end method


# virtual methods
.method public abstract Ͼ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract ౠ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract ᇭ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract ዲ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract ᎊ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public ᙕ([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v4, v0

    .line 1
    :goto_0
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    add-int v2, v1, p3

    sub-int v7, v2, v4

    iget v3, p0, Lnts/ⵄ;->ᾨ:I

    mul-int/lit8 v5, v3, 0x2

    if-le v7, v5, :cond_0

    add-int/2addr v4, v3

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    .line 6
    new-array v2, v2, [B

    .line 7
    iget-object v3, p0, Lnts/ⵄ;->ዲ:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lnts/ⵄ;->ᎊ:I

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p4

    move v6, p5

    .line 9
    invoke-virtual/range {v1 .. v6}, Lnts/ⵄ;->Ͼ([BII[BI)V

    move-object p4, v1

    .line 11
    iput v7, p4, Lnts/ⵄ;->ᎊ:I

    .line 12
    iget-object p1, p4, Lnts/ⵄ;->ዲ:[B

    invoke-static {v2, v4, p1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v4

    :cond_1
    move-object p4, p0

    .line 14
    iget-object p5, p4, Lnts/ⵄ;->ዲ:[B

    invoke-static {p1, p2, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget p1, p4, Lnts/ⵄ;->ᎊ:I

    add-int/2addr p1, p3

    iput p1, p4, Lnts/ⵄ;->ᎊ:I

    return v4
.end method

.method public abstract ᡲ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract ᰛ([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public ᾨ([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->て([BII[BI)V

    return p3

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->Ͼ([BII[BI)V

    move-object p1, p0

    return p3

    :cond_1
    move v1, p5

    move-object p5, p4

    move p4, p2

    move-object p2, p0

    const/4 v2, 0x3

    const/16 v3, 0x8

    if-ne v0, v2, :cond_3

    .line 7
    iget v0, p2, Lnts/ⵄ;->ᇭ:I

    if-ne v0, v3, :cond_2

    move p2, p4

    move-object p4, p5

    move p5, v1

    .line 8
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ᰛ([BII[BI)V

    return p3

    :cond_2
    move p2, p4

    move-object p4, p5

    move p5, v1

    .line 10
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ᎊ([BII[BI)V

    move-object p1, p0

    return p3

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 13
    iget v0, p2, Lnts/ⵄ;->ᇭ:I

    if-ne v0, v3, :cond_4

    move p2, p4

    move-object p4, p5

    move p5, v1

    .line 14
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ᇭ([BII[BI)V

    return p3

    :cond_4
    move p2, p4

    move-object p4, p5

    move p5, v1

    .line 16
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ዲ([BII[BI)V

    return p3

    :cond_5
    move p2, p4

    move-object p4, p5

    move p5, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 19
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ᙕ([BII[BI)I

    move-result p1

    return p1

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 21
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ౠ([BII[BI)V

    :cond_7
    return p3
.end method

.method public ᾨ([B)V
    .locals 2

    .line 22
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 23
    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public ᾨ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnts/ⵄ;->ㆃ:Z

    return v0
.end method

.method public abstract て([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public ㆃ([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    const/16 v2, 0x40

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    .line 4
    array-length v1, p4

    if-gt v0, v1, :cond_3

    .line 8
    iget-boolean v0, p0, Lnts/ⵄ;->て:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p5}, Lnts/ⵄ;->ᡲ([BII[BI)V

    move-object v1, p0

    return p3

    :cond_0
    move-object v1, p0

    .line 13
    iget v0, v1, Lnts/ⵄ;->ౠ:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    iget v0, v1, Lnts/ⵄ;->ᙕ:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 14
    :cond_1
    iget v0, v1, Lnts/ⵄ;->ᾨ:I

    div-int/2addr p3, v0

    mul-int/2addr p3, v0

    :cond_2
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 17
    invoke-virtual/range {v1 .. v6}, Lnts/ⵄ;->ᾨ([BII[BI)I

    move-result p1

    return p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x41

    const/16 p3, 0x52

    invoke-static {v2, p2, p3}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const/4 p2, 0x0

    const/16 p3, 0x73

    invoke-static {p2, v2, p3}, Lnts/ッ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
