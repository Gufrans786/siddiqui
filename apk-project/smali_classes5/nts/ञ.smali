.class public Lnts/ञ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ञ;

.field public ౠ:Lnts/ञ;

.field public ዲ:Ljava/lang/StringBuffer;

.field public ᎊ:I

.field public ᙕ:Lnts/ञ;

.field public ᚹ:I

.field public ᛃ:I

.field public ᡲ:I

.field public ᰛ:Lnts/ञ;

.field public ᵑ:Ljava/lang/String;

.field public Ὺ:I

.field public Ⲳ:Z

.field public ⴗ:I

.field public て:Lnts/ञ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnts/ञ;->ዲ:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnts/ञ;->Ⲳ:Z

    .line 6
    iput v0, p0, Lnts/ञ;->ᛃ:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    .line 8
    iput v0, p0, Lnts/ञ;->ⴗ:I

    .line 9
    iput v0, p0, Lnts/ञ;->ᚹ:I

    return-void
.end method

.method public constructor <init>(Lnts/ञ;I)V
    .locals 1

    const-string v0, ""

    .line 10
    invoke-direct {p0, p1, v0, p2}, Lnts/ञ;-><init>(Lnts/ञ;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lnts/ञ;Ljava/lang/String;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnts/ञ;->ዲ:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lnts/ञ;->Ⲳ:Z

    .line 16
    iput v0, p0, Lnts/ञ;->ᛃ:I

    .line 18
    iput v0, p0, Lnts/ञ;->ⴗ:I

    .line 19
    iput v0, p0, Lnts/ञ;->ᚹ:I

    .line 28
    iput-object p2, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lnts/ञ;->ᰛ:Lnts/ञ;

    .line 30
    iput p3, p0, Lnts/ञ;->ᎊ:I

    .line 31
    iput p3, p0, Lnts/ञ;->Ὺ:I

    return-void
.end method

.method public static ᇭ(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static ᾨ(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ㆃ(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "\\"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "]"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v2

    .line 85
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 86
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 88
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_0

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_0

    if-ne v8, v6, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v7

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    .line 96
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 97
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_4
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_5

    add-int/lit8 v3, v0, 0x1

    .line 106
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 107
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnts/Ί;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Ͼ()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ञ;->ᰛ:Lnts/ञ;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnts/ञ;->Ͼ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1
    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    const-string v1, "/"

    .line 4
    invoke-static {v0, v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "["

    .line 8
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnts/ञ;->ⴗ:I

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ౠ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ञ;->ዲ:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᇭ()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ञ;->ᰛ:Lnts/ञ;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnts/ञ;->ᇭ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1
    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    invoke-static {v0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    iget-object v1, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    const/4 v2, 0x4

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ཞ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "$"

    goto :goto_1

    :cond_1
    const-string v1, "[\'"

    .line 9
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    const-string v3, "\']"

    invoke-static {v1, v2, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "["

    .line 12
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnts/ञ;->ⴗ:I

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᰛ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    return-object v0
.end method

.method public ᾨ()Ljava/util/Vector;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lnts/ञ;->ᛃ:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 2
    iget-object v1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    :goto_0
    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lnts/ञ;

    iget-object v3, v1, Lnts/ञ;->ᵑ:Ljava/lang/String;

    iget v4, v1, Lnts/ञ;->ᎊ:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lnts/ञ;-><init>(Lnts/ञ;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1}, Lnts/ञ;->ౠ()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, v2, Lnts/ञ;->ዲ:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 7
    iget-object v4, v2, Lnts/ञ;->ዲ:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, v1, Lnts/ञ;->ౠ:Lnts/ञ;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ㆃ(Ljava/util/StringTokenizer;ZZ)Lnts/ञ;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p0

    goto/16 :goto_7

    :cond_0
    const-string v1, ".."

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lnts/ञ;->ᰛ:Lnts/ञ;

    goto/16 :goto_7

    :cond_1
    const/4 v1, 0x1

    .line 10
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    .line 11
    invoke-static {v0, v3}, Lnts/ञ;->ㆃ(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    aget-object v3, v3, v2

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_10

    iget-object v4, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    if-eqz v4, :cond_10

    .line 15
    invoke-static {v3}, Lnts/ञ;->ᾨ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 16
    invoke-static {v3}, Lnts/ञ;->ᇭ(Ljava/lang/String;)I

    move-result v4

    if-eqz p3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-lt v4, v1, :cond_8

    .line 18
    iget v6, p0, Lnts/ञ;->ᛃ:I

    if-le v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_7

    .line 21
    iget-object v1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    :goto_0
    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v1, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, -0x1

    :cond_4
    if-nez v4, :cond_5

    goto :goto_1

    .line 29
    :cond_5
    iget-object v1, v1, Lnts/ञ;->ౠ:Lnts/ञ;

    goto :goto_0

    .line 31
    :cond_6
    :goto_1
    invoke-static {v3}, Lnts/ञ;->ᇭ(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lnts/ञ;->ⴗ:I

    goto/16 :goto_7

    :cond_7
    if-eq v4, v1, :cond_12

    :cond_8
    :goto_2
    return-object v5

    :cond_9
    const/4 v4, 0x6

    const/16 v6, 0x4a

    const/4 v7, 0x4

    .line 35
    invoke-static {v7, v4, v6}, Lnts/ݶ;->ཞ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0x2d

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_b

    add-int/2addr v4, v1

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lnts/ञ;->ᾨ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 40
    invoke-static {v1}, Lnts/ञ;->ᇭ(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_a
    return-object v5

    :cond_b
    move v1, v2

    .line 46
    :goto_3
    iget-object v3, p0, Lnts/ञ;->て:Lnts/ञ;

    .line 47
    iget-object v4, v3, Lnts/ञ;->ᰛ:Lnts/ञ;

    iget v4, v4, Lnts/ञ;->ᛃ:I

    sub-int/2addr v4, v1

    move-object v8, v3

    move v3, v1

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_e

    .line 49
    invoke-virtual {v1, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v3, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, -0x1

    .line 56
    :cond_d
    iget-object v1, v1, Lnts/ञ;->Ͼ:Lnts/ञ;

    goto :goto_4

    .line 58
    :cond_e
    :goto_5
    iput v4, v1, Lnts/ञ;->ⴗ:I

    goto :goto_7

    :cond_f
    return-object v5

    :cond_10
    if-nez p2, :cond_12

    .line 63
    iget-object v1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    :goto_6
    if-eqz v1, :cond_13

    .line 65
    invoke-virtual {v1, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_7

    .line 68
    :cond_11
    iget-object v1, v1, Lnts/ञ;->ౠ:Lnts/ञ;

    goto :goto_6

    :cond_12
    move-object v1, v5

    :cond_13
    :goto_7
    if-eqz p2, :cond_14

    .line 73
    invoke-virtual {p0, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    move-object v1, p0

    .line 77
    :cond_14
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_15

    if-eqz v1, :cond_15

    .line 78
    invoke-virtual {v1, p1, v2, p3}, Lnts/ञ;->ㆃ(Ljava/util/StringTokenizer;ZZ)Lnts/ञ;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v1
.end method

.method public ㆃ(Lnts/Ղ;)Lnts/ञ;
    .locals 8

    .line 130
    iget-object v0, p1, Lnts/Ղ;->ㆃ:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnts/Ղ;->ㆃ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p1, Lnts/Ղ;->ㆃ:Ljava/util/Vector;

    iget v2, p1, Lnts/Ղ;->ᾨ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lnts/Ղ;->ᾨ:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    const-string v2, "@"

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string v2, ".."

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x1

    .line 140
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 141
    invoke-static {v0, v3}, Lnts/ञ;->ㆃ(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    aget-object v3, v3, v5

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    iget-object v4, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    if-eqz v4, :cond_10

    .line 145
    invoke-static {v3}, Lnts/ञ;->ᾨ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 146
    invoke-static {v3}, Lnts/ञ;->ᇭ(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 147
    iget v4, p0, Lnts/ञ;->ᛃ:I

    if-lt v2, v4, :cond_4

    goto :goto_4

    .line 150
    :cond_4
    iget-object v1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    :goto_2
    if-eqz v1, :cond_7

    .line 152
    invoke-virtual {v1, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    if-gez v2, :cond_6

    goto :goto_3

    .line 158
    :cond_6
    iget-object v1, v1, Lnts/ञ;->ౠ:Lnts/ञ;

    goto :goto_2

    .line 160
    :cond_7
    :goto_3
    invoke-static {v3}, Lnts/ञ;->ᇭ(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lnts/ञ;->ⴗ:I

    goto :goto_a

    :cond_8
    :goto_4
    return-object v1

    :cond_9
    const/4 v4, 0x6

    const/16 v6, 0x23

    const/16 v7, 0xa

    .line 162
    invoke-static {v7, v4, v6}, Lnts/ݶ;->ཞ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "-"

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_b

    add-int/2addr v4, v2

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v2}, Lnts/ञ;->ᾨ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 167
    invoke-static {v2}, Lnts/ञ;->ᇭ(Ljava/lang/String;)I

    move-result v5

    goto :goto_5

    :cond_a
    return-object v1

    .line 173
    :cond_b
    :goto_5
    iget-object v1, p0, Lnts/ञ;->て:Lnts/ञ;

    .line 174
    iget-object v2, v1, Lnts/ञ;->ᰛ:Lnts/ञ;

    iget v2, v2, Lnts/ञ;->ᛃ:I

    sub-int/2addr v2, v5

    :goto_6
    if-eqz v1, :cond_e

    .line 176
    invoke-virtual {v1, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v5, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, -0x1

    .line 183
    :cond_d
    iget-object v1, v1, Lnts/ञ;->Ͼ:Lnts/ञ;

    goto :goto_6

    .line 185
    :cond_e
    :goto_7
    iput v2, v1, Lnts/ञ;->ⴗ:I

    goto :goto_a

    :cond_f
    return-object v1

    .line 190
    :cond_10
    iget-object v1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    :goto_8
    if-eqz v1, :cond_13

    .line 192
    invoke-virtual {v1, v0}, Lnts/ञ;->ㆃ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    .line 195
    :cond_11
    iget-object v1, v1, Lnts/ञ;->ౠ:Lnts/ञ;

    goto :goto_8

    :cond_12
    :goto_9
    move-object v1, p0

    .line 200
    :cond_13
    :goto_a
    invoke-virtual {p1}, Lnts/Ղ;->ㆃ()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    .line 201
    invoke-virtual {v1, p1}, Lnts/ञ;->ㆃ(Lnts/Ղ;)Lnts/ञ;

    move-result-object p1

    return-object p1

    :cond_14
    return-object v1
.end method

.method public ㆃ(Lnts/ञ;)V
    .locals 2

    .line 108
    iput-object p0, p1, Lnts/ञ;->ᰛ:Lnts/ञ;

    .line 109
    iget-object v0, p0, Lnts/ञ;->て:Lnts/ञ;

    .line 110
    iget v1, p0, Lnts/ञ;->ᛃ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnts/ञ;->ᛃ:I

    .line 111
    iget-object v1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, v0, Lnts/ञ;->ౠ:Lnts/ञ;

    .line 117
    iput-object p1, v0, Lnts/ञ;->ౠ:Lnts/ञ;

    .line 118
    iput-object v0, p1, Lnts/ञ;->Ͼ:Lnts/ञ;

    .line 119
    iput-object v1, p1, Lnts/ञ;->ౠ:Lnts/ञ;

    if-nez v1, :cond_1

    .line 121
    iput-object p1, p0, Lnts/ञ;->て:Lnts/ञ;

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 124
    iput-object p1, p0, Lnts/ञ;->て:Lnts/ञ;

    iput-object p1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    const/4 v0, 0x0

    .line 125
    iput-object v0, p1, Lnts/ञ;->ౠ:Lnts/ञ;

    iput-object v0, p1, Lnts/ञ;->Ͼ:Lnts/ञ;

    return-void

    .line 127
    :cond_3
    iput-object v1, p1, Lnts/ञ;->ౠ:Lnts/ञ;

    .line 128
    iput-object p1, v1, Lnts/ञ;->Ͼ:Lnts/ञ;

    .line 129
    iput-object p1, p0, Lnts/ञ;->ᙕ:Lnts/ञ;

    return-void
.end method

.method public ㆃ(Ljava/lang/String;)Z
    .locals 1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lnts/ञ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
