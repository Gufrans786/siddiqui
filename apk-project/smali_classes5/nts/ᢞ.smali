.class public Lnts/ᢞ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ᇭ:Z

.field public ᰛ:I

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lnts/ᢞ;->ᇭ:Z

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lnts/ᢞ;->ᰛ:I

    .line 6
    iput-object v0, p0, Lnts/ᢞ;->Ͼ:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "="

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_1

    .line 20
    iput-boolean v4, p0, Lnts/ᢞ;->ᇭ:Z

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_2

    add-int/2addr v3, v4

    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 32
    :cond_2
    iget-object p1, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 33
    iget-object p1, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 34
    iget-object v3, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 37
    :cond_3
    iget-object v3, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 61
    :cond_4
    :goto_0
    iget-object p1, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 63
    iget-object v2, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    const-string v3, "]"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_5

    .line 65
    iget-object v2, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_5
    if-eq v2, p1, :cond_6

    .line 68
    iget-object v3, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnts/ᢞ;->Ͼ:Ljava/lang/String;

    .line 70
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public Ͼ()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x3

    const/16 v2, 0x44

    const/16 v3, 0x2d

    invoke-static {v3, v1, v2}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x30

    const/16 v2, 0x4e

    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "0"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    const/16 v2, 0x27

    const/16 v4, 0x34

    invoke-static {v4, v1, v2}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "0x"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ၽ;->ᡲ(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 13
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16
    :catch_0
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    const/16 v4, 0x9

    const/16 v5, 0x39

    invoke-static {v5, v2, v4}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x56

    const/16 v4, 0x1f

    invoke-static {v2, v3, v4}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public ౠ()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "0x"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ၽ;->Ὺ(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 9
    :catch_0
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/16 v3, 0x41

    const/16 v4, 0x5a

    invoke-static {v4, v2, v3}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x29

    const/16 v4, 0x74

    invoke-static {v4, v2, v3}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public ᙕ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public ᰛ()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x72

    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "0"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x5

    const/16 v3, 0x5a

    const/4 v5, 0x7

    invoke-static {v5, v1, v3}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v3, 0x1d

    invoke-static {v2, v3, v4}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    const/16 v3, 0x6d

    invoke-static {v2, v4, v3}, Lnts/ッ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public ᾨ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    return-object v0
.end method

.method public て()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnts/ᢞ;->ᇭ:Z

    return v0
.end method

.method public ㆃ()I
    .locals 1

    .line 1
    iget v0, p0, Lnts/ᢞ;->ᰛ:I

    if-gez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnts/ᢞ;->Ͼ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnts/ᢞ;->ᰛ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    iget v0, p0, Lnts/ᢞ;->ᰛ:I

    return v0
.end method

.method public ㆃ(Ljava/lang/String;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/ᢞ;->ㆃ:Ljava/lang/String;

    invoke-static {v0, p1}, Lnts/ၽ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
