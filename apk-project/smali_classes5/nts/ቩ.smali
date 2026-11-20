.class public Lnts/ቩ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ㆃ:Lnts/Ⅰ;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnts/Ⅰ;

    const/16 v1, 0xef

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnts/Ⅰ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnts/ቩ;->ㆃ:Lnts/Ⅰ;

    return-void
.end method

.method public static Ͼ(Ljava/lang/String;)Lnts/ዃ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    .line 2
    invoke-virtual {v0, p0}, Lnts/ж;->ౠ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p0

    return-object p0
.end method

.method public static ౠ(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x38

    const/16 v2, 0x127

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnts/ၽ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xa0

    return p0

    :cond_0
    const/16 v0, 0x12b

    const/16 v1, 0x4c

    const/4 v2, 0x6

    .line 4
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x131

    const/16 v1, 0x4f

    const/4 v3, 0x7

    .line 6
    invoke-static {v0, v3, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x138

    const/16 v1, 0x6d

    .line 8
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x13e

    const/4 v1, 0x5

    .line 10
    invoke-static {v0, v3, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x145

    const/16 v1, 0x65

    .line 12
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x14b

    const/16 v1, 0x18

    .line 14
    invoke-static {v0, v3, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x152

    const/16 v1, 0x70

    .line 16
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x158

    const/16 v1, 0x3b

    .line 18
    invoke-static {v0, v3, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    const/16 v1, 0x61

    const/16 v2, 0x15f

    .line 20
    invoke-static {v2, v0, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x80

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0

    :cond_6
    :goto_0
    const/16 p0, 0x200

    return p0

    :cond_7
    :goto_1
    const/16 p0, 0x180

    return p0

    :cond_8
    :goto_2
    const/16 p0, 0xe0

    return p0

    :cond_9
    :goto_3
    const/16 p0, 0x100

    return p0
.end method

.method public static ᇭ(Lnts/ኝ;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget p0, p0, Lnts/ኝ;->ㆃ:I

    return p0
.end method

.method public static ᇭ(Ljava/lang/String;)Lnts/ዃ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 5
    sget-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    .line 6
    invoke-virtual {v0, p0}, Lnts/ж;->ᾨ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p0

    return-object p0
.end method

.method public static ᇭ([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 3
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    .line 4
    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    return-object p0
.end method

.method public static ᙕ(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x7

    const/16 v0, 0xd

    const/16 v1, 0x1be

    .line 2
    invoke-static {v1, p0, v0}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x6

    const/16 v1, 0x46

    const/16 v2, 0x1c5

    invoke-static {v2, v0, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/16 p0, 0x8

    const/16 v0, 0x32

    const/16 v1, 0x1cb

    .line 4
    invoke-static {v1, p0, v0}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lnts/ᛎ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᰛ(Ljava/lang/String;)Lnts/ኝ;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ቩ;->ㆃ:Lnts/Ⅰ;

    .line 2
    new-instance v1, Lnts/ὥ;

    iget-object v0, v0, Lnts/Ⅰ;->ᾨ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lnts/ὥ;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V

    .line 3
    iget-boolean v0, v1, Lnts/ὥ;->ᇭ:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lnts/ж;->ㆃ:Lnts/ж;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v1, v0}, Lnts/ὥ;->ㆃ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ж;->Ͼ(Ljava/lang/String;)Lnts/ኝ;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lnts/ẩ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v3, 0x69

    const/16 v4, 0x162

    invoke-static {v4, v2, v3, v1, p0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x13

    const/16 v2, 0x3c

    const/16 v3, 0x177

    invoke-static {v3, v1, v2, p0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᾨ(Lnts/ዃ;)I
    .locals 0

    .line 1
    iget p0, p0, Lnts/ዃ;->ㆃ:I

    return p0
.end method

.method public static ᾨ(Ljava/lang/String;I)Lnts/ኝ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 8
    sget-object v0, Lnts/ቩ;->ㆃ:Lnts/Ⅰ;

    .line 9
    new-instance v1, Lnts/ὥ;

    iget-object v0, v0, Lnts/Ⅰ;->ᾨ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lnts/ὥ;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V

    .line 10
    iget-boolean v0, v1, Lnts/ὥ;->ᇭ:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p1}, Lnts/ж;->ㆃ(I)Lnts/ж;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lnts/ὥ;->ㆃ(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ж;->Ͼ(Ljava/lang/String;)Lnts/ኝ;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    new-instance p1, Lnts/ẩ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x15

    const/16 v2, 0xc

    const/16 v3, 0x18a

    invoke-static {v3, v1, v2, v0, p0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x13

    const/16 v1, 0x18

    const/16 v2, 0x19f

    invoke-static {v2, v0, v1, p0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ᾨ(Ljava/lang/String;)Lnts/ᙱ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 55
    sget-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    .line 56
    invoke-virtual {v0, p0}, Lnts/ж;->ᇭ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object p0

    return-object p0
.end method

.method public static ᾨ(Lnts/ኝ;I)V
    .locals 0

    .line 7
    iput p1, p0, Lnts/ኝ;->ዲ:I

    return-void
.end method

.method public static ᾨ(Lnts/ኝ;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 3
    instance-of v0, p0, Lnts/ᣎ;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lnts/ᣎ;

    invoke-virtual {p0, p1}, Lnts/ኝ;->ᾨ([B)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public static ᾨ([B)V
    .locals 2

    .line 16
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnts/ቩ;->ㆃ([BII)V

    return-void
.end method

.method public static ᾨ(I)[B
    .locals 2

    .line 14
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1, p0}, Lnts/ቩ;->ㆃ([BII)V

    return-object v0
.end method

.method public static ᾨ(ILjava/lang/String;[B[BI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 45
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p2}, Lnts/ၽ;->Ⲳ([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p2}, Lnts/ၽ;->ዲ([B)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lnts/ቩ;->ㆃ(ILjava/lang/String;[C[BI)[B

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x27

    const/16 p2, 0x2b

    const/16 p3, 0x2e3

    invoke-static {p3, p1, p2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lnts/ቩ;->ㆃ(ILjava/lang/String;[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static ᾨ(Ljava/lang/Object;[BZ)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0x24d

    const/4 v1, 0x7

    .line 17
    invoke-static {v0, v1, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 18
    instance-of v1, p0, Lnts/څ;

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const/16 v0, 0x254

    const/16 v1, 0x4d

    .line 19
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v0

    .line 31
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    move-object v2, v0

    check-cast v2, Lnts/ᓌ;

    .line 33
    invoke-virtual {v2, p0}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    .line 34
    invoke-virtual/range {v2 .. v7}, Lnts/ᓌ;->ᾨ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    move v2, p2

    .line 37
    check-cast v0, Lnts/ᴺ;

    .line 38
    check-cast p0, Lnts/څ;

    invoke-virtual {v0, p0}, Lnts/ᴺ;->ㆃ(Lnts/څ;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 39
    invoke-virtual/range {v0 .. v5}, Lnts/ᴺ;->ᾨ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    instance-of p0, p0, Lnts/Ӥ;

    if-eqz p0, :cond_2

    const/16 p0, 0x257

    const/16 p1, 0x74

    .line 41
    invoke-static {p0, v2, p1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_2
    new-instance p0, Lnts/ẩ;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0xb

    const/16 v1, 0x52

    const/16 v2, 0x25a

    invoke-static {v2, p2, v1, p1, v0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x33

    const/16 v0, 0x36

    const/16 v1, 0x265

    invoke-static {v1, p2, v0, p1}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᾨ(Lnts/ኝ;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnts/ኝ;->Ͼ:[B

    return-object p0
.end method

.method public static ㆃ(Lnts/ኝ;)I
    .locals 0

    .line 1
    iget p0, p0, Lnts/ኝ;->ᾨ:I

    return p0
.end method

.method public static ㆃ(Lnts/バ;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 7
    iget p0, p0, Lnts/バ;->ㆃ:I

    return p0
.end method

.method public static ㆃ(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x4

    const/16 v1, 0x4c

    const/16 v2, 0x3e9

    .line 482
    invoke-static {v2, v0, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v0

    .line 484
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 485
    check-cast v0, Lnts/ᓌ;

    .line 486
    iput p0, v0, Lnts/ᓌ;->て:I

    .line 487
    invoke-virtual {v0, v2}, Lnts/ᓌ;->ㆃ(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 490
    :cond_0
    check-cast v0, Lnts/ݡ;

    const/4 v1, 0x0

    .line 491
    iput-boolean v1, v0, Lnts/ݡ;->ᰛ:Z

    .line 492
    iget-object v1, v0, Lnts/ݡ;->ᇭ:Lnts/ܔ;

    iput p0, v1, Lnts/ܔ;->ᙕ:I

    .line 493
    invoke-virtual {v0, v2}, Lnts/ݡ;->ㆃ(Z)Lnts/ܔ;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Lnts/バ;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 9
    instance-of v0, p0, Lnts/ᓌ;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Lnts/ᓌ;

    invoke-virtual {p0, p1}, Lnts/ᓌ;->ㆃ(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    instance-of v0, p0, Lnts/ᴺ;

    const/16 v1, 0x64

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    .line 14
    check-cast p0, Lnts/ᴺ;

    .line 15
    iget-object v0, p0, Lnts/ᴺ;->ᇭ:Ljava/math/BigInteger;

    if-nez v0, :cond_4

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    const/4 v3, 0x5

    const/16 v4, 0x7e

    const/16 v5, 0x4e9

    invoke-static {v5, v3, v4}, Lnts/ᨾ;->ㆃ(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    .line 18
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    iget v4, p0, Lnts/バ;->ㆃ:I

    div-int/2addr v4, v2

    invoke-direct {v3, v4, v1, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    iput-object v3, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    .line 22
    new-instance v3, Ljava/math/BigInteger;

    iget v4, p0, Lnts/バ;->ㆃ:I

    div-int/2addr v4, v2

    invoke-direct {v3, v4, v1, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    iput-object v3, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    .line 23
    iget-object v3, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    iget-object v4, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_2

    .line 24
    iget-object v3, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    .line 25
    iget-object v4, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    iput-object v4, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    .line 26
    iput-object v3, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    .line 28
    :cond_2
    iget-object v3, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    iget-object v4, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lnts/ᴺ;->ᇭ:Ljava/math/BigInteger;

    .line 29
    iget-object v3, p0, Lnts/ᴺ;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    iget v4, p0, Lnts/バ;->ㆃ:I

    if-ne v3, v4, :cond_1

    .line 31
    iget-object v3, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 32
    iget-object v4, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 35
    iget-object v6, p0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 36
    :cond_3
    iget-object v6, p0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lnts/ᴺ;->Ͼ:Ljava/math/BigInteger;

    .line 37
    iget-object v5, p0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lnts/ᴺ;->ዲ:Ljava/math/BigInteger;

    .line 38
    iget-object v3, p0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lnts/ᴺ;->ᎊ:Ljava/math/BigInteger;

    .line 39
    iget-object v3, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    iget-object v4, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lnts/ᴺ;->て:Ljava/math/BigInteger;

    .line 40
    :goto_0
    iget-object v3, p0, Lnts/ᴺ;->Ͼ:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    iget v4, p0, Lnts/バ;->ㆃ:I

    div-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_1

    .line 41
    :cond_4
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    .line 42
    iget-object v1, p0, Lnts/ᴺ;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᾨ:[B

    .line 43
    iget-object v1, p0, Lnts/ᴺ;->ᰛ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ㆃ:[B

    .line 44
    iget-object v1, p0, Lnts/ᴺ;->ౠ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᇭ:[B

    .line 45
    iget-object v1, p0, Lnts/ᴺ;->ᙕ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᰛ:[B

    .line 46
    iget-object v1, p0, Lnts/ᴺ;->ዲ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->Ͼ:[B

    .line 47
    iget-object v1, p0, Lnts/ᴺ;->ᎊ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ౠ:[B

    .line 48
    iget-object v1, p0, Lnts/ᴺ;->て:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᙕ:[B

    if-eqz p1, :cond_5

    .line 51
    iget-object p0, p0, Lnts/ᴺ;->Ͼ:Ljava/math/BigInteger;

    invoke-static {p0}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p0

    iput-object p0, v0, Lnts/څ;->て:[B

    :cond_5
    return-object v0

    .line 52
    :cond_6
    instance-of v0, p0, Lnts/Ј;

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    .line 53
    check-cast p0, Lnts/Ј;

    .line 54
    iget-object v0, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    if-nez v0, :cond_e

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 57
    iget v1, p0, Lnts/バ;->ㆃ:I

    const/16 v2, 0x200

    if-lt v1, v2, :cond_8

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_8

    rem-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_8

    const/16 v2, 0x800

    if-ge v1, v2, :cond_7

    const/16 v1, 0xa0

    goto :goto_1

    :cond_7
    const/16 v1, 0x100

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 64
    :goto_1
    sget-object v2, Lnts/Ј;->ᎊ:Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 65
    sget-object v4, Lnts/Ј;->ᎊ:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 66
    sget-object v5, Lnts/Ј;->ᎊ:Ljava/math/BigInteger;

    iget v6, p0, Lnts/バ;->ㆃ:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 67
    sget-object v5, Lnts/Ј;->ᎊ:Ljava/math/BigInteger;

    iget v6, p0, Lnts/バ;->ㆃ:I

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 71
    :cond_9
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {v2, v4, v6, v7, v0}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/util/Random;)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    .line 72
    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v7, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-static {v3, v5, v6, v7, v0}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/util/Random;)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    .line 73
    iget-object v6, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    if-eqz v6, :cond_9

    .line 75
    sget-object v2, Lnts/Ј;->ᎊ:Ljava/math/BigInteger;

    .line 76
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 77
    :goto_2
    iget-object v4, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_b

    .line 78
    iget-object v4, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    .line 79
    iget-object v4, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_a

    goto :goto_3

    .line 82
    :cond_a
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    .line 85
    :cond_b
    :goto_3
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v2, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    .line 86
    :goto_4
    iget-object v2, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    iget-object v3, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_c

    goto :goto_5

    .line 90
    :cond_c
    iget-object v0, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    iget-object v1, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnts/Ј;->ౠ:Ljava/math/BigInteger;

    goto :goto_6

    .line 91
    :cond_d
    :goto_5
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v2, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    goto :goto_4

    .line 92
    :cond_e
    :goto_6
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    .line 93
    iget-object v1, p0, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/Ӥ;->ㆃ:[B

    .line 94
    iget-object v1, p0, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/Ӥ;->ᾨ:[B

    .line 95
    iget-object v1, p0, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/Ӥ;->ᇭ:[B

    .line 96
    iget-object v1, p0, Lnts/Ј;->ౠ:Ljava/math/BigInteger;

    if-eqz v1, :cond_f

    .line 97
    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, v0, Lnts/Ӥ;->ᰛ:[B

    :cond_f
    if-eqz p1, :cond_10

    .line 100
    iget-object p0, p0, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    invoke-static {p0}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object p0

    iput-object p0, v0, Lnts/Ӥ;->Ͼ:[B

    :cond_10
    return-object v0

    .line 101
    :cond_11
    instance-of v0, p0, Lnts/ત;

    if-eqz v0, :cond_16

    .line 102
    check-cast p0, Lnts/ત;

    .line 103
    iget-object v0, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    if-nez v0, :cond_14

    .line 104
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 105
    iget v4, p0, Lnts/バ;->ㆃ:I

    sub-int/2addr v4, v3

    .line 111
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4, v1, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 112
    new-instance v4, Ljava/math/BigInteger;

    iget v6, p0, Lnts/バ;->ㆃ:I

    invoke-direct {v4, v6, v1, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    iput-object v4, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    .line 117
    :cond_12
    new-instance v1, Ljava/math/BigInteger;

    iget v4, p0, Lnts/バ;->ㆃ:I

    div-int/2addr v4, v2

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v1, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    .line 118
    iget-object v1, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iget-object v6, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v1, v4, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 119
    iget-object v4, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    iget-object v6, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v4, v5, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 120
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_12

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_12

    .line 123
    :cond_13
    new-instance v1, Ljava/math/BigInteger;

    iget v2, p0, Lnts/バ;->ㆃ:I

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v1, p0, Lnts/ત;->ౠ:Ljava/math/BigInteger;

    .line 124
    iget-object v1, p0, Lnts/ત;->ౠ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_13

    .line 126
    iget-object v0, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    iget-object v1, p0, Lnts/ત;->ౠ:Ljava/math/BigInteger;

    iget-object v2, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnts/ત;->Ͼ:Ljava/math/BigInteger;

    .line 127
    :cond_14
    new-instance v0, Lnts/Ꮵ;

    invoke-direct {v0}, Lnts/Ꮵ;-><init>()V

    .line 128
    iget-object v1, p0, Lnts/ત;->ᇭ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    .line 129
    iget-object v1, p0, Lnts/ત;->ᰛ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    .line 130
    iget-object v1, p0, Lnts/ત;->Ͼ:Ljava/math/BigInteger;

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    if-eqz p1, :cond_15

    .line 132
    iget-object p0, p0, Lnts/ત;->ౠ:Ljava/math/BigInteger;

    invoke-static {p0}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    :cond_15
    return-object v0

    .line 133
    :cond_16
    instance-of v0, p0, Lnts/ݡ;

    if-eqz v0, :cond_17

    .line 134
    check-cast p0, Lnts/ݡ;

    invoke-virtual {p0, p1}, Lnts/ݡ;->ㆃ(Z)Lnts/ܔ;

    move-result-object p0

    return-object p0

    .line 136
    :cond_17
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x1c

    const/16 v0, 0x46

    const/16 v1, 0x10b

    invoke-static {v1, p1, v0}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 546
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x2

    .line 547
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 548
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 549
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    return-object v0

    :cond_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    .line 556
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 558
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 559
    invoke-static {p0, p1, p2, p3}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 563
    :cond_2
    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 565
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    return-object v3

    .line 570
    :cond_3
    new-instance p2, Lnts/ⱊ;

    invoke-direct {p2, p0, p1, p3}, Lnts/ⱊ;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 572
    invoke-virtual {p2}, Lnts/ⱊ;->ᾨ()Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    const/16 p1, 0x14

    .line 574
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p0

    .line 575
    :cond_4
    invoke-virtual {p2}, Lnts/ⱊ;->ᾨ()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public static ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/util/Random;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 576
    invoke-static {p0, p1, p2, p3}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 578
    invoke-static {v1, p1, p2, p3}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_2
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 586
    :cond_3
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-direct {v2, v3, p4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 587
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_3

    .line 588
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 590
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 591
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_4

    move-object v2, p1

    .line 594
    :cond_4
    invoke-static {v1, v2, p2, p3}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1
.end method

.method public static ㆃ()Lnts/Ⴧ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 675
    sget-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    .line 676
    sget v1, Lnts/ዧ;->Ṳ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x9

    const/16 v2, 0x5b

    const/16 v3, 0x1b2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0x1bb

    :goto_0
    invoke-static {v3, v1, v2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ж;->ᰛ(Ljava/lang/String;)Lnts/Ⴧ;

    move-result-object v0

    return-object v0
.end method

.method public static ㆃ(Ljava/lang/String;I)Lnts/ዃ;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lnts/ж;->ㆃ(I)Lnts/ж;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnts/ж;->ᾨ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/String;)Lnts/バ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 673
    sget-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    .line 674
    invoke-virtual {v0, p0}, Lnts/ж;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Lnts/Ӥ;)V
    .locals 3

    .line 495
    iget-object v0, p0, Lnts/Ӥ;->ㆃ:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x40

    mul-int/lit8 v0, v0, 0x40

    .line 496
    div-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lnts/Ӥ;->ᰛ:[B

    invoke-static {v1, v2}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v2

    iput-object v2, p0, Lnts/Ӥ;->ᰛ:[B

    .line 497
    iget-object v2, p0, Lnts/Ӥ;->ᇭ:[B

    invoke-static {v1, v2}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v2

    iput-object v2, p0, Lnts/Ӥ;->ᇭ:[B

    .line 498
    iget-object v2, p0, Lnts/Ӥ;->ㆃ:[B

    invoke-static {v1, v2}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v1

    iput-object v1, p0, Lnts/Ӥ;->ㆃ:[B

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    const/16 v0, 0xa0

    goto :goto_1

    :cond_0
    const/16 v1, 0xc00

    if-ge v0, v1, :cond_2

    .line 506
    iget-object v0, p0, Lnts/Ӥ;->ᾨ:[B

    array-length v1, v0

    const/16 v2, 0x21

    if-gt v1, v2, :cond_1

    array-length v0, v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x100

    .line 514
    :goto_1
    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lnts/Ӥ;->ᾨ:[B

    invoke-static {v0, v1}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v1

    iput-object v1, p0, Lnts/Ӥ;->ᾨ:[B

    .line 515
    iget-object v1, p0, Lnts/Ӥ;->Ͼ:[B

    invoke-static {v0, v1}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/Ӥ;->Ͼ:[B

    return-void
.end method

.method public static ㆃ(Lnts/څ;)V
    .locals 4

    .line 516
    iget-object v0, p0, Lnts/څ;->ᾨ:[B

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    array-length v1, v0

    array-length v2, v0

    const/16 v3, 0x8

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    array-length v0, v0

    rem-int/2addr v0, v3

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    add-int/2addr v1, v0

    mul-int/2addr v1, v3

    .line 518
    div-int/lit8 v0, v1, 0x8

    iget-object v2, p0, Lnts/څ;->ᾨ:[B

    invoke-static {v0, v2}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v2

    iput-object v2, p0, Lnts/څ;->ᾨ:[B

    .line 519
    iget-object v2, p0, Lnts/څ;->て:[B

    invoke-static {v0, v2}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/څ;->て:[B

    .line 520
    div-int/lit8 v1, v1, 0x10

    iget-object v0, p0, Lnts/څ;->ᇭ:[B

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/څ;->ᇭ:[B

    .line 521
    iget-object v0, p0, Lnts/څ;->ᰛ:[B

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/څ;->ᰛ:[B

    .line 522
    iget-object v0, p0, Lnts/څ;->ౠ:[B

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/څ;->ౠ:[B

    .line 523
    iget-object v0, p0, Lnts/څ;->ᙕ:[B

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/څ;->ᙕ:[B

    .line 524
    iget-object v0, p0, Lnts/څ;->Ͼ:[B

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(I[B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/څ;->Ͼ:[B

    return-void
.end method

.method public static ㆃ(Lnts/Ⴧ;[BII)V
    .locals 1

    .line 143
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 144
    new-array v0, p3, [B

    .line 149
    invoke-virtual {p0, v0}, Lnts/Ⴧ;->ㆃ([B)V

    const/4 p0, 0x0

    .line 151
    invoke-static {v0, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static ㆃ(Lnts/ኝ;I)V
    .locals 0

    .line 8
    iput p1, p0, Lnts/ኝ;->て:I

    return-void
.end method

.method public static ㆃ(Lnts/ኝ;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lnts/ᣎ;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lnts/ᣎ;

    invoke-virtual {p0, p1}, Lnts/ኝ;->ㆃ([B)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lnts/ኝ;->ㆃ([B)V

    return-void
.end method

.method public static ㆃ(Lnts/ᙱ;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lnts/ᙱ;->ᇭ([B)V

    return-void
.end method

.method public static ㆃ([BII)V
    .locals 1

    .line 138
    :try_start_0
    invoke-static {}, Lnts/ቩ;->ㆃ()Lnts/Ⴧ;

    move-result-object v0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    invoke-static {v0, p0, p1, p2}, Lnts/ቩ;->ㆃ(Lnts/Ⴧ;[BII)V

    return-void
.end method

.method public static ㆃ([Lnts/ᵕ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 538
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_5

    .line 539
    aget-object v4, p0, v0

    if-eqz v2, :cond_0

    .line 540
    iget v5, v4, Lnts/ᵕ;->ㆃ:I

    if-ge v5, v2, :cond_1

    .line 541
    :cond_0
    iget v2, v4, Lnts/ᵕ;->ㆃ:I

    :cond_1
    if-eqz v3, :cond_2

    .line 542
    iget v5, v4, Lnts/ᵕ;->ᾨ:I

    if-le v5, v3, :cond_3

    .line 543
    :cond_2
    iget v3, v4, Lnts/ᵕ;->ᾨ:I

    :cond_3
    if-nez v1, :cond_4

    .line 544
    iget v1, v4, Lnts/ᵕ;->ᇭ:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_5
    new-instance p0, Lnts/ẩ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x28

    const/16 v5, 0x1d

    const/16 v6, 0x3ed

    invoke-static {v6, v4, v5}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v4, 0x26

    const/16 v5, 0x415

    invoke-static {v5, v1, v4}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x20

    const/16 v4, 0x423

    invoke-static {v4, v1, v2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, p1, p2, p3, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;Z)Z
    .locals 10

    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    const/16 v0, 0x227

    const/16 v3, 0x3e

    const/4 v4, 0x3

    .line 314
    invoke-static {v0, v4, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 315
    instance-of v3, p0, Lnts/Ӥ;

    if-eqz v3, :cond_0

    const/16 v0, 0x22a

    const/16 v3, 0xe

    invoke-static {v0, v4, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_0
    instance-of v3, p0, Lnts/ܔ;

    if-eqz v3, :cond_1

    const/16 v0, 0x22d

    const/16 v3, 0x36

    invoke-static {v0, v2, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_1
    :goto_0
    invoke-static {v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v0

    check-cast v0, Lnts/ᓌ;

    .line 318
    invoke-virtual {v0, p0}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p0, -0x1

    .line 319
    :try_start_1
    invoke-virtual {v0, p3, v1, p4, p0}, Lnts/ᓌ;->ㆃ(Ljava/lang/String;ZZI)V

    .line 320
    array-length p0, p2

    invoke-virtual {v0, p2, v1, p0}, Lnts/ᓌ;->ㆃ([BII)V

    .line 321
    iget-object p0, v0, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 p2, 0x1ef

    const/16 p3, 0x41

    invoke-static {p2, v2, p3}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1}, Lnts/ᓌ;->ㆃ([B)Z

    move-result p0

    return p0

    .line 322
    :cond_2
    invoke-static {p1}, Lnts/ቩ;->ᇭ([B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lnts/ᓌ;->ㆃ([B)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 324
    :try_start_2
    new-instance p1, Lnts/ẩ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_3
    instance-of v0, p0, Lnts/ܔ;

    if-eqz v0, :cond_5

    .line 326
    move-object v0, p0

    check-cast v0, Lnts/ܔ;

    .line 327
    invoke-virtual {v0}, Lnts/ܔ;->Ὺ()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p3}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 p0, 0x232

    const/16 p3, 0xf

    .line 330
    invoke-static {p0, v2, p3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object p0

    check-cast p0, Lnts/ݡ;

    .line 331
    iput-boolean v1, p0, Lnts/ݡ;->ᰛ:Z

    .line 332
    invoke-virtual {p0, v0}, Lnts/ݡ;->ᾨ(Lnts/ܔ;)V

    .line 333
    iget-object p3, p0, Lnts/ݡ;->ᇭ:Lnts/ܔ;

    invoke-virtual {p3}, Lnts/ܔ;->Ὺ()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 334
    invoke-virtual {p0, p2, p1}, Lnts/ݡ;->ㆃ([B[B)Z

    move-result p0

    return p0

    .line 336
    :cond_4
    new-instance p3, Lnts/ඛ;

    invoke-direct {p3}, Lnts/ඛ;-><init>()V

    .line 337
    invoke-virtual {p3, p2}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnts/ݡ;->ᾨ([B[B)Z

    move-result p0

    return p0

    .line 338
    :cond_5
    invoke-static {p3}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v0

    .line 339
    invoke-virtual {v0, p2}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object v4

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v7, p3

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    .line 340
    invoke-static/range {v2 .. v9}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;ZLjava/lang/String;IZ)Z

    move-result p0
    :try_end_2
    .catch Lnts/ẩ; {:try_start_2 .. :try_end_2} :catch_1

    return p0

    :catch_1
    return v1
.end method

.method public static ㆃ(Ljava/lang/Object;[B[BLjava/lang/String;ZLjava/lang/String;IZ)Z
    .locals 5

    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    const/16 p4, 0x237

    const/16 p5, 0x17

    .line 342
    invoke-static {p4, v3, p5}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p4

    .line 343
    instance-of p5, p0, Lnts/څ;

    if-eqz p5, :cond_0

    const/16 p4, 0x23a

    const/16 p5, 0x61

    invoke-static {p4, v3, p5}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 344
    :cond_0
    instance-of p5, p0, Lnts/ܔ;

    if-eqz p5, :cond_1

    const/16 p4, 0x23d

    const/16 p5, 0x70

    invoke-static {p4, v2, p5}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p4

    .line 345
    :cond_1
    :goto_0
    invoke-static {p4}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object p4

    check-cast p4, Lnts/ᓌ;

    .line 346
    invoke-virtual {p4, p0}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p4, p2, p3, p1, v0}, Lnts/ᓌ;->ㆃ([BLjava/lang/String;[BZ)Z

    move-result p0

    return p0

    .line 348
    :cond_2
    instance-of v1, p0, Lnts/څ;

    if-eqz v1, :cond_3

    const/16 v1, 0x242

    const/16 v2, 0x66

    .line 349
    invoke-static {v1, v3, v2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v1

    .line 359
    check-cast v1, Lnts/ᴺ;

    .line 360
    check-cast p0, Lnts/څ;

    invoke-virtual {v1, p0}, Lnts/ᴺ;->ㆃ(Lnts/څ;)V

    move-object p0, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, v1

    .line 361
    invoke-virtual/range {p0 .. p7}, Lnts/ᴺ;->ㆃ([BLjava/lang/String;[BZLjava/lang/String;IZ)Z

    move-result p0

    return p0

    :cond_3
    move-object v4, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, v4

    .line 362
    instance-of p4, p0, Lnts/ܔ;

    if-eqz p4, :cond_4

    const/16 p2, 0x245

    const/16 p4, 0x7e

    .line 363
    invoke-static {p2, v2, p4}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object p2

    .line 364
    check-cast p2, Lnts/ݡ;

    .line 365
    check-cast p0, Lnts/ܔ;

    invoke-virtual {p2, p0}, Lnts/ݡ;->ᾨ(Lnts/ܔ;)V

    .line 366
    invoke-virtual {p2, p1, p3}, Lnts/ݡ;->ᾨ([B[B)Z

    move-result p0

    return p0

    :cond_4
    const/16 p4, 0x24a

    const/16 p5, 0x52

    .line 368
    invoke-static {p4, v3, p5}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object p4

    .line 379
    check-cast p4, Lnts/Ј;

    .line 380
    check-cast p0, Lnts/Ӥ;

    invoke-virtual {p4, p0}, Lnts/Ј;->ㆃ(Lnts/Ӥ;)V

    .line 381
    invoke-virtual {p4, p1, p2, p3}, Lnts/Ј;->ㆃ([BLjava/lang/String;[B)Z

    move-result p0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static ㆃ([BLnts/ⶖ;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 595
    :cond_0
    array-length v1, p0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    return v0

    .line 600
    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x1

    .line 603
    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    and-int/lit16 v5, v3, 0x80

    const/4 v6, 0x2

    if-lez v5, :cond_5

    and-int/lit8 v3, v3, 0x7f

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    return v0

    :cond_3
    move v4, v0

    move v5, v4

    move v7, v6

    :goto_1
    if-ge v5, v3, :cond_6

    if-lt v7, v1, :cond_4

    return v0

    :cond_4
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v8, v7, 0x1

    .line 609
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v8

    goto :goto_1

    :cond_5
    move v7, v6

    :cond_6
    add-int/2addr v4, v7

    if-le v4, v1, :cond_7

    return v0

    :cond_7
    add-int/lit8 v3, v7, 0x1

    .line 619
    aget-byte v4, p0, v7

    if-eq v4, v6, :cond_8

    return v0

    :cond_8
    add-int/2addr v7, v6

    .line 622
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, v7, v3

    if-le v4, v1, :cond_9

    return v0

    .line 624
    :cond_9
    new-array v5, v3, [B

    iput-object v5, p1, Lnts/ⶖ;->ㆃ:[B

    .line 625
    iget-object v5, p1, Lnts/ⶖ;->ㆃ:[B

    invoke-static {p0, v7, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lt v4, v1, :cond_a

    return v0

    :cond_a
    add-int/lit8 v3, v4, 0x1

    .line 630
    aget-byte v5, p0, v4

    if-eq v5, v6, :cond_b

    return v0

    :cond_b
    add-int/2addr v4, v6

    .line 631
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v5, v4, v3

    if-le v5, v1, :cond_c

    return v0

    .line 633
    :cond_c
    new-array v1, v3, [B

    iput-object v1, p1, Lnts/ⶖ;->ᾨ:[B

    .line 634
    iget-object p1, p1, Lnts/ⶖ;->ᾨ:[B

    invoke-static {p0, v4, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public static ㆃ([Lnts/ᵕ;I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 532
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 533
    aget-object v2, p0, v1

    .line 534
    iget v3, v2, Lnts/ᵕ;->ㆃ:I

    if-lt p1, v3, :cond_0

    .line 535
    iget v4, v2, Lnts/ᵕ;->ᾨ:I

    if-gt p1, v4, :cond_0

    sub-int v3, p1, v3

    .line 536
    iget v2, v2, Lnts/ᵕ;->ᇭ:I

    .line 537
    rem-int/2addr v3, v2

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static ㆃ(ILjava/lang/String;Ljava/lang/String;[BI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 410
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lnts/ቩ;->ㆃ(ILjava/lang/String;[C[BI)[B

    move-result-object p0

    return-object p0

    .line 414
    :cond_0
    invoke-static {p2}, Lnts/ၽ;->て(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lnts/ቩ;->ㆃ(ILjava/lang/String;[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(ILjava/lang/String;[B[BI)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 424
    new-instance v0, Lnts/ᄅ;

    invoke-direct {v0}, Lnts/ᄅ;-><init>()V

    move-object/from16 v1, p1

    .line 425
    iput-object v1, v0, Lnts/ᄅ;->ㆃ:Ljava/lang/String;

    const/16 v1, 0x8

    mul-int/lit8 v2, p4, 0x8

    .line 426
    iput v2, v0, Lnts/ᄅ;->Ͼ:I

    move-object/from16 v2, p2

    .line 427
    iput-object v2, v0, Lnts/ᄅ;->ᾨ:[B

    move/from16 v2, p0

    .line 428
    iput v2, v0, Lnts/ᄅ;->ᰛ:I

    move-object/from16 v2, p3

    .line 429
    iput-object v2, v0, Lnts/ᄅ;->ᇭ:[B

    .line 430
    iget-object v2, v0, Lnts/ᄅ;->ㆃ:Ljava/lang/String;

    .line 431
    invoke-static {v2}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v2

    .line 432
    iget-object v3, v0, Lnts/ᄅ;->ᾨ:[B

    .line 433
    iget-object v4, v0, Lnts/ᄅ;->ᇭ:[B

    .line 434
    iget v5, v0, Lnts/ᄅ;->ᰛ:I

    .line 435
    iget v6, v0, Lnts/ᄅ;->Ͼ:I

    .line 436
    div-int/2addr v6, v1

    .line 437
    invoke-static {v2}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result v7

    div-int/2addr v7, v1

    .line 438
    new-array v8, v6, [B

    iput-object v8, v0, Lnts/ᄅ;->ౠ:[B

    int-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    .line 439
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    int-to-double v12, v7

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_6

    if-nez v3, :cond_0

    .line 444
    sget-object v3, Lnts/ᄅ;->ᙕ:[B

    :cond_0
    if-nez v4, :cond_1

    .line 447
    sget-object v4, Lnts/ᄅ;->ᙕ:[B

    .line 448
    :cond_1
    div-int v8, v6, v7

    rem-int v9, v6, v7

    const/4 v11, 0x0

    if-lez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v11

    :goto_0
    add-int/2addr v8, v9

    mul-int v9, v8, v7

    .line 449
    new-array v9, v9, [B

    move v12, v11

    move v13, v12

    :goto_1
    if-ge v12, v8, :cond_5

    add-int/lit8 v12, v12, 0x1

    .line 450
    array-length v14, v4

    add-int/lit8 v14, v14, 0x4

    new-array v14, v14, [B

    .line 451
    array-length v15, v4

    .line 452
    invoke-static {v4, v11, v14, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    array-length v15, v4

    const/high16 v16, -0x1000000

    and-int v16, v12, v16

    const/16 p0, 0x1

    shr-int/lit8 v10, v16, 0x18

    int-to-byte v10, v10

    aput-byte v10, v14, v15

    .line 454
    array-length v10, v4

    add-int/lit8 v10, v10, 0x1

    const/high16 v15, 0xff0000

    and-int/2addr v15, v12

    shr-int/lit8 v15, v15, 0x10

    int-to-byte v15, v15

    aput-byte v15, v14, v10

    .line 455
    array-length v10, v4

    add-int/lit8 v10, v10, 0x2

    const v15, 0xff00

    and-int/2addr v15, v12

    shr-int/2addr v15, v1

    int-to-byte v15, v15

    aput-byte v15, v14, v10

    .line 456
    array-length v10, v4

    add-int/lit8 v10, v10, 0x3

    and-int/lit16 v15, v12, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v10

    .line 457
    invoke-static {v2}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result v10

    div-int/2addr v10, v1

    new-array v15, v10, [B

    move v1, v11

    :goto_2
    if-ge v1, v5, :cond_4

    .line 461
    invoke-virtual {v2}, Lnts/ዃ;->ᰛ()V

    .line 462
    invoke-virtual {v2, v3}, Lnts/ᙱ;->ᇭ([B)V

    move/from16 v16, v1

    .line 463
    array-length v1, v14

    invoke-virtual {v2, v14, v11, v1}, Lnts/ዃ;->ㆃ([BII)[B

    .line 464
    iget-object v14, v2, Lnts/ዃ;->ᾨ:[B

    move v1, v11

    :goto_3
    if-ge v1, v10, :cond_3

    .line 466
    aget-byte v17, v15, v1

    aget-byte v18, v14, v1

    xor-int v11, v17, v18

    int-to-byte v11, v11

    aput-byte v11, v15, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v16, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move v1, v11

    .line 468
    invoke-static {v15, v1, v9, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v7

    const/16 v1, 0x8

    goto :goto_1

    :cond_5
    move v1, v11

    .line 469
    iget-object v2, v0, Lnts/ᄅ;->ౠ:[B

    .line 470
    invoke-static {v9, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iget-object v0, v0, Lnts/ᄅ;->ౠ:[B

    return-object v0

    .line 472
    :cond_6
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x14

    const/16 v2, 0x8

    invoke-static {v2, v1, v2}, Lnts/ࡁ;->ᰛ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static ㆃ(ILjava/lang/String;[C[BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 415
    array-length v0, p2

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 418
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0x33

    const/16 v3, 0x386

    invoke-static {v3, v1, v2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/16 v1, 0xd

    const/16 v2, 0x390

    invoke-static {v2, v0, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 419
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {v0, p2, p3, p0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 420
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 422
    new-instance p1, Lnts/ẩ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_0
    new-instance p0, Lnts/ẩ;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x75

    const/4 p4, 0x3

    const/16 v0, 0x30a

    invoke-static {v0, p3, p4}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x7

    const/16 p3, 0x74

    const/16 p4, 0x37f

    invoke-static {p4, p2, p3, p1}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(I[B)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 525
    :cond_0
    array-length v0, p1

    sub-int/2addr p0, v0

    if-eqz p0, :cond_2

    .line 527
    array-length v0, p1

    add-int/2addr v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    if-lez p0, :cond_1

    .line 529
    array-length v0, p1

    invoke-static {p1, v2, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    neg-int p0, p0

    .line 531
    invoke-static {p1, p0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method public static ㆃ(Ljava/lang/Object;[BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 152
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d3

    const/16 v3, 0x11

    const/4 v4, 0x3

    .line 153
    invoke-static {v0, v4, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 154
    instance-of v3, p0, Lnts/Ӥ;

    if-eqz v3, :cond_0

    const/16 v0, 0x1d6

    const/16 v1, 0x79

    invoke-static {v0, v4, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_0
    instance-of v3, p0, Lnts/ܔ;

    if-eqz v3, :cond_1

    const/16 v0, 0x1d9

    const/16 v3, 0x40

    invoke-static {v0, v1, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    :goto_0
    invoke-static {v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v0

    check-cast v0, Lnts/ᓌ;

    .line 157
    invoke-virtual {v0, p0}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V

    const/4 p0, 0x1

    const/4 v1, -0x1

    .line 158
    :try_start_0
    invoke-virtual {v0, p2, p0, v2, v1}, Lnts/ᓌ;->ㆃ(Ljava/lang/String;ZZI)V

    .line 159
    array-length p0, p1

    invoke-virtual {v0, p1, v2, p0}, Lnts/ᓌ;->ㆃ([BII)V

    .line 160
    invoke-virtual {v0}, Lnts/ᓌ;->ㆃ()[B

    move-result-object p0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 162
    new-instance p1, Lnts/ẩ;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_2
    instance-of v0, p0, Lnts/ܔ;

    if-eqz v0, :cond_4

    .line 164
    move-object v0, p0

    check-cast v0, Lnts/ܔ;

    .line 165
    invoke-virtual {v0}, Lnts/ܔ;->Ὺ()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p2}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 p0, 0x1de

    const/16 p2, 0x38

    .line 168
    invoke-static {p0, v1, p2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object p0

    check-cast p0, Lnts/ݡ;

    .line 169
    iput-boolean v2, p0, Lnts/ݡ;->ᰛ:Z

    .line 170
    invoke-virtual {p0, v0}, Lnts/ݡ;->ᾨ(Lnts/ܔ;)V

    .line 171
    iget-object p2, p0, Lnts/ݡ;->ᇭ:Lnts/ܔ;

    invoke-virtual {p2}, Lnts/ܔ;->Ὺ()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 172
    invoke-virtual {p0, p1}, Lnts/ݡ;->ㆃ([B)[B

    move-result-object p0

    return-object p0

    .line 174
    :cond_3
    new-instance p2, Lnts/ඛ;

    invoke-direct {p2}, Lnts/ඛ;-><init>()V

    .line 175
    invoke-virtual {p2, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ݡ;->ᇭ([B)[B

    move-result-object p0

    return-object p0

    .line 176
    :cond_4
    invoke-static {p2}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Lnts/ዃ;->ᾨ([B)[B

    move-result-object p1

    .line 178
    invoke-static {p0, p1, p2, v2}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[BLjava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/Object;[BLjava/lang/String;Z)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    move-object v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 179
    invoke-static/range {v0 .. v7}, Lnts/ቩ;->ㆃ(Ljava/lang/Object;[BLjava/lang/String;ZLjava/lang/String;IZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/Object;[BLjava/lang/String;ZLjava/lang/String;IZZ)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 180
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v5

    const/16 v6, 0x8

    const/16 v7, 0x1f4

    const/16 v8, 0x75

    const/16 v9, 0x4a

    const/4 v10, 0x5

    const/16 v11, 0x16

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x3

    if-eqz v5, :cond_6

    const/16 v3, 0x1e3

    const/16 v4, 0x29

    .line 181
    invoke-static {v3, v14, v4}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    .line 182
    instance-of v5, v0, Lnts/Ӥ;

    if-eqz v5, :cond_0

    const/16 v3, 0x1e6

    const/16 v5, 0x79

    invoke-static {v3, v14, v5}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 183
    :cond_0
    instance-of v5, v0, Lnts/ܔ;

    if-eqz v5, :cond_1

    const/16 v3, 0x1e9

    invoke-static {v3, v10, v8}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_1
    :goto_0
    invoke-static {v3}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v3

    check-cast v3, Lnts/ᓌ;

    .line 185
    invoke-virtual {v3, v0}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V

    .line 186
    :try_start_0
    iget-object v0, v3, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v6, v12}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v3, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1fc

    invoke-static {v5, v13, v11}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, v3, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    .line 189
    :cond_2
    iget-object v0, v3, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    iget-object v5, v3, Lnts/ᓌ;->ᰛ:Ljava/security/PrivateKey;

    invoke-virtual {v0, v5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 190
    iget-object v0, v3, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v5, 0x202

    const/16 v6, 0x5d

    invoke-static {v5, v14, v6}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_3

    .line 206
    iget-object v0, v3, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {v3, v2}, Lnts/ᓌ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    goto :goto_1

    .line 207
    :cond_3
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x205

    invoke-static {v1, v4, v9}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_4
    :goto_1
    iget-object v0, v3, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 212
    iget-object v0, v3, Lnts/ᓌ;->ౠ:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 213
    iget-object v1, v3, Lnts/ᓌ;->ᇭ:Ljava/lang/String;

    const/16 v2, 0x22e

    invoke-static {v2, v10, v8}, Lnts/ݶ;->ཊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v3, Lnts/ᓌ;->ዲ:I

    if-nez v1, :cond_5

    .line 214
    iget v1, v3, Lnts/ᓌ;->て:I

    invoke-static {v0, v1}, Lnts/ݡ;->ㆃ([BI)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lnts/ẩ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_6
    instance-of v5, v0, Lnts/څ;

    if-eqz v5, :cond_a

    const/16 v5, 0x1ee

    const/16 v6, 0x51

    .line 220
    invoke-static {v5, v14, v6}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v5

    .line 230
    check-cast v5, Lnts/ᴺ;

    .line 231
    check-cast v0, Lnts/څ;

    invoke-virtual {v5, v0}, Lnts/ᴺ;->ㆃ(Lnts/څ;)V

    if-eqz p7, :cond_8

    if-eqz p3, :cond_7

    .line 232
    invoke-virtual {v5, v1, v2, v3, v4}, Lnts/ᴺ;->ㆃ([BLjava/lang/Object;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 234
    :cond_7
    invoke-static {v2}, Lnts/ᴺ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lnts/ᴺ;->ㆃ([B[B)[B

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz p3, :cond_9

    .line 235
    sget-object v0, Lnts/ᴺ;->И:[B

    invoke-virtual {v5, v1, v0, v3, v4}, Lnts/ᴺ;->ㆃ([BLjava/lang/Object;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 237
    :cond_9
    sget-object v0, Lnts/ᴺ;->И:[B

    invoke-virtual {v5, v1, v0}, Lnts/ᴺ;->ㆃ([B[B)[B

    move-result-object v0

    return-object v0

    .line 238
    :cond_a
    instance-of v3, v0, Lnts/Ӥ;

    const/16 v4, 0x22

    const/16 v5, 0xc

    const/4 v15, 0x1

    if-eqz v3, :cond_15

    const/16 v3, 0x1f1

    .line 239
    invoke-static {v3, v14, v9}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v3

    .line 249
    check-cast v3, Lnts/Ј;

    .line 250
    check-cast v0, Lnts/Ӥ;

    invoke-virtual {v3, v0}, Lnts/Ј;->ㆃ(Lnts/Ӥ;)V

    if-eqz p6, :cond_b

    .line 251
    iput v15, v3, Lnts/Ј;->ዲ:I

    :cond_b
    const/4 v0, 0x7

    if-eqz v1, :cond_14

    if-eqz v2, :cond_13

    const/4 v7, 0x4

    const/16 v10, 0x32

    const/16 v14, 0x84

    .line 252
    invoke-static {v14, v7, v10}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const/16 v7, 0xd

    const/16 v10, 0x6d

    const/16 v14, 0x88

    invoke-static {v14, v7, v10}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const/16 v7, 0x95

    .line 253
    invoke-static {v7, v13, v5}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0x9b

    const/16 v7, 0x4f

    invoke-static {v5, v11, v7}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0xb1

    const/16 v7, 0x50

    .line 254
    invoke-static {v5, v13, v7}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0xb7

    const/16 v7, 0xf

    invoke-static {v5, v11, v7}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0xcd

    const/16 v7, 0x7f

    .line 255
    invoke-static {v5, v13, v7}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0xd3

    invoke-static {v5, v11, v0}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0xe9

    const/16 v7, 0x71

    .line 256
    invoke-static {v5, v13, v7}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0xef

    invoke-static {v5, v11, v12}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0x9

    const/16 v7, 0x61

    const/16 v10, 0x105

    .line 257
    invoke-static {v10, v5, v7}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 258
    :cond_c
    iget-object v2, v3, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    if-eqz v2, :cond_12

    .line 260
    iget-object v0, v3, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    if-eqz v0, :cond_11

    .line 264
    iget-object v0, v3, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, v6

    .line 268
    :cond_d
    :goto_2
    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v2

    .line 269
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v15, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 270
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v3, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_d

    .line 272
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v15, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 274
    iget-object v5, v3, Lnts/Ј;->Ͼ:Ljava/math/BigInteger;

    iget-object v6, v3, Lnts/Ј;->ᇭ:Ljava/math/BigInteger;

    invoke-virtual {v5, v4, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, v3, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 275
    iget-object v6, v3, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 276
    iget-object v6, v3, Lnts/Ј;->ᙕ:Ljava/math/BigInteger;

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 277
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, v3, Lnts/Ј;->ᰛ:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 279
    invoke-static {v5}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v4

    .line 280
    invoke-static {v2}, Lnts/ቩ;->ㆃ(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 281
    array-length v5, v4

    if-ne v5, v0, :cond_d

    array-length v5, v2

    if-eq v5, v0, :cond_e

    goto :goto_2

    .line 284
    :cond_e
    iget v0, v3, Lnts/Ј;->ዲ:I

    if-nez v0, :cond_f

    .line 285
    array-length v0, v4

    array-length v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 287
    array-length v1, v4

    invoke-static {v4, v12, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    array-length v1, v4

    array-length v3, v2

    invoke-static {v2, v12, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_f
    if-ne v0, v15, :cond_10

    .line 292
    invoke-static {v4, v2}, Lnts/ቩ;->ㆃ([B[B)[B

    move-result-object v0

    return-object v0

    .line 294
    :cond_10
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x18

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-static {v3, v1, v2}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_11
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x1e

    const/16 v2, 0x23

    invoke-static {v1, v4, v2}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_12
    new-instance v1, Lnts/ẩ;

    const/16 v2, 0x17

    invoke-static {v0, v2, v8}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_13
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x10e

    const/16 v2, 0x11

    invoke-static {v1, v9, v2}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_14
    new-instance v1, Lnts/ቂ;

    const/16 v2, 0x7d

    const/16 v3, 0xa

    invoke-static {v2, v0, v3}, Lnts/ッ;->ᚹ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ቂ;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_15
    instance-of v2, v0, Lnts/ܔ;

    if-eqz v2, :cond_18

    .line 300
    check-cast v0, Lnts/ܔ;

    .line 302
    invoke-virtual {v0}, Lnts/ܔ;->Ὺ()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x7e

    .line 303
    invoke-static {v7, v10, v2}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v2

    check-cast v2, Lnts/ݡ;

    goto :goto_3

    :cond_16
    const/16 v2, 0x1f9

    const/16 v3, 0x55

    .line 305
    invoke-static {v2, v10, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v2

    check-cast v2, Lnts/ݡ;

    .line 307
    :goto_3
    invoke-virtual {v2, v0}, Lnts/ݡ;->ᾨ(Lnts/ܔ;)V

    if-eqz p6, :cond_17

    .line 308
    iput v15, v2, Lnts/ݡ;->Ͼ:I

    .line 309
    :cond_17
    invoke-virtual {v2, v1}, Lnts/ݡ;->ᇭ([B)[B

    move-result-object v0

    return-object v0

    .line 311
    :cond_18
    new-instance v1, Lnts/ẩ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1fe

    const/16 v6, 0x3c

    invoke-static {v3, v5, v6}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20a

    const/16 v3, 0x1d

    invoke-static {v2, v3, v4, v0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static ㆃ(Ljava/lang/Object;[BZ)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x7

    const/16 v1, 0x24

    const/16 v2, 0x298

    .line 382
    invoke-static {v2, v0, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 383
    instance-of v1, p0, Lnts/څ;

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const/16 v0, 0x29f

    const/16 v1, 0x10

    .line 384
    invoke-static {v0, v2, v1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;)Lnts/バ;

    move-result-object v0

    .line 396
    instance-of v1, v0, Lnts/ᓌ;

    if-eqz v1, :cond_0

    .line 397
    move-object v2, v0

    check-cast v2, Lnts/ᓌ;

    .line 398
    invoke-virtual {v2, p0}, Lnts/ᓌ;->ᾨ(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    .line 399
    invoke-virtual/range {v2 .. v7}, Lnts/ᓌ;->ㆃ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    move v2, p2

    .line 402
    check-cast v0, Lnts/ᴺ;

    .line 403
    check-cast p0, Lnts/څ;

    invoke-virtual {v0, p0}, Lnts/ᴺ;->ㆃ(Lnts/څ;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 404
    invoke-virtual/range {v0 .. v5}, Lnts/ᴺ;->ㆃ([BZ[BLjava/lang/Object;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 405
    :cond_1
    instance-of p0, p0, Lnts/Ӥ;

    if-eqz p0, :cond_2

    const/16 p0, 0x2a2

    const/16 p1, 0x73

    .line 406
    invoke-static {p0, v2, p1}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_2
    new-instance p0, Lnts/ẩ;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x2a5

    const/16 v1, 0x7f

    const/16 v2, 0xb

    invoke-static {p2, v2, v1, p1, v0}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2b0

    const/16 v0, 0x33

    invoke-static {p2, v0, v2, p1}, Lnts/ㆃ;->ㆃ(IIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 141
    array-length v0, p1

    .line 142
    invoke-static {p0}, Lnts/ቩ;->ᇭ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/ዃ;->ᾨ([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/math/BigInteger;)[B
    .locals 0

    .line 494
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lnts/ቩ;->ᇭ([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Lnts/ܔ;Lnts/ܔ;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 473
    iget v0, p0, Lnts/ܔ;->ᙕ:I

    iget v1, p1, Lnts/ܔ;->ᙕ:I

    if-ne v0, v1, :cond_2

    .line 477
    invoke-static {}, Lnts/ж;->ᾨ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 478
    invoke-static/range {v1 .. v6}, Lnts/ᓌ;->ㆃ(Lnts/ܔ;Lnts/ܔ;Ljava/lang/String;ZZ[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 479
    invoke-virtual {v1}, Lnts/ܔ;->Ⲳ()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lnts/ܔ;->ㆃ:[B

    goto :goto_0

    :cond_1
    iget-object p0, v1, Lnts/ܔ;->ౠ:[B

    :goto_0
    const/4 p1, 0x0

    invoke-static {p0, v2, p1}, Lnts/ݡ;->ㆃ([BLnts/ܔ;Z)[B

    move-result-object p0

    return-object p0

    .line 480
    :cond_2
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x29

    const/16 v0, 0x40

    const/16 v1, 0x3c0

    invoke-static {v1, p1, v0}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 481
    :cond_3
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0x2a

    const/16 v0, 0x31

    const/16 v1, 0x396

    invoke-static {v1, p1, v0}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Lnts/ዃ;)[B
    .locals 0

    .line 6
    iget-object p0, p0, Lnts/ዃ;->ᾨ:[B

    return-object p0
.end method

.method public static ㆃ([B)[B
    .locals 5

    .line 635
    array-length v0, p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 637
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    if-lt v4, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 639
    new-array v1, v1, [B

    .line 640
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    .line 644
    aget-byte v4, p0, v2

    if-nez v4, :cond_1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v1, :cond_1

    sub-int/2addr v0, v3

    .line 646
    new-array v1, v0, [B

    .line 647
    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static ㆃ([B[B)[B
    .locals 7

    .line 648
    invoke-static {p0}, Lnts/ቩ;->ㆃ([B)[B

    move-result-object p0

    .line 649
    invoke-static {p1}, Lnts/ቩ;->ㆃ([B)[B

    move-result-object p1

    .line 651
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x4

    and-int/lit16 v2, v1, 0x80

    const/16 v3, 0x30

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 653
    new-array v0, v0, [B

    .line 654
    aput-byte v3, v0, v6

    const/16 v2, -0x7f

    .line 656
    aput-byte v2, v0, v4

    move v4, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x6

    .line 658
    new-array v0, v0, [B

    .line 659
    aput-byte v3, v0, v6

    :goto_0
    add-int/lit8 v2, v4, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 661
    aput-byte v1, v0, v4

    add-int/lit8 v1, v4, 0x2

    .line 664
    aput-byte v5, v0, v2

    add-int/lit8 v4, v4, 0x3

    .line 665
    array-length v2, p0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 666
    array-length v1, p0

    invoke-static {p0, v6, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    array-length p0, p0

    add-int/2addr v4, p0

    add-int/lit8 p0, v4, 0x1

    .line 670
    aput-byte v5, v0, v4

    add-int/2addr v4, v5

    .line 671
    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    .line 672
    array-length p0, p1

    invoke-static {p1, v6, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
