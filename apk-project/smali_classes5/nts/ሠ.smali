.class public Lnts/ሠ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:Ljava/lang/String;

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, Lnts/ሠ;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lnts/ሠ;->ㆃ:[B

    .line 4
    iput p1, p0, Lnts/ሠ;->ᰛ:I

    return-void
.end method

.method public static ㆃ([B[BII)I
    .locals 6

    .line 11
    array-length v0, p1

    sub-int/2addr p3, v0

    const/4 v0, 0x1

    add-int/2addr p3, v0

    .line 12
    array-length v1, p1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    if-gez p3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 13
    aget-byte v1, p1, v1

    :goto_0
    if-ge p2, p3, :cond_4

    .line 18
    aget-byte v3, p0, p2

    if-ne v3, v1, :cond_3

    move v3, v0

    .line 19
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    add-int v4, p2, v3

    .line 20
    aget-byte v4, p0, v4

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return p2

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v2
.end method

.method public static ㆃ([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 23
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 24
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 25
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    iget v1, p0, Lnts/ሠ;->ᾨ:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lnts/ၽ;->Ͼ([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ͼ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnts/ሠ;->ᰛ:I

    .line 2
    invoke-virtual {p0}, Lnts/ሠ;->ᇭ()V

    return-void
.end method

.method public ᇭ(I)B
    .locals 1

    .line 6
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public ᇭ([B)Lnts/ሠ;
    .locals 1

    .line 4
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnts/ሠ;->ᾨ([B)Lnts/ሠ;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object p1

    return-object p1
.end method

.method public ᇭ([BII)Lnts/ሠ;
    .locals 1

    .line 5
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnts/ሠ;->ᾨ([BII)Lnts/ሠ;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    move-result-object p1

    return-object p1
.end method

.method public ᇭ()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ሠ;->ᾨ:I

    .line 2
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    array-length v0, v0

    iget v1, p0, Lnts/ሠ;->ᰛ:I

    if-eq v0, v1, :cond_0

    .line 3
    new-array v0, v1, [B

    iput-object v0, p0, Lnts/ሠ;->ㆃ:[B

    :cond_0
    return-void
.end method

.method public ᰛ()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ሠ;->ᾨ:I

    return-void
.end method

.method public ᰛ(I)[B
    .locals 1

    .line 2
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    invoke-virtual {p0, p1, v0}, Lnts/ሠ;->ᾨ(II)[B

    move-result-object p1

    return-object p1
.end method

.method public ᾨ()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    iget v1, p0, Lnts/ሠ;->ᾨ:I

    iget-object v2, p0, Lnts/ሠ;->ᇭ:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lnts/ၽ;->ㆃ([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᾨ([B)Lnts/ሠ;
    .locals 2

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lnts/ሠ;->ᾨ([BII)Lnts/ሠ;

    move-result-object p1

    return-object p1
.end method

.method public ᾨ([BII)Lnts/ሠ;
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    array-length v1, v0

    if-le v1, p3, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2, p3}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ሠ;->ㆃ:[B

    .line 6
    :goto_0
    iput p3, p0, Lnts/ሠ;->ᾨ:I

    return-object p0
.end method

.method public final ᾨ(I)V
    .locals 4

    .line 9
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    add-int/2addr p1, v0

    .line 10
    iget-object v1, p0, Lnts/ሠ;->ㆃ:[B

    array-length v2, v1

    if-ge v2, p1, :cond_0

    const/4 v2, 0x0

    .line 14
    :try_start_0
    div-int/lit8 v3, p1, 0x4

    add-int/2addr p1, v3

    new-array p1, p1, [B

    .line 15
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput-object p1, p0, Lnts/ሠ;->ㆃ:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 19
    :catch_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x4d

    const-string v1, "\u00193\'1w>05+z*(>=8|,75`( e).\'&:6`"

    const/16 v3, 0x1e

    .line 20
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public ᾨ(II)[B
    .locals 3

    sub-int/2addr p2, p1

    .line 22
    new-array v0, p2, [B

    .line 23
    iget-object v1, p0, Lnts/ሠ;->ㆃ:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public ㆃ(B)Lnts/ሠ;
    .locals 3

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lnts/ሠ;->ᾨ(I)V

    .line 7
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    iget v1, p0, Lnts/ሠ;->ᾨ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/ሠ;->ᾨ:I

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public ㆃ(I)Lnts/ሠ;
    .locals 0

    .line 5
    invoke-static {p1}, Lnts/ၽ;->ㆃ(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(II)Lnts/ሠ;
    .locals 2

    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    .line 8
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    if-gt p2, v0, :cond_0

    .line 9
    iget-object v1, p0, Lnts/ሠ;->ㆃ:[B

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lnts/ሠ;->ᾨ:I

    :cond_0
    return-object p0
.end method

.method public ㆃ([B)Lnts/ሠ;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ([BII)Lnts/ሠ;
    .locals 2

    if-eqz p1, :cond_0

    sub-int/2addr p3, p2

    .line 2
    invoke-virtual {p0, p3}, Lnts/ሠ;->ᾨ(I)V

    .line 3
    iget-object v0, p0, Lnts/ሠ;->ㆃ:[B

    iget v1, p0, Lnts/ሠ;->ᾨ:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lnts/ሠ;->ᾨ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ሠ;->ᾨ:I

    :cond_0
    return-object p0
.end method

.method public ㆃ()[B
    .locals 4

    .line 21
    iget v0, p0, Lnts/ሠ;->ᾨ:I

    new-array v1, v0, [B

    .line 22
    iget-object v2, p0, Lnts/ሠ;->ㆃ:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
