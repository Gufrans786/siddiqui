.class public Lnts/ᅓ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ሠ;

.field public ౠ:[B

.field public ᇭ:Lnts/₦;

.field public ዲ:Z

.field public ᎊ:Lnts/ሠ;

.field public ᙕ:Ljava/lang/String;

.field public ᰛ:Lnts/ሠ;

.field public ᾨ:Lnts/ᝁ;

.field public て:Ljava/io/InputStream;

.field public ㆃ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnts/ᅓ;->ㆃ:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/ᅓ;->ᾨ:Lnts/ᝁ;

    .line 5
    iput-object v0, p0, Lnts/ᅓ;->ᇭ:Lnts/₦;

    .line 6
    iput-object v0, p0, Lnts/ᅓ;->ᰛ:Lnts/ሠ;

    .line 7
    iput-object v0, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    .line 8
    iput-object v0, p0, Lnts/ᅓ;->ౠ:[B

    .line 9
    iput-object v0, p0, Lnts/ᅓ;->ᙕ:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lnts/ᅓ;->て:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lnts/ᅓ;->ዲ:Z

    .line 12
    iput-object v0, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnts/ᅓ;->ᾨ:Lnts/ᝁ;

    .line 2
    iput-object v0, p0, Lnts/ᅓ;->ᇭ:Lnts/₦;

    .line 3
    iput-object v0, p0, Lnts/ᅓ;->ᰛ:Lnts/ሠ;

    .line 4
    iget-object v1, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnts/ሠ;->ᇭ()V

    .line 5
    :cond_0
    iput-object v0, p0, Lnts/ᅓ;->ᙕ:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lnts/ᅓ;->て:Ljava/io/InputStream;

    .line 7
    iput-object v0, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    return-void
.end method

.method public ᾨ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lnts/ᅓ;->ㆃ:Z

    return-void
.end method

.method public ᾨ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnts/ᅓ;->ㆃ:Z

    return v0
.end method

.method public ㆃ([BLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lnts/ᅓ;->て:Ljava/io/InputStream;

    .line 195
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 197
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 200
    array-length v3, p1

    if-lez v3, :cond_0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x1000

    .line 204
    new-array v3, p1, [B

    .line 205
    :goto_0
    invoke-virtual {p2, v3, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v3, v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 208
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 209
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lnts/ᅓ;->て:Ljava/io/InputStream;

    return-object p1
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x20

    const/16 v1, 0x28fa

    const/4 v2, 0x4

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_1

    const/16 v0, 0x28fe

    const/16 v3, 0x1a

    invoke-static {v0, v1, v3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x2905

    const/16 v3, 0x13

    .line 2
    invoke-static {v0, v2, v3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lnts/ሠ;

    invoke-direct {v0}, Lnts/ሠ;-><init>()V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lnts/ᅓ;->ᰛ:Lnts/ሠ;

    const/16 v0, 0x2909

    const/16 v3, 0x31

    .line 3
    invoke-static {v0, v1, v3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Lnts/ሠ;

    invoke-direct {v2}, Lnts/ሠ;-><init>()V

    :cond_3
    iput-object v2, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    .line 4
    iget-object v0, p0, Lnts/ᅓ;->ౠ:[B

    const/high16 v1, 0x10000

    if-nez v0, :cond_4

    new-array v0, v1, [B

    iput-object v0, p0, Lnts/ᅓ;->ౠ:[B

    .line 5
    :cond_4
    iget-object v0, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    if-nez v0, :cond_5

    new-instance v0, Lnts/ሠ;

    invoke-direct {v0, v1}, Lnts/ሠ;-><init>(I)V

    iput-object v0, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    goto :goto_2

    .line 6
    :cond_5
    invoke-virtual {v0}, Lnts/ሠ;->ᇭ()V

    .line 7
    :goto_2
    iget-boolean v0, p0, Lnts/ᅓ;->ㆃ:Z

    if-eqz v0, :cond_6

    .line 8
    new-instance v0, Lnts/₦;

    invoke-direct {v0}, Lnts/₦;-><init>()V

    iput-object v0, p0, Lnts/ᅓ;->ᇭ:Lnts/₦;

    goto :goto_3

    .line 10
    :cond_6
    new-instance v0, Lnts/ᝁ;

    invoke-direct {v0}, Lnts/ᝁ;-><init>()V

    iput-object v0, p0, Lnts/ᅓ;->ᾨ:Lnts/ᝁ;

    .line 12
    :goto_3
    iput-object p1, p0, Lnts/ᅓ;->ᙕ:Ljava/lang/String;

    return-void
.end method

.method public ㆃ(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lnts/ᅓ;->ዲ:Z

    return-void
.end method

.method public ㆃ()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lnts/ᅓ;->ዲ:Z

    return v0
.end method

.method public ㆃ([BII)Z
    .locals 10

    .line 13
    iget-object v0, p0, Lnts/ᅓ;->ᰛ:Lnts/ሠ;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 16
    iget-object p1, p0, Lnts/ᅓ;->ᰛ:Lnts/ሠ;

    invoke-virtual {p1}, Lnts/ሠ;->ㆃ()[B

    move-result-object p1

    .line 17
    array-length p2, p1

    const/4 p3, 0x3

    if-le p3, p2, :cond_0

    return v4

    .line 18
    :cond_0
    aget-byte p2, p1, v4

    const/16 v0, 0x1f

    const/16 v5, 0x66

    const/16 v6, 0x1b

    if-ne p2, v0, :cond_e

    aget-byte p2, p1, v3

    const/16 v0, -0x75

    if-ne p2, v0, :cond_e

    aget-byte p2, p1, v2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_e

    .line 22
    array-length p2, p1

    const/16 v7, 0xa

    if-le v7, p2, :cond_1

    return v4

    .line 24
    :cond_1
    aget-byte p2, p1, p3

    and-int/lit16 p3, p2, 0xd0

    if-nez p3, :cond_d

    and-int/lit8 p3, p2, 0x4

    if-eqz p3, :cond_6

    .line 36
    array-length p3, p1

    const/16 v8, 0xc

    if-le v8, p3, :cond_2

    return v4

    .line 38
    :cond_2
    aget-byte p3, p1, v7

    const/4 v7, -0x1

    if-eq p3, v7, :cond_5

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    const/16 v9, 0xb

    .line 43
    aget-byte v9, p1, v9

    if-eq v9, v7, :cond_4

    and-int/lit16 v5, v9, 0xff

    int-to-byte v5, v5

    shl-int/lit8 v0, v5, 0x8

    add-int/2addr p3, v0

    add-int/lit8 v0, p3, 0xc

    .line 50
    array-length v5, p1

    if-le v0, v5, :cond_3

    return v4

    :cond_3
    move v0, v4

    move v7, v8

    :goto_0
    if-ge v0, p3, :cond_6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_4
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x2961

    const/16 p3, 0x30

    invoke-static {p2, v6, p3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v5, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 52
    :cond_5
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x2946

    const/16 p3, 0x53

    invoke-static {p2, v6, p3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v5, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    and-int/lit8 p3, p2, 0x8

    if-eqz p3, :cond_8

    .line 69
    :goto_1
    array-length p3, p1

    if-ge v7, p3, :cond_7

    add-int/lit8 p3, v7, 0x1

    aget-byte v0, p1, v7

    move v7, p3

    if-eqz v0, :cond_7

    goto :goto_1

    .line 70
    :cond_7
    array-length p3, p1

    if-lt v7, p3, :cond_8

    return v4

    :cond_8
    and-int/lit8 p3, p2, 0x10

    if-eqz p3, :cond_a

    .line 74
    :goto_2
    array-length p3, p1

    if-ge v7, p3, :cond_9

    add-int/lit8 p3, v7, 0x1

    aget-byte v0, p1, v7

    move v7, p3

    if-eqz v0, :cond_9

    goto :goto_2

    .line 75
    :cond_9
    array-length p3, p1

    if-lt v7, p3, :cond_a

    return v4

    :cond_a
    and-int/2addr p2, v2

    if-eqz p2, :cond_c

    add-int/lit8 p2, v7, 0x2

    .line 79
    array-length p3, p1

    if-le p2, p3, :cond_b

    return v4

    :cond_b
    add-int/lit8 v7, v7, 0x2

    .line 83
    :cond_c
    array-length p2, p1

    sub-int/2addr p2, v7

    invoke-static {p1, v7, p2}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    .line 84
    array-length p3, p1

    .line 87
    iput-object v1, p0, Lnts/ᅓ;->ᰛ:Lnts/ሠ;

    .line 88
    iput-object v1, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    move p2, v4

    goto :goto_3

    .line 89
    :cond_d
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x292b

    const/16 p3, 0x5f

    invoke-static {p2, v6, p3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v5, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 90
    :cond_e
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x2910

    const/16 p3, 0x63

    invoke-static {p2, v6, p3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v5, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 149
    :cond_f
    :goto_3
    iget-object v0, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    if-eqz v0, :cond_13

    .line 160
    invoke-virtual {v0, p1, p2, p3}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 161
    iget-object p1, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    .line 162
    iget p2, p1, Lnts/ሠ;->ᾨ:I

    if-ge p2, v2, :cond_10

    return v4

    .line 163
    :cond_10
    invoke-virtual {p1, v4}, Lnts/ሠ;->ᇭ(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 164
    iget-object p2, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    invoke-virtual {p2, v3}, Lnts/ሠ;->ᇭ(I)B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x78

    if-ne p1, p3, :cond_12

    if-eq p2, v3, :cond_11

    const/16 p1, 0x5e

    if-eq p2, p1, :cond_11

    const/16 p1, 0x9c

    if-eq p2, p1, :cond_11

    const/16 p1, 0xda

    if-ne p2, p1, :cond_12

    .line 166
    :cond_11
    iget-object p1, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    invoke-virtual {p1, v2}, Lnts/ሠ;->ᰛ(I)[B

    move-result-object p1

    goto :goto_4

    .line 168
    :cond_12
    iget-object p1, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    invoke-virtual {p1}, Lnts/ሠ;->ㆃ()[B

    move-result-object p1

    .line 170
    :goto_4
    array-length p3, p1

    .line 172
    iput-object v1, p0, Lnts/ᅓ;->ᎊ:Lnts/ሠ;

    move p2, v4

    .line 176
    :cond_13
    iget-object v0, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    invoke-virtual {v0}, Lnts/ሠ;->ᰛ()V

    .line 177
    iget-boolean v0, p0, Lnts/ᅓ;->ㆃ:Z

    if-eqz v0, :cond_17

    .line 178
    iget-object v0, p0, Lnts/ᅓ;->ᇭ:Lnts/₦;

    .line 179
    iget-object v0, v0, Lnts/₦;->ᾨ:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 180
    :cond_14
    iget-object p1, p0, Lnts/ᅓ;->ᇭ:Lnts/₦;

    iget-object p2, p0, Lnts/ᅓ;->ౠ:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v4, p3}, Lnts/₦;->ㆃ([BII)I

    move-result p1

    .line 181
    iget-object p2, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    iget-object p3, p0, Lnts/ᅓ;->ౠ:[B

    invoke-virtual {p2, p3, v4, p1}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 182
    iget-object p1, p0, Lnts/ᅓ;->ᇭ:Lnts/₦;

    .line 183
    iget-object p2, p1, Lnts/₦;->ᾨ:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result p2

    if-nez p2, :cond_16

    iget p2, p1, Lnts/₦;->ㆃ:I

    if-nez p2, :cond_15

    goto :goto_5

    .line 184
    :cond_15
    iget-object p1, p1, Lnts/₦;->ᾨ:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p1

    goto :goto_6

    :cond_16
    :goto_5
    move p1, v4

    :goto_6
    if-gtz p1, :cond_14

    goto :goto_7

    .line 185
    :cond_17
    iget-object v0, p0, Lnts/ᅓ;->ᾨ:Lnts/ᝁ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ᝁ;->ᾨ([BII)V

    .line 187
    :cond_18
    iget-object p1, p0, Lnts/ᅓ;->ᾨ:Lnts/ᝁ;

    iget-object p2, p0, Lnts/ᅓ;->ౠ:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v4, p3}, Lnts/ᝁ;->ㆃ([BII)I

    move-result p1

    .line 188
    iget-object p2, p0, Lnts/ᅓ;->Ͼ:Lnts/ሠ;

    iget-object p3, p0, Lnts/ᅓ;->ౠ:[B

    invoke-virtual {p2, p3, v4, p1}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 189
    iget-object p1, p0, Lnts/ᅓ;->ᾨ:Lnts/ᝁ;

    .line 190
    iget-object p1, p1, Lnts/ᝁ;->ዲ:Lnts/Ἒ;

    .line 191
    iget p1, p1, Lnts/Ἒ;->ᰛ:I

    if-gtz p1, :cond_18

    :goto_7
    return v3
.end method
