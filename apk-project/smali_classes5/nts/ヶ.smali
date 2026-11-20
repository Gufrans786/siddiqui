.class public Lnts/ヶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    const/16 v1, 0x45

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v0, v1}, Lnts/ࡁ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnts/ヶ;->ㆃ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lnts/ヶ;->ㆃ:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Lnts/ቂ;

    const/4 v0, 0x5

    const/16 v1, 0x41

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lnts/ࡁ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([BI)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ltz p2, :cond_2

    .line 3
    new-array v1, p2, [B

    .line 5
    iget-object v2, p0, Lnts/ヶ;->ㆃ:Ljava/lang/String;

    invoke-static {v2}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v2

    .line 8
    iget v3, v2, Lnts/ዃ;->ㆃ:I

    .line 9
    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, p2, :cond_1

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    shr-int/lit8 v8, v6, 0x10

    int-to-byte v8, v8

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    int-to-byte v10, v6

    const/4 v11, 0x4

    .line 17
    new-array v12, v11, [B

    aput-byte v7, v12, v4

    const/4 v7, 0x1

    aput-byte v8, v12, v7

    aput-byte v9, v12, v0

    const/4 v7, 0x3

    aput-byte v10, v12, v7

    .line 19
    array-length v7, p1

    new-array v7, v7, [B

    .line 20
    array-length v8, p1

    .line 21
    invoke-virtual {v2, p1, v4, v8}, Lnts/ዃ;->ᇭ([BII)V

    .line 22
    invoke-static {p1, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-virtual {v2, v12, v4, v11}, Lnts/ዃ;->ㆃ([BII)[B

    .line 24
    iget-object v7, v2, Lnts/ዃ;->ᾨ:[B

    sub-int v8, p2, v5

    if-gt v3, v8, :cond_0

    .line 25
    invoke-static {v7, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v7, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :goto_1
    invoke-virtual {v2}, Lnts/ዃ;->ᰛ()V

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v3

    goto :goto_0

    :cond_1
    return-object v1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x27

    const/16 v1, 0x10

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->ᡲ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_3
    new-instance p1, Lnts/ቂ;

    const/4 p2, 0x7

    const/16 v0, 0x4b

    const/16 v1, 0x9

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->ᡲ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw p1
.end method
