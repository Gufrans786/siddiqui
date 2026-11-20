.class public Lnts/ၽ;
.super Lnts/ଧ;
.source "SourceFile"


# static fields
.field public static final Ͼ:Ljava/lang/String;

.field public static final ౠ:Ljava/lang/String;

.field public static final ᙕ:Ljava/lang/String;

.field public static final ᰛ:Ljava/lang/String;

.field public static final て:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ၽ;->ᰛ:Ljava/lang/String;

    const/16 v0, 0x62

    const/16 v1, 0x8

    .line 5
    invoke-static {v2, v1, v0}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ၽ;->Ͼ:Ljava/lang/String;

    const/16 v0, 0xa

    const/16 v3, 0x63

    const/16 v4, 0xc

    .line 6
    invoke-static {v4, v0, v3}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ၽ;->ౠ:Ljava/lang/String;

    const/16 v0, 0x16

    const/16 v3, 0xb

    const/16 v4, 0x1b

    .line 7
    invoke-static {v0, v3, v4}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnts/ၽ;->ᙕ:Ljava/lang/String;

    const/16 v5, 0x21

    const/16 v6, 0x7d

    .line 8
    invoke-static {v5, v2, v6}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    const/16 v5, 0x25

    const/16 v6, 0x79

    .line 11
    invoke-static {v5, v1, v6}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    const/16 v5, 0x2d

    const/16 v7, 0x48

    .line 12
    invoke-static {v5, v1, v7}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnts/ၽ;->て:Ljava/lang/String;

    const/16 v1, 0x35

    const/16 v5, 0x28

    .line 15
    invoke-static {v1, v4, v5}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    const/16 v1, 0x19

    const/16 v4, 0x6d

    const/16 v5, 0x50

    .line 16
    invoke-static {v5, v1, v4}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    .line 23
    new-array v1, v2, [Ljava/lang/String;

    const/16 v1, 0x69

    invoke-static {v1, v3, v0}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    const/4 v0, 0x5

    const/16 v1, 0x30

    const/16 v2, 0x74

    invoke-static {v2, v0, v1}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    const/16 v0, 0x9

    const/16 v1, 0x6f

    invoke-static {v6, v0, v1}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    const/4 v0, 0x6

    const/16 v1, 0x10

    const/16 v2, 0x82

    invoke-static {v2, v0, v1}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ଧ;-><init>()V

    return-void
.end method

.method public static Ͼ(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x17

    const/16 v2, 0x42

    const/16 v3, 0x1c7

    invoke-static {v3, v1, v2}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xca

    invoke-direct {v0, v1, p0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static Ͼ([B)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2, p0, v1, v0, v1}, Lnts/ၽ;->ㆃ(I[BIIZ)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lnts/ၽ;->ㆃ([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Ͼ([BII)Ljava/lang/String;
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static ౠ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static ౠ([BII)Ljava/lang/String;
    .locals 2

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lnts/ၽ;->ᰛ:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static ౠ([B)[B
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0

    :cond_0
    array-length v0, p0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static ᇭ([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lnts/ၽ;->ᾨ([BIIZ)I

    move-result p0

    return p0
.end method

.method public static ᇭ([B)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v2, v0, v1}, Lnts/ၽ;->ㆃ([BIIZ)[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᇭ([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnts/ၽ;->ㆃ([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᇭ(I)[B
    .locals 2

    int-to-long v0, p0

    const/4 p0, 0x4

    .line 9
    invoke-static {v0, v1, p0}, Lnts/ၽ;->ᾨ(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᇭ(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0xe

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Lnts/ၽ;->ㆃ(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᇭ([B[B)[B
    .locals 3

    .line 10
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 11
    array-length v1, p0

    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length p0, p0

    array-length v1, p1

    .line 14
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static ᇭ(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ዲ([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    .line 2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lnts/ၽ;->ౠ([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lnts/ၽ;->ౠ([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ዲ(Ljava/lang/String;)Z
    .locals 5

    .line 5
    invoke-static {p0}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff80

    and-int/2addr v3, v4

    if-lez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static ᎊ([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3
    aget-byte v2, p0, v1

    invoke-static {v2}, Lnts/ၽ;->ᾨ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 5
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᎊ(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ᙕ([BII)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    add-int v2, p1, p2

    .line 3
    array-length v3, p0

    if-gt v2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    .line 4
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static ᙕ(Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static ᙕ([B)[B
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    :cond_0
    return-object p0
.end method

.method public static ᡲ(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x10

    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static ᡲ([B)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/16 v1, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-byte v3, p0, v2

    if-gez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static ᰛ(I)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᰛ(Ljava/lang/String;)[B
    .locals 1

    .line 17
    invoke-static {p0}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {v0, p0}, Lnts/ၽ;->ㆃ(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᰛ([B)[B
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0x34

    const/16 v2, 0x1fa

    .line 15
    invoke-static {v2, v0, v1}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnts/ၽ;->ᾨ([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᰛ([BII)[B
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    goto :goto_0

    .line 5
    :cond_1
    array-length v1, p0

    if-le p1, v1, :cond_2

    .line 6
    array-length p1, p0

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    move p2, v0

    :cond_3
    add-int v1, p1, p2

    .line 11
    array-length v2, p0

    if-le v1, v2, :cond_4

    .line 12
    array-length p2, p0

    sub-int/2addr p2, p1

    .line 13
    :cond_4
    new-array v1, p2, [B

    .line 14
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static ᾨ([BIIZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move p3, v0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 4
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 v2, v0, 0x8

    shl-int/2addr p1, v2

    or-int/2addr p3, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_1
    add-int/lit8 p3, p2, -0x1

    if-lez p2, :cond_2

    shl-int/lit8 p2, v0, 0x8

    add-int/lit8 v0, p1, 0x1

    .line 8
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    move p2, v0

    move v0, p1

    move p1, p2

    move p2, p3

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static ᾨ()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᾨ(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const-string v0, "0"

    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    .line 72
    :catch_0
    new-instance p0, Lnts/ᛎ;

    const/16 v0, 0x11

    const/16 v1, 0x20

    const/16 v2, 0x1de

    invoke-static {v2, v0, v1}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xca

    invoke-direct {p0, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static ᾨ(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Lnts/ၽ;->ᾨ(I[B)[B

    move-result-object p0

    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r\n"

    const-string v0, ""

    .line 61
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᾨ([BII)Ljava/lang/String;
    .locals 2

    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lnts/ၽ;->ౠ:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static ᾨ(J[BII)V
    .locals 2

    add-int/2addr p4, p3

    :goto_0
    if-ge p3, p4, :cond_0

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 76
    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ᾨ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ᾨ([B[B)Z
    .locals 4

    const/16 v0, 0x1ef

    const/16 v1, 0xb

    const/16 v2, 0x11

    .line 9
    invoke-static {v0, v1, v2}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnts/ၽ;->ㆃ([BLjava/lang/String;)[B

    move-result-object p0

    .line 10
    invoke-static {v0, v1, v2}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnts/ၽ;->ㆃ([BLjava/lang/String;)[B

    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lnts/ሠ;->ㆃ([B[B)Z

    move-result p0

    return p0
.end method

.method public static ᾨ(I[B)[B
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lnts/ၽ;->ㆃ(I[BIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᾨ(JI)[B
    .locals 2

    .line 74
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, p1, v0, v1, p2}, Lnts/ၽ;->ㆃ(J[BII)V

    return-object v0
.end method

.method public static ᾨ(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lnts/ၽ;->ㆃ(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᾨ([B)[B
    .locals 3

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, p0, v1, v0}, Lnts/ၽ;->ㆃ(I[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᾨ([BLjava/lang/String;)[B
    .locals 9

    if-eqz p0, :cond_6

    .line 12
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v3, v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x6

    const/16 v5, 0x3a

    const/16 v6, 0x205

    invoke-static {v6, v4, v5}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v2

    .line 35
    invoke-static {v3, v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    const/16 v7, 0x71

    const/16 v8, 0x20b

    invoke-static {v8, v6, v7}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p1

    .line 37
    invoke-static {p0}, Lnts/ၽ;->ᡲ([B)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 38
    new-instance v3, Lnts/ⶑ;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v3, v6, v5}, Lnts/ⶑ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    array-length v5, p0

    invoke-virtual {v3, p0, v0, v5}, Lnts/ⶑ;->ㆃ([BII)V

    .line 40
    iput v4, v3, Lnts/ⶑ;->ᒸ:I

    const/16 p0, 0x48

    .line 41
    iput p0, v3, Lnts/ⶑ;->ⶖ:I

    const/4 p0, 0x2

    .line 42
    invoke-virtual {v3, p0}, Lnts/ⶑ;->ᙕ(I)V

    .line 43
    iget-object p0, v3, Lnts/ⶑ;->ᅌ:[B

    .line 44
    :cond_2
    sget-object v0, Lnts/ଧ;->ᾨ:[B

    .line 45
    array-length v3, p0

    array-length v5, v0

    if-ge v3, v5, :cond_3

    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    array-length v3, v0

    if-gt v4, v3, :cond_5

    .line 47
    array-length v3, p0

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-byte v5, v0, v5

    if-eq v3, v5, :cond_4

    .line 48
    :goto_2
    sget-object v0, Lnts/ଧ;->ᾨ:[B

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Lnts/ଧ;->ㆃ:[B

    .line 50
    :goto_3
    new-instance v3, Lnts/ሠ;

    invoke-direct {v3}, Lnts/ሠ;-><init>()V

    invoke-virtual {v3, v2}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object v2

    .line 51
    iget-object v3, v2, Lnts/ሠ;->ᇭ:Ljava/lang/String;

    invoke-static {v1, v3}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p0}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    move-result-object p0

    invoke-virtual {p0}, Lnts/ሠ;->ㆃ()[B

    move-result-object p0

    return-object p0

    .line 53
    :cond_6
    :goto_4
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0
.end method

.method public static Ὺ(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x10

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Ὺ([B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x2b

    if-ge v2, v3, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static Ⲳ([B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    .line 8
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lnts/ၽ;->ౠ([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ၽ;->て(Ljava/lang/String;)[B

    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Lnts/ሠ;->ㆃ([B[B)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static て([B)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static て(Ljava/lang/String;)[B
    .locals 1

    .line 2
    :try_start_0
    sget-object v0, Lnts/ၽ;->ᰛ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ([BII)J
    .locals 5

    const-wide/16 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 170
    array-length v2, p0

    if-ge p1, v2, :cond_0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 171
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v0, v3

    add-int/lit8 p2, p2, -0x1

    move p1, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static ㆃ(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 157
    invoke-static {p0, p1}, Lnts/ၽ;->ᾨ(I[B)[B

    move-result-object p0

    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(JI)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {p0, p1, p2}, Lnts/ၽ;->ᾨ(JI)[B

    move-result-object p0

    .line 167
    array-length p1, p0

    const/4 p2, 0x0

    const/16 v0, 0x8

    invoke-static {v0, p0, p2, p1, p2}, Lnts/ၽ;->ㆃ(I[BIIZ)[B

    move-result-object p0

    .line 168
    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(JIZ)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-static {p0, p1, p2}, Lnts/ၽ;->ᾨ(JI)[B

    move-result-object p0

    invoke-static {p0, p3}, Lnts/ⶑ;->ㆃ([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Lnts/ⶑ;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    xor-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2f

    .line 27
    invoke-virtual {p0, v1, v0}, Lnts/ⶑ;->ㆃ(CZ)V

    const/16 v0, 0x3d

    .line 28
    invoke-virtual {p0, v0, p2}, Lnts/ⶑ;->ㆃ(CZ)V

    .line 29
    invoke-static {p1, p3}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 30
    invoke-static {p1}, Lnts/ၽ;->ᙕ([B)[B

    move-result-object p1

    .line 31
    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lnts/ⶑ;->ㆃ([BII)V

    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lnts/ⶑ;->ᙕ(I)V

    .line 33
    iget-object p0, p0, Lnts/ⶑ;->ᅌ:[B

    .line 34
    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ([B)Ljava/lang/String;
    .locals 2

    .line 141
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lnts/ၽ;->ౠ:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 145
    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static ㆃ([BI)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 146
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    .line 147
    invoke-static {p0, v0, v1}, Lnts/ၽ;->ౠ([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    invoke-static {p0, v0, p1}, Lnts/ၽ;->ౠ([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 133
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    :cond_1
    invoke-static {p0, p1, p2}, Lnts/ၽ;->ᾨ([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(J[BII)V
    .locals 2

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_0

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 172
    aput-byte v0, p2, p4

    add-int/lit8 p4, p4, -0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ㆃ([B[B)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 81
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 84
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 85
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static ㆃ(I)[B
    .locals 4

    const/4 v0, 0x4

    const/high16 v1, -0x1000000

    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    and-int v2, v1, p0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 35
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    int-to-byte v3, p0

    .line 37
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static ㆃ(II)[B
    .locals 4

    const/4 v0, 0x4

    .line 38
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 39
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    .line 42
    aput-byte v3, v0, v1

    shr-int/lit8 p0, p0, 0x8

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ㆃ(I[B)[B
    .locals 2

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lnts/ၽ;->ㆃ(I[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(I[BII)[B
    .locals 3

    .line 12
    new-instance v0, Lnts/ⶑ;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnts/ⶑ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lnts/ⶑ;->Ꮆ:Z

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lnts/ⶑ;->ᾨ([BII)V

    .line 15
    iput p0, v0, Lnts/ⶑ;->ᒸ:I

    const/4 p0, 0x1

    .line 16
    :try_start_0
    invoke-virtual {v0, p0}, Lnts/ⶑ;->ᙕ(I)V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iget-object p0, v0, Lnts/ⶑ;->Ꮽ:[B

    return-object p0

    .line 18
    :catch_0
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0
.end method

.method public static ㆃ(I[BIIZ)[B
    .locals 3

    .line 19
    new-instance v0, Lnts/ⶑ;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnts/ⶑ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lnts/ⶑ;->ᯘ:Z

    .line 21
    iput-boolean p4, v0, Lnts/ⶑ;->Ԓ:Z

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lnts/ⶑ;->ㆃ([BII)V

    .line 23
    iput p0, v0, Lnts/ⶑ;->ᒸ:I

    const/4 p0, 0x2

    .line 24
    :try_start_0
    invoke-virtual {v0, p0}, Lnts/ⶑ;->ᙕ(I)V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iget-object p0, v0, Lnts/ⶑ;->ᅌ:[B

    return-object p0

    .line 26
    :catch_0
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;)[B
    .locals 1

    .line 158
    :try_start_0
    sget-object v0, Lnts/ၽ;->ౠ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 162
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 150
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 152
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 155
    new-instance p1, Lnts/ᛎ;

    invoke-direct {p1, p0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ㆃ([BIIZ)[B
    .locals 3

    .line 2
    new-instance v0, Lnts/ⶑ;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnts/ⶑ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-boolean p3, v0, Lnts/ⶑ;->ᘆ:Z

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, v0, Lnts/ⶑ;->Ԓ:Z

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lnts/ⶑ;->ㆃ([BII)V

    const/4 p0, 0x1

    .line 6
    iput p0, v0, Lnts/ⶑ;->ᒸ:I

    const/16 p0, 0x4c

    .line 7
    iput p0, v0, Lnts/ⶑ;->ⶖ:I

    const/4 p0, 0x2

    .line 8
    :try_start_0
    invoke-virtual {v0, p0}, Lnts/ⶑ;->ᙕ(I)V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p0, v0, Lnts/ⶑ;->ᅌ:[B

    return-object p0

    .line 10
    :catch_0
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0
.end method

.method public static ㆃ([BLjava/lang/String;)[B
    .locals 7

    if-eqz p0, :cond_8

    .line 43
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xb

    const/16 v2, 0x7a

    const/16 v3, 0x20f

    invoke-static {v3, v1, v2}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21a

    const/16 v2, 0x33

    const/4 v3, 0x5

    invoke-static {v1, v3, v2}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    const/16 v4, 0xc

    const/16 v5, 0x21f

    invoke-static {v5, v2, v4}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x228

    const/16 v2, 0x19

    invoke-static {v1, v3, v2}, Lnts/ッ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p1

    .line 50
    new-instance v1, Lnts/ሠ;

    invoke-direct {v1}, Lnts/ሠ;-><init>()V

    .line 51
    invoke-virtual {v1, p0}, Lnts/ሠ;->ᾨ([B)Lnts/ሠ;

    .line 52
    iget-object v2, v1, Lnts/ሠ;->ㆃ:[B

    iget v3, v1, Lnts/ሠ;->ᾨ:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Lnts/ሠ;->ㆃ([B[BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 53
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    :try_start_0
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    move v5, v4

    :goto_0
    sub-int v6, v2, v5

    .line 62
    invoke-virtual {p0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_1

    add-int/2addr v5, v6

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 67
    invoke-virtual {v1, v3}, Lnts/ሠ;->ᾨ([B)Lnts/ሠ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto :goto_1

    .line 69
    :catch_0
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0

    .line 70
    :cond_2
    :goto_1
    iget-object v2, v1, Lnts/ሠ;->ㆃ:[B

    iget v3, v1, Lnts/ሠ;->ᾨ:I

    invoke-static {v2, v0, v4, v3}, Lnts/ሠ;->ㆃ([B[BII)I

    move-result v2

    :cond_3
    if-ltz v2, :cond_4

    .line 71
    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    if-gez v2, :cond_5

    move v2, v4

    .line 72
    :cond_5
    :goto_2
    iget-object v0, v1, Lnts/ሠ;->ㆃ:[B

    iget v1, v1, Lnts/ሠ;->ᾨ:I

    invoke-static {v0, p1, v2, v1}, Lnts/ሠ;->ㆃ([B[BII)I

    move-result p1

    if-ge p1, v2, :cond_6

    .line 73
    array-length p1, p0

    :cond_6
    sub-int/2addr p1, v2

    .line 76
    invoke-static {p0, v2, p1}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p0

    .line 78
    invoke-static {p0}, Lnts/ၽ;->ᡲ([B)Z

    move-result p1

    if-nez p1, :cond_7

    .line 79
    array-length p1, p0

    const/4 v0, 0x1

    invoke-static {v0, p0, v4, p1}, Lnts/ၽ;->ㆃ(I[BII)[B

    move-result-object p0

    :cond_7
    return-object p0

    .line 80
    :cond_8
    :goto_3
    sget-object p0, Lnts/ଧ;->ㆃ:[B

    return-object p0
.end method

.method public static ㆃ([BZ)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnts/ၽ;->ㆃ([BIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-static {p0, p1, p2, v0}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 93
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v0

    move v4, v3

    .line 97
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_8

    move v5, v0

    .line 98
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_7

    .line 99
    aget-char v6, v1, v3

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_6

    if-eqz p2, :cond_2

    :goto_2
    if-ge v4, v3, :cond_1

    .line 104
    aget-char v5, v1, v4

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_3
    if-ge v4, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    .line 107
    aget-char v6, v1, v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_2
    move v5, v3

    :cond_3
    if-ne v4, v5, :cond_4

    if-eqz p3, :cond_5

    .line 113
    :cond_4
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v3, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_b

    .line 123
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_9

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 125
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_a

    if-eqz p3, :cond_b

    .line 126
    :cond_a
    invoke-virtual {v2, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_b
    new-array p0, v0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 131
    :cond_c
    :goto_5
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method
