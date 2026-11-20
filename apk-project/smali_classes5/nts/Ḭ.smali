.class public Lnts/Ḭ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᇭ:I

.field public ዲ:Z

.field public ᎊ:Z

.field public ᙕ:I

.field public ᚹ:Ljava/util/Vector;

.field public ᛃ:Z

.field public ᡲ:I

.field public ᰛ:I

.field public ᵑ:I

.field public ᾨ:I

.field public Ὺ:Ljava/io/ByteArrayOutputStream;

.field public Ⲳ:Lnts/Ḭ;

.field public ⴗ:Ljava/util/Vector;

.field public て:Z

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/Ḭ;->ㆃ:[B

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 114
    iput v0, p0, Lnts/Ḭ;->ᇭ:I

    .line 115
    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    .line 116
    iput v0, p0, Lnts/Ḭ;->Ͼ:I

    .line 117
    iput v0, p0, Lnts/Ḭ;->ౠ:I

    .line 118
    iput v0, p0, Lnts/Ḭ;->ᙕ:I

    .line 119
    iput-boolean v0, p0, Lnts/Ḭ;->て:Z

    .line 120
    iput-boolean v0, p0, Lnts/Ḭ;->ዲ:Z

    .line 122
    iput-boolean v0, p0, Lnts/Ḭ;->ᎊ:Z

    .line 123
    iput v0, p0, Lnts/Ḭ;->ᡲ:I

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    .line 125
    iput-object v1, p0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    const/4 v2, 0x1

    .line 126
    iput-boolean v2, p0, Lnts/Ḭ;->ᛃ:Z

    .line 127
    iput v0, p0, Lnts/Ḭ;->ᵑ:I

    .line 129
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    .line 130
    iput-object v1, p0, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    .line 641
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/Ḭ;->ㆃ:[B

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 72
    iput v0, p0, Lnts/Ḭ;->ᇭ:I

    .line 73
    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    .line 74
    iput v0, p0, Lnts/Ḭ;->Ͼ:I

    .line 75
    iput v0, p0, Lnts/Ḭ;->ౠ:I

    .line 76
    iput v0, p0, Lnts/Ḭ;->ᙕ:I

    .line 77
    iput-boolean v0, p0, Lnts/Ḭ;->て:Z

    .line 78
    iput-boolean v0, p0, Lnts/Ḭ;->ዲ:Z

    .line 80
    iput-boolean v0, p0, Lnts/Ḭ;->ᎊ:Z

    .line 81
    iput v0, p0, Lnts/Ḭ;->ᡲ:I

    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    .line 83
    iput-object v1, p0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    const/4 v2, 0x1

    .line 84
    iput-boolean v2, p0, Lnts/Ḭ;->ᛃ:Z

    .line 85
    iput v0, p0, Lnts/Ḭ;->ᵑ:I

    .line 87
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    .line 88
    iput-object v1, p0, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    .line 109
    iput-object p1, p0, Lnts/Ḭ;->ㆃ:[B

    .line 110
    array-length p1, p1

    iput p1, p0, Lnts/Ḭ;->Ͼ:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/Ḭ;->ㆃ:[B

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 35
    iput v0, p0, Lnts/Ḭ;->ᇭ:I

    .line 36
    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    .line 37
    iput v0, p0, Lnts/Ḭ;->Ͼ:I

    .line 38
    iput v0, p0, Lnts/Ḭ;->ౠ:I

    .line 39
    iput v0, p0, Lnts/Ḭ;->ᙕ:I

    .line 40
    iput-boolean v0, p0, Lnts/Ḭ;->て:Z

    .line 41
    iput-boolean v0, p0, Lnts/Ḭ;->ዲ:Z

    .line 43
    iput-boolean v0, p0, Lnts/Ḭ;->ᎊ:Z

    .line 44
    iput v0, p0, Lnts/Ḭ;->ᡲ:I

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    .line 46
    iput-object v1, p0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    const/4 v2, 0x1

    .line 47
    iput-boolean v2, p0, Lnts/Ḭ;->ᛃ:Z

    .line 48
    iput v0, p0, Lnts/Ḭ;->ᵑ:I

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    .line 51
    iput-object v1, p0, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    .line 66
    iput-object p1, p0, Lnts/Ḭ;->ㆃ:[B

    .line 67
    iput p2, p0, Lnts/Ḭ;->ᡲ:I

    .line 68
    array-length p1, p1

    iput p1, p0, Lnts/Ḭ;->Ͼ:I

    return-void
.end method

.method public constructor <init>([BILnts/Ḭ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/Ḭ;->ㆃ:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 4
    iput v0, p0, Lnts/Ḭ;->ᇭ:I

    .line 5
    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    .line 6
    iput v0, p0, Lnts/Ḭ;->Ͼ:I

    .line 7
    iput v0, p0, Lnts/Ḭ;->ౠ:I

    .line 8
    iput v0, p0, Lnts/Ḭ;->ᙕ:I

    .line 9
    iput-boolean v0, p0, Lnts/Ḭ;->て:Z

    .line 10
    iput-boolean v0, p0, Lnts/Ḭ;->ዲ:Z

    .line 12
    iput-boolean v0, p0, Lnts/Ḭ;->ᎊ:Z

    .line 13
    iput v0, p0, Lnts/Ḭ;->ᡲ:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    .line 15
    iput-object v1, p0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lnts/Ḭ;->ᛃ:Z

    .line 17
    iput v0, p0, Lnts/Ḭ;->ᵑ:I

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    .line 20
    iput-object v1, p0, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    .line 27
    iput-object p1, p0, Lnts/Ḭ;->ㆃ:[B

    .line 28
    iput p2, p0, Lnts/Ḭ;->ᡲ:I

    .line 29
    iget-boolean p2, p3, Lnts/Ḭ;->て:Z

    iput-boolean p2, p0, Lnts/Ḭ;->ዲ:Z

    .line 30
    array-length p1, p1

    iput p1, p0, Lnts/Ḭ;->Ͼ:I

    .line 31
    iput-object p3, p0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    return-void
.end method

.method public static ᇭ(Ljava/lang/String;)[I
    .locals 9

    const/16 v0, 0xff

    .line 1
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    :goto_1
    if-ge v3, v1, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_1

    .line 7
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    if-eq v3, v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 10
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v3, v7

    aput v3, v0, v4

    move v3, v5

    move v4, v6

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0

    .line 14
    :cond_3
    new-array p0, v4, [I

    .line 15
    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static ᰛ([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lnts/Ḭ;->ㆃ([BZ)Z

    move-result p0

    return p0
.end method

.method public static ㆃ(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p1, 0x80

    if-ge p2, p1, :cond_0

    .line 82
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    mul-int/lit8 v1, p1, 0x8

    ushr-int v1, p2, v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    or-int/lit16 p1, v0, 0x80

    .line 88
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    if-lez v0, :cond_3

    mul-int/lit8 p1, v0, 0x8

    add-int/lit8 p1, p1, -0x8

    ushr-int p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    .line 90
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static ㆃ([BII[I[I[I[I[I)Z
    .locals 11

    const/4 v8, 0x0

    .line 100
    aput p1, p6, v8

    add-int/lit8 v0, p1, 0x1

    .line 102
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aput v1, p3, v8

    const/4 v9, 0x2

    add-int/lit8 v3, p1, 0x2

    .line 104
    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    const/4 v10, 0x1

    if-nez v1, :cond_0

    if-nez v4, :cond_0

    .line 106
    aput v3, p4, v8

    .line 107
    aput v3, p5, v8

    .line 108
    aput v3, p7, v8

    return v10

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-lez v1, :cond_3

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    return v8

    :cond_1
    if-nez v0, :cond_2

    move v4, v8

    move v0, v10

    goto :goto_1

    :cond_2
    move v1, v8

    move v4, v1

    :goto_0
    if-ge v1, v0, :cond_3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    .line 116
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_3
    move v0, v8

    :goto_1
    if-gez v4, :cond_4

    return v8

    .line 124
    :cond_4
    aput v3, p4, v8

    if-eqz v0, :cond_a

    .line 126
    aget v0, p3, v8

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    move v0, v3

    .line 127
    filled-new-array {v8}, [I

    move-result-object v3

    .line 128
    filled-new-array {v8}, [I

    move-result-object v4

    .line 129
    filled-new-array {v8}, [I

    move-result-object v5

    .line 130
    filled-new-array {v8}, [I

    move-result-object v6

    .line 131
    filled-new-array {v8}, [I

    move-result-object v7

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_6

    move-object v0, p0

    move v2, p2

    .line 133
    invoke-static/range {v0 .. v7}, Lnts/Ḭ;->ㆃ([BII[I[I[I[I[I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    aget v0, v3, v8

    if-nez v0, :cond_5

    aget v0, v7, v8

    aget v1, v6, v8

    sub-int v1, v0, v1

    if-ne v1, v9, :cond_5

    sub-int/2addr v0, v9

    .line 135
    aput v0, p5, v8

    .line 136
    aget v0, v7, v8

    aput v0, p7, v8

    return v10

    .line 139
    :cond_5
    aget v1, v7, v8

    goto :goto_2

    :cond_6
    return v8

    :cond_7
    move v0, v3

    :goto_3
    add-int/lit8 v0, p2, -0x1

    if-ge v3, v0, :cond_9

    .line 145
    aget-byte v0, p0, v3

    add-int/lit8 v1, v3, 0x1

    .line 146
    aget-byte v4, p0, v1

    and-int/lit8 v0, v0, -0x21

    if-nez v0, :cond_8

    and-int/lit8 v0, v4, -0x21

    if-nez v0, :cond_8

    .line 148
    aput v3, p5, v8

    add-int/2addr v3, v9

    .line 149
    aput v3, p7, v8

    return v10

    :cond_8
    move v3, v1

    goto :goto_3

    :cond_9
    return v8

    :cond_a
    move v0, v3

    add-int v3, v0, v4

    if-gt v3, p2, :cond_b

    .line 157
    aput v3, p5, v8

    .line 158
    aput v3, p7, v8

    return v10

    :cond_b
    return v8
.end method

.method public static ㆃ([BZ)Z
    .locals 9

    .line 91
    array-length v2, p0

    const/4 v8, 0x0

    .line 92
    filled-new-array {v8}, [I

    move-result-object v3

    .line 93
    filled-new-array {v8}, [I

    move-result-object v4

    .line 94
    filled-new-array {v8}, [I

    move-result-object v5

    .line 95
    filled-new-array {v8}, [I

    move-result-object v6

    .line 96
    filled-new-array {v8}, [I

    move-result-object v7

    const/4 v1, 0x0

    move-object v0, p0

    .line 97
    invoke-static/range {v0 .. v7}, Lnts/Ḭ;->ㆃ([BII[I[I[I[I[I)Z

    move-result p0

    if-nez p0, :cond_0

    return v8

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 98
    aget p1, v6, v8

    if-nez p1, :cond_1

    aget p1, v7, v8

    if-gt p1, v2, :cond_1

    return p0

    :cond_1
    return v8

    .line 99
    :cond_2
    aget p1, v6, v8

    if-nez p1, :cond_3

    aget p1, v7, v8

    if-ne p1, v2, :cond_3

    return p0

    :cond_3
    return v8
.end method


# virtual methods
.method public Ͼ(I)Lnts/Ḭ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    .line 2
    invoke-virtual {p0, p1}, Lnts/Ḭ;->ᙕ(I)V

    .line 3
    invoke-virtual {p0}, Lnts/Ḭ;->ᚹ()[B

    move-result-object p1

    .line 4
    iget v1, p0, Lnts/Ḭ;->ౠ:I

    invoke-direct {v0, p1, v1}, Lnts/Ḭ;-><init>([BI)V

    return-object v0
.end method

.method public Ͼ()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnts/Ḭ;->ㆃ(Z)V

    return-void
.end method

.method public ౠ()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnts/Ḭ;->ㆃ(Z)V

    return-void
.end method

.method public ౠ(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnts/Ḭ;->ᙕ(I)V

    .line 2
    invoke-virtual {p0}, Lnts/Ḭ;->ᚹ()[B

    move-result-object p1

    return-object p1
.end method

.method public ᇭ(I)Lnts/Ḭ;
    .locals 1

    .line 44
    iget-object v0, p0, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/Ḭ;

    return-object p1
.end method

.method public ᇭ()V
    .locals 14

    const/4 v0, 0x0

    .line 22
    filled-new-array {v0}, [I

    move-result-object v4

    .line 23
    filled-new-array {v0}, [I

    move-result-object v5

    .line 24
    filled-new-array {v0}, [I

    move-result-object v6

    .line 25
    filled-new-array {v0}, [I

    move-result-object v7

    .line 26
    filled-new-array {v0}, [I

    move-result-object v8

    .line 28
    iget v2, p0, Lnts/Ḭ;->ᾨ:I

    iget v3, p0, Lnts/Ḭ;->Ͼ:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lnts/Ḭ;->ㆃ(II[I[I[I[I[I)Z

    move-result v2

    const/16 v9, 0xd

    const/16 v10, 0x1be

    if-eqz v2, :cond_3

    .line 29
    aget v2, v8, v0

    iget v3, v1, Lnts/Ḭ;->Ͼ:I

    if-ne v2, v3, :cond_2

    .line 31
    aget v2, v4, v0

    iput v2, v1, Lnts/Ḭ;->ౠ:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 33
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    .line 34
    aget v2, v5, v0

    aget v3, v6, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 36
    invoke-virtual/range {v1 .. v8}, Lnts/Ḭ;->ㆃ(II[I[I[I[I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Lnts/Ḭ;

    iget-object v11, v1, Lnts/Ḭ;->ㆃ:[B

    aget v12, v7, v0

    aget v13, v8, v0

    sub-int/2addr v13, v12

    invoke-static {v11, v12, v13}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v11

    invoke-direct {v2, v11}, Lnts/Ḭ;-><init>([B)V

    .line 38
    aget v11, v4, v0

    iput v11, v2, Lnts/Ḭ;->ౠ:I

    .line 39
    iget-object v11, v1, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    aget v2, v8, v0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x1c3

    const/16 v3, 0x13

    invoke-static {v2, v9, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void

    .line 42
    :cond_2
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0xe

    const/16 v3, 0x42

    const/16 v4, 0x1b5

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 43
    :cond_3
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x1a8

    const/16 v3, 0x46

    invoke-static {v2, v9, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᇭ([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Lnts/Ḭ;->ᰛ([BI)V

    return-void
.end method

.method public ᇭ([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 17
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2}, Lnts/Ḭ;->ᰛ([BI)V

    return-void

    .line 21
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0xf

    const/16 v0, 0x5b

    const/16 v1, 0x175

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1bd

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ዲ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->て()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ᎊ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/16 v0, 0x30

    .line 1
    iput v0, p0, Lnts/Ḭ;->ᡲ:I

    return-void
.end method

.method public ᙕ()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v1, p0, Lnts/Ḭ;->Ͼ:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lnts/Ḭ;->ㆃ:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnts/Ḭ;->ᾨ:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 4
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xd

    const/16 v2, 0x15

    const/16 v3, 0x13b

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bf

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᙕ(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 5
    iget v0, p0, Lnts/Ḭ;->ᰛ:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/Ḭ;->ᇭ:I

    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    .line 8
    :cond_0
    iget v0, p0, Lnts/Ḭ;->ᇭ:I

    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 9
    :goto_0
    iget v0, p0, Lnts/Ḭ;->ᰛ:I

    if-ge v0, p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 11
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v1, p0, Lnts/Ḭ;->ᙕ:I

    add-int/2addr v0, v1

    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 12
    iget v0, p0, Lnts/Ḭ;->ᰛ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    goto :goto_0

    .line 15
    :cond_1
    iget p1, p0, Lnts/Ḭ;->ᾨ:I

    iput p1, p0, Lnts/Ḭ;->ᇭ:I

    return-void
.end method

.method public ᚹ()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 3
    iget-boolean v0, p0, Lnts/Ḭ;->て:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v2, p0, Lnts/Ḭ;->ᙕ:I

    add-int v3, v0, v2

    iget-object v4, p0, Lnts/Ḭ;->ㆃ:[B

    array-length v5, v4

    if-gt v3, v5, :cond_0

    .line 8
    new-array v1, v2, [B

    const/4 v3, 0x0

    .line 9
    invoke-static {v4, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v2, p0, Lnts/Ḭ;->ᙕ:I

    add-int/2addr v0, v2

    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    return-object v1

    .line 11
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x49

    const/16 v3, 0xd

    invoke-static {v2, v3, v1}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bf

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iget v0, p0, Lnts/Ḭ;->ౠ:I

    or-int/lit8 v0, v0, 0x20

    const/16 v2, 0x1be

    const/16 v3, 0xf

    if-eqz v0, :cond_7

    .line 23
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 24
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 26
    new-instance v0, Lnts/Ḭ;

    iget-object v4, p0, Lnts/Ḭ;->ㆃ:[B

    iget v5, p0, Lnts/Ḭ;->ౠ:I

    invoke-direct {v0, v4, v5, p0}, Lnts/Ḭ;-><init>([BILnts/Ḭ;)V

    .line 27
    iget v4, p0, Lnts/Ḭ;->ᾨ:I

    iput v4, v0, Lnts/Ḭ;->ᾨ:I

    .line 28
    iget-boolean v4, p0, Lnts/Ḭ;->て:Z

    if-nez v4, :cond_2

    .line 29
    iget v4, p0, Lnts/Ḭ;->ᾨ:I

    iget v5, p0, Lnts/Ḭ;->ᙕ:I

    add-int/2addr v4, v5

    iput v4, v0, Lnts/Ḭ;->Ͼ:I

    .line 30
    :cond_2
    new-instance v4, Lnts/ሠ;

    invoke-direct {v4}, Lnts/ሠ;-><init>()V

    .line 31
    :goto_0
    invoke-virtual {v0}, Lnts/Ḭ;->ዲ()Z

    move-result v5

    if-nez v5, :cond_3

    .line 32
    invoke-virtual {v0}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v0}, Lnts/Ḭ;->ዲ()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 35
    iget-boolean v2, v0, Lnts/Ḭ;->ዲ:Z

    if-eqz v2, :cond_4

    .line 36
    iget v2, v0, Lnts/Ḭ;->ᾨ:I

    add-int/2addr v2, v1

    iput v2, v0, Lnts/Ḭ;->ᾨ:I

    .line 39
    :cond_4
    iget-object v1, v0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    if-eqz v1, :cond_5

    .line 40
    iget v0, v0, Lnts/Ḭ;->ᾨ:I

    iput v0, v1, Lnts/Ḭ;->ᾨ:I

    .line 41
    :cond_5
    invoke-virtual {v4}, Lnts/ሠ;->ㆃ()[B

    move-result-object v0

    return-object v0

    .line 42
    :cond_6
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x3a

    const/16 v4, 0x7a

    invoke-static {v1, v3, v4}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 43
    :cond_7
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x56

    const/16 v4, 0xc

    invoke-static {v1, v3, v4}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᛃ()[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/16 v0, 0xff

    .line 1
    new-array v1, v0, [I

    .line 3
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 5
    iget v2, p0, Lnts/Ḭ;->ᙕ:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6
    filled-new-array {v3}, [I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-lez v2, :cond_4

    move v6, v3

    .line 15
    :cond_1
    invoke-virtual {p0}, Lnts/Ḭ;->ᙕ()I

    move-result v7

    const/high16 v8, -0x2000000

    and-int/2addr v8, v6

    const/16 v9, 0x1be

    if-nez v8, :cond_3

    shl-int/lit8 v6, v6, 0x7

    and-int/lit16 v8, v7, -0x81

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_1

    if-eq v5, v0, :cond_2

    add-int/lit8 v7, v5, 0x1

    .line 25
    aput v6, v1, v5

    move v5, v7

    goto :goto_0

    .line 26
    :cond_2
    new-instance v1, Lnts/ᛎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    const/16 v4, 0x44

    const/16 v5, 0xaa

    invoke-static {v5, v3, v4}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x13

    const/16 v3, 0x4d

    const/16 v4, 0xca

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 27
    :cond_3
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x27

    const/4 v2, 0x5

    const/16 v3, 0x83

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 38
    :cond_4
    new-array v0, v5, [I

    .line 39
    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    aget v1, v0, v4

    .line 42
    div-int/lit8 v2, v1, 0x28

    aput v2, v0, v3

    .line 43
    rem-int/lit8 v1, v1, 0x28

    aput v1, v0, v4

    return-object v0
.end method

.method public ᡲ()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v0

    .line 2
    iget v1, p0, Lnts/Ḭ;->ᙕ:I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x7

    if-gt v2, v3, :cond_1

    .line 5
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lnts/ዧ;->ዲ:[B

    return-object v0

    .line 6
    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    .line 7
    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 8
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xf

    const/16 v2, 0x11

    const/16 v3, 0x74

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1be

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᯚ()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lnts/ᖝ;->ㆃ:[B

    return-object v0
.end method

.method public ᰛ(I)Lnts/Ḭ;
    .locals 2

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lnts/Ḭ;->ᾨ()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    .line 11
    iget v1, v1, Lnts/Ḭ;->ౠ:I

    if-ne v1, p1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ᰛ()V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lnts/Ḭ;->ᇭ()V

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lnts/Ḭ;->ᾨ()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnts/Ḭ;->ᇭ(I)Lnts/Ḭ;

    move-result-object v1

    invoke-virtual {v1}, Lnts/Ḭ;->ᰛ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ᰛ([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-static {v0, p2, v1}, Lnts/Ḭ;->ㆃ(Ljava/io/ByteArrayOutputStream;II)V

    .line 2
    iget-object p2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0xf

    const/16 v0, 0x28

    const/16 v1, 0x148

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1bd

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ᵑ()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->ᛃ()[I

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 9
    aget v4, v0, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_0

    const/16 v4, 0x2e

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ṳ()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 3
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v1, p0, Lnts/Ḭ;->ᙕ:I

    add-int v2, v0, v1

    iget-object v3, p0, Lnts/Ḭ;->ㆃ:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-gt v2, v4, :cond_0

    .line 7
    new-array v2, v1, [B

    .line 8
    invoke-static {v3, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v2, p0, Lnts/Ḭ;->ㆃ:[B

    .line 11
    iget v0, p0, Lnts/Ḭ;->ᙕ:I

    iput v0, p0, Lnts/Ḭ;->Ͼ:I

    .line 12
    iput v5, p0, Lnts/Ḭ;->ᰛ:I

    iput v5, p0, Lnts/Ḭ;->ᇭ:I

    iput v5, p0, Lnts/Ḭ;->ᾨ:I

    return-void

    .line 13
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xd

    const/16 v2, 0x40

    invoke-static {v5, v1, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bf

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ᾨ()I
    .locals 1

    .line 11
    iget-object v0, p0, Lnts/Ḭ;->ᚹ:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public ᾨ(I)V
    .locals 3

    .line 12
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 13
    iget-object v1, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14
    :try_start_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    int-to-byte p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    const/16 v2, -0x80

    aput-byte v2, v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ᾨ(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnts/Ḭ;->ᇭ(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lnts/Ḭ;->ㆃ([II)V

    return-void
.end method

.method public ᾨ([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lnts/Ḭ;->ㆃ([BI)V

    return-void
.end method

.method public ᾨ([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 6
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 7
    aput-byte v2, v0, v2

    .line 8
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lnts/Ḭ;->ᰛ([BI)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0xf

    const/16 v0, 0x77

    const/16 v1, 0x166

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1bd

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public Ὺ()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->ᙕ()I

    move-result v0

    iput v0, p0, Lnts/Ḭ;->ౠ:I

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    .line 3
    invoke-virtual {p0}, Lnts/Ḭ;->ᙕ()I

    move-result v0

    .line 7
    iget v1, p0, Lnts/Ḭ;->ౠ:I

    and-int/lit8 v1, v1, -0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, -0x21

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lnts/Ḭ;->ᎊ:Z

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit16 v1, v0, 0x80

    const/16 v4, 0x1be

    const/16 v5, 0xf

    if-lez v1, :cond_5

    and-int/lit16 v0, v0, -0x81

    int-to-byte v0, v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 13
    :goto_1
    iput-boolean v2, p0, Lnts/Ḭ;->て:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    .line 19
    iput v3, p0, Lnts/Ḭ;->ᙕ:I

    :goto_2
    if-ge v3, v0, :cond_6

    .line 21
    iget v1, p0, Lnts/Ḭ;->ᙕ:I

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lnts/Ḭ;->ᙕ()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lnts/Ḭ;->ᙕ:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22
    :cond_4
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x110

    const/16 v2, 0x3b

    invoke-static {v1, v5, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 29
    :cond_5
    iput v0, p0, Lnts/Ḭ;->ᙕ:I

    .line 32
    :cond_6
    iget v0, p0, Lnts/Ḭ;->ᙕ:I

    if-ltz v0, :cond_7

    :goto_3
    return-void

    .line 33
    :cond_7
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x11f

    const/16 v2, 0x63

    invoke-static {v1, v5, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 34
    :cond_8
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x14

    const/16 v2, 0x1d

    const/16 v3, 0xfc

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x131

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ⱪ()Lnts/ᖝ;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᖝ;

    invoke-direct {v0}, Lnts/ᖝ;-><init>()V

    .line 2
    iget v1, p0, Lnts/Ḭ;->ᡲ:I

    if-eqz v1, :cond_3

    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    :try_start_0
    iget v2, p0, Lnts/Ḭ;->ᵑ:I

    const/4 v3, 0x2

    if-gtz v2, :cond_1

    iget-boolean v2, p0, Lnts/Ḭ;->ᛃ:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget v2, p0, Lnts/Ḭ;->ᡲ:I

    iget-object v4, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v1, v2, v4}, Lnts/Ḭ;->ㆃ(Ljava/io/ByteArrayOutputStream;II)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget v2, p0, Lnts/Ḭ;->ᡲ:I

    .line 11
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x80

    .line 12
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    iget v2, p0, Lnts/Ḭ;->ᵑ:I

    add-int/2addr v2, v3

    iput v2, v0, Lnts/ᖝ;->ᾨ:I

    .line 17
    :goto_1
    iget-object v2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 18
    iget v2, v0, Lnts/ᖝ;->ᾨ:I

    if-eqz v2, :cond_2

    .line 19
    new-array v2, v3, [B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 21
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lnts/ᖝ;->ㆃ:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_3
    iget-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lnts/ᖝ;->ㆃ:[B

    .line 27
    iget v1, p0, Lnts/Ḭ;->ᵑ:I

    iput v1, v0, Lnts/ᖝ;->ᾨ:I

    return-object v0
.end method

.method public Ⲳ()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 3
    iget v0, p0, Lnts/Ḭ;->ᙕ:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    .line 4
    :goto_0
    iget v4, p0, Lnts/Ḭ;->ᙕ:I

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lnts/Ḭ;->ᙕ()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0xf

    const/16 v3, 0x6f

    invoke-static {v1, v2, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1be

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v3, p0, Lnts/Ḭ;->Ͼ:I

    if-ge v0, v3, :cond_4

    .line 8
    iget-object v1, p0, Lnts/Ḭ;->ㆃ:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 9
    :goto_1
    iget v1, p0, Lnts/Ḭ;->ᙕ:I

    if-ge v2, v1, :cond_3

    shl-int/lit8 v0, v0, 0x8

    .line 10
    invoke-virtual {p0}, Lnts/Ḭ;->ᙕ()I

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0

    .line 11
    :cond_4
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x12e

    const/16 v3, 0x21

    invoke-static {v2, v1, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bf

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ⴗ()Lnts/Ḭ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-virtual {p0}, Lnts/Ḭ;->ᚹ()[B

    move-result-object v1

    iget v2, p0, Lnts/Ḭ;->ౠ:I

    invoke-direct {v0, v1, v2}, Lnts/Ḭ;-><init>([BI)V

    return-object v0
.end method

.method public せ()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    .line 2
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/Ḭ;->ㆃ:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/Ḭ;->ᡲ:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lnts/Ḭ;->Ⲳ:Lnts/Ḭ;

    .line 5
    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 6
    iput v0, p0, Lnts/Ḭ;->ᇭ:I

    .line 7
    iput v0, p0, Lnts/Ḭ;->ᰛ:I

    .line 8
    iput v0, p0, Lnts/Ḭ;->Ͼ:I

    .line 9
    iput v0, p0, Lnts/Ḭ;->ౠ:I

    .line 10
    iput v0, p0, Lnts/Ḭ;->ᙕ:I

    .line 11
    iget-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public て()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/Ḭ;->ᾨ:I

    iget v1, p0, Lnts/Ḭ;->ᙕ:I

    iget v2, p0, Lnts/Ḭ;->ౠ:I

    .line 4
    :try_start_0
    iget v3, p0, Lnts/Ḭ;->Ͼ:I

    if-ge v0, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lnts/Ḭ;->Ὺ()V

    .line 6
    iget-boolean v3, p0, Lnts/Ḭ;->ᎊ:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v3, p0, Lnts/Ḭ;->ዲ:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget v3, p0, Lnts/Ḭ;->ᾨ:I

    iget v5, p0, Lnts/Ḭ;->ᙕ:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    iget-object v5, p0, Lnts/Ḭ;->ㆃ:[B

    array-length v5, v5
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v5, :cond_2

    goto :goto_1

    :catch_0
    move-exception v3

    .line 14
    iget v4, v3, Lnts/ᛎ;->ㆃ:I

    const/16 v5, 0x1bf

    if-ne v4, v5, :cond_3

    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 15
    :goto_1
    iput v0, p0, Lnts/Ḭ;->ᾨ:I

    .line 16
    iput v1, p0, Lnts/Ḭ;->ᙕ:I

    .line 17
    iput v2, p0, Lnts/Ḭ;->ౠ:I

    return v4

    .line 18
    :cond_3
    throw v3
.end method

.method public ㆃ()V
    .locals 1

    const/16 v0, 0x30

    .line 222
    invoke-virtual {p0, v0}, Lnts/Ḭ;->ᾨ(I)V

    return-void
.end method

.method public ㆃ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lnts/Ḭ;->ㆃ(II)V

    return-void
.end method

.method public ㆃ(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x4

    :goto_0
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    and-int v2, p1, v1

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 13
    :cond_1
    :try_start_0
    iget-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1, p2, v0}, Lnts/Ḭ;->ㆃ(Ljava/io/ByteArrayOutputStream;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-lez v0, :cond_2

    .line 20
    iget-object p2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lnts/Ḭ;->ᇭ(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lnts/Ḭ;->ㆃ([II)V

    return-void
.end method

.method public ㆃ(Lnts/ᖝ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget v0, p1, Lnts/ᖝ;->ᾨ:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lnts/Ḭ;->ᵑ:I

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    iget-object p1, p1, Lnts/ᖝ;->ㆃ:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 75
    :try_start_0
    iget v0, p1, Lnts/Ḭ;->ᡲ:I

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p1, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lnts/Ḭ;->ㆃ(Ljava/io/ByteArrayOutputStream;II)V

    .line 78
    :cond_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    iget-object p1, p1, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ㆃ(Z)V
    .locals 9

    .line 223
    iget-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 224
    iget-object v0, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    iget-object v1, p0, Lnts/Ḭ;->ⴗ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 226
    :try_start_0
    iget-object p1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    add-int/lit8 p1, v0, 0x2

    .line 229
    iget-object v2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sub-int/2addr v2, p1

    .line 231
    iget-object v3, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x80

    if-ge v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-byte p1, v2

    .line 233
    aput-byte p1, v3, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    .line 235
    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lez v2, :cond_2

    rsub-int/lit8 v7, v6, 0x3

    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    .line 239
    aput-byte v8, v4, v7

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v7, v6, 0x80

    int-to-byte v7, v7

    .line 243
    aput-byte v7, v3, v2

    .line 244
    array-length v2, v3

    add-int/2addr v2, v6

    new-array v2, v2, [B

    .line 245
    invoke-static {v3, v5, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v5, v6, 0x4

    .line 246
    invoke-static {v4, v5, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, p1

    .line 247
    array-length v4, v3

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-static {v3, p1, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 250
    :goto_1
    iget-object p1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 251
    :try_start_1
    iget-object p1, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 252
    :cond_3
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x13

    const/16 v1, 0x28

    const/16 v2, 0x1ee

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1bd

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public ㆃ([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ㆃ([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 22
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 24
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    add-int/2addr v3, v1

    invoke-static {v0, p2, v3}, Lnts/Ḭ;->ㆃ(Ljava/io/ByteArrayOutputStream;II)V

    if-eqz v1, :cond_1

    .line 25
    iget-object p2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 26
    :cond_1
    iget-object p2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 29
    :cond_2
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0xf

    const/16 v0, 0x68

    const/16 v1, 0x157

    invoke-static {v1, p2, v0}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1bd

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final ㆃ([II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 30
    array-length v0, p1

    .line 33
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 36
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 40
    :cond_0
    aget v5, p1, v3

    mul-int/lit8 v5, v5, 0x28

    aget v2, p1, v2

    add-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 45
    aget v2, p1, v2

    const/16 v5, 0x7f

    if-ltz v2, :cond_1

    if-ge v2, v5, :cond_1

    .line 47
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    move v7, v3

    move v9, v7

    move v6, v5

    move v8, v6

    :goto_2
    if-eqz v6, :cond_3

    and-int v10, v2, v6

    if-eqz v10, :cond_2

    move v8, v6

    move v9, v7

    :cond_2
    shl-int/lit8 v6, v6, 0x7

    add-int/lit8 v7, v7, 0x7

    goto :goto_2

    :cond_3
    :goto_3
    if-eq v8, v5, :cond_5

    const/high16 v6, 0x1e00000

    if-ne v8, v6, :cond_4

    const/high16 v8, 0xfe00000

    :cond_4
    and-int v6, v2, v8

    ushr-int/2addr v6, v9

    or-int/lit16 v6, v6, 0x80

    .line 63
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v8, v8, 0x7

    add-int/lit8 v9, v9, -0x7

    goto :goto_3

    :cond_5
    and-int/2addr v2, v8

    .line 65
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 69
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 71
    :try_start_0
    iget-object v0, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-static {v0, p2, v1}, Lnts/Ḭ;->ㆃ(Ljava/io/ByteArrayOutputStream;II)V

    .line 72
    iget-object p2, p0, Lnts/Ḭ;->Ὺ:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ㆃ(II[I[I[I[I[I)Z
    .locals 13

    const/4 v8, 0x0

    .line 159
    aput p1, p6, v8

    .line 160
    iget-object v1, p0, Lnts/Ḭ;->ㆃ:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, v1, p1

    and-int/lit16 v4, v4, 0xff

    aput v4, p3, v8

    const/4 v9, 0x2

    add-int/lit8 v5, p1, 0x2

    .line 162
    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    const/4 v10, 0x1

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 164
    aput v5, p4, v8

    .line 165
    aput v5, p5, v8

    .line 166
    aput v5, p7, v8

    return v10

    :cond_0
    and-int/lit16 v4, v1, 0x80

    const/16 v6, 0x1be

    const/16 v7, 0xf

    if-lez v4, :cond_3

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/4 v3, 0x4

    if-gt v1, v3, :cond_2

    move v3, v8

    if-nez v1, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    shl-int/lit8 v3, v3, 0x8

    .line 174
    iget-object v11, p0, Lnts/Ḭ;->ㆃ:[B

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v12

    goto :goto_0

    .line 175
    :cond_2
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x1d0

    const/4 v3, 0x7

    invoke-static {v2, v7, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    move v1, v8

    :goto_1
    if-ltz v3, :cond_b

    .line 186
    aput v5, p4, v8

    if-eqz v1, :cond_9

    .line 188
    aget v1, p3, v8

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    .line 189
    filled-new-array {v8}, [I

    move-result-object v3

    .line 190
    filled-new-array {v8}, [I

    move-result-object v4

    move v1, v5

    .line 191
    filled-new-array {v8}, [I

    move-result-object v5

    .line 192
    filled-new-array {v8}, [I

    move-result-object v6

    .line 193
    filled-new-array {v8}, [I

    move-result-object v7

    :goto_2
    if-ge v1, p2, :cond_5

    move-object v0, p0

    move v2, p2

    .line 195
    invoke-virtual/range {v0 .. v7}, Lnts/Ḭ;->ㆃ(II[I[I[I[I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    aget v1, v3, v8

    if-nez v1, :cond_4

    aget v1, v7, v8

    aget v11, v6, v8

    sub-int v11, v1, v11

    if-ne v11, v9, :cond_4

    sub-int/2addr v1, v9

    .line 197
    aput v1, p5, v8

    .line 198
    aget v1, v7, v8

    aput v1, p7, v8

    return v10

    .line 201
    :cond_4
    aget v1, v7, v8

    goto :goto_2

    :cond_5
    return v8

    :cond_6
    move v1, v5

    :goto_3
    add-int/lit8 v1, p2, -0x1

    if-ge v5, v1, :cond_8

    .line 207
    iget-object v1, p0, Lnts/Ḭ;->ㆃ:[B

    aget-byte v3, v1, v5

    add-int/lit8 v4, v5, 0x1

    .line 208
    aget-byte v1, v1, v4

    and-int/lit8 v3, v3, -0x21

    if-nez v3, :cond_7

    and-int/lit8 v1, v1, -0x21

    if-nez v1, :cond_7

    .line 210
    aput v5, p5, v8

    add-int/2addr v5, v9

    .line 211
    aput v5, p7, v8

    return v10

    :cond_7
    move v5, v4

    goto :goto_3

    :cond_8
    return v8

    :cond_9
    move v1, v5

    add-int v5, v1, v3

    if-gt v5, p2, :cond_a

    .line 219
    aput v5, p5, v8

    .line 220
    aput v5, p7, v8

    return v10

    :cond_a
    return v8

    .line 221
    :cond_b
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x1df

    const/16 v3, 0x9

    invoke-static {v2, v7, v3}, Lnts/ݶ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1
.end method
