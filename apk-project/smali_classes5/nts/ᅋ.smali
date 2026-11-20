.class public Lnts/ᅋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:[B

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x46

    const-string v1, "\u0008\u0000r||m\u0007\u001c\u001amk"

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 2
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lnts/ᅋ;->ㆃ:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lnts/ᅋ;->ᾨ:Ljava/lang/String;

    .line 5
    new-array v0, v2, [B

    iput-object v0, p0, Lnts/ᅋ;->ᇭ:[B

    return-void
.end method


# virtual methods
.method public ᾨ(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x40

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    .line 3
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lnts/ᅋ;->ㆃ(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x40

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x2

    .line 3
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lnts/ᅋ;->ㆃ(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public final ㆃ(I[BI)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 6
    iget-object v3, v0, Lnts/ᅋ;->ㆃ:Ljava/lang/String;

    invoke-static {v3}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v3

    .line 7
    iget v4, v3, Lnts/ዃ;->ㆃ:I

    const/16 v5, 0x8

    .line 8
    div-int/2addr v4, v5

    .line 11
    iget-object v6, v0, Lnts/ᅋ;->ᇭ:[B

    const-wide/high16 v7, 0x4050000000000000L    # 64.0

    const/16 v9, 0x40

    const/4 v10, 0x0

    if-eqz v6, :cond_1

    array-length v11, v6

    if-nez v11, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    array-length v6, v6

    int-to-double v11, v6

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v6, v11

    mul-int/2addr v6, v9

    new-array v11, v6, [B

    move v12, v10

    :goto_0
    if-ge v12, v6, :cond_2

    .line 16
    iget-object v13, v0, Lnts/ᅋ;->ᇭ:[B

    array-length v14, v13

    rem-int v14, v12, v14

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    sget-object v11, Lnts/ዧ;->ዲ:[B

    .line 18
    :cond_2
    iget-object v6, v0, Lnts/ᅋ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v12, 0x1

    if-nez v6, :cond_3

    .line 19
    sget-object v6, Lnts/ዧ;->ዲ:[B

    goto :goto_2

    .line 21
    :cond_3
    iget-object v6, v0, Lnts/ᅋ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v12

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    .line 23
    iget-object v13, v0, Lnts/ᅋ;->ᾨ:Ljava/lang/String;

    const/4 v14, 0x3

    const/16 v15, 0x22

    invoke-static {v14, v5, v15}, Lnts/ࡁ;->ᎊ(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 24
    array-length v14, v13

    invoke-static {v13, v10, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-eqz v6, :cond_5

    .line 25
    array-length v13, v6

    if-nez v13, :cond_4

    goto :goto_4

    .line 28
    :cond_4
    array-length v13, v6

    int-to-double v13, v13

    div-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    mul-int/2addr v7, v9

    new-array v8, v7, [B

    move v13, v10

    :goto_3
    if-ge v13, v7, :cond_6

    .line 30
    array-length v14, v6

    rem-int v14, v13, v14

    aget-byte v14, v6, v14

    aput-byte v14, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 31
    :cond_5
    :goto_4
    sget-object v8, Lnts/ዧ;->ዲ:[B

    .line 39
    :cond_6
    new-instance v6, Lnts/ሠ;

    invoke-direct {v6}, Lnts/ሠ;-><init>()V

    .line 40
    invoke-virtual {v6, v11}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 41
    invoke-virtual {v6, v8}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 42
    invoke-virtual {v6}, Lnts/ሠ;->ㆃ()[B

    move-result-object v6

    int-to-double v7, v2

    int-to-double v13, v4

    div-double/2addr v7, v13

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    .line 46
    sget-object v7, Lnts/ዧ;->ዲ:[B

    move v8, v10

    :goto_5
    if-ge v8, v4, :cond_b

    .line 48
    invoke-virtual {v3}, Lnts/ዃ;->ᰛ()V

    .line 49
    array-length v11, v1

    .line 50
    invoke-virtual {v3, v1, v10, v11}, Lnts/ዃ;->ᇭ([BII)V

    .line 51
    invoke-static {v1, v10, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    array-length v11, v6

    invoke-virtual {v3, v6, v10, v11}, Lnts/ዃ;->ㆃ([BII)[B

    .line 53
    iget-object v11, v3, Lnts/ዃ;->ᾨ:[B

    move/from16 v13, p1

    move v14, v12

    :goto_6
    if-ge v14, v13, :cond_7

    .line 54
    invoke-virtual {v3}, Lnts/ዃ;->ᰛ()V

    .line 55
    invoke-virtual {v3, v11}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 58
    :cond_7
    new-array v14, v9, [B

    move v15, v10

    :goto_7
    if-ge v15, v9, :cond_8

    move/from16 v16, v5

    .line 60
    array-length v5, v11

    rem-int v5, v15, v5

    aget-byte v5, v11, v5

    aput-byte v5, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    goto :goto_7

    :cond_8
    move/from16 v16, v5

    move v5, v10

    .line 63
    :goto_8
    array-length v15, v6

    div-int/2addr v15, v9

    if-ge v5, v15, :cond_a

    const/16 v15, 0x3f

    move/from16 v17, v12

    :goto_9
    if-ltz v15, :cond_9

    mul-int/lit8 v18, v5, 0x40

    add-int v18, v18, v15

    .line 66
    aget-byte v9, v6, v18

    and-int/lit16 v9, v9, 0xff

    aget-byte v12, v14, v15

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v9, v12

    add-int v9, v9, v17

    int-to-byte v12, v9

    .line 67
    aput-byte v12, v6, v18

    shr-int/lit8 v17, v9, 0x8

    add-int/lit8 v15, v15, -0x1

    const/16 v9, 0x40

    const/4 v12, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0x40

    const/4 v12, 0x1

    goto :goto_8

    .line 72
    :cond_a
    invoke-static {v7}, Lnts/ၽ;->ౠ([B)[B

    move-result-object v5

    .line 73
    array-length v7, v5

    array-length v9, v11

    add-int/2addr v7, v9

    new-array v7, v7, [B

    .line 74
    array-length v9, v5

    invoke-static {v5, v10, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v5, v5

    array-length v9, v11

    invoke-static {v11, v10, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v16

    const/16 v9, 0x40

    const/4 v12, 0x1

    goto :goto_5

    .line 78
    :cond_b
    new-instance v1, Lnts/ሠ;

    invoke-direct {v1}, Lnts/ሠ;-><init>()V

    .line 79
    invoke-virtual {v1, v7}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    .line 80
    invoke-virtual {v1, v10, v2}, Lnts/ሠ;->ᾨ(II)[B

    move-result-object v1

    return-object v1
.end method
