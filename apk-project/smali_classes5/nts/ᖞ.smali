.class public Lnts/ᖞ;
.super Lnts/Ⴧ;
.source "SourceFile"


# static fields
.field public static final ᡲ:[B

.field public static final Ὺ:[B


# instance fields
.field public Ͼ:[B

.field public ౠ:[B

.field public ᇭ:I

.field public ዲ:[B

.field public ᎊ:J

.field public ᙕ:Z

.field public ᰛ:I

.field public ᾨ:Lnts/ዃ;

.field public て:[B

.field public ㆃ:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lnts/ᖞ;->ᡲ:[B

    .line 2
    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lnts/ᖞ;->Ὺ:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/Ⴧ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᖞ;->ㆃ:Ljava/security/SecureRandom;

    const/16 v1, 0x4b

    const-string v2, ">$.||~\u0008\u0012\u0018I8\"(z}z\u0019\u0003\t[[Y\u0007\u001d\u0017BAC]ANI-7=hkiwkcaa{q\".#0* uvtm@YAN\u000bFFR\u0007GWGBTD\u001ew]NRd|ktp\u000e\u0015\u0010HK\u0006\u0006\u001aO\u001f\u0018\u0012\u0013\u000f\u0013\u0012\u0002\u0000KX~esy}s6}yo{=pzpftk"

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 3
    invoke-static {v2, v3, v4, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v1

    iput-object v1, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    const/16 v1, 0x1b8

    .line 5
    iput v1, p0, Lnts/ᖞ;->ᇭ:I

    const/16 v1, 0x20

    .line 6
    iput v1, p0, Lnts/ᖞ;->ᰛ:I

    .line 7
    iput-object v0, p0, Lnts/ᖞ;->Ͼ:[B

    .line 8
    iput-object v0, p0, Lnts/ᖞ;->ౠ:[B

    .line 9
    iput-boolean v3, p0, Lnts/ᖞ;->ᙕ:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lnts/ᖞ;->ᎊ:J

    return-void
.end method


# virtual methods
.method public final ᾨ([B[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    const/high16 v2, 0x80000

    if-gt v0, v2, :cond_5

    .line 5
    iget-wide v2, p0, Lnts/ᖞ;->ᎊ:J

    const-wide/high16 v4, 0x1000000000000L

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lnts/ᖞ;->ᙕ:Z

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    iget v0, p0, Lnts/ᖞ;->ᰛ:I

    new-array v0, v0, [B

    .line 7
    iget-object v2, p0, Lnts/ᖞ;->ㆃ:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    sget-object v2, Lnts/ᖞ;->Ὺ:[B

    iget-object v3, p0, Lnts/ᖞ;->て:[B

    invoke-virtual {p0, v2, v3, v0, p2}, Lnts/ᖞ;->ᾨ([B[B[B[B)V

    :cond_1
    const/4 v0, 0x1

    .line 9
    new-array v2, v0, [B

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 11
    aput-byte v3, v2, v4

    .line 12
    iget-object v5, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-virtual {v5}, Lnts/ዃ;->ᰛ()V

    .line 13
    iget-object v5, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    .line 14
    invoke-virtual {v5, v2, v4, v0}, Lnts/ዃ;->ᇭ([BII)V

    .line 15
    iget-object v5, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    iget-object v6, p0, Lnts/ᖞ;->て:[B

    array-length v7, v6

    .line 16
    invoke-virtual {v5, v6, v4, v7}, Lnts/ዃ;->ᇭ([BII)V

    .line 17
    iget-object v5, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    array-length v6, p2

    invoke-virtual {v5, p2, v4, v6}, Lnts/ዃ;->ㆃ([BII)[B

    .line 18
    iget-object p2, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-static {p2}, Lnts/ቩ;->ㆃ(Lnts/ዃ;)[B

    .line 19
    iget-object p2, p0, Lnts/ᖞ;->て:[B

    iget-object v5, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    .line 20
    iget-object v5, v5, Lnts/ዃ;->ᾨ:[B

    .line 21
    invoke-virtual {p0, p2, v5}, Lnts/ᖞ;->ㆃ([B[B)V

    .line 22
    :cond_2
    array-length p2, p1

    .line 23
    iget-object v5, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-static {v5}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result v5

    div-int/2addr v5, v1

    add-int v6, p2, v5

    sub-int/2addr v6, v0

    .line 24
    div-int/2addr v6, v5

    .line 25
    iget-object v7, p0, Lnts/ᖞ;->て:[B

    array-length v8, v7

    new-array v8, v8, [B

    .line 26
    array-length v9, v7

    invoke-static {v7, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v7, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-virtual {v7}, Lnts/ዃ;->ᰛ()V

    move v7, v4

    move v9, v7

    :goto_0
    if-gt v7, v6, :cond_4

    add-int v10, v5, v9

    if-le v10, p2, :cond_3

    sub-int v10, p2, v9

    goto :goto_1

    :cond_3
    move v10, v5

    .line 31
    :goto_1
    iget-object v11, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-virtual {v11, v8}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object v11

    invoke-static {v11, v4, p1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v10

    .line 33
    sget-object v10, Lnts/ᖞ;->Ὺ:[B

    invoke-virtual {p0, v8, v10}, Lnts/ᖞ;->ㆃ([B[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 34
    aput-byte p1, v2, v4

    .line 35
    iget-object p2, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-virtual {p2}, Lnts/ዃ;->ᰛ()V

    .line 36
    iget-object p2, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    .line 37
    invoke-virtual {p2, v2, v4, v0}, Lnts/ዃ;->ᇭ([BII)V

    .line 38
    iget-object p2, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    iget-object v2, p0, Lnts/ᖞ;->て:[B

    array-length v5, v2

    invoke-virtual {p2, v2, v4, v5}, Lnts/ዃ;->ㆃ([BII)[B

    .line 39
    iget-wide v5, p0, Lnts/ᖞ;->ᎊ:J

    const/16 p2, 0x18

    shr-long v7, v5, p2

    long-to-int p2, v7

    int-to-byte p2, p2

    const/16 v2, 0x10

    shr-long v7, v5, v2

    long-to-int v2, v7

    int-to-byte v2, v2

    shr-long v7, v5, v1

    long-to-int v1, v7

    int-to-byte v1, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x4

    new-array v6, v6, [B

    aput-byte p2, v6, v4

    aput-byte v2, v6, v0

    aput-byte v1, v6, v3

    aput-byte v5, v6, p1

    .line 40
    iget-object p1, p0, Lnts/ᖞ;->て:[B

    iget-object p2, p0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    .line 41
    iget-object p2, p2, Lnts/ዃ;->ᾨ:[B

    .line 42
    invoke-virtual {p0, p1, p2}, Lnts/ᖞ;->ㆃ([B[B)V

    .line 43
    iget-object p1, p0, Lnts/ᖞ;->て:[B

    iget-object p2, p0, Lnts/ᖞ;->ዲ:[B

    invoke-virtual {p0, p1, p2}, Lnts/ᖞ;->ㆃ([B[B)V

    .line 44
    iget-object p1, p0, Lnts/ᖞ;->て:[B

    invoke-virtual {p0, p1, v6}, Lnts/ᖞ;->ㆃ([B[B)V

    .line 45
    iget-wide p1, p0, Lnts/ᖞ;->ᎊ:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnts/ᖞ;->ᎊ:J

    return-void

    .line 46
    :cond_5
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x61

    const-string v0, ">$.||~\u0008\u0012\u0018I8\"(z}z\u0019\u0003\t[[Y\u0007\u001d\u0017BAC]ANI-7=hkiwkcaa{q\".#0* uvtm@YAN\u000bFFR\u0007GWGBTD\u001ew]NRd|ktp\u000e\u0015\u0010HK\u0006\u0006\u001aO\u001f\u0018\u0012\u0013\u000f\u0013\u0012\u0002\u0000KX~esy}s6}yo{=pzpftk"

    const/16 v1, 0x63

    const/16 v2, 0x13

    .line 47
    invoke-static {v0, v1, v2, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᾨ([B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lnts/ᖞ;->ㆃ([B[B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᖞ;->て:[B

    .line 50
    sget-object p2, Lnts/ᖞ;->ᡲ:[B

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Lnts/ᖞ;->ㆃ([B[B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᖞ;->ዲ:[B

    const-wide/16 p1, 0x1

    .line 51
    iput-wide p1, p0, Lnts/ᖞ;->ᎊ:J

    return-void
.end method

.method public ㆃ([B)V
    .locals 4

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lnts/ᖞ;->ㆃ:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnts/ᖞ;->ㆃ:Ljava/security/SecureRandom;

    .line 5
    invoke-virtual {p0}, Lnts/ᖞ;->ㆃ()[B

    move-result-object v0

    .line 6
    iget-object v2, p0, Lnts/ᖞ;->Ͼ:[B

    iget-object v3, p0, Lnts/ᖞ;->ౠ:[B

    invoke-virtual {p0, v0, v2, v3, v1}, Lnts/ᖞ;->ᾨ([B[B[B[B)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v1}, Lnts/ᖞ;->ᾨ([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lnts/ᛎ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final ㆃ([B[B)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    .line 39
    :goto_0
    array-length v4, p2

    const/16 v5, 0xff

    if-gt v2, v4, :cond_1

    .line 40
    array-length v4, p1

    sub-int/2addr v4, v2

    aget-byte v4, p1, v4

    and-int/2addr v4, v5

    array-length v6, p2

    sub-int/2addr v6, v2

    aget-byte v6, p2, v6

    and-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    if-le v4, v5, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 42
    :goto_1
    array-length v5, p1

    sub-int/2addr v5, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    array-length p2, p2

    add-int/2addr p2, v1

    :goto_2
    array-length v2, p1

    if-gt p2, v2, :cond_3

    .line 46
    array-length v2, p1

    sub-int/2addr v2, p2

    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    add-int/2addr v2, v3

    if-le v2, v5, :cond_2

    move v3, v1

    goto :goto_3

    :cond_2
    move v3, v0

    .line 48
    :goto_3
    array-length v4, p1

    sub-int/2addr v4, p2

    int-to-byte v2, v2

    aput-byte v2, p1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final ㆃ()[B
    .locals 2

    .line 10
    iget v0, p0, Lnts/ᖞ;->ᰛ:I

    new-array v0, v0, [B

    .line 11
    iget-object v1, p0, Lnts/ᖞ;->ㆃ:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public final ㆃ([B[B[B[B)[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 12
    iget-object v5, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-static {v5}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    .line 13
    iget v6, v0, Lnts/ᖞ;->ᇭ:I

    div-int/lit8 v6, v6, 0x8

    add-int v7, v6, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    div-int/2addr v7, v5

    .line 16
    new-array v9, v6, [B

    move v11, v8

    move v12, v11

    const/4 v13, 0x0

    :goto_0
    if-gt v11, v7, :cond_5

    .line 19
    iget v14, v0, Lnts/ᖞ;->ᇭ:I

    shr-int/lit8 v15, v14, 0x18

    int-to-byte v15, v15

    move/from16 v16, v8

    shr-int/lit8 v8, v14, 0x10

    int-to-byte v8, v8

    const/16 v17, 0x0

    shr-int/lit8 v10, v14, 0x8

    int-to-byte v10, v10

    int-to-byte v14, v14

    move/from16 v18, v5

    const/4 v5, 0x5

    move/from16 v19, v7

    .line 22
    new-array v7, v5, [B

    aput-byte v12, v7, v17

    aput-byte v15, v7, v16

    const/4 v15, 0x2

    aput-byte v8, v7, v15

    const/4 v8, 0x3

    aput-byte v10, v7, v8

    const/4 v8, 0x4

    aput-byte v14, v7, v8

    .line 23
    iget-object v8, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    invoke-virtual {v8}, Lnts/ዃ;->ᰛ()V

    .line 24
    iget-object v8, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    move/from16 v10, v17

    .line 25
    invoke-virtual {v8, v7, v10, v5}, Lnts/ዃ;->ᇭ([BII)V

    if-eqz v1, :cond_0

    .line 26
    iget-object v5, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    array-length v7, v1

    .line 27
    invoke-virtual {v5, v1, v10, v7}, Lnts/ዃ;->ᇭ([BII)V

    :cond_0
    if-eqz v2, :cond_1

    .line 28
    iget-object v5, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    array-length v7, v2

    .line 29
    invoke-virtual {v5, v2, v10, v7}, Lnts/ዃ;->ᇭ([BII)V

    :cond_1
    if-eqz v3, :cond_2

    .line 30
    iget-object v5, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    array-length v7, v3

    .line 31
    invoke-virtual {v5, v3, v10, v7}, Lnts/ዃ;->ᇭ([BII)V

    :cond_2
    if-eqz v4, :cond_3

    .line 32
    iget-object v5, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    array-length v7, v4

    .line 33
    invoke-virtual {v5, v4, v10, v7}, Lnts/ዃ;->ᇭ([BII)V

    :cond_3
    add-int v5, v18, v13

    if-le v5, v6, :cond_4

    sub-int v5, v6, v13

    goto :goto_1

    :cond_4
    move/from16 v5, v18

    .line 35
    :goto_1
    iget-object v7, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    sget-object v8, Lnts/ዧ;->ዲ:[B

    invoke-virtual {v7, v8, v10, v10}, Lnts/ዃ;->ㆃ([BII)[B

    .line 36
    iget-object v7, v0, Lnts/ᖞ;->ᾨ:Lnts/ዃ;

    .line 37
    iget-object v7, v7, Lnts/ዃ;->ᾨ:[B

    .line 38
    invoke-static {v7, v10, v9, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v5

    add-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move/from16 v5, v18

    move/from16 v7, v19

    goto :goto_0

    :cond_5
    return-object v9
.end method
