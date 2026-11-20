.class public Lnts/ऩ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ऩ;

.field public ౠ:Lnts/ऩ;

.field public ዲ:Ljava/util/Vector;

.field public ᎊ:Ljava/util/Vector;

.field public ᙕ:Lnts/ऩ;

.field public ᚹ:Lnts/ᬯ;

.field public ᛃ:I

.field public ᡲ:Ljava/util/Vector;

.field public ᰛ:Lnts/ऩ;

.field public ᵑ:I

.field public Ὺ:Ljava/lang/String;

.field public Ⲳ:I

.field public ⴗ:I

.field public て:Lnts/ऩ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ऩ;->ዲ:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ऩ;->ᎊ:Ljava/util/Vector;

    .line 4
    new-instance v0, Lnts/ᬯ;

    invoke-direct {v0}, Lnts/ᬯ;-><init>()V

    iput-object v0, p0, Lnts/ऩ;->ᚹ:Lnts/ᬯ;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lnts/ऩ;->Ὺ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnts/ऩ;Lnts/ᬯ;Ljava/util/Vector;Ljava/util/Vector;II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 8
    iput-object p1, p0, Lnts/ऩ;->ᰛ:Lnts/ऩ;

    .line 9
    iput-object p2, p0, Lnts/ऩ;->ᚹ:Lnts/ᬯ;

    .line 11
    iput-object p3, p0, Lnts/ऩ;->ᎊ:Ljava/util/Vector;

    .line 12
    iput-object p4, p0, Lnts/ऩ;->ዲ:Ljava/util/Vector;

    .line 14
    iput p6, p0, Lnts/ऩ;->ᛃ:I

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lnts/ऩ;->Ὺ:Ljava/lang/String;

    return-void
.end method

