.class public Lnts/ᛔ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ᰛ:[B


# instance fields
.field public ᇭ:[B

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lnts/ᛔ;->ᰛ:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    const-string v1, "+#Q/+$\'"

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 2
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lnts/ᛔ;->ㆃ:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lnts/ᛔ;->ᾨ:Ljava/lang/String;

    .line 5
    new-array v0, v2, [B

    iput-object v0, p0, Lnts/ᛔ;->ᇭ:[B

    return-void
.end method


# virtual methods
.method public ㆃ(I[B[BZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 4
    array-length v2, p3

    add-int/2addr v1, v2

    .line 7
    :cond_1
    iget-object v2, p0, Lnts/ᛔ;->ㆃ:Ljava/lang/String;

    iget-object v3, p0, Lnts/ᛔ;->ᾨ:Ljava/lang/String;

    iget-object v4, p0, Lnts/ᛔ;->ᇭ:[B

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/16 v7, 0x40

    const/4 v8, 0x3

    invoke-static {v8, v6, v7}, Lnts/ࡁ;->Ὺ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 9
    invoke-static {v3}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object p4

    invoke-static {p1, v2, p4, v4, v1}, Lnts/ቩ;->ᾨ(ILjava/lang/String;[B[BI)[B

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_2
    invoke-static {v2}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v2

    .line 14
    sget-object v5, Lnts/ᛔ;->ᰛ:[B

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 16
    invoke-static {v3}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object v5

    :cond_3
    if-nez v4, :cond_4

    .line 20
    sget-object v4, Lnts/ᛔ;->ᰛ:[B

    .line 23
    :cond_4
    new-array v3, v1, [B

    .line 25
    sget-object v6, Lnts/ᛔ;->ᰛ:[B

    move v7, v0

    :cond_5
    if-ge v7, v1, :cond_9

    .line 28
    invoke-virtual {v2}, Lnts/ዃ;->ᰛ()V

    if-nez p4, :cond_6

    .line 31
    array-length v8, v6

    .line 32
    invoke-virtual {v2, v6, v0, v8}, Lnts/ዃ;->ᇭ([BII)V

    .line 33
    invoke-static {v6, v0, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_6
    array-length v8, v5

    .line 35
    invoke-virtual {v2, v5, v0, v8}, Lnts/ዃ;->ᇭ([BII)V

    .line 36
    invoke-static {v5, v0, v5, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_7

    .line 37
    array-length v8, v6

    .line 38
    invoke-virtual {v2, v6, v0, v8}, Lnts/ዃ;->ᇭ([BII)V

    .line 39
    invoke-static {v6, v0, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    :cond_7
    array-length v6, v4

    invoke-virtual {v2, v4, v0, v6}, Lnts/ዃ;->ㆃ([BII)[B

    .line 41
    iget-object v6, v2, Lnts/ዃ;->ᾨ:[B

    const/4 v8, 0x1

    :goto_1
    if-ge v8, p1, :cond_8

    .line 42
    invoke-virtual {v2}, Lnts/ዃ;->ᰛ()V

    .line 43
    invoke-virtual {v2, v6}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    move v8, v0

    :goto_2
    if-ge v7, v1, :cond_5

    .line 46
    array-length v9, v6

    if-ge v8, v9, :cond_5

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v8, 0x1

    .line 47
    aget-byte v8, v6, v8

    aput-byte v8, v3, v7

    move v7, v9

    move v8, v10

    goto :goto_2

    :cond_9
    move-object p1, v3

    :goto_3
    if-eqz p2, :cond_a

    .line 48
    array-length p4, p2

    invoke-static {p1, v0, p2, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    array-length p2, p2

    goto :goto_4

    :cond_a
    move p2, v0

    :goto_4
    if-eqz p3, :cond_b

    .line 53
    array-length p4, p3

    invoke-static {p1, p2, p3, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length p1, p3

    :cond_b
    return-void
.end method
