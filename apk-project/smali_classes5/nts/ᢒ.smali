.class public abstract Lnts/ᢒ;
.super Lnts/ᙱ;
.source "SourceFile"


# instance fields
.field public ౠ:Z

.field public ዲ:Ljava/lang/String;

.field public ᎊ:[B

.field public ᙕ:Lnts/ዃ;

.field public ᛃ:I

.field public ᡲ:[B

.field public Ὺ:[B

.field public Ⲳ:I

.field public て:Lnts/ዃ;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ᙱ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnts/ᢒ;->ౠ:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    .line 5
    iput-object v1, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    .line 11
    iput-object v1, p0, Lnts/ᢒ;->Ὺ:[B

    .line 12
    iput v0, p0, Lnts/ᢒ;->Ⲳ:I

    const/16 v1, 0x40

    .line 13
    iput v1, p0, Lnts/ᢒ;->ᛃ:I

    const/4 v2, 0x4

    const/16 v3, 0x4b

    const/16 v4, 0x6f

    .line 14
    invoke-static {v4, v2, v3}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lnts/ၽ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    iput v1, p0, Lnts/ᢒ;->ᛃ:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x73

    const/4 v3, 0x6

    .line 16
    invoke-static {v2, v3, v1}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    iput v1, p0, Lnts/ᢒ;->ᛃ:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x79

    const/16 v4, 0x55

    .line 19
    invoke-static {v2, v3, v4}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    iput v1, p0, Lnts/ᢒ;->ᛃ:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x7f

    const/16 v4, 0x27

    .line 22
    invoke-static {v2, v3, v4}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x80

    if-eqz v2, :cond_3

    .line 24
    iput v4, p0, Lnts/ᢒ;->ᛃ:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x85

    const/16 v5, 0x74

    .line 25
    invoke-static {v2, v3, v5}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 27
    iput v4, p0, Lnts/ᢒ;->ᛃ:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    const/16 v3, 0x3b

    const/16 v4, 0x8b

    .line 28
    invoke-static {v4, v2, v3}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 30
    iput v1, p0, Lnts/ᢒ;->ᛃ:I

    goto :goto_0

    :cond_5
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0x8e

    .line 31
    invoke-static {v4, v2, v3}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 33
    iput v1, p0, Lnts/ᢒ;->ᛃ:I

    .line 37
    :goto_0
    iget v1, p0, Lnts/ᢒ;->ᛃ:I

    new-array v2, v1, [B

    iput-object v2, p0, Lnts/ᢒ;->ᎊ:[B

    .line 38
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ᢒ;->ᡲ:[B

    .line 39
    iput-object p1, p0, Lnts/ᢒ;->ዲ:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lnts/ᢒ;->ㆃ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    .line 42
    iget-object p1, p0, Lnts/ᢒ;->ዲ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnts/ᢒ;->ㆃ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    .line 44
    iput-boolean v0, p0, Lnts/ᢒ;->ౠ:Z

    .line 46
    invoke-static {p1}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result p1

    iput p1, p0, Lnts/ዃ;->ㆃ:I

    .line 47
    iget p1, p0, Lnts/ዃ;->ㆃ:I

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ዃ;->ᾨ:[B

    .line 48
    invoke-virtual {p0, p2}, Lnts/ᢒ;->ᇭ([B)V

    return-void

    .line 49
    :cond_6
    new-instance p2, Lnts/ẩ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x15

    const/16 v2, 0x7c

    const/16 v3, 0x97

    invoke-static {v3, v1, v2}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x12

    const/16 v1, 0x5d

    const/16 v2, 0xac

    invoke-static {v2, v0, v1}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public ᇭ([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ᢒ;->ౠ:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    new-array p1, v0, [B

    iput-object p1, p0, Lnts/ᙱ;->Ͼ:[B

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, p1

    iget v2, p0, Lnts/ᢒ;->ᛃ:I

    if-le v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    invoke-virtual {v1, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᙱ;->Ͼ:[B

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ᙱ;->Ͼ:[B

    :goto_0
    move p1, v0

    .line 13
    :goto_1
    iget v1, p0, Lnts/ᢒ;->ᛃ:I

    if-ge p1, v1, :cond_2

    .line 14
    iget-object v1, p0, Lnts/ᢒ;->ᎊ:[B

    iget-object v2, p0, Lnts/ᢒ;->ᡲ:[B

    aput-byte v0, v2, p1

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lnts/ᙱ;->Ͼ:[B

    iget-object v1, p0, Lnts/ᢒ;->ᎊ:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object p1, p0, Lnts/ᙱ;->Ͼ:[B

    iget-object v1, p0, Lnts/ᢒ;->ᡲ:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    :goto_2
    iget p1, p0, Lnts/ᢒ;->ᛃ:I

    if-ge v0, p1, :cond_3

    .line 21
    iget-object p1, p0, Lnts/ᢒ;->ᎊ:[B

    aget-byte v1, p1, v0

    xor-int/lit8 v1, v1, 0x36

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 22
    iget-object p1, p0, Lnts/ᢒ;->ᡲ:[B

    aget-byte v1, p1, v0

    xor-int/lit8 v1, v1, 0x5c

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 23
    :cond_4
    new-instance p1, Lnts/ẩ;

    const/16 v0, 0x26

    const/16 v1, 0x6a

    const/16 v2, 0xbe

    invoke-static {v2, v0, v1}, Lnts/ッ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᇭ([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Lnts/ᢒ;->ౠ:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 26
    iget-object v1, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    iget-object v2, p0, Lnts/ᢒ;->ᎊ:[B

    iget v4, p0, Lnts/ᢒ;->ᛃ:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v5, v2

    invoke-virtual/range {v1 .. v6}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 27
    iget v0, p0, Lnts/ᢒ;->ᛃ:I

    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ᢒ;->Ὺ:[B

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lnts/ᢒ;->ౠ:Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    if-ge v1, p3, :cond_2

    .line 34
    iget-object v2, p0, Lnts/ᢒ;->Ὺ:[B

    array-length v2, v2

    iget v3, p0, Lnts/ᢒ;->Ⲳ:I

    sub-int/2addr v2, v3

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v1

    .line 35
    iget-object v4, p0, Lnts/ᢒ;->Ὺ:[B

    iget v5, p0, Lnts/ᢒ;->Ⲳ:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget v3, p0, Lnts/ᢒ;->Ⲳ:I

    add-int/2addr v3, v2

    iput v3, p0, Lnts/ᢒ;->Ⲳ:I

    add-int/2addr v1, v2

    .line 38
    iget-object v5, p0, Lnts/ᢒ;->Ὺ:[B

    array-length v2, v5

    if-ne v3, v2, :cond_1

    .line 39
    iget-object v4, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    array-length v7, v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v8, v5

    invoke-virtual/range {v4 .. v9}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 40
    iput v0, p0, Lnts/ᢒ;->Ⲳ:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ᇭ()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    iget-object v1, p0, Lnts/ᢒ;->Ὺ:[B

    iget v2, p0, Lnts/ᢒ;->Ⲳ:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnts/ዃ;->ㆃ([BII)[B

    .line 42
    iput v3, p0, Lnts/ᢒ;->Ⲳ:I

    .line 43
    iget-object v0, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    invoke-static {v0}, Lnts/ቩ;->ㆃ(Lnts/ዃ;)[B

    move-result-object v0

    .line 44
    iget-object v1, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    invoke-virtual {v1}, Lnts/ዃ;->ᰛ()V

    .line 45
    iget-object v4, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    iget-object v5, p0, Lnts/ᢒ;->ᡲ:[B

    iget v7, p0, Lnts/ᢒ;->ᛃ:I

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v8, v5

    invoke-virtual/range {v4 .. v9}, Lnts/ዃ;->ㆃ([BII[BI)I

    .line 46
    iget-object v1, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lnts/ዃ;->ㆃ([BII)[B

    .line 47
    iget-object v0, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    .line 48
    iget-object v0, v0, Lnts/ዃ;->ᾨ:[B

    .line 49
    iget-object v1, p0, Lnts/ዃ;->ᾨ:[B

    iget v2, p0, Lnts/ዃ;->ㆃ:I

    div-int/lit8 v2, v2, 0x8

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-object v0
.end method

.method public ᰛ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lnts/ᢒ;->ౠ:Z

    .line 2
    iput v0, p0, Lnts/ᢒ;->Ⲳ:I

    .line 3
    iget-object v0, p0, Lnts/ᢒ;->ᙕ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 4
    iget-object v0, p0, Lnts/ᢒ;->て:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    return-void
.end method

.method public ㆃ(Ljava/lang/String;)Lnts/ዃ;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p1

    return-object p1
.end method
