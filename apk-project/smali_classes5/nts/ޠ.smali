.class public Lnts/ޠ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Ⲳ:[I


# instance fields
.field public Ͼ:[B

.field public ౠ:[B

.field public ᇭ:[B

.field public ዲ:I

.field public ᎊ:I

.field public ᙕ:Lnts/ㅫ;

.field public ᡲ:I

.field public ᰛ:[B

.field public ᾨ:I

.field public Ὺ:I

.field public て:I

.field public ㆃ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lnts/ޠ;->Ⲳ:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    .line 21
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 22
    sput-object v0, Lnts/ޠ;->Ⲳ:[I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lnts/ޠ;->ᎊ:I

    return-void

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method


# virtual methods
.method public ㆃ(Lnts/ፍ;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_0
    iget v1, p0, Lnts/ޠ;->ᎊ:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v7, :cond_2

    if-eq v1, v3, :cond_4

    if-eq v1, v4, :cond_6

    if-eq v1, v6, :cond_9

    goto/16 :goto_1

    .line 51
    :cond_0
    invoke-virtual {p1, v2}, Lnts/ፍ;->ᾨ(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    return v0

    :cond_1
    add-int/lit16 v1, v1, 0x101

    .line 55
    iput v1, p0, Lnts/ޠ;->ㆃ:I

    .line 56
    iput v7, p0, Lnts/ޠ;->ᎊ:I

    .line 59
    :cond_2
    invoke-virtual {p1, v2}, Lnts/ፍ;->ᾨ(I)I

    move-result v1

    if-ne v1, v5, :cond_3

    return v0

    :cond_3
    add-int/2addr v1, v7

    .line 63
    iput v1, p0, Lnts/ޠ;->ᾨ:I

    .line 64
    iput v3, p0, Lnts/ޠ;->ᎊ:I

    .line 65
    iget v2, p0, Lnts/ޠ;->ㆃ:I

    add-int/2addr v2, v1

    new-array v1, v2, [B

    iput-object v1, p0, Lnts/ޠ;->Ͼ:[B

    .line 69
    :cond_4
    invoke-virtual {p1, v6}, Lnts/ፍ;->ᾨ(I)I

    move-result v1

    if-ne v1, v5, :cond_5

    return v0

    :cond_5
    add-int/2addr v1, v6

    .line 73
    iput v1, p0, Lnts/ޠ;->Ὺ:I

    const/16 v1, 0x13

    .line 74
    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ޠ;->ౠ:[B

    .line 75
    iput v0, p0, Lnts/ޠ;->て:I

    .line 76
    iput v4, p0, Lnts/ޠ;->ᎊ:I

    .line 80
    :cond_6
    :goto_0
    iget v1, p0, Lnts/ޠ;->て:I

    iget v2, p0, Lnts/ޠ;->Ὺ:I

    if-ge v1, v2, :cond_8

    .line 81
    invoke-virtual {p1, v4}, Lnts/ፍ;->ᇭ(I)I

    move-result v1

    if-ne v1, v5, :cond_7

    return v0

    .line 85
    :cond_7
    iget-object v2, p0, Lnts/ޠ;->ౠ:[B

    sget-object v3, Lnts/ޠ;->Ⲳ:[I

    iget v8, p0, Lnts/ޠ;->て:I

    aget v3, v3, v8

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v8, v8, 0x1

    .line 86
    iput v8, p0, Lnts/ޠ;->て:I

    goto :goto_0

    .line 88
    :cond_8
    new-instance v1, Lnts/ㅫ;

    iget-object v2, p0, Lnts/ޠ;->ౠ:[B

    invoke-direct {v1, v2}, Lnts/ㅫ;-><init>([B)V

    iput-object v1, p0, Lnts/ޠ;->ᙕ:Lnts/ㅫ;

    .line 89
    iput v0, p0, Lnts/ޠ;->て:I

    .line 90
    iput v6, p0, Lnts/ޠ;->ᎊ:I

    const/4 v1, 0x6

    .line 91
    iput v1, p0, Lnts/ޠ;->ᡲ:I

    .line 97
    :cond_9
    iget-object v1, p0, Lnts/ޠ;->Ͼ:[B

    iget-object v2, p0, Lnts/ޠ;->ᙕ:Lnts/ㅫ;

    invoke-virtual {p0, p1, v1, v2}, Lnts/ޠ;->ㆃ(Lnts/ፍ;[BLnts/ㅫ;)Z

    move-result p1

    if-nez p1, :cond_a

    return v0

    .line 101
    :cond_a
    iget p1, p0, Lnts/ޠ;->ㆃ:I

    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ޠ;->ᇭ:[B

    .line 102
    iget v1, p0, Lnts/ޠ;->ᾨ:I

    new-array v1, v1, [B

    iput-object v1, p0, Lnts/ޠ;->ᰛ:[B

    .line 103
    iget-object v1, p0, Lnts/ޠ;->Ͼ:[B

    array-length v2, p1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object p1, p0, Lnts/ޠ;->Ͼ:[B

    iget-object v1, p0, Lnts/ޠ;->ᇭ:[B

    array-length v1, v1

    iget-object v2, p0, Lnts/ޠ;->ᰛ:[B

    array-length v3, v2

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v7

    :catch_0
    move-exception p1

    .line 110
    instance-of v1, p1, Lnts/ᛎ;

    if-eqz v1, :cond_b

    .line 111
    check-cast p1, Lnts/ᛎ;

    throw p1

    .line 113
    :cond_b
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x17

    const-string v2, "Fpsou&lj+l`dj.eirvtb"

    const/16 v3, 0x14

    .line 114
    invoke-static {v2, v0, v3, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    .line 115
    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ㆃ(Lnts/ፍ;[BLnts/ㅫ;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lnts/ޠ;->て:I

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_6

    .line 2
    iget v0, p0, Lnts/ޠ;->ᡲ:I

    const/4 v1, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 3
    invoke-virtual {p3, p1}, Lnts/ㅫ;->ㆃ(Lnts/ፍ;)I

    move-result v0

    iput v0, p0, Lnts/ޠ;->ዲ:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    return v4

    .line 5
    :cond_1
    iput v1, p0, Lnts/ޠ;->ᡲ:I

    .line 7
    :cond_2
    iget v0, p0, Lnts/ޠ;->ዲ:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    .line 31
    iget v1, p0, Lnts/ޠ;->て:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/ޠ;->て:I

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 32
    iput v3, p0, Lnts/ޠ;->ᡲ:I

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-virtual {p1, v1}, Lnts/ፍ;->ᇭ(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    return v4

    .line 35
    :cond_3
    iput v3, p0, Lnts/ޠ;->ᡲ:I

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_0

    .line 37
    iget v2, p0, Lnts/ޠ;->て:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ޠ;->て:I

    aput-byte v4, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :pswitch_1
    invoke-virtual {p1, v5}, Lnts/ፍ;->ᇭ(I)I

    move-result v0

    add-int/2addr v0, v5

    if-ne v0, v6, :cond_4

    return v4

    .line 40
    :cond_4
    iput v3, p0, Lnts/ޠ;->ᡲ:I

    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_0

    .line 42
    iget v2, p0, Lnts/ޠ;->て:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ޠ;->て:I

    aput-byte v4, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    :pswitch_2
    iget v0, p0, Lnts/ޠ;->て:I

    sub-int/2addr v0, v2

    aget-byte v0, p2, v0

    .line 44
    invoke-virtual {p1, v6}, Lnts/ፍ;->ᇭ(I)I

    move-result v1

    add-int/2addr v1, v5

    if-ne v1, v6, :cond_5

    return v4

    .line 46
    :cond_5
    iput v3, p0, Lnts/ޠ;->ᡲ:I

    :goto_3
    if-ge v4, v1, :cond_0

    .line 48
    iget v2, p0, Lnts/ޠ;->て:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ޠ;->て:I

    aput-byte v0, p2, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
