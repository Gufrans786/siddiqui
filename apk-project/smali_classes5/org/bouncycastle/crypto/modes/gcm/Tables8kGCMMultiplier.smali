.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private final M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput v2, v0, v1

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x4

    new-array v4, v3, [I

    aput-object v4, v2, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    new-array v4, v3, [I

    aput-object v4, v0, v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object p1

    const/16 v4, 0x8

    aput-object p1, v0, v4

    move p1, v3

    :goto_0
    if-lt p1, v2, :cond_0

    new-array v0, v3, [I

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v2

    add-int v6, p1, p1

    aget-object v5, v5, v6

    invoke-static {v5, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v2

    aput-object v0, v5, p1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v3, [I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v1

    aput-object p1, v0, v4

    move p1, v3

    :goto_1
    if-lt p1, v2, :cond_1

    new-array v0, v3, [I

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v1

    add-int v6, p1, p1

    aget-object v5, v5, v6

    invoke-static {v5, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v1

    aput-object v0, v5, p1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_2
    const/4 v0, 0x2

    :goto_3
    const/16 v5, 0x10

    if-ge v0, v5, :cond_3

    move v5, v2

    :goto_4
    if-ge v5, v0, :cond_2

    new-array v6, v3, [I

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, p1

    aget-object v7, v7, v0

    invoke-static {v7, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, p1

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, p1

    add-int v8, v0, v5

    aput-object v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    add-int/2addr v0, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, p1, 0x1

    const/16 v5, 0x20

    if-ne v0, v5, :cond_4

    return-void

    :cond_4
    if-le v0, v2, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v0

    new-array v6, v3, [I

    aput-object v6, v5, v1

    move v5, v4

    :goto_5
    if-lez v5, :cond_5

    new-array v6, v3, [I

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    invoke-static {v7, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, v0

    aput-object v6, v7, v5

    shr-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move p1, v0

    goto :goto_2
.end method

.method public multiplyH([B)V
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v3, 0xf

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v8, p0

    if-ltz v3, :cond_0

    iget-object v9, v8, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v10, v3, v3

    aget-object v11, v9, v10

    aget-byte v12, v0, v3

    and-int/lit8 v13, v12, 0xf

    aget-object v11, v11, v13

    aget v13, v2, v7

    aget v14, v11, v7

    xor-int/2addr v13, v14

    aput v13, v2, v7

    aget v14, v2, v6

    aget v15, v11, v6

    xor-int/2addr v14, v15

    aput v14, v2, v6

    aget v15, v2, v5

    aget v16, v11, v5

    xor-int v15, v15, v16

    aput v15, v2, v5

    aget v16, v2, v4

    aget v11, v11, v4

    xor-int v11, v16, v11

    aput v11, v2, v4

    add-int/2addr v10, v6

    aget-object v9, v9, v10

    and-int/lit16 v10, v12, 0xf0

    ushr-int/2addr v10, v1

    aget-object v9, v9, v10

    aget v10, v9, v7

    xor-int/2addr v10, v13

    aput v10, v2, v7

    aget v7, v9, v6

    xor-int/2addr v7, v14

    aput v7, v2, v6

    aget v6, v9, v5

    xor-int/2addr v6, v15

    aput v6, v2, v5

    aget v5, v9, v4

    xor-int/2addr v5, v11

    aput v5, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    aget v3, v2, v7

    invoke-static {v3, v0, v7}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    aget v3, v2, v6

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    aget v1, v2, v5

    const/16 v3, 0x8

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    aget v1, v2, v4

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method
