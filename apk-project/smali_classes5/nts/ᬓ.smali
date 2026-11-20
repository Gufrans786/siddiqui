.class public Lnts/ᬓ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᾨ()V
    .locals 12

    const/16 v0, 0xff

    .line 1
    new-array v1, v0, [I

    .line 3
    iget v2, p0, Lnts/ᛩ;->ᙕ:I

    const/16 v3, 0x1be

    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v4

    move v6, v5

    :goto_0
    const/16 v8, 0x28

    if-lez v2, :cond_3

    move v9, v4

    .line 13
    :goto_1
    iget-object v10, p0, Lnts/ᛩ;->ᾨ:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v10, v7

    const/high16 v10, -0x2000000

    and-int/2addr v10, v9

    if-nez v10, :cond_2

    shl-int/lit8 v9, v9, 0x7

    and-int/lit8 v10, v7, 0x7f

    add-int/2addr v9, v10

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_1

    if-eq v6, v0, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 23
    aput v9, v1, v6

    move v6, v7

    move v7, v11

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lnts/ᛎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    const/16 v5, 0x44

    const/16 v6, 0xd9

    invoke-static {v6, v4, v5}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x13

    const/16 v4, 0x66

    const/16 v5, 0xf9

    invoke-static {v5, v2, v4}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    move v7, v11

    goto :goto_1

    .line 25
    :cond_2
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xb1

    const/16 v2, 0x27

    invoke-static {v1, v8, v2}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    new-array v0, v6, [I

    .line 37
    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    aget v1, v0, v5

    .line 40
    div-int/lit8 v2, v1, 0x28

    aput v2, v0, v4

    .line 41
    rem-int/2addr v1, v8

    aput v1, v0, v5

    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v4, v6, :cond_5

    .line 49
    aget v2, v0, v4

    int-to-long v2, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v6, -0x1

    if-ge v4, v2, :cond_4

    const/16 v2, 0x2e

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 54
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    return-void

    .line 56
    :cond_6
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xf

    const/16 v2, 0x52

    const/16 v4, 0xa2

    invoke-static {v4, v1, v2}, Lnts/ݶ;->ⱋ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ᾨ(Ljava/lang/String;)V

    return-void
.end method
