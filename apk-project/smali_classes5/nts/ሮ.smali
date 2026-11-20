.class public Lnts/ሮ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ᒕ;

.field public Ὺ:Lnts/Ⴤ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ᒕ;

    invoke-direct {v0}, Lnts/ᒕ;-><init>()V

    iput-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    .line 3
    new-instance v0, Lnts/Ⴤ;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Lnts/Ⴤ;-><init>(I)V

    iput-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    const/16 v0, 0x30

    .line 8
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method

.method public constructor <init>(Lnts/ᾭ;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 10
    new-instance p1, Lnts/ᒕ;

    invoke-direct {p1}, Lnts/ᒕ;-><init>()V

    iput-object p1, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    .line 11
    new-instance p1, Lnts/Ⴤ;

    const/16 v0, 0xa0

    invoke-direct {p1, v0}, Lnts/Ⴤ;-><init>(I)V

    iput-object p1, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    const/16 p1, 0x30

    .line 21
    iput p1, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget v1, v0, Lnts/ᛩ;->Ͼ:I

    iget v0, v0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v1, v0

    .line 7
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 8
    array-length v1, p1

    if-lt v0, v1, :cond_1

    :goto_0
    return p2

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    .line 12
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_1

    .line 13
    :cond_2
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    if-lt v1, v0, :cond_3

    .line 14
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    .line 15
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    .line 16
    :cond_3
    :goto_1
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    .line 17
    iget-boolean v0, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->И:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/Ⴝ;

    invoke-direct {v1}, Lnts/Ⴝ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    goto/16 :goto_2

    .line 20
    :cond_4
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->យ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    new-instance v2, Lnts/Ꮂ;

    invoke-direct {v2, v1}, Lnts/Ꮂ;-><init>(Lnts/ᾭ;)V

    invoke-virtual {v0, p1, p2, v2}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    goto/16 :goto_2

    .line 22
    :cond_5
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ཊ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    new-instance v2, Lnts/ఽ;

    invoke-direct {v2, v1}, Lnts/ఽ;-><init>(Lnts/ᾭ;)V

    invoke-virtual {v0, p1, p2, v2}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    goto :goto_2

    .line 24
    :cond_6
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ⶦ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ᵐ;

    invoke-direct {v1}, Lnts/ᵐ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    goto :goto_2

    .line 26
    :cond_7
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->Ϯ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ᄆ;

    invoke-direct {v1}, Lnts/ᄆ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    goto :goto_2

    .line 28
    :cond_8
    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ଙ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ڼ;

    invoke-direct {v1}, Lnts/ڼ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    goto :goto_2

    .line 31
    :cond_9
    new-instance p1, Lnts/ᛎ;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2c

    const/16 v1, 0x3d

    const/16 v2, 0x12a

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xe0

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 34
    :cond_a
    :goto_2
    iget-object v0, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    .line 35
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_b

    .line 36
    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_b

    return p2

    .line 40
    :cond_b
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
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
    iget-object v1, p0, Lnts/ሮ;->ᡲ:Lnts/ᒕ;

    .line 3
    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ᾨ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    .line 5
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Lnts/Ⴤ;->ㆃ(Lnts/Ḭ;)V

    .line 7
    :cond_0
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 8
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 9
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
