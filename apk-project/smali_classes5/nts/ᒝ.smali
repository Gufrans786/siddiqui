.class public Lnts/ᒝ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:Ljava/lang/String;

.field public ዲ:Ljava/lang/String;

.field public ᎊ:Z

.field public ᙕ:Ljava/lang/String;

.field public ᰛ:Ljava/lang/String;

.field public て:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lnts/ᒝ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 3
    iput-object p1, p0, Lnts/ᒝ;->ౠ:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lnts/ᒝ;->ዲ:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lnts/ᒝ;->Ͼ:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lnts/ᒝ;->ᰛ:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lnts/ᒝ;->ᙕ:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lnts/ᒝ;->て:Z

    .line 9
    iput-boolean p7, p0, Lnts/ᒝ;->ᎊ:Z

    return-void
.end method

.method public static ㆃ(Ljava/lang/String;)Lnts/ᒝ;
    .locals 19

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 13
    new-array v2, v1, [C

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :cond_0
    const-string v3, ""

    move v4, v1

    move v5, v4

    move v6, v5

    move v8, v6

    move-object v7, v3

    .line 18
    :goto_0
    array-length v9, v2

    const/4 v10, 0x1

    if-ge v4, v9, :cond_6

    .line 19
    aget-char v9, v2, v4

    const/16 v11, 0x3b

    if-eqz v5, :cond_3

    if-eq v5, v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v12, 0x22

    if-ne v9, v12, :cond_2

    xor-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v9, v11, :cond_5

    if-nez v8, :cond_5

    .line 36
    invoke-static {v2, v6, v4, v10, v10}, Lnts/ᇮ;->ㆃ([CIIZZ)Ljava/lang/String;

    move-result-object v5

    .line 37
    new-instance v6, Lnts/ᇮ;

    invoke-direct {v6, v7, v5}, Lnts/ᇮ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v4, 0x1

    move v5, v1

    goto :goto_1

    :cond_3
    if-ne v9, v11, :cond_4

    add-int/lit8 v6, v4, 0x1

    goto :goto_1

    :cond_4
    const/16 v11, 0x3d

    if-ne v9, v11, :cond_5

    .line 38
    invoke-static {v2, v6, v4, v10, v1}, Lnts/ᇮ;->ㆃ([CIIZZ)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v4, 0x1

    move v5, v10

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-ne v5, v10, :cond_7

    .line 58
    invoke-static {v2, v6, v4, v10, v10}, Lnts/ᇮ;->ㆃ([CIIZZ)Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v4, Lnts/ᇮ;

    invoke-direct {v4, v7, v2}, Lnts/ᇮ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    const/4 v2, 0x0

    move v4, v1

    move-object v6, v2

    move-object v5, v3

    .line 67
    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnts/ᇮ;

    .line 69
    iget-object v8, v7, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    .line 70
    iget-object v9, v7, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    const-string v11, "*0"

    .line 71
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_8

    add-int/lit8 v5, v11, 0x1

    .line 73
    invoke-virtual {v8, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v8, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 76
    iput-object v6, v7, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    move-object v6, v7

    :cond_8
    const-string v12, "*"

    .line 77
    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-gez v11, :cond_9

    .line 79
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-virtual {v8, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 80
    iput-object v12, v7, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    :cond_9
    const/16 v12, 0x27

    .line 81
    invoke-virtual {v9, v12, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    .line 82
    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-lez v13, :cond_a

    if-le v12, v13, :cond_a

    .line 84
    invoke-virtual {v9, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 85
    invoke-virtual {v9, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    .line 86
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 87
    iput-object v13, v7, Lnts/ᇮ;->ᇭ:Ljava/lang/String;

    .line 88
    iput-object v14, v7, Lnts/ᇮ;->ᰛ:Ljava/lang/String;

    .line 90
    :cond_a
    iput-boolean v10, v7, Lnts/ᇮ;->Ͼ:Z

    .line 91
    iput-object v9, v7, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    :cond_b
    if-eqz v6, :cond_d

    if-gez v11, :cond_d

    .line 92
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget-object v8, v6, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    iput-object v7, v6, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    :cond_c
    move-object v6, v2

    move-object v5, v3

    :goto_3
    add-int/lit8 v4, v4, -0x1

    :cond_d
    add-int/2addr v4, v10

    goto/16 :goto_2

    :cond_e
    move v3, v1

    .line 106
    :goto_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnts/ᇮ;

    .line 108
    iget-boolean v5, v4, Lnts/ᇮ;->Ͼ:Z

    if-eqz v5, :cond_12

    if-nez v5, :cond_f

    goto :goto_7

    .line 109
    :cond_f
    iget-object v5, v4, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    iget-object v6, v4, Lnts/ᇮ;->ᇭ:Ljava/lang/String;

    .line 110
    invoke-static {v5}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v5

    .line 111
    new-instance v7, Lnts/ሠ;

    invoke-direct {v7}, Lnts/ሠ;-><init>()V

    .line 112
    iput-object v6, v7, Lnts/ሠ;->ᇭ:Ljava/lang/String;

    move v6, v1

    .line 113
    :goto_5
    array-length v8, v5

    if-ge v6, v8, :cond_11

    add-int/lit8 v8, v6, 0x1

    .line 114
    aget-byte v9, v5, v6

    const/16 v11, 0x25

    if-ne v9, v11, :cond_10

    .line 115
    new-array v9, v10, [B

    const/4 v11, 0x2

    .line 116
    invoke-static {v5, v8, v9, v1, v11}, Lnts/ⶑ;->ㆃ([BI[BII)I

    .line 117
    aget-byte v9, v9, v1

    add-int/lit8 v6, v6, 0x3

    goto :goto_6

    :cond_10
    move v6, v8

    .line 118
    :goto_6
    invoke-virtual {v7, v9}, Lnts/ሠ;->ㆃ(I)Lnts/ሠ;

    goto :goto_5

    .line 120
    :cond_11
    invoke-virtual {v7}, Lnts/ሠ;->ᾨ()Ljava/lang/String;

    move-result-object v5

    .line 121
    iput-object v5, v4, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    :cond_12
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 122
    :cond_13
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ᇮ;

    .line 124
    iget-object v12, v2, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    .line 125
    iget-object v13, v2, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    const/16 v2, 0x35

    const/4 v3, 0x7

    .line 126
    invoke-static {v1, v3, v2}, Lnts/ݶ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnts/ᇮ;->ㆃ(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x70

    const/4 v4, 0x6

    .line 127
    invoke-static {v3, v4, v2}, Lnts/ݶ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnts/ᇮ;->ㆃ(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x4

    const/16 v3, 0x74

    const/16 v5, 0xd

    .line 128
    invoke-static {v5, v2, v3}, Lnts/ݶ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnts/ᇮ;->ㆃ(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0x11

    const/16 v3, 0x71

    .line 129
    invoke-static {v2, v4, v3}, Lnts/ݶ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 130
    :goto_8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 131
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnts/ᇮ;

    .line 132
    iget-object v4, v4, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move/from16 v17, v10

    goto :goto_9

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_15
    move/from16 v17, v1

    .line 133
    :goto_9
    new-instance v11, Lnts/ᒝ;

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v18}, Lnts/ᒝ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v11

    :cond_16
    return-object v2
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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ᒝ;->ౠ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lnts/ᒝ;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lnts/ᒝ;

    .line 5
    iget-object v0, p0, Lnts/ᒝ;->ౠ:Ljava/lang/String;

    iget-object v1, p1, Lnts/ᒝ;->ౠ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnts/ᒝ;->ᰛ:Ljava/lang/String;

    iget-object v1, p1, Lnts/ᒝ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnts/ᒝ;->ᙕ:Ljava/lang/String;

    iget-object p1, p1, Lnts/ᒝ;->ᙕ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lnts/Ί;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lnts/Ί;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnts/ᒝ;->ౠ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnts/ᒝ;->ዲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
