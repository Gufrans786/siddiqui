.class public Lnts/ၚ;
.super Lnts/ᅔ;
.source "SourceFile"


# static fields
.field public static final ᇭ:Ljava/lang/String;

.field public static ᾨ:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1b

    const/16 v1, 0x16

    const/16 v2, 0x1e7

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ၚ;->ᇭ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ᅔ;-><init>()V

    return-void
.end method

.method public static ᇭ([B)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x4f

    .line 1
    aput-byte v1, p0, v0

    const/4 v0, 0x1

    const/16 v2, 0x31

    .line 2
    aput-byte v2, p0, v0

    const/4 v0, 0x2

    const/16 v2, 0x6a

    .line 3
    aput-byte v2, p0, v0

    const/4 v0, 0x3

    const/16 v3, 0x63

    .line 4
    aput-byte v3, p0, v0

    const/4 v0, 0x4

    .line 5
    aput-byte v1, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x47

    .line 6
    aput-byte v1, p0, v0

    const/4 v0, 0x6

    const/16 v3, 0x52

    .line 7
    aput-byte v3, p0, v0

    const/4 v0, 0x7

    .line 8
    aput-byte v2, p0, v0

    const/16 v0, 0x8

    const/16 v2, 0x6c

    .line 9
    aput-byte v2, p0, v0

    const/16 v0, 0x9

    const/16 v2, 0x6e

    .line 10
    aput-byte v2, p0, v0

    const/16 v0, 0xa

    const/16 v2, 0x74

    .line 11
    aput-byte v2, p0, v0

    const/16 v0, 0xb

    const/16 v2, 0x5a

    .line 12
    aput-byte v2, p0, v0

    const/16 v0, 0xc

    const/16 v3, 0x68

    .line 13
    aput-byte v3, p0, v0

    const/16 v0, 0xd

    const/16 v3, 0x32

    .line 14
    aput-byte v3, p0, v0

    const/16 v0, 0xe

    .line 15
    aput-byte v2, p0, v0

    const/16 v0, 0xf

    .line 16
    aput-byte v2, p0, v0

    const/16 v0, 0x56

    .line 17
    invoke-static {p0, v1, v0}, Lnts/ᅔ;->ㆃ([BBB)V

    return-void
.end method

.method public static ㆃ(ILjava/lang/Class;[B)I
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x12

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v3, 0x11

    .line 9
    new-array v4, v3, [B

    .line 10
    invoke-static {v4}, Lnts/ၚ;->ᇭ([B)V

    .line 11
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x7

    const/16 v7, 0x3e

    const/16 v8, 0x9

    const/16 v9, 0x80

    const/16 v11, 0x39

    const/16 v12, 0x41

    const/16 v13, 0x56

    const/16 v15, 0x32

    const/16 v2, 0x46

    const/16 v3, 0x28

    const/16 v18, 0x5

    const/16 v14, 0x30

    const/16 v19, 0x0

    if-ge v5, v9, :cond_1

    move/from16 v16, v12

    const/16 v0, 0x11

    const/16 v17, 0xa

    goto/16 :goto_a

    :cond_1
    move/from16 v5, v19

    const/16 v17, 0xa

    :goto_0
    const/16 v10, 0x40

    if-ge v5, v10, :cond_6

    mul-int/lit8 v20, v5, 0x2

    move/from16 v21, v10

    .line 33
    aget-byte v10, v1, v20

    if-lt v10, v14, :cond_2

    if-gt v10, v11, :cond_2

    add-int/lit8 v10, v10, -0x30

    shl-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    .line 35
    aput-byte v10, v1, v5

    goto :goto_1

    :cond_2
    if-lt v10, v12, :cond_5

    if-gt v10, v2, :cond_5

    add-int/lit8 v10, v10, -0x37

    shl-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    .line 37
    aput-byte v10, v1, v5

    :goto_1
    add-int/lit8 v20, v20, 0x1

    .line 44
    aget-byte v10, v1, v20

    if-lt v10, v14, :cond_3

    if-gt v10, v11, :cond_3

    .line 46
    aget-byte v20, v1, v5

    add-int/lit8 v10, v10, -0x30

    int-to-byte v10, v10

    add-int v10, v20, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v5

    goto :goto_2

    :cond_3
    if-lt v10, v12, :cond_4

    if-gt v10, v2, :cond_4

    .line 48
    aget-byte v20, v1, v5

    add-int/lit8 v10, v10, -0x37

    int-to-byte v10, v10

    add-int v10, v20, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move/from16 v5, v19

    :goto_3
    if-ge v5, v9, :cond_7

    .line 51
    aput-byte v19, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move/from16 v5, v19

    :goto_4
    if-ge v5, v9, :cond_7

    .line 52
    aput-byte v19, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move/from16 v21, v10

    .line 53
    :cond_7
    aput-byte v19, v1, v21

    .line 55
    aget-byte v5, v1, v19

    if-nez v5, :cond_8

    move/from16 v16, v12

    const/16 v0, 0x12

    goto/16 :goto_a

    .line 58
    :cond_8
    new-array v5, v3, [B

    .line 59
    new-array v9, v8, [B

    const/16 v10, 0x10

    .line 60
    new-array v10, v10, [B

    move/from16 v16, v12

    move/from16 v12, v19

    :goto_5
    if-ge v12, v3, :cond_9

    .line 62
    aget-byte v20, v1, v12

    aput-byte v20, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    move v12, v3

    :goto_6
    const/16 v8, 0x31

    if-ge v12, v8, :cond_a

    add-int/lit8 v8, v12, -0x28

    .line 63
    aget-byte v21, v1, v12

    aput-byte v21, v9, v8

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_a
    move v8, v15

    :goto_7
    if-ge v8, v7, :cond_b

    add-int/lit8 v12, v8, -0x32

    .line 64
    aget-byte v21, v1, v8

    aput-byte v21, v10, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 66
    :cond_b
    invoke-static {v5, v9, v10, v4}, Lnts/ᅔ;->ㆃ([B[B[B[B)I

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_9

    .line 72
    :cond_c
    aget-byte v5, v1, v18

    invoke-static {v5}, Lnts/ᅔ;->Ͼ(B)B

    move-result v5

    int-to-char v5, v5

    if-eq v5, v2, :cond_11

    if-eq v5, v13, :cond_13

    const/16 v8, 0x58

    if-eq v5, v8, :cond_e

    const/16 v8, 0x5a

    if-eq v5, v8, :cond_d

    packed-switch v5, :pswitch_data_0

    move/from16 v0, v17

    goto :goto_a

    .line 89
    :cond_d
    invoke-static {v1}, Lnts/ᅔ;->ㆃ([B)I

    move-result v0

    goto :goto_a

    .line 90
    :cond_e
    invoke-static {}, Lnts/ᅔ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move/from16 v4, v19

    :goto_8
    const/16 v5, 0x8

    if-ge v4, v5, :cond_10

    .line 92
    aget-byte v5, v0, v4

    add-int/lit8 v8, v4, 0x28

    aget-byte v8, v1, v8

    if-eq v5, v8, :cond_f

    const/16 v0, 0x14

    goto :goto_a

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 96
    :cond_10
    invoke-static {v1}, Lnts/ᅔ;->ㆃ([B)I

    move-result v0

    goto :goto_a

    :cond_11
    :pswitch_0
    if-nez v0, :cond_12

    :goto_9
    move v0, v4

    goto :goto_a

    :cond_12
    const/4 v4, 0x6

    .line 102
    aget-byte v4, v1, v4

    sub-int/2addr v4, v14

    mul-int/lit8 v4, v4, 0xa

    aget-byte v5, v1, v6

    add-int/2addr v4, v5

    sub-int/2addr v4, v14

    if-eq v0, v4, :cond_13

    const/16 v0, 0xb

    goto :goto_a

    :cond_13
    :pswitch_1
    move/from16 v0, v19

    :goto_a
    const/16 v4, 0x15

    if-nez v0, :cond_16

    .line 103
    aget-byte v0, v1, v18

    invoke-static {v0}, Lnts/ᅔ;->Ͼ(B)B

    move-result v0

    int-to-char v0, v0

    if-ne v0, v13, :cond_14

    goto :goto_b

    :cond_14
    const/4 v0, 0x3

    .line 105
    aget-byte v0, v1, v0

    invoke-static {v0}, Lnts/ᅔ;->Ͼ(B)B

    move-result v0

    int-to-char v0, v0

    if-eq v0, v15, :cond_15

    move v0, v4

    goto :goto_c

    :cond_15
    :goto_b
    move/from16 v0, v19

    :cond_16
    :goto_c
    if-nez v0, :cond_1b

    .line 106
    aget-byte v0, v1, v18

    invoke-static {v0}, Lnts/ᅔ;->Ͼ(B)B

    move-result v0

    .line 107
    invoke-static {v0}, Lnts/ᅔ;->ㆃ(B)Z

    move-result v0

    const/16 v5, 0x2055

    if-nez v0, :cond_17

    goto :goto_d

    .line 108
    :cond_17
    invoke-static {v1}, Lnts/ᅔ;->ᾨ([B)I

    move-result v0

    if-le v5, v0, :cond_18

    const/16 v19, 0xd

    :cond_18
    :goto_d
    if-eqz v19, :cond_1a

    .line 109
    invoke-static {v1}, Lnts/ᅔ;->ᾨ([B)I

    move-result v0

    add-int/lit8 v1, v19, 0x41

    int-to-char v1, v1

    .line 111
    invoke-static {}, Lnts/ᅔ;->ㆃ()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x19

    .line 112
    invoke-static {v14, v9, v14}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_19

    const-string v10, " ("

    .line 113
    invoke-static {v9, v10}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x49

    invoke-static {v10, v6, v4}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    :cond_19
    invoke-static {v9}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x50

    const/16 v9, 0x5c

    invoke-static {v6, v9, v2}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xac

    const/16 v4, 0x7a

    .line 115
    invoke-static {v2, v3, v4}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd4

    move/from16 v3, v17

    invoke-static {v2, v3, v11}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xde

    const/16 v3, 0x18

    .line 116
    invoke-static {v2, v13, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x134

    const/16 v3, 0x5b

    .line 117
    invoke-static {v2, v7, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x172

    const/16 v2, 0x24

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    return v19

    :cond_1b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ㆃ(Ljava/lang/String;[BI[Ljava/lang/String;[[B)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/16 v1, 0x14

    .line 130
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x2a

    .line 131
    aput-byte v4, v2, v3

    const/4 v5, 0x1

    .line 132
    aput-byte v3, v2, v5

    .line 133
    sget-object v6, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    const/16 v7, 0xe

    const/16 v8, 0x9

    const-class v9, Lnts/ၚ;

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, 0x5

    if-eqz v6, :cond_0

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    sget-object v6, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    move/from16 v16, v5

    move/from16 v18, v11

    move/from16 v19, v12

    const/16 v17, 0x0

    goto/16 :goto_2

    .line 139
    :cond_0
    const-string v6, "/"

    invoke-static {v6}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v5

    const/16 v5, 0x2e

    const/16 v17, 0x0

    const/16 v13, 0x2f

    invoke-virtual {v15, v5, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v13, 0x184

    const/16 v14, 0x1d

    invoke-static {v13, v11, v14}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v9, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    if-nez v13, :cond_1

    .line 142
    sput-object v17, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    move/from16 v18, v11

    move/from16 v19, v12

    :goto_0
    move-object/from16 v6, v17

    goto/16 :goto_2

    .line 144
    :cond_1
    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x18a

    const/16 v15, 0x78

    .line 146
    invoke-static {v14, v12, v15}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v12

    goto :goto_1

    :cond_2
    move v14, v3

    :goto_1
    const-string v15, "!"

    .line 149
    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_3

    .line 151
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    :cond_3
    move/from16 v18, v11

    const/16 v11, 0x18f

    move/from16 v19, v12

    const/16 v12, 0x17

    .line 153
    invoke-static {v11, v7, v12}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v11

    if-gez v11, :cond_4

    const/16 v11, 0x19d

    const/16 v12, 0x24

    .line 155
    invoke-static {v11, v10, v12}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v13, v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v11

    :cond_4
    if-gez v11, :cond_5

    .line 158
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v13, v5, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v11

    :cond_5
    if-gez v11, :cond_6

    .line 161
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 164
    :cond_6
    invoke-virtual {v13, v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_7

    .line 166
    sput-object v17, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_7
    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-static {v5}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1a7

    const/16 v11, 0x52

    invoke-static {v6, v10, v11}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    new-instance v6, Ljava/io/File;

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 175
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const/16 v5, 0x1b1

    const/16 v6, 0x40

    .line 179
    invoke-static {v5, v8, v6}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 181
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 182
    invoke-static {v5}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    :cond_9
    invoke-static {v5}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1ba

    const/16 v11, 0x12

    invoke-static {v6, v10, v11}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1c4

    const/16 v11, 0x65

    invoke-static {v6, v8, v11}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    new-instance v6, Ljava/io/File;

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 187
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    goto :goto_2

    .line 191
    :cond_a
    sput-object v17, Lnts/ၚ;->ᾨ:Ljava/lang/String;

    goto/16 :goto_0

    :goto_2
    if-nez v6, :cond_d

    .line 192
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    const/16 v6, 0x17b

    const/16 v9, 0x72

    .line 194
    invoke-static {v6, v8, v9}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_c

    :goto_3
    move-object/from16 v5, v17

    goto :goto_4

    .line 196
    :cond_c
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    goto :goto_4

    .line 197
    :cond_d
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    :goto_4
    if-nez v5, :cond_e

    return v18

    .line 203
    :cond_e
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 204
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 207
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x1cd

    invoke-static {v9, v1, v4}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, p0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 209
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_f

    :cond_10
    if-nez v5, :cond_11

    .line 225
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    return v18

    :cond_11
    const-string v1, "\""

    .line 226
    :goto_5
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 227
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_12

    goto :goto_6

    :cond_12
    const-string v9, "="

    .line 228
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 229
    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    .line 230
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v11, v1}, Lnts/ၚ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v1}, Lnts/ၚ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 234
    :cond_13
    :goto_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 236
    const-string v1, "@"

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    return v18

    .line 239
    :cond_14
    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p3, v3

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\u0000"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 242
    aput-object v1, p4, v3

    .line 244
    invoke-static {v1, v3}, Lnts/ᅔ;->ᾨ([BI)I

    .line 245
    aget-object v1, p4, v3

    aget-byte v8, v1, v3

    if-nez v8, :cond_15

    const/4 v0, 0x7

    return v0

    .line 250
    :cond_15
    aget-byte v1, v1, v19

    int-to-char v1, v1

    const/16 v8, 0x4d

    const/16 v9, 0x5a

    const/16 v11, 0x56

    if-eq v1, v8, :cond_16

    const/16 v8, 0x50

    if-eq v1, v8, :cond_16

    if-eq v1, v11, :cond_16

    const/16 v8, 0x58

    if-eq v1, v8, :cond_16

    if-eq v1, v9, :cond_16

    const/16 v8, 0x53

    if-eq v1, v8, :cond_16

    const/16 v8, 0x54

    if-eq v1, v8, :cond_16

    packed-switch v1, :pswitch_data_0

    return v10

    :cond_16
    :pswitch_0
    const/16 v1, 0x1e1

    const/16 v8, 0x6a

    const/4 v10, 0x3

    .line 255
    invoke-static {v1, v10, v8}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x1e4

    const/16 v8, 0x73

    .line 256
    invoke-static {v1, v10, v8}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object/from16 v12, v17

    goto :goto_7

    :cond_17
    move-object/from16 v1, v17

    move-object v12, v1

    :goto_7
    move/from16 v8, p2

    .line 259
    invoke-static {v8, v12, v1}, Lnts/ၚ;->ㆃ(ILjava/lang/Class;[B)I

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 260
    :cond_18
    aget-object v1, p4, v3

    aget-byte v1, v1, v19

    int-to-char v1, v1

    const/16 v8, 0x42

    if-eq v1, v8, :cond_1a

    if-ne v1, v9, :cond_19

    goto :goto_8

    .line 264
    :cond_19
    invoke-static {}, Lnts/ᅔ;->ㆃ()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_9

    .line 261
    :cond_1a
    :goto_8
    aput-byte v4, v2, v3

    .line 262
    aput-byte v3, v2, v16

    :goto_9
    const/16 v1, 0x8

    .line 266
    :try_start_2
    invoke-static {v2, v3, v1}, Lnts/ᅔ;->ㆃ([BII)Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v9, v4, :cond_1b

    const-string v8, "*"

    .line 272
    :cond_1b
    :try_start_3
    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1c

    return v1

    .line 277
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 279
    aget-byte v6, v2, v3

    if-ne v6, v4, :cond_1d

    .line 280
    aget-object v2, p4, v3

    const/4 v12, 0x0

    invoke-static {v2, v12, v5, v0}, Lnts/ᅔ;->ㆃ([B[B[B[B)I

    move-result v0

    goto :goto_a

    .line 282
    :cond_1d
    aget-object v4, p4, v3

    invoke-static {v4, v2, v5, v0}, Lnts/ᅔ;->ㆃ([B[B[B[B)I

    move-result v0

    :goto_a
    if-nez v0, :cond_20

    .line 286
    aget-object v0, p4, v3

    .line 287
    aget-byte v2, v0, v19

    invoke-static {v2}, Lnts/ᅔ;->Ͼ(B)B

    move-result v2

    int-to-char v2, v2

    if-ne v2, v11, :cond_1e

    goto :goto_b

    .line 289
    :cond_1e
    aget-byte v0, v0, v10

    invoke-static {v0}, Lnts/ᅔ;->Ͼ(B)B

    move-result v0

    int-to-char v0, v0

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1f

    const/16 v0, 0x15

    goto :goto_c

    :cond_1f
    :goto_b
    move v0, v3

    :goto_c
    if-eqz v0, :cond_20

    return v0

    :cond_20
    if-nez v0, :cond_24

    .line 290
    aget-object v0, p4, v3

    .line 291
    aget-byte v2, v0, v19

    invoke-static {v2}, Lnts/ᅔ;->Ͼ(B)B

    move-result v2

    .line 292
    invoke-static {v2}, Lnts/ᅔ;->ㆃ(B)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_d

    .line 293
    :cond_21
    invoke-static {v0}, Lnts/ᅔ;->ᾨ([B)I

    move-result v0

    const/16 v2, 0x2055

    if-le v2, v0, :cond_22

    goto :goto_e

    :cond_22
    :goto_d
    move v7, v3

    :goto_e
    if-eqz v7, :cond_23

    return v7

    :cond_23
    move v0, v7

    :cond_24
    if-eqz v0, :cond_25

    return v1

    .line 294
    :cond_25
    aget-object v0, p4, v3

    invoke-static {v0}, Lnts/ᅔ;->ㆃ([B)I

    move-result v0

    return v0

    :catch_0
    return v1

    :catchall_0
    move-exception v0

    .line 295
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 296
    throw v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ㆃ(ILjava/lang/Class;[I)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move/from16 v0, p0

    const/4 v1, 0x1

    .line 297
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x1c

    const/16 v4, 0x202

    const/16 v5, 0x19

    .line 298
    invoke-static {v4, v5, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5a

    const/16 v6, 0xb

    if-eqz p1, :cond_0

    const-string v7, " ("

    .line 300
    invoke-static {v3, v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x21b

    invoke-static {v7, v6, v4}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v7, ". "

    .line 302
    invoke-static {v3, v7}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x10

    .line 320
    new-array v8, v7, [B

    fill-array-data v8, :array_0

    const/16 v9, 0x47

    const/16 v10, 0x56

    .line 321
    invoke-static {v8, v9, v10}, Lnts/ᅔ;->ㆃ([BBB)V

    .line 322
    new-array v1, v1, [[B

    const/4 v9, -0x1

    const/16 v11, 0xa

    const/4 v12, 0x5

    const/16 v13, 0x30

    const/4 v14, 0x0

    if-ne v0, v9, :cond_1

    .line 326
    sget-object v6, Lnts/ၚ;->ᇭ:Ljava/lang/String;

    invoke-static {v6, v8, v0, v2, v1}, Lnts/ၚ;->ㆃ(Ljava/lang/String;[BI[Ljava/lang/String;[[B)I

    move-result v0

    aput v0, p2, v14

    goto/16 :goto_4

    .line 328
    :cond_1
    sget-object v9, Lnts/ၚ;->ᇭ:Ljava/lang/String;

    .line 329
    invoke-static {v9, v8, v0, v2, v1}, Lnts/ၚ;->ㆃ(Ljava/lang/String;[BI[Ljava/lang/String;[[B)I

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_0

    .line 334
    :cond_2
    aget-object v16, v1, v14

    if-nez v16, :cond_3

    goto :goto_0

    .line 339
    :cond_3
    aget-byte v16, v16, v12

    invoke-static/range {v16 .. v16}, Lnts/ᅔ;->ᇭ(B)Z

    move-result v16

    if-nez v16, :cond_4

    :goto_0
    move v6, v15

    goto :goto_3

    .line 344
    :cond_4
    aget-object v15, v1, v14

    const/4 v6, 0x6

    aget-byte v17, v15, v6

    add-int/lit8 v17, v17, -0x30

    mul-int/lit8 v17, v17, 0xa

    const/16 v18, 0x7

    aget-byte v15, v15, v18

    add-int v17, v17, v15

    add-int/lit8 v15, v17, -0x30

    if-ne v0, v15, :cond_5

    goto :goto_2

    .line 349
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\\"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-static {v9, v8, v0, v2, v1}, Lnts/ၚ;->ㆃ(Ljava/lang/String;[BI[Ljava/lang/String;[[B)I

    move-result v8

    if-eqz v8, :cond_7

    if-ne v8, v6, :cond_6

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_3

    .line 359
    :cond_7
    aget-object v8, v1, v14

    aget-byte v8, v8, v12

    invoke-static {v8}, Lnts/ᅔ;->ᇭ(B)Z

    move-result v8

    if-nez v8, :cond_8

    move v6, v11

    goto :goto_3

    .line 362
    :cond_8
    aget-object v8, v1, v14

    aget-byte v6, v8, v6

    sub-int/2addr v6, v13

    mul-int/2addr v6, v11

    aget-byte v8, v8, v18

    add-int/2addr v6, v8

    sub-int/2addr v6, v13

    if-eq v0, v6, :cond_9

    :goto_1
    const/16 v6, 0xb

    goto :goto_3

    :cond_9
    :goto_2
    move v6, v14

    .line 363
    :goto_3
    aput v6, p2, v14

    .line 367
    :goto_4
    aget v0, p2, v14

    if-eqz v0, :cond_d

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c

    const/16 v4, 0x9

    if-eq v0, v4, :cond_b

    const/16 v4, 0xe

    if-eq v0, v4, :cond_a

    .line 380
    invoke-static {v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x483

    const/16 v3, 0xac

    invoke-static {v1, v3, v5}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 381
    :cond_a
    aget-object v0, v1, v14

    invoke-static {v0}, Lnts/ᅔ;->ᾨ([B)I

    move-result v0

    .line 382
    invoke-static {v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3a4

    const/16 v4, 0x35

    const/16 v5, 0x64

    invoke-static {v3, v5, v4}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    const/16 v3, 0x61

    const/16 v4, 0x408

    invoke-static {v4, v1, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2055

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    const/16 v3, 0x34

    const/16 v4, 0x42f

    invoke-static {v4, v1, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 383
    :cond_b
    invoke-static {v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd3

    const/16 v3, 0x42

    const/16 v4, 0x2d1

    invoke-static {v4, v1, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 384
    :cond_c
    invoke-static {v3}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xab

    const/16 v3, 0x2f

    const/16 v4, 0x226

    invoke-static {v4, v1, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_5
    aget v1, p2, v14

    const/16 v3, 0x41

    add-int/2addr v1, v3

    int-to-char v1, v1

    .line 398
    invoke-static {}, Lnts/ᅔ;->ㆃ()Ljava/lang/String;

    move-result-object v4

    .line 399
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x52f

    const/16 v7, 0x72

    invoke-static {v6, v2, v7}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x537

    invoke-static {v1, v11, v3}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 410
    :cond_d
    aget-object v0, v1, v14

    aget-byte v0, v0, v12

    invoke-static {v0}, Lnts/ᅔ;->ᾨ(B)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    .line 413
    :cond_e
    aget-object v0, v1, v14

    aget-byte v0, v0, v12

    int-to-char v0, v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_f

    if-eq v0, v10, :cond_f

    if-eq v0, v4, :cond_f

    packed-switch v0, :pswitch_data_0

    :goto_6
    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_f
    :pswitch_0
    new-array v0, v7, [B

    .line 418
    invoke-static {v0}, Lnts/ၚ;->ᇭ([B)V

    const/16 v1, 0x81

    .line 420
    new-array v1, v1, [B

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v14

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x55c

    const/16 v4, 0x2c

    const/16 v5, 0x6d

    invoke-static {v3, v4, v5}, Lnts/ࡁ;->ᯚ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 423
    invoke-static {}, Lnts/ᅔ;->ㆃ()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 425
    aput-byte v14, v1, v14

    .line 427
    invoke-static {v2, v14}, Lnts/ᅔ;->ᾨ([BI)I

    .line 428
    aget-byte v4, v2, v14

    if-nez v4, :cond_10

    goto :goto_b

    .line 430
    :cond_10
    invoke-static {v2, v3, v0}, Lnts/ᅔ;->ㆃ([B[B[B)[B

    move-result-object v0

    move v4, v14

    :goto_7
    const/16 v5, 0x28

    if-ge v4, v5, :cond_11

    .line 432
    aget-byte v5, v2, v4

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    if-ge v5, v13, :cond_12

    add-int/lit8 v2, v5, -0x28

    .line 433
    aget-byte v2, v3, v2

    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_12
    const/16 v2, 0x32

    :goto_9
    const/16 v3, 0x3e

    if-ge v2, v3, :cond_13

    add-int/lit8 v3, v2, -0x32

    .line 434
    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 451
    :cond_13
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const/16 v2, 0x3f

    :goto_a
    if-ltz v2, :cond_14

    .line 457
    aget-byte v3, v1, v2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v3, 0xf

    .line 458
    aget-byte v6, v0, v6

    aput-byte v6, v1, v5

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    .line 460
    aget-byte v3, v0, v3

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_14
    const/16 v0, 0x80

    .line 461
    aput-byte v14, v1, v0

    :goto_b
    const/16 v0, 0x80

    .line 462
    invoke-static {v1, v14, v0}, Lnts/ᅔ;->ㆃ([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x43t
        0x49t
        0x53t
        0x67t
        0x65t
        0x72t
        0x68t
        0x62t
        0x43t
        0x74t
        0x66t
        0x6dt
        0x64t
        0x32t
        0x4et
        0x41t
    .end array-data

    :array_1
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

.method public static ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 120
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    .line 123
    aget-char v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-le v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 126
    aget-char v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-le v4, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-gtz v2, :cond_3

    .line 129
    array-length p1, v0

    if-ge v1, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\u0000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-static {p0, p1, p2}, Lnts/ၚ;->ㆃ(ILjava/lang/Class;[B)I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 6
    :try_start_0
    new-array p2, p2, [I

    invoke-static {p0, p1, p2}, Lnts/ၚ;->ㆃ(ILjava/lang/Class;[I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
