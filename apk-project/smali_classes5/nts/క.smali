.class public Lnts/క;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ᬓ;

.field public Ὺ:Lnts/ᛩ;

.field public Ⲳ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ᬓ;

    invoke-direct {v0}, Lnts/ᬓ;-><init>()V

    iput-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    .line 3
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lnts/క;->Ⲳ:Z

    const/16 v1, 0x30

    .line 53
    iput v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 54
    iget-object v1, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 55
    iput-boolean v0, v1, Lnts/ᛩ;->ᇭ:Z

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, v1, Lnts/ᛩ;->ᰛ:Z

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-boolean v0, p0, Lnts/క;->Ⲳ:Z

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget v1, v0, Lnts/ᛩ;->Ͼ:I

    iget v0, v0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v1, v0

    .line 8
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 9
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 12
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    if-lt v1, v0, :cond_2

    .line 14
    iget-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 15
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lnts/క;->Ⲳ:Z

    .line 17
    :cond_3
    iget-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 18
    iget-boolean v0, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ዲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    new-instance v0, Lnts/ᘱ;

    invoke-direct {v0}, Lnts/ᘱ;-><init>()V

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance v0, Lnts/ᬓ;

    invoke-direct {v0}, Lnts/ᬓ;-><init>()V

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    goto :goto_1

    .line 23
    :cond_5
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ᛃ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Lnts/ӈ;

    invoke-direct {v0}, Lnts/ӈ;-><init>()V

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    goto :goto_1

    .line 25
    :cond_6
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->て:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    new-instance v0, Lnts/ⱑ;

    invoke-direct {v0}, Lnts/ⱑ;-><init>()V

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    goto :goto_1

    .line 27
    :cond_7
    iget-object v0, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ఋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    new-instance v0, Lnts/ଗ;

    invoke-direct {v0}, Lnts/ଗ;-><init>()V

    iput-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 30
    :cond_8
    :goto_1
    iget-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 31
    iget-object v0, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_9

    return p2

    .line 34
    :cond_9
    invoke-virtual {v0}, Lnts/ᛩ;->ㆃ()V

    .line 36
    :cond_a
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    :cond_b
    :goto_2
    return p2
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
    iget-object v1, p0, Lnts/క;->ᡲ:Lnts/ᬓ;

    invoke-virtual {v1, v0}, Lnts/ᬓ;->ㆃ(Lnts/Ḭ;)V

    .line 3
    iget-object v1, p0, Lnts/క;->Ὺ:Lnts/ᛩ;

    .line 4
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    .line 6
    :cond_0
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 7
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 8
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
