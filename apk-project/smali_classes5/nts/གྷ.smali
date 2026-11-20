.class public Lnts/གྷ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    const/16 v0, 0x17

    .line 5
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lnts/ᛩ;->ᇭ:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    const/16 v0, 0x17

    .line 15
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 16
    iput-object p1, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lnts/ᛩ;->ᇭ:Z

    return-void
.end method


# virtual methods
.method public Ͼ()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lnts/ᛩ;->ㆃ:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    const-string v0, "20"

    invoke-static {v0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "19"

    .line 4
    invoke-static {v0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lnts/ᛩ;->ㆃ:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_8

    .line 6
    iget-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    :goto_0
    const-string v1, "Z"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    new-array v3, v1, [C

    const/16 v4, 0x5a

    aput-char v4, v3, v2

    .line 11
    invoke-static {v0}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    move v4, v2

    .line 15
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 19
    aget-char v6, v3, v2

    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 30
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_6

    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 35
    aget-char v8, v3, v2

    if-ne v7, v8, :cond_5

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    move v5, v6

    :cond_6
    add-int/2addr v5, v1

    .line 46
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    .line 47
    :cond_8
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x1f

    const/16 v2, 0x5b

    const/16 v3, 0x130

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᾨ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    invoke-static {v0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    .line 2
    iget v0, p0, Lnts/ᛩ;->ౠ:I

    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/གྷ;->ᡲ:Ljava/lang/String;

    invoke-static {v0}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object v0

    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ᰛ([BI)V

    return-void
.end method
