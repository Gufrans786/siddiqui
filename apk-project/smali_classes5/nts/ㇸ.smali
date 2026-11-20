.class public Lnts/ㇸ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᾨ:[B


# instance fields
.field public ㆃ:Ljavax/crypto/Cipher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ㇸ;->ᾨ:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ㆃ(J[BI)V
    .locals 4

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 1
    aput-byte v2, p2, v1

    const/16 v1, 0x8

    ushr-long/2addr p0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ᾨ([B[BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-virtual/range {v1 .. v7}, Lnts/ㇸ;->ㆃ([B[B[BIIZ)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 6
    sget-object p1, Lnts/ㇸ;->ᾨ:[B

    const/16 p2, 0x10

    const/4 p3, 0x0

    if-lt v6, p2, :cond_4

    .line 8
    rem-int/lit8 p4, v6, 0x8

    if-nez p4, :cond_4

    array-length p2, p1

    const/16 p4, 0x8

    if-ne p2, p4, :cond_4

    .line 12
    new-instance p2, Lnts/Ё;

    invoke-direct {p2}, Lnts/Ё;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p2, Lnts/ኝ;->ዲ:I

    const/4 v1, 0x2

    .line 14
    iput v1, p2, Lnts/ኝ;->て:I

    .line 15
    invoke-virtual {p2, v2}, Lnts/ኝ;->ᾨ([B)V

    .line 16
    invoke-virtual {p2}, Lnts/ኝ;->ᾨ()Lnts/Ҫ;

    move-result-object v2

    add-int/lit8 p2, v6, 0x8

    .line 18
    new-array p2, p2, [B

    move v1, v5

    const/16 v5, 0x10

    .line 19
    new-array v3, v5, [B

    .line 20
    div-int/lit8 v8, v6, 0x8

    .line 22
    invoke-static {p1, p3, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {v4, v1, p2, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, p3

    :goto_0
    const/4 v1, 0x5

    if-gt p1, v1, :cond_3

    move v1, v0

    :goto_1
    if-gt v1, v8, :cond_2

    .line 27
    invoke-static {p2, p3, v3, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v9, v1, 0x8

    .line 28
    invoke-static {p2, v9, v3, p4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, v3

    .line 29
    invoke-interface/range {v2 .. v7}, Lnts/Ҫ;->ㆃ([BII[BI)I

    mul-int v4, v8, p1

    add-int/2addr v4, v1

    int-to-long v6, v4

    .line 30
    invoke-static {v6, v7, p2, p3}, Lnts/ㇸ;->ㆃ(J[BI)V

    move v4, p3

    :goto_2
    if-ge v4, p4, :cond_1

    .line 32
    aget-byte v6, p2, v4

    aget-byte v7, v3, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 34
    :cond_1
    invoke-static {v3, p4, p2, v9, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object p2

    .line 35
    :cond_4
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0xf

    const/16 p4, 0x13

    invoke-static {p3, p2, p4}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([B[BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-virtual/range {v1 .. v7}, Lnts/ㇸ;->ㆃ([B[B[BIIZ)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 7
    sget-object p1, Lnts/ㇸ;->ᾨ:[B

    const/16 p2, 0x10

    if-lt v6, p2, :cond_6

    .line 10
    rem-int/lit8 p4, v6, 0x8

    if-nez p4, :cond_6

    array-length p2, p1

    const/16 p3, 0x8

    if-ne p2, p3, :cond_6

    .line 14
    new-instance p2, Lnts/Ё;

    invoke-direct {p2}, Lnts/Ё;-><init>()V

    const/4 p4, 0x1

    .line 15
    iput p4, p2, Lnts/ኝ;->ዲ:I

    const/4 v0, 0x2

    .line 16
    iput v0, p2, Lnts/ኝ;->て:I

    .line 17
    invoke-virtual {p2, v2}, Lnts/ኝ;->ᾨ([B)V

    .line 18
    invoke-virtual {p2}, Lnts/ኝ;->ㆃ()Lnts/Ҫ;

    move-result-object v1

    add-int/lit8 p2, v6, -0x8

    .line 20
    new-array v0, p2, [B

    .line 21
    new-array v7, p3, [B

    move-object v2, v4

    const/16 v4, 0x10

    move-object v3, v2

    .line 22
    new-array v2, v4, [B

    .line 23
    div-int/2addr v6, p3

    add-int/lit8 p4, v6, -0x1

    const/4 v8, 0x0

    .line 25
    invoke-static {v3, v5, v7, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, p3

    .line 26
    invoke-static {v3, v5, v0, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x5

    :goto_0
    if-ltz p2, :cond_3

    move v9, p4

    :goto_1
    if-lez v9, :cond_2

    mul-int v3, p4, p2

    add-int/2addr v3, v9

    int-to-long v5, v3

    .line 30
    invoke-static {v5, v6, v2, v8}, Lnts/ㇸ;->ㆃ(J[BI)V

    move v3, v8

    :goto_2
    if-ge v3, p3, :cond_1

    .line 32
    aget-byte v5, v2, v3

    aget-byte v6, v7, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v9, -0x1

    mul-int/lit8 v10, v3, 0x8

    .line 34
    invoke-static {v0, v10, v2, p3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v5, v2

    .line 35
    invoke-interface/range {v1 .. v6}, Lnts/Ҫ;->ㆃ([BII[BI)I

    .line 36
    invoke-static {v2, v8, v7, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-static {v2, p3, v0, v10, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v8, p3, :cond_5

    .line 42
    aget-byte p2, p1, v8

    aget-byte p4, v7, v8

    if-ne p2, p4, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 43
    :cond_4
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x17

    const/16 p3, 0x19

    const/16 p4, 0x1e

    invoke-static {p4, p2, p3}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v0

    .line 44
    :cond_6
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x56

    const/16 p3, 0xf

    invoke-static {p3, p3, p2}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ㆃ([B[B[BIIZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0x19

    if-eqz p2, :cond_1

    .line 45
    array-length v1, p2

    if-eqz v1, :cond_1

    sget-object v1, Lnts/ㇸ;->ᾨ:[B

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x35

    const/16 p3, 0x23

    invoke-static {p2, p3, v0}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    :goto_0
    :try_start_0
    iget-object p2, p0, Lnts/ㇸ;->ㆃ:Ljavax/crypto/Cipher;

    if-nez p2, :cond_2

    const/4 p2, 0x5

    const/16 v1, 0x34

    const/16 v2, 0x58

    .line 50
    invoke-static {v2, p2, v1}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    const/16 v2, 0x15

    const/16 v3, 0x5d

    invoke-static {v3, v1, v2}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lnts/ㇸ;->ㆃ:Ljavax/crypto/Cipher;

    .line 52
    :cond_2
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0x63

    const/16 v2, 0x29

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-eqz p6, :cond_3

    .line 54
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p6, 0x66

    invoke-static {p6, v3, v0}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p1, p3, p4, p5, p6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 55
    iget-object p3, p0, Lnts/ㇸ;->ㆃ:Ljavax/crypto/Cipher;

    invoke-virtual {p3, v3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 56
    iget-object p2, p0, Lnts/ㇸ;->ㆃ:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p4, :cond_4

    .line 59
    array-length p1, p3

    if-eq p1, p5, :cond_5

    .line 60
    :cond_4
    new-array p1, p5, [B

    const/4 p6, 0x0

    .line 61
    invoke-static {p3, p4, p1, p6, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, p1

    .line 63
    :cond_5
    iget-object p1, p0, Lnts/ㇸ;->ㆃ:Ljavax/crypto/Cipher;

    const/4 p4, 0x4

    invoke-virtual {p1, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 64
    iget-object p1, p0, Lnts/ㇸ;->ㆃ:Ljavax/crypto/Cipher;

    const/16 p2, 0x69

    const/16 p4, 0x20

    invoke-static {p2, v3, p4}, Lnts/ݶ;->Ὺ(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Lnts/ẩ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p2
.end method
