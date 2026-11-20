.class public Lnts/ᗋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ㆃ:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static varargs ᇭ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2d

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2c

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v3, v8, :cond_0

    goto/16 :goto_15

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_1

    .line 27
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    move/from16 v16, v7

    const/4 v7, 0x0

    goto/16 :goto_17

    .line 43
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/16 v10, 0x20

    const/16 v11, 0x30

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_3

    if-eq v6, v10, :cond_3

    const/16 v12, 0x23

    if-eq v6, v12, :cond_3

    if-ne v6, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v5, v3, 0x2

    .line 50
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x39

    if-lt v12, v11, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v12, v14, :cond_4

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v11

    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v5, v15, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v11, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-gt v15, v14, :cond_5

    mul-int/lit8 v12, v12, 0xa

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    sub-int/2addr v15, v11

    add-int/2addr v12, v15

    goto :goto_3

    :cond_4
    const/4 v12, -0x1

    .line 57
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v13, 0x2e

    if-ne v15, v13, :cond_7

    add-int/lit8 v13, v5, 0x1

    .line 59
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v11, :cond_6

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-gt v15, v14, :cond_6

    .line 60
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sub-int/2addr v13, v11

    add-int/lit8 v5, v5, 0x2

    .line 61
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v5, v15, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v11, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-gt v15, v14, :cond_8

    mul-int/lit8 v13, v13, 0xa

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    sub-int/2addr v15, v11

    add-int/2addr v13, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move v5, v13

    :cond_7
    const/4 v13, -0x1

    .line 67
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x68

    move/from16 v16, v7

    const/16 v11, 0x75

    const/16 v10, 0x69

    const/16 v7, 0x64

    const/16 v2, 0x6f

    const-string v8, ""

    if-ne v14, v15, :cond_d

    add-int/lit8 v14, v5, 0x1

    .line 69
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x68

    if-ne v15, v9, :cond_9

    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    :cond_9
    move v5, v14

    .line 76
    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v7, :cond_b

    if-eq v14, v10, :cond_b

    if-eq v14, v11, :cond_b

    if-eq v14, v2, :cond_b

    const/16 v9, 0x78

    if-eq v14, v9, :cond_b

    const/16 v9, 0x58

    if-eq v14, v9, :cond_b

    const/16 v9, 0x6e

    if-ne v14, v9, :cond_a

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    :cond_c
    :goto_7
    move/from16 v9, v16

    goto/16 :goto_b

    :cond_d
    const/16 v9, 0x6c

    if-ne v14, v9, :cond_10

    add-int/lit8 v9, v5, 0x1

    .line 83
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x2

    const-string v9, "ll"

    goto :goto_8

    :cond_e
    const-string v5, "l"

    move/from16 v17, v9

    move-object v9, v5

    move/from16 v5, v17

    .line 90
    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v7, :cond_c

    if-eq v14, v10, :cond_c

    if-eq v14, v11, :cond_c

    if-eq v14, v2, :cond_c

    const/16 v11, 0x78

    if-eq v14, v11, :cond_c

    const/16 v11, 0x58

    if-eq v14, v11, :cond_c

    const/16 v11, 0x6e

    if-eq v14, v11, :cond_c

    const/16 v11, 0x63

    if-eq v14, v11, :cond_f

    const/16 v11, 0x73

    if-ne v14, v11, :cond_a

    :cond_f
    const-string v11, "l"

    .line 91
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_10
    const/16 v9, 0x6a

    if-eq v14, v9, :cond_13

    const/16 v9, 0x7a

    if-eq v14, v9, :cond_13

    const/16 v9, 0x74

    if-ne v14, v9, :cond_11

    goto/16 :goto_9

    :cond_11
    const/16 v9, 0x4c

    if-ne v14, v9, :cond_12

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x66

    if-eq v9, v11, :cond_14

    const/16 v11, 0x46

    if-eq v9, v11, :cond_14

    const/16 v11, 0x65

    if-eq v9, v11, :cond_14

    const/16 v11, 0x45

    if-eq v9, v11, :cond_14

    const/16 v11, 0x67

    if-eq v9, v11, :cond_14

    const/16 v11, 0x47

    if-eq v9, v11, :cond_14

    const/16 v11, 0x61

    if-eq v9, v11, :cond_14

    const/16 v11, 0x41

    if-ne v9, v11, :cond_a

    goto/16 :goto_a

    :cond_12
    if-eq v14, v7, :cond_c

    if-eq v14, v10, :cond_c

    if-eq v14, v11, :cond_c

    if-eq v14, v2, :cond_c

    const/16 v9, 0x78

    if-eq v14, v9, :cond_c

    const/16 v9, 0x58

    if-eq v14, v9, :cond_c

    const/16 v9, 0x6e

    if-eq v14, v9, :cond_c

    const/16 v11, 0x66

    if-eq v14, v11, :cond_c

    const/16 v11, 0x46

    if-eq v14, v11, :cond_c

    const/16 v9, 0x65

    if-eq v14, v9, :cond_c

    const/16 v9, 0x45

    if-eq v14, v9, :cond_c

    const/16 v9, 0x67

    if-eq v14, v9, :cond_c

    const/16 v9, 0x47

    if-eq v14, v9, :cond_c

    const/16 v9, 0x61

    if-eq v14, v9, :cond_c

    const/16 v9, 0x41

    if-eq v14, v9, :cond_c

    const/16 v11, 0x63

    if-eq v14, v11, :cond_c

    const/16 v11, 0x73

    if-ne v14, v11, :cond_a

    goto/16 :goto_7

    .line 107
    :cond_13
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v7, :cond_14

    if-eq v9, v10, :cond_14

    if-eq v9, v11, :cond_14

    if-eq v9, v2, :cond_14

    const/16 v11, 0x78

    if-eq v9, v11, :cond_14

    const/16 v11, 0x58

    if-eq v9, v11, :cond_14

    const/16 v11, 0x6e

    if-ne v9, v11, :cond_a

    :cond_14
    :goto_a
    move v14, v9

    goto/16 :goto_7

    :goto_b
    if-eqz v9, :cond_2b

    add-int/lit8 v9, v4, 0x1

    .line 129
    aget-object v4, p1, v4

    const/16 v11, 0x73

    if-ne v14, v11, :cond_15

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_14

    :cond_15
    const/16 v11, 0x63

    if-ne v14, v11, :cond_17

    .line 135
    instance-of v2, v4, Ljava/lang/Character;

    if-eqz v2, :cond_16

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 137
    :cond_16
    instance-of v2, v4, Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    .line 138
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1f

    const v4, 0xffff

    if-gt v2, v4, :cond_1f

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0xffff

    and-int/2addr v2, v7

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_17
    if-eq v14, v7, :cond_25

    if-ne v14, v10, :cond_18

    goto/16 :goto_11

    :cond_18
    const/16 v11, 0x78

    if-eq v14, v11, :cond_21

    if-eq v14, v2, :cond_21

    const/16 v11, 0x58

    if-ne v14, v11, :cond_19

    move/from16 v8, v16

    goto/16 :goto_d

    :cond_19
    const/16 v11, 0x66

    if-eq v14, v11, :cond_1a

    const/16 v11, 0x46

    if-ne v14, v11, :cond_1f

    .line 158
    :cond_1a
    instance-of v2, v4, Ljava/lang/Float;

    if-eqz v2, :cond_1b

    .line 159
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v10

    goto :goto_c

    .line 160
    :cond_1b
    instance-of v2, v4, Ljava/lang/Double;

    if-eqz v2, :cond_20

    .line 161
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 163
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-lez v13, :cond_1f

    const-string v2, "."

    .line 165
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1c

    const-string v2, "."

    .line 166
    invoke-static {v8, v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x30

    invoke-static {v4, v13}, Lnts/ᗋ;->ㆃ(CI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1c
    const/16 v4, 0x30

    .line 168
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    if-ge v7, v13, :cond_1d

    .line 169
    invoke-static {v8}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int/2addr v13, v7

    invoke-static {v4, v13}, Lnts/ᗋ;->ㆃ(CI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1d
    if-le v7, v13, :cond_1f

    add-int/2addr v2, v13

    .line 171
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 172
    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v8, v16

    .line 173
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x35

    if-lt v10, v11, :cond_1e

    invoke-static {v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v4, v8

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 174
    :cond_1e
    invoke-static {v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1f
    move-object v2, v8

    goto/16 :goto_12

    .line 175
    :cond_20
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x1b

    const/16 v2, 0x49

    const/16 v3, 0x43

    invoke-static {v3, v1, v2}, Lnts/ッ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-direct {v0, v7, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_21
    const/4 v8, 0x1

    .line 176
    :goto_d
    invoke-static {v4, v8}, Lnts/ᗋ;->ㆃ(Ljava/lang/Object;Z)J

    move-result-wide v10

    if-ne v14, v2, :cond_22

    .line 177
    invoke-static {v10, v11}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_22
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    :goto_e
    const/16 v7, 0x23

    if-ne v6, v7, :cond_24

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v14, v2, :cond_23

    const-string v2, "0"

    goto :goto_f

    :cond_23
    const-string v2, "0x"

    :goto_f
    invoke-static {v7, v2, v4}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_24
    move-object v2, v4

    :goto_10
    const/16 v11, 0x58

    if-ne v14, v11, :cond_27

    .line 181
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_25
    :goto_11
    const/4 v7, 0x0

    .line 182
    invoke-static {v4, v7}, Lnts/ᗋ;->ㆃ(Ljava/lang/Object;Z)J

    move-result-wide v10

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_27

    const/16 v4, 0x20

    if-eq v6, v4, :cond_26

    const/16 v4, 0x2b

    if-ne v6, v4, :cond_27

    :cond_26
    const/4 v7, 0x0

    .line 185
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_27
    :goto_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v12, v3, :cond_2a

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_28

    .line 219
    invoke-static {v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v12, v2

    const/16 v4, 0x20

    invoke-static {v4, v12}, Lnts/ᗋ;->ㆃ(CI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_28
    const/16 v4, 0x30

    if-ne v6, v4, :cond_29

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v12, v6

    invoke-static {v4, v12}, Lnts/ᗋ;->ㆃ(CI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_29
    if-nez v6, :cond_2a

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v12, v4

    const/16 v4, 0x20

    invoke-static {v4, v12}, Lnts/ᗋ;->ㆃ(CI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    :cond_2a
    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14
    move v3, v5

    move v4, v9

    const/4 v7, 0x0

    goto :goto_16

    .line 228
    :cond_2b
    new-instance v1, Lnts/ᛎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x19

    const/16 v6, 0x49

    const/16 v7, 0x5e

    invoke-static {v7, v4, v6}, Lnts/ッ;->Ͼ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x13

    const/16 v3, 0x7f

    const/16 v4, 0x77

    invoke-static {v4, v2, v3}, Lnts/ッ;->Ͼ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-direct {v1, v7, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2c
    :goto_15
    const/4 v7, 0x0

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_16
    const/16 v16, 0x1

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 387
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᙕ(Ljava/lang/String;)[B
    .locals 3

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ᾨ(B)C
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    return p0
.end method

.method public static ᾨ([BII)Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 41
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 42
    aget-byte v2, p0, v1

    invoke-static {v2}, Lnts/ᗋ;->ᾨ(B)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/Object;Z)J
    .locals 4

    .line 30
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 31
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p1, :cond_0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0

    :cond_0
    int-to-long p0, p0

    return-wide p0

    .line 33
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 34
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    if-eqz p1, :cond_2

    int-to-long p0, p0

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    return-wide p0

    :cond_2
    int-to-long p0, p0

    return-wide p0

    .line 36
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 37
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    if-eqz p1, :cond_4

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    :cond_4
    int-to-long p0, p0

    return-wide p0

    .line 39
    :cond_5
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_6

    .line 40
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 41
    :cond_6
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_7

    .line 42
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    return-wide p0

    .line 49
    :cond_7
    new-instance p1, Lnts/ᛎ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x17

    const/16 v2, 0x6c

    const/16 v3, 0x8a

    invoke-static {v3, v1, v2}, Lnts/ッ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static ㆃ(CI)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnts/ᗋ;->ᾨ(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ͼ(I)I
    .locals 3

    .line 8
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p0, v1, p1}, Lnts/ᗋ;->ㆃ(II)I

    return v1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lnts/ᗋ;->ᾨ(C)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public Ͼ(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1
.end method

.method public Ͼ()V
    .locals 4

    .line 3
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method public ౠ()I
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public ౠ(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public ౠ(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ᇭ()I
    .locals 7

    .line 6
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v3, v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    move v2, v4

    move v4, v1

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-lt v3, v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x39

    if-le v3, v6, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v1, 0xa

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v5

    add-int/2addr v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    mul-int/2addr v2, v1

    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public ᇭ([BI)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lnts/ᗋ;->ᙕ()I

    return v0

    :cond_0
    if-ltz p2, :cond_1

    .line 2
    invoke-static {p1, v0, p2}, Lnts/ᗋ;->ᾨ([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public ᇭ(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public ᇭ(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnts/ၽ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ᇭ([B)Z
    .locals 1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    invoke-static {v0, p1}, Lnts/ሠ;->ㆃ([B[B)Z

    move-result p1

    return p1
.end method

.method public ᙕ()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return v1
.end method

.method public ᰛ(Ljava/lang/String;)I
    .locals 1

    .line 4
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ᰛ([B)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lnts/ᗋ;->ᙕ()I

    return v0

    .line 2
    :cond_0
    array-length v1, p1

    invoke-static {p1, v0, v1}, Lnts/ᗋ;->ᾨ([BII)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    return v0
.end method

.method public ᰛ()J
    .locals 10

    .line 5
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v5, v4, :cond_1

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x39

    if-le v6, v8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0xa

    mul-long/2addr v1, v8

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    mul-long/2addr v4, v1

    return-wide v4

    :cond_4
    :goto_2
    return-wide v1
.end method

.method public ᰛ(I)[B
    .locals 1

    if-ltz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lnts/ᗋ;->ᇭ(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnts/ᗋ;->ᙕ(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ᾨ(I)C
    .locals 1

    .line 11
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public ᾨ(C)I
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public ᾨ(IB)I
    .locals 1

    .line 4
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lnts/ᗋ;->Ͼ(I)I

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lnts/ᗋ;->ᾨ(B)C

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 p1, 0x0

    return p1
.end method

.method public ᾨ(Ljava/lang/String;I)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public varargs ᾨ(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lnts/ᗋ;->ᇭ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public ᾨ([B)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 13
    :cond_0
    array-length v3, v1

    .line 14
    array-length v4, v1

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v4, 0x10

    .line 16
    new-array v5, v4, [B

    fill-array-data v5, :array_0

    const/16 v6, 0x3b

    const/16 v7, 0x43

    .line 18
    invoke-static {v2, v7, v6}, Lnts/ッ;->Ͼ(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v6

    .line 19
    array-length v7, v6

    invoke-static {v6, v2, v7}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v7

    add-int/lit8 v8, v3, 0xf

    .line 21
    div-int/2addr v8, v4

    mul-int/2addr v8, v4

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_8

    move v10, v2

    :goto_1
    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ge v10, v4, :cond_5

    if-ge v9, v3, :cond_4

    .line 26
    aget-byte v13, v1, v9

    mul-int/lit8 v14, v10, 0x3

    add-int/lit8 v15, v10, 0x33

    and-int/lit16 v4, v13, 0xff

    shr-int/2addr v4, v11

    .line 29
    aget-byte v4, v5, v4

    aput-byte v4, v7, v14

    add-int/2addr v14, v12

    and-int/lit8 v4, v13, 0xf

    .line 30
    aget-byte v4, v5, v4

    aput-byte v4, v7, v14

    const/16 v4, 0x20

    if-lt v13, v4, :cond_2

    const/16 v4, 0x7e

    if-le v13, v4, :cond_3

    :cond_2
    const/16 v13, 0x2e

    .line 31
    :cond_3
    aput-byte v13, v7, v15

    :cond_4
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x10

    goto :goto_1

    .line 34
    :cond_5
    const-string v4, ""

    invoke-static {v4}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0, v4}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v4, v9, -0x10

    int-to-long v13, v4

    .line 35
    invoke-static {v13, v14, v11, v12}, Lnts/ၽ;->ㆃ(JIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    const-string v4, "  "

    .line 36
    invoke-virtual {v0, v4}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    .line 37
    invoke-static {v7}, Lnts/ၽ;->ㆃ([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    if-ge v9, v3, :cond_7

    const-string v4, "\r\n"

    .line 38
    invoke-virtual {v0, v4}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    .line 39
    :cond_7
    array-length v4, v6

    invoke-static {v6, v2, v4}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v7

    const/16 v4, 0x10

    goto :goto_0

    :cond_8
    :goto_2
    return v2

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public ᾨ(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 6
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ᾨ([BI)Z
    .locals 2

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_2

    array-length v0, p1

    if-ge v0, p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    invoke-static {p1, v1, p2}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lnts/ሠ;->ㆃ([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public ᾨ()[B
    .locals 1

    .line 10
    invoke-virtual {p0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ᗋ;->ᙕ(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public て()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Lnts/ᗋ;->ᾨ(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    .line 3
    :cond_1
    iget-object v1, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 5
    invoke-virtual {p0, v1}, Lnts/ᗋ;->ᾨ(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lnts/ᗋ;->Ͼ(I)I

    move-result v0

    return v0
.end method

.method public ㆃ(B)I
    .locals 1

    .line 11
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-static {p1}, Lnts/ᗋ;->ᾨ(B)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(C)I
    .locals 3

    .line 13
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ㆃ(I)I
    .locals 3

    .line 7
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(IB)I
    .locals 1

    .line 24
    invoke-static {p2}, Lnts/ᗋ;->ᾨ(B)C

    move-result p2

    :goto_0
    if-lez p1, :cond_0

    .line 25
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(IC)I
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 10
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(II)I
    .locals 1

    .line 12
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(J)I
    .locals 3

    .line 8
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 2
    iget-object v1, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return v0
.end method

.method public ㆃ(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-ltz v1, :cond_3

    .line 19
    iget-object v2, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 21
    iget-object v2, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public varargs ㆃ(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 0

    .line 9
    invoke-static {p1, p2}, Lnts/ᗋ;->ᇭ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ(Lnts/ᗋ;)I
    .locals 1

    .line 14
    invoke-virtual {p1}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnts/ᗋ;->ౠ()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lnts/ᗋ;->ᾨ(Ljava/lang/String;I)I

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ([B)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    .line 4
    array-length v2, p1

    invoke-static {p1, v0, v2}, Lnts/ᗋ;->ᾨ([BII)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return v0
.end method

.method public ㆃ([BI)I
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 6
    iget-object v1, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-static {p1, v0, p2}, Lnts/ᗋ;->ᾨ([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return v0
.end method

.method public ㆃ([BII)I
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 26
    invoke-static {v0, p1, p2, p3, v1}, Lnts/ၽ;->ㆃ(I[BIIZ)[B

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lnts/ᗋ;->ㆃ:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