.method public static Ͼ(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static ᰛ(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
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

.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lnts/ऩ;->Ὺ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᇭ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lnts/ऩ;->ዲ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lnts/ऩ;->ዲ:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnts/ῲ;

    .line 3
    iget-object v2, v1, Lnts/ῲ;->Ͼ:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, v1, Lnts/ῲ;->ᰛ:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object p1, v1, Lnts/ῲ;->ᰛ:Ljava/lang/String;

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lnts/ऩ;->ᰛ:Lnts/ऩ;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lnts/ऩ;->ᇭ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public ᾨ()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ऩ;->ᰛ:Lnts/ऩ;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnts/ऩ;->ᾨ()Ljava/lang/String;

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
    iget-object v1, p0, Lnts/ऩ;->ᚹ:Lnts/ᬯ;

    iget-object v1, v1, Lnts/ᬯ;->ᰛ:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᾨ(Ljava/lang/String;)Z
    .locals 5

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lnts/ऩ;->ᚹ:Lnts/ᬯ;

    .line 16
    iget-object v2, v0, Lnts/ᬯ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lnts/ᬯ;->ㆃ:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    iget-object v2, v0, Lnts/ᬯ;->ㆃ:Ljava/lang/String;

    .line 19
    iget-object v3, v0, Lnts/ᬯ;->ᇭ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lnts/ᬯ;->ᇭ:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    invoke-static {v4, v2}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lnts/ᬯ;->ᇭ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public ㆃ(I)Lnts/ऩ;
    .locals 2

    .line 197
    iget-object v0, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, v0, Lnts/ऩ;->ౠ:Lnts/ऩ;

    move p1, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ㆃ(Ljava/lang/String;)Lnts/ऩ;
    .locals 2

    .line 186
    iget-object v0, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    :goto_0
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Lnts/ऩ;->ᾨ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, v0, Lnts/ऩ;->ౠ:Lnts/ऩ;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ㆃ(Ljava/util/StringTokenizer;Z)Lnts/ऩ;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, p0

    goto/16 :goto_e

    :cond_0
    const-string v1, ".."

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lnts/ऩ;->ᰛ:Lnts/ऩ;

    goto/16 :goto_e

    :cond_1
    const-string v1, "["

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, ""

    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    const-string v5, "]"

    .line 12
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    .line 13
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    const-string v1, ":"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v4, :cond_5

    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnts/ऩ;->ᇭ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    return-object v7

    .line 24
    :cond_3
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 25
    invoke-static {v8, v9}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 27
    :cond_4
    invoke-static {v8}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz p2, :cond_6

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0, v0}, Lnts/ऩ;->ᾨ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v7

    .line 34
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v1, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    if-nez v1, :cond_7

    if-eqz p2, :cond_20

    .line 35
    :cond_7
    invoke-static {v5}, Lnts/ऩ;->ᰛ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 36
    invoke-static {v5}, Lnts/ऩ;->Ͼ(Ljava/lang/String;)I

    move-result v1

    .line 38
    iget-object v3, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    if-nez v3, :cond_8

    if-eqz p2, :cond_8

    if-eq v1, v6, :cond_23

    return-object v7

    :cond_8
    if-lt v1, v6, :cond_f

    .line 41
    iget v3, p0, Lnts/ऩ;->ⴗ:I

    if-le v1, v3, :cond_9

    goto :goto_3

    :cond_9
    if-nez p2, :cond_e

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 45
    iget-object v0, p0, Lnts/ऩ;->ᡲ:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 46
    new-instance v0, Ljava/util/Vector;

    iget v3, p0, Lnts/ऩ;->ⴗ:I

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnts/ऩ;->ᡲ:Ljava/util/Vector;

    .line 47
    iget-object v0, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    :goto_1
    if-eqz v0, :cond_a

    .line 49
    iget-object v3, p0, Lnts/ऩ;->ᡲ:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, v0, Lnts/ऩ;->ౠ:Lnts/ऩ;

    goto :goto_1

    .line 53
    :cond_a
    iget-object v0, p0, Lnts/ऩ;->ᡲ:Ljava/util/Vector;

    sub-int/2addr v1, v6

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnts/ऩ;

    goto/16 :goto_e

    .line 56
    :cond_b
    iget-object v3, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    :goto_2
    if-eqz v3, :cond_1e

    .line 58
    invoke-virtual {v3, v0}, Lnts/ऩ;->ᾨ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v1, v1, -0x1

    :cond_c
    if-nez v1, :cond_d

    goto/16 :goto_b

    .line 64
    :cond_d
    iget-object v3, v3, Lnts/ऩ;->ౠ:Lnts/ऩ;

    goto :goto_2

    :cond_e
    if-eq v1, v6, :cond_23

    :cond_f
    :goto_3
    return-object v7

    :cond_10
    const-string v1, "@"

    .line 71
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "="

    .line 73
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v6, :cond_15

    .line 74
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v6

    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    const/16 v10, 0x22

    if-eq v8, v10, :cond_11

    if-ne v8, v9, :cond_12

    .line 79
    :cond_11
    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 83
    :cond_12
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_13

    if-ne v8, v9, :cond_14

    .line 85
    :cond_13
    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_14

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_14
    add-int/2addr v4, v6

    .line 89
    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 91
    :cond_15
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    :goto_6
    if-nez p2, :cond_18

    .line 95
    iget-object v4, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    :goto_7
    if-eqz v4, :cond_17

    .line 97
    invoke-virtual {v4, v0}, Lnts/ऩ;->ᾨ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4, v3, v1}, Lnts/ऩ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_8

    .line 100
    :cond_16
    iget-object v4, v4, Lnts/ऩ;->ౠ:Lnts/ऩ;

    goto :goto_7

    :cond_17
    :goto_8
    move-object v0, v4

    goto :goto_e

    .line 102
    :cond_18
    invoke-virtual {p0, v3, v1}, Lnts/ऩ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    return-object v7

    :cond_19
    const/4 v1, 0x6

    const/16 v3, 0x2a

    .line 103
    const-string v8, "@L][\u0000\u0000"

    invoke-static {v8, v2, v1, v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "-"

    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_1b

    add-int/2addr v1, v6

    .line 107
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lnts/ऩ;->ᰛ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 109
    invoke-static {v1}, Lnts/ऩ;->Ͼ(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    :cond_1a
    return-object v7

    :cond_1b
    move v1, v2

    .line 115
    :goto_9
    iget-object v3, p0, Lnts/ऩ;->て:Lnts/ऩ;

    :goto_a
    if-eqz v3, :cond_1e

    .line 117
    invoke-virtual {v3, v0}, Lnts/ऩ;->ᾨ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v1, :cond_1c

    goto :goto_b

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    .line 124
    :cond_1d
    iget-object v3, v3, Lnts/ऩ;->Ͼ:Lnts/ऩ;

    goto :goto_a

    :cond_1e
    :goto_b
    move-object v0, v3

    goto :goto_e

    :cond_1f
    return-object v7

    :cond_20
    if-nez p2, :cond_23

    .line 130
    iget-object v1, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    :goto_c
    if-eqz v1, :cond_22

    .line 132
    invoke-virtual {v1, v0}, Lnts/ऩ;->ᾨ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_d

    .line 135
    :cond_21
    iget-object v1, v1, Lnts/ऩ;->ౠ:Lnts/ऩ;

    goto :goto_c

    :cond_22
    :goto_d
    move-object v0, v1

    goto :goto_e

    :cond_23
    move-object v0, v7

    :goto_e
    if-eqz p2, :cond_24

    move-object v0, p0

    .line 144
    :cond_24
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_25

    if-eqz v0, :cond_25

    .line 145
    invoke-virtual {v0, p1, v2}, Lnts/ऩ;->ㆃ(Ljava/util/StringTokenizer;Z)Lnts/ऩ;

    move-result-object p1

    return-object p1

    :cond_25
    return-object v0
.end method

.method public ㆃ(Lnts/ऩ;)V
    .locals 3

    .line 160
    iput-object p0, p1, Lnts/ऩ;->ᰛ:Lnts/ऩ;

    .line 161
    iget-object v0, p0, Lnts/ऩ;->て:Lnts/ऩ;

    .line 162
    iget v1, p0, Lnts/ऩ;->ⴗ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnts/ऩ;->ⴗ:I

    .line 163
    iget-object v1, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, v0, Lnts/ऩ;->ౠ:Lnts/ऩ;

    .line 169
    iput-object p1, v0, Lnts/ऩ;->ౠ:Lnts/ऩ;

    .line 170
    iput-object v0, p1, Lnts/ऩ;->Ͼ:Lnts/ऩ;

    .line 171
    iput-object v1, p1, Lnts/ऩ;->ౠ:Lnts/ऩ;

    if-nez v1, :cond_1

    .line 173
    iput-object p1, p0, Lnts/ऩ;->て:Lnts/ऩ;

    .line 175
    :cond_1
    iput-object v2, p0, Lnts/ऩ;->ᡲ:Ljava/util/Vector;

    return-void

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 178
    iput-object p1, p0, Lnts/ऩ;->て:Lnts/ऩ;

    iput-object p1, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    .line 179
    iput-object v2, p1, Lnts/ऩ;->ౠ:Lnts/ऩ;

    iput-object v2, p1, Lnts/ऩ;->Ͼ:Lnts/ऩ;

    goto :goto_1

    .line 181
    :cond_3
    iput-object v1, p1, Lnts/ऩ;->ౠ:Lnts/ऩ;

    .line 182
    iput-object p1, v1, Lnts/ऩ;->Ͼ:Lnts/ऩ;

    .line 183
    iput-object p1, p0, Lnts/ऩ;->ᙕ:Lnts/ऩ;

    .line 185
    :goto_1
    iput-object v2, p0, Lnts/ऩ;->ᡲ:Ljava/util/Vector;

    return-void
.end method

.method public ㆃ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, ":"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 148
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_0
    const-string v3, ""

    :goto_0
    move v0, v2

    .line 151
    :goto_1
    iget-object v4, p0, Lnts/ऩ;->ᎊ:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 152
    iget-object v4, p0, Lnts/ऩ;->ᎊ:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnts/ҡ;

    .line 153
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 154
    iget-object v5, v4, Lnts/ҡ;->ౠ:Ljava/lang/String;

    .line 155
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 156
    :cond_1
    iget-object v5, v4, Lnts/ҡ;->ᰛ:Ljava/lang/String;

    .line 157
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    iget-object v4, v4, Lnts/ҡ;->ᙕ:Ljava/lang/String;

    .line 159
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
