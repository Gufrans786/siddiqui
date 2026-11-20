.class public Lnts/ᵠ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/క;

.field public Ὺ:Lnts/ᣑ;

.field public Ⲳ:Lnts/ᛩ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/క;

    invoke-direct {v0}, Lnts/క;-><init>()V

    iput-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    .line 3
    new-instance v0, Lnts/ᣑ;

    invoke-direct {v0}, Lnts/ᣑ;-><init>()V

    iput-object v0, p0, Lnts/ᵠ;->Ὺ:Lnts/ᣑ;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnts/ᵠ;->Ⲳ:Lnts/ᛩ;

    const/16 v0, 0x30

    .line 8
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 6

    .line 1
    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ᵠ;->Ὺ:Lnts/ᣑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/ᵠ;->Ὺ:Lnts/ᣑ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_1

    return p2

    .line 10
    :cond_1
    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    const/4 v1, 0x0

    .line 11
    aget-byte v2, v0, v1

    const/16 v3, 0xe1

    if-nez v2, :cond_7

    .line 15
    array-length v2, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    new-array v5, v2, [B

    .line 16
    invoke-static {v0, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ᇭ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    new-instance v0, Lnts/ዖ;

    invoke-direct {v0}, Lnts/ዖ;-><init>()V

    iput-object v0, p0, Lnts/ᵠ;->Ⲳ:Lnts/ᛩ;

    .line 19
    invoke-virtual {v0, v5, v1}, Lnts/ᛩ;->ᇭ([BI)I

    goto/16 :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    new-instance v0, Lnts/ଙ;

    invoke-direct {v0}, Lnts/ଙ;-><init>()V

    iput-object v0, p0, Lnts/ᵠ;->Ⲳ:Lnts/ᛩ;

    .line 22
    invoke-virtual {v0, v5, v1}, Lnts/ᛩ;->ᇭ([BI)I

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    new-instance v0, Lnts/ᣑ;

    invoke-direct {v0, v5}, Lnts/ᣑ;-><init>([B)V

    iput-object v0, p0, Lnts/ᵠ;->Ⲳ:Lnts/ᛩ;

    goto :goto_1

    .line 25
    :cond_4
    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ᯋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ⱋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 28
    :cond_5
    new-instance p1, Lnts/ᛎ;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2b

    const/16 v1, 0x13

    const/16 v2, 0x175

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    const-string v1, ")."

    invoke-static {p2, v0, v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    :goto_0
    new-instance v0, Lnts/ᣑ;

    invoke-direct {v0, v5}, Lnts/ᣑ;-><init>([B)V

    iput-object v0, p0, Lnts/ᵠ;->Ⲳ:Lnts/ᛩ;

    .line 35
    :goto_1
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    .line 36
    :cond_7
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x1f

    const/16 v0, 0x60

    const/16 v1, 0x156

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ᵠ;->ᡲ:Lnts/క;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/ᵠ;->Ὺ:Lnts/ᣑ;

    .line 4
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᇭ([BI)V

    .line 5
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 6
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 7
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
