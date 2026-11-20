.class public Lnts/ᇢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/Ҫ;


# instance fields
.field public Ͼ:J

.field public ౠ:Z

.field public ᇭ:[I

.field public ᙕ:[B

.field public ᰛ:[B

.field public ᾨ:I

.field public て:I

.field public ㆃ:[I


# direct methods
.method public constructor <init>([BZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/ᇢ;->ㆃ:[I

    const/16 v2, 0xa

    .line 3
    iput v2, p0, Lnts/ᇢ;->ᾨ:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lnts/ᇢ;->ᇭ:[I

    .line 5
    iput-object v2, p0, Lnts/ᇢ;->ᰛ:[B

    .line 8
    iput-object v2, p0, Lnts/ᇢ;->ᙕ:[B

    const/16 v2, 0x200

    .line 9
    iput v2, p0, Lnts/ᇢ;->て:I

    .line 12
    iput-boolean p2, p0, Lnts/ᇢ;->ౠ:Z

    .line 13
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    .line 14
    new-array v3, v0, [I

    iput-object v3, p0, Lnts/ᇢ;->ᇭ:[I

    .line 15
    new-array v0, v0, [I

    const/16 v3, 0x10

    .line 16
    new-array v3, v3, [B

    iput-object v3, p0, Lnts/ᇢ;->ᙕ:[B

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 18
    invoke-static {p1, v3, v2, v1, v0}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    move-result p2

    iput p2, p0, Lnts/ᇢ;->ᾨ:I

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1, v3, v2, v0, v1}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    move-result p2

    iput p2, p0, Lnts/ᇢ;->ᾨ:I

    .line 22
    :goto_0
    iget-object p2, p0, Lnts/ᇢ;->ᇭ:[I

    invoke-static {p1, v2, v2, p2, v0}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    return-void
.end method


# virtual methods
.method public final Ͼ()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnts/ᇢ;->ౠ:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    iget-object v1, p0, Lnts/ᇢ;->ㆃ:[I

    iget v2, p0, Lnts/ᇢ;->ᾨ:I

    invoke-static {v0, v1, v2}, Lnts/ᜧ;->ᾨ([B[II)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    iget-object v1, p0, Lnts/ᇢ;->ㆃ:[I

    iget v2, p0, Lnts/ᇢ;->ᾨ:I

    invoke-static {v0, v1, v2}, Lnts/ᜧ;->ㆃ([B[II)V

    return-void
.end method

.method public final ᇭ()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lnts/ᇢ;->Ͼ:J

    iget-object v2, p0, Lnts/ᇢ;->ᰛ:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Lnts/ၽ;->ᾨ(J[BII)V

    .line 2
    iget-object v0, p0, Lnts/ᇢ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᇢ;->ᇭ:[I

    iget v2, p0, Lnts/ᇢ;->ᾨ:I

    invoke-static {v0, v1, v2}, Lnts/ᜧ;->ᾨ([B[II)V

    return-void
.end method

.method public final ᰛ()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    move v3, v2

    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    .line 1
    iget-object v2, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v4, v2, v1

    shr-int/lit8 v5, v4, 0x7

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v2, v1, v0

    xor-int/lit16 v2, v2, 0x87

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_1
    return-void
.end method

.method public ᾨ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ㆃ([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    div-int/lit8 p3, p3, 0x10

    mul-int/lit8 v3, p3, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lnts/ᇢ;->ㆃ([BII[BIZ)V

    return v3
.end method

.method public final ㆃ([BII[BIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    if-nez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v0, "&\u0000\u001b\r\u0007\u0003\rH.\u0008\u0015\u0011\u0017LSunxrvx=[}`db9"

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt p3, v3, :cond_12

    .line 5
    div-int/lit8 v4, p3, 0x10

    .line 6
    rem-int/lit8 v5, p3, 0x10

    if-nez p6, :cond_2

    if-gtz v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x1a

    .line 8
    invoke-static {v0, v1, v1, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 12
    :goto_1
    iget-object p6, p0, Lnts/ᇢ;->ᰛ:[B

    if-nez p6, :cond_4

    .line 13
    new-array p6, v3, [B

    iput-object p6, p0, Lnts/ᇢ;->ᰛ:[B

    .line 14
    invoke-virtual {p0}, Lnts/ᇢ;->ᇭ()V

    :cond_4
    move p6, v2

    :goto_2
    const-wide/16 v0, 0x1

    if-ge p6, v4, :cond_8

    if-lez p3, :cond_8

    .line 20
    iget-object v6, p0, Lnts/ᇢ;->ᙕ:[B

    invoke-static {p1, p2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x10

    .line 23
    iget v6, p0, Lnts/ᇢ;->て:I

    div-int/2addr v6, v3

    rem-int v6, p6, v6

    if-nez v6, :cond_5

    if-eqz p6, :cond_5

    .line 24
    iget-wide v6, p0, Lnts/ᇢ;->Ͼ:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lnts/ᇢ;->Ͼ:J

    .line 25
    invoke-virtual {p0}, Lnts/ᇢ;->ᇭ()V

    :cond_5
    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_6

    .line 29
    iget-object v1, p0, Lnts/ᇢ;->ᙕ:[B

    aget-byte v6, v1, v0

    iget-object v7, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {p0}, Lnts/ᇢ;->Ͼ()V

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_7

    .line 34
    iget-object v1, p0, Lnts/ᇢ;->ᙕ:[B

    aget-byte v6, v1, v0

    iget-object v7, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 36
    :cond_7
    invoke-virtual {p0}, Lnts/ᇢ;->ᰛ()V

    .line 38
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p5, p5, 0x10

    add-int/lit8 p3, p3, -0x10

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    .line 43
    :cond_8
    iget p3, p0, Lnts/ᇢ;->て:I

    div-int/2addr p3, v3

    rem-int p3, p6, p3

    if-nez p3, :cond_9

    if-eqz p6, :cond_9

    .line 44
    iget-wide v6, p0, Lnts/ᇢ;->Ͼ:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lnts/ᇢ;->Ͼ:J

    .line 45
    invoke-virtual {p0}, Lnts/ᇢ;->ᇭ()V

    :cond_9
    if-lez v5, :cond_11

    .line 50
    new-array p3, v3, [B

    .line 51
    iget-boolean p6, p0, Lnts/ᇢ;->ౠ:Z

    if-nez p6, :cond_a

    .line 52
    iget-object p6, p0, Lnts/ᇢ;->ᰛ:[B

    invoke-static {p6, v2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-virtual {p0}, Lnts/ᇢ;->ᰛ()V

    .line 55
    :cond_a
    iget-object p6, p0, Lnts/ᇢ;->ᙕ:[B

    invoke-static {p1, p2, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    move p6, v2

    :goto_5
    if-ge p6, v3, :cond_b

    .line 59
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    aget-byte v1, v0, p6

    iget-object v4, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v4, v4, p6

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_5

    .line 61
    :cond_b
    invoke-virtual {p0}, Lnts/ᇢ;->Ͼ()V

    move p6, v2

    :goto_6
    if-ge p6, v3, :cond_c

    .line 63
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    aget-byte v1, v0, p6

    iget-object v4, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v4, v4, p6

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_6

    .line 65
    :cond_c
    iget-boolean p6, p0, Lnts/ᇢ;->ౠ:Z

    if-eqz p6, :cond_d

    .line 66
    invoke-virtual {p0}, Lnts/ᇢ;->ᰛ()V

    .line 70
    :cond_d
    new-array p6, v5, [B

    .line 71
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    invoke-static {v0, v2, p6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v0, p0, Lnts/ᇢ;->ᙕ:[B

    invoke-static {p1, p2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-boolean p1, p0, Lnts/ᇢ;->ౠ:Z

    if-nez p1, :cond_e

    .line 75
    iget-object p1, p0, Lnts/ᇢ;->ᰛ:[B

    invoke-static {p3, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    move p1, v2

    :goto_7
    if-ge p1, v3, :cond_f

    .line 79
    iget-object p2, p0, Lnts/ᇢ;->ᙕ:[B

    aget-byte p3, p2, p1

    iget-object v0, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v0, v0, p1

    xor-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 81
    :cond_f
    invoke-virtual {p0}, Lnts/ᇢ;->Ͼ()V

    move p1, v2

    :goto_8
    if-ge p1, v3, :cond_10

    .line 83
    iget-object p2, p0, Lnts/ᇢ;->ᙕ:[B

    aget-byte p3, p2, p1

    iget-object v0, p0, Lnts/ᇢ;->ᰛ:[B

    aget-byte v0, v0, p1

    xor-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 86
    :cond_10
    iget-object p1, p0, Lnts/ᇢ;->ᙕ:[B

    invoke-static {p1, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p5, v3

    .line 89
    invoke-static {p6, v2, p4, p5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_9
    return-void

    .line 90
    :cond_12
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x61

    .line 91
    invoke-static {v0, v2, v1, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-array v4, p3, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 4
    invoke-virtual/range {v0 .. v6}, Lnts/ᇢ;->ㆃ([BII[BIZ)V

    return-object v4
.end method
