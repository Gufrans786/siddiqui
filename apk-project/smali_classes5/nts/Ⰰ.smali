.class public Lnts/Ⰰ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ᇭ:Lnts/ᡫ;

.field public ᰛ:Lnts/Ế;

.field public ᾨ:Ljava/util/Vector;

.field public ㆃ:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/Ⰰ;->ㆃ:Ljava/util/Vector;

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/Ⰰ;->ᾨ:Ljava/util/Vector;

    .line 10
    sget-object v0, Lnts/ዧ;->ዲ:[B

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lnts/Ⰰ;->ᇭ:Lnts/ᡫ;

    .line 13
    iput-object v0, p0, Lnts/Ⰰ;->ᰛ:Lnts/Ế;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lnts/Ⰰ;->Ͼ:Ljava/lang/String;

    return-void
.end method

.method public static ㆃ(Ljava/lang/String;)[B
    .locals 4

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 222
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 227
    :cond_1
    new-array p0, v1, [B

    return-object p0
.end method


# virtual methods
.method public ㆃ([BLjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_16

    .line 1
    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    move-object/from16 v2, p2

    .line 2
    iput-object v2, v0, Lnts/Ⰰ;->Ͼ:Ljava/lang/String;

    .line 4
    new-instance v2, Lnts/Ḭ;

    invoke-direct {v2, v1}, Lnts/Ḭ;-><init>([B)V

    .line 5
    invoke-virtual {v2}, Lnts/Ḭ;->ᇭ()V

    .line 6
    invoke-virtual {v2}, Lnts/Ḭ;->ᾨ()I

    move-result v1

    const/16 v3, 0x1bf

    const/16 v4, 0xd

    const/4 v6, 0x2

    if-lt v1, v6, :cond_15

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᇭ()V

    .line 9
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᾨ()I

    move-result v1

    if-ne v1, v6, :cond_14

    .line 11
    new-instance v8, Lnts/క;

    invoke-direct {v8}, Lnts/క;-><init>()V

    .line 12
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lnts/Ḭ;->ㆃ:[B

    .line 14
    invoke-virtual {v8, v1}, Lnts/ᛩ;->ㆃ([B)V

    .line 15
    iget-object v1, v8, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    const/16 v5, 0x4734

    const/16 v9, 0x15

    .line 16
    invoke-static {v5, v9, v6}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 18
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᇭ()V

    .line 19
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v13

    .line 21
    invoke-virtual {v2, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᇭ()V

    .line 22
    invoke-virtual {v2, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᾨ()I

    move-result v1

    const/4 v14, 0x3

    if-ne v1, v14, :cond_12

    .line 24
    new-instance v1, Lnts/క;

    invoke-direct {v1}, Lnts/క;-><init>()V

    .line 25
    invoke-virtual {v2, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v3

    invoke-virtual {v3, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v3

    .line 26
    iget-object v3, v3, Lnts/Ḭ;->ㆃ:[B

    .line 27
    invoke-virtual {v1, v3}, Lnts/ᛩ;->ㆃ([B)V

    .line 28
    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    .line 30
    new-instance v3, Lnts/క;

    invoke-direct {v3}, Lnts/క;-><init>()V

    .line 31
    invoke-virtual {v2, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    .line 32
    iget-object v4, v4, Lnts/Ḭ;->ㆃ:[B

    .line 33
    invoke-virtual {v3, v4}, Lnts/ᛩ;->ㆃ([B)V

    .line 35
    invoke-virtual {v2, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᇭ()V

    .line 36
    invoke-virtual {v2, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v15

    .line 38
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v2

    iget-object v2, v2, Lnts/Ḭ;->ㆃ:[B

    .line 39
    new-instance v4, Lnts/క;

    invoke-direct {v4}, Lnts/క;-><init>()V

    .line 41
    iget-object v5, v3, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v5, v5, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    const/16 v10, 0x48ec

    const/16 v11, 0x3e

    invoke-static {v10, v9, v11}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 42
    new-instance v5, Lnts/Ḭ;

    iget-object v3, v3, Lnts/క;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v3}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v3

    invoke-direct {v5, v3}, Lnts/Ḭ;-><init>([B)V

    .line 43
    invoke-virtual {v5}, Lnts/Ḭ;->ᰛ()V

    .line 44
    invoke-virtual {v5, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v3

    invoke-virtual {v3}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v3

    .line 45
    invoke-virtual {v5, v12}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v10

    invoke-virtual {v10}, Lnts/Ḭ;->Ⲳ()I

    move-result v10

    .line 46
    invoke-virtual {v5}, Lnts/Ḭ;->ᾨ()I

    move-result v11

    const/4 v9, 0x4

    if-ne v11, v14, :cond_1

    .line 47
    invoke-virtual {v5, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v5

    .line 48
    iget-object v5, v5, Lnts/Ḭ;->ㆃ:[B

    .line 49
    invoke-virtual {v4, v5}, Lnts/ᛩ;->ㆃ([B)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v5}, Lnts/Ḭ;->ᾨ()I

    move-result v11

    if-ne v11, v9, :cond_2

    .line 51
    invoke-virtual {v5, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v11

    invoke-virtual {v11}, Lnts/Ḭ;->Ⲳ()I

    move-result v11

    .line 52
    invoke-virtual {v5, v14}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v5

    .line 53
    iget-object v5, v5, Lnts/Ḭ;->ㆃ:[B

    .line 54
    invoke-virtual {v4, v5}, Lnts/ᛩ;->ㆃ([B)V

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v7

    :goto_1
    const/16 v5, 0x4927

    const/16 v12, 0xb

    const/16 v9, 0x10

    const/16 v16, 0x0

    const/16 v14, 0x40

    const/16 v6, 0x13

    .line 58
    :try_start_0
    invoke-static {v5, v6, v14}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v1, 0xa

    const/16 v5, 0x5d

    const/16 v6, 0x495d

    .line 61
    invoke-static {v6, v1, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v6

    const/16 v1, 0xf

    const/16 v5, 0x78

    const/16 v14, 0x4967

    .line 62
    invoke-static {v14, v1, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v4, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v5, v4, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    move v4, v10

    move-object v10, v2

    move-object v2, v3

    move v3, v4

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lnts/Ⰰ;->ㆃ(Ljava/lang/String;[BIILjava/lang/String;)[B

    move-result-object v1

    .line 63
    invoke-virtual {v6, v1}, Lnts/ᙱ;->ᇭ([B)V

    .line 64
    invoke-virtual {v6, v10}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object v1

    goto :goto_2

    .line 65
    :cond_3
    new-instance v2, Lnts/ᛎ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x493a

    const/16 v5, 0x4d

    invoke-static {v4, v9, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x494a

    invoke-static {v3, v6, v12}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v1, v16

    .line 66
    :goto_2
    invoke-static {v15, v1}, Lnts/ၽ;->ㆃ([B[B)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x47bc

    const/16 v2, 0x6a

    .line 69
    invoke-static {v1, v9, v2}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lnts/క;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v0, v13, v1, v2}, Lnts/Ⰰ;->ㆃ([BLjava/lang/String;Lnts/ᛩ;)[B

    move-result-object v1

    if-eqz v1, :cond_f

    .line 74
    new-instance v2, Lnts/Ḭ;

    invoke-direct {v2, v1}, Lnts/Ḭ;-><init>([B)V

    .line 75
    invoke-virtual {v2}, Lnts/Ḭ;->ᇭ()V

    .line 76
    invoke-virtual {v2, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->Ⲳ()I

    const/4 v1, 0x2

    .line 77
    invoke-virtual {v2, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v3

    invoke-virtual {v3}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v1

    invoke-static {v1}, Lnts/ၽ;->て([B)Ljava/lang/String;

    const/4 v1, 0x3

    .line 78
    invoke-virtual {v2, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v3

    invoke-virtual {v3}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v1

    invoke-static {v1}, Lnts/ၽ;->て([B)Ljava/lang/String;

    const/4 v1, 0x4

    .line 80
    invoke-virtual {v2, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v3

    invoke-virtual {v3}, Lnts/Ḭ;->ᇭ()V

    move v3, v7

    .line 81
    :goto_3
    invoke-virtual {v2, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᾨ()I

    move-result v4

    const/4 v5, 0x5

    if-ge v3, v4, :cond_c

    .line 82
    invoke-virtual {v2, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᇭ()V

    .line 83
    invoke-virtual {v2, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->Ⲳ()I

    move-result v4

    const/4 v6, 0x1

    .line 85
    invoke-virtual {v1, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v6

    invoke-static {v6}, Lnts/ၽ;->ዲ([B)Ljava/lang/String;

    const/4 v6, 0x2

    .line 86
    invoke-virtual {v1, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v6

    invoke-static {v6}, Lnts/ၽ;->て([B)Ljava/lang/String;

    const/4 v6, 0x3

    .line 87
    invoke-virtual {v1, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v6

    invoke-static {v6}, Lnts/ၽ;->て([B)Ljava/lang/String;

    const/4 v6, 0x4

    .line 88
    invoke-virtual {v1, v6}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v6

    .line 90
    invoke-virtual {v1}, Lnts/Ḭ;->ᾨ()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    .line 91
    invoke-virtual {v1, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v1

    invoke-static {v1}, Lnts/ၽ;->ዲ([B)Ljava/lang/String;

    :cond_4
    const/16 v1, 0x4e

    const/16 v5, 0x1b

    const/4 v8, 0x1

    if-eq v4, v8, :cond_9

    const/4 v8, 0x3

    if-ne v4, v8, :cond_5

    goto/16 :goto_5

    :cond_5
    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eq v4, v9, :cond_7

    if-ne v4, v10, :cond_6

    goto :goto_4

    .line 113
    :cond_6
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x47e2

    const/16 v3, 0x57

    const/16 v4, 0x40

    invoke-static {v2, v4, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_4
    const/16 v4, 0x40

    .line 114
    new-instance v11, Lnts/Ḭ;

    invoke-direct {v11, v6}, Lnts/Ḭ;-><init>([B)V

    .line 115
    invoke-virtual {v11}, Lnts/Ḭ;->ᇭ()V

    .line 116
    new-instance v6, Lnts/క;

    invoke-direct {v6}, Lnts/క;-><init>()V

    .line 117
    invoke-virtual {v11, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v13

    .line 118
    iget-object v13, v13, Lnts/Ḭ;->ㆃ:[B

    .line 119
    invoke-virtual {v6, v13}, Lnts/ᛩ;->ㆃ([B)V

    .line 121
    iget-object v13, v6, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v13, v13, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    const/16 v14, 0x4822

    const/16 v15, 0x15

    .line 122
    invoke-static {v14, v15, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v11, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v5

    invoke-virtual {v5}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v1

    const/16 v5, 0x486c

    const/16 v11, 0x58

    .line 125
    invoke-static {v5, v15, v11}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v6, Lnts/క;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v0, v1, v5, v6}, Lnts/Ⰰ;->ㆃ([BLjava/lang/String;Lnts/ᛩ;)[B

    move-result-object v1

    .line 127
    new-instance v5, Lnts/Ḭ;

    invoke-direct {v5, v1}, Lnts/Ḭ;-><init>([B)V

    .line 128
    invoke-virtual {v5}, Lnts/Ḭ;->ᰛ()V

    .line 129
    invoke-virtual {v5, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᵑ()Ljava/lang/String;

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v5, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v5

    invoke-virtual {v5}, Lnts/Ḭ;->ᚹ()[B

    const/16 v4, 0x15

    const/4 v5, 0x1

    goto/16 :goto_7

    .line 131
    :cond_8
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x4837

    const/16 v3, 0x35

    invoke-static {v2, v3, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v8, 0x3

    :goto_5
    const/16 v4, 0x40

    const/4 v9, 0x2

    const/4 v10, 0x4

    .line 132
    new-instance v11, Lnts/Ḭ;

    invoke-direct {v11, v6}, Lnts/Ḭ;-><init>([B)V

    .line 133
    invoke-virtual {v11}, Lnts/Ḭ;->ᇭ()V

    .line 135
    invoke-virtual {v11, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v6

    invoke-virtual {v6}, Lnts/Ḭ;->ᇭ()V

    .line 136
    invoke-virtual {v11, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v6

    .line 137
    new-instance v13, Lnts/క;

    invoke-direct {v13}, Lnts/క;-><init>()V

    .line 138
    invoke-virtual {v6, v7}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v14

    .line 139
    iget-object v14, v14, Lnts/Ḭ;->ㆃ:[B

    .line 140
    invoke-virtual {v13, v14}, Lnts/ᛩ;->ㆃ([B)V

    .line 142
    iget-object v14, v13, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v14, v14, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    const/16 v15, 0x4881

    const/16 v4, 0x15

    .line 143
    invoke-static {v15, v4, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    .line 145
    invoke-virtual {v6, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v1

    const/16 v5, 0x16

    const/16 v6, 0x19

    const/16 v14, 0x48cb

    .line 146
    invoke-static {v14, v5, v6}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v13, Lnts/క;->Ὺ:Lnts/ᛩ;

    invoke-virtual {v0, v1, v5, v6}, Lnts/Ⰰ;->ㆃ([BLjava/lang/String;Lnts/ᛩ;)[B

    move-result-object v1

    .line 148
    new-instance v5, Lnts/ⱜ;

    invoke-direct {v5}, Lnts/ⱜ;-><init>()V

    .line 149
    invoke-virtual {v5, v1}, Lnts/ᛩ;->ㆃ([B)V

    .line 150
    iget-object v1, v5, Lnts/ⱜ;->Ὺ:Lnts/ᔂ;

    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    .line 151
    iget-object v1, v0, Lnts/Ⰰ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v5}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v5

    const/16 v6, 0x48e1

    const/16 v13, 0x37

    invoke-static {v6, v12, v13}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnts/ၽ;->ᾨ([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lnts/ၽ;->ㆃ([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 152
    invoke-virtual {v11, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᇭ()V

    move v1, v7

    .line 153
    :goto_6
    invoke-virtual {v11, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v6

    invoke-virtual {v6}, Lnts/Ḭ;->ᾨ()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 154
    new-instance v6, Lnts/ଭ;

    invoke-direct {v6}, Lnts/ଭ;-><init>()V

    .line 155
    invoke-virtual {v11, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v13

    invoke-virtual {v13, v1}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v13

    .line 156
    iget-object v13, v13, Lnts/Ḭ;->ㆃ:[B

    .line 157
    invoke-virtual {v6, v13}, Lnts/ᛩ;->ㆃ([B)V

    .line 158
    iget-object v13, v0, Lnts/Ⰰ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v13, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move v1, v10

    goto/16 :goto_3

    .line 159
    :cond_b
    new-instance v2, Lnts/ᛎ;

    const/16 v3, 0x4896

    const/16 v4, 0x35

    invoke-static {v3, v4, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_c
    iget-object v1, v0, Lnts/Ⰰ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v1, v16

    goto :goto_8

    :cond_d
    new-instance v1, Lnts/ᡫ;

    iget-object v2, v0, Lnts/Ⰰ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ଭ;

    invoke-direct {v1, v2}, Lnts/ᡫ;-><init>(Lnts/ଭ;)V

    :goto_8
    iput-object v1, v0, Lnts/Ⰰ;->ᇭ:Lnts/ᡫ;

    if-eqz v1, :cond_e

    .line 162
    new-instance v1, Lnts/Ế;

    invoke-direct {v1}, Lnts/Ế;-><init>()V

    iput-object v1, v0, Lnts/Ⰰ;->ᰛ:Lnts/Ế;

    .line 163
    iget-object v2, v0, Lnts/Ⰰ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lnts/ㇾ;->ౠ(Lnts/Ế;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_e
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x47dd

    const/16 v3, 0xe

    invoke-static {v2, v5, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_f
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x11

    const/16 v3, 0x46

    const/16 v4, 0x47cc

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_10
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x31

    const/16 v3, 0x30

    const/16 v4, 0x478b

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_11
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x26

    const/16 v3, 0x25

    const/16 v4, 0x4901

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_12
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x477e

    const/16 v5, 0x2a

    invoke-static {v2, v4, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 169
    :cond_13
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x4749

    const/16 v3, 0xe

    const/16 v4, 0x35

    invoke-static {v2, v4, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_14
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x4727

    const/16 v5, 0x42

    invoke-static {v2, v4, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 171
    :cond_15
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x471a

    const/16 v5, 0x5a

    invoke-static {v2, v4, v5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_16
    :goto_9
    return-void
.end method

.method public final ㆃ(Ljava/lang/String;[BIILjava/lang/String;)[B
    .locals 4

    .line 205
    iget-object v0, p0, Lnts/Ⰰ;->Ͼ:Ljava/lang/String;

    invoke-static {v0}, Lnts/Ⰰ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v0

    .line 206
    invoke-static {p1}, Lnts/Ⰰ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p1

    .line 208
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 209
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x13

    const/16 v0, 0x41

    const/16 v2, 0x49a9

    .line 212
    invoke-static {v2, p1, v0}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    const/16 p5, 0x1f

    const/16 v0, 0x49bc

    .line 214
    :try_start_0
    invoke-static {v0, p1, p5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v1, p2, p4}, Lnts/ቩ;->ᾨ(ILjava/lang/String;[B[BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/16 p1, 0x17

    const/16 v0, 0xd

    const/16 v2, 0x49c6

    .line 216
    invoke-static {v2, p1, v0}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    const/16 p5, 0x4e

    const/16 v0, 0x49dd

    .line 218
    :try_start_1
    invoke-static {v0, p1, p5}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v1, p2, p4}, Lnts/ቩ;->ᾨ(ILjava/lang/String;[B[BI)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ㆃ([BLjava/lang/String;Lnts/ᛩ;)[B
    .locals 16

    move-object/from16 v0, p1

    .line 172
    new-instance v1, Lnts/క;

    invoke-direct {v1}, Lnts/క;-><init>()V

    .line 176
    new-instance v2, Lnts/Ḭ;

    invoke-virtual/range {p3 .. p3}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lnts/Ḭ;-><init>([B)V

    .line 177
    invoke-virtual {v2}, Lnts/Ḭ;->ᰛ()V

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᵑ()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x15

    const/16 v6, 0x4b

    const/16 v7, 0x4976

    invoke-static {v7, v5, v6}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v4

    .line 180
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v8

    invoke-virtual {v8}, Lnts/Ḭ;->Ⲳ()I

    move-result v8

    .line 181
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9}, Lnts/Ḭ;->ᾨ()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_0

    .line 182
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9, v10}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    .line 183
    iget-object v9, v9, Lnts/Ḭ;->ㆃ:[B

    .line 184
    invoke-virtual {v1, v9}, Lnts/ᛩ;->ㆃ([B)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9}, Lnts/Ḭ;->ᾨ()I

    move-result v9

    const/4 v12, 0x4

    if-ne v9, v12, :cond_1

    .line 186
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v7

    invoke-virtual {v7, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v7

    invoke-virtual {v7, v10}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v7

    invoke-virtual {v7}, Lnts/Ḭ;->Ⲳ()I

    move-result v7

    .line 187
    invoke-virtual {v2, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    invoke-virtual {v9, v11}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v9

    .line 188
    iget-object v9, v9, Lnts/Ḭ;->ㆃ:[B

    .line 189
    invoke-virtual {v1, v9}, Lnts/ᛩ;->ㆃ([B)V

    :cond_1
    :goto_0
    move-object v12, v4

    move v14, v7

    move v13, v8

    goto :goto_1

    :cond_2
    move v13, v3

    move-object v12, v6

    move v14, v7

    .line 192
    :goto_1
    invoke-virtual {v2, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᵑ()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x17

    const/16 v8, 0x30

    const/16 v9, 0x498b

    invoke-static {v9, v7, v8}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {v2, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v4

    invoke-virtual {v4}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v4

    .line 194
    invoke-virtual {v2, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v2

    invoke-virtual {v2, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v2

    invoke-virtual {v2, v5}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v2

    invoke-virtual {v2}, Lnts/Ḭ;->Ⲳ()I

    move-result v2

    goto :goto_2

    :cond_3
    const/16 v2, 0xc

    move-object v4, v6

    .line 197
    :goto_2
    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v15, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {v10 .. v15}, Lnts/Ⰰ;->ㆃ(Ljava/lang/String;[BIILjava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x7

    const/16 v7, 0x19

    const/16 v8, 0x49a2

    .line 199
    :try_start_0
    invoke-static {v8, v5, v7}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnts/ቩ;->ᰛ(Ljava/lang/String;)Lnts/ኝ;

    move-result-object v5

    check-cast v5, Lnts/ᔟ;

    mul-int/lit8 v7, v2, 0x8

    .line 200
    invoke-virtual {v5, v7}, Lnts/ᔟ;->ᰛ(I)V

    .line 201
    new-array v7, v2, [B

    .line 202
    array-length v8, v0

    sub-int/2addr v8, v2

    invoke-static {v0, v8, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    invoke-virtual {v5, v1, v4, v6, v7}, Lnts/ᔟ;->ㆃ([B[B[B[B)Lnts/ⵋ;

    move-result-object v1

    .line 204
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-interface {v1, v0, v3, v4}, Lnts/Ҫ;->ㆃ([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v6
.end method
