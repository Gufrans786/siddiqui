.class public Lnts/പ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ㆃ:I


# direct methods
.method public static ㆃ(Lnts/ᙱ;[BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 22
    new-array v0, p2, [B

    .line 23
    iget v1, p0, Lnts/ዃ;->ㆃ:I

    .line 24
    div-int/lit8 v1, v1, 0x8

    .line 25
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 27
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_0
    if-lez p2, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 35
    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-virtual {p0, v2}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 39
    array-length v5, v3

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 40
    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    sub-int/2addr p2, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ㆃ([B[BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lnts/പ;->ㆃ:I

    invoke-static {p0, p1, p2, v0}, Lnts/പ;->ㆃ([B[BII)[B

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    int-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 10
    new-array v2, v1, [B

    .line 11
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 12
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    .line 13
    invoke-static {p0, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    new-instance p0, Lnts/ᇯ;

    invoke-direct {p0, v2}, Lnts/ᇯ;-><init>([B)V

    .line 15
    new-instance v0, Lnts/ద;

    invoke-direct {v0, v3}, Lnts/ద;-><init>([B)V

    .line 17
    invoke-static {p0, p1, p2}, Lnts/പ;->ㆃ(Lnts/ᙱ;[BI)[B

    move-result-object p0

    .line 18
    invoke-static {v0, p1, p2}, Lnts/പ;->ㆃ(Lnts/ᙱ;[BI)[B

    move-result-object p1

    .line 19
    array-length p2, p0

    new-array v0, p2, [B

    :goto_0
    if-ge v4, p2, :cond_1

    .line 21
    aget-byte v1, p0, v4

    aget-byte v2, p1, v4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static ㆃ([B[BII)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    .line 41
    new-array v0, v0, [B

    const/16 v2, 0x37

    const/16 v3, 0x1a

    const/16 v4, 0x40

    .line 44
    :try_start_0
    invoke-static {v4, v2, v3}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 45
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 47
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x24

    const/16 v7, 0x26

    const/16 v8, 0x77

    .line 50
    invoke-static {v8, v6, v7}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x32

    const/16 v8, 0x2a

    const/16 v9, 0x9b

    .line 53
    invoke-static {v9, v7, v8}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x13

    const/16 v9, 0x60

    const/16 v10, 0xcd

    .line 55
    invoke-static {v10, v8, v9}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v7, v10, v3

    invoke-virtual {v2, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 61
    sget v8, Lnts/പ;->ㆃ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v10, [[B

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/16 v13, 0x2b

    const/4 v14, 0x0

    const/4 v15, 0x6

    move/from16 p2, v3

    const/4 v3, 0x2

    const-class v16, [B

    if-ne v1, v8, :cond_0

    const/16 v1, 0xe0

    const/4 v4, 0x4

    .line 63
    :try_start_1
    invoke-static {v1, v15, v4}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/16 v1, 0x39

    const/16 v4, 0x1d

    const/16 v6, 0xe6

    .line 66
    invoke-static {v6, v1, v4}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v4, 0x11f

    .line 67
    invoke-static {v4, v12, v13}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v4

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v16, v6, p2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v9

    aput-object v10, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto/16 :goto_2

    :cond_0
    const/16 v8, 0x124

    move/from16 v17, v3

    const/16 v3, 0x4b

    .line 71
    invoke-static {v8, v15, v3}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v6, 0x12a

    const/16 v8, 0x16

    .line 74
    invoke-static {v6, v13, v8}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    const/16 v13, 0x155

    const/16 v14, 0x51

    .line 78
    invoke-static {v13, v4, v14}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v13, 0x7

    const/16 v14, 0x14

    const/16 v15, 0x195

    .line 80
    invoke-static {v15, v13, v14}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v13

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v6, v14, p2

    invoke-virtual {v4, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v13, 0x19c

    const/16 v14, 0x57

    .line 83
    invoke-static {v13, v12, v14}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v12

    new-array v11, v11, [Ljava/lang/Class;

    aput-object v16, v11, p2

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v9

    aput-object v10, v11, v17

    invoke-virtual {v4, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-ne v1, v9, :cond_1

    .line 87
    aget-object v1, v8, p2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    move/from16 v10, v17

    if-ne v1, v10, :cond_2

    .line 90
    aget-object v1, v8, v9

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v4

    .line 95
    :goto_2
    const-string v3, ""

    filled-new-array/range {p1 .. p1}, [[B

    move-result-object v4

    move-object/from16 v6, p0

    filled-new-array {v6, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25

    const/16 v3, 0x3e

    const/16 v4, 0x1a1

    .line 100
    invoke-static {v4, v2, v3}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0xd

    const/16 v4, 0x19

    const/16 v5, 0x1c6

    .line 101
    invoke-static {v5, v3, v4}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Class;

    aput-object v16, v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 103
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1
.end method
