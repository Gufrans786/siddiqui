.class public Lnts/Ԅ;
.super Lnts/ᣎ;
.source "SourceFile"


# static fields
.field public static ᎊ:[[B

.field public static ᡲ:[[B


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x8

    .line 1
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    filled-new-array {v1, v2, v3, v4}, [[B

    move-result-object v1

    sput-object v1, Lnts/Ԅ;->ᎊ:[[B

    .line 7
    new-array v2, v0, [B

    fill-array-data v2, :array_4

    new-array v3, v0, [B

    fill-array-data v3, :array_5

    new-array v4, v0, [B

    fill-array-data v4, :array_6

    new-array v5, v0, [B

    fill-array-data v5, :array_7

    new-array v6, v0, [B

    fill-array-data v6, :array_8

    new-array v7, v0, [B

    fill-array-data v7, :array_9

    new-array v8, v0, [B

    fill-array-data v8, :array_a

    new-array v9, v0, [B

    fill-array-data v9, :array_b

    new-array v10, v0, [B

    fill-array-data v10, :array_c

    new-array v11, v0, [B

    fill-array-data v11, :array_d

    new-array v12, v0, [B

    fill-array-data v12, :array_e

    new-array v13, v0, [B

    fill-array-data v13, :array_f

    filled-new-array/range {v2 .. v13}, [[B

    move-result-object v0

    sput-object v0, Lnts/Ԅ;->ᡲ:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
    .end array-data

    :array_2
    .array-data 1
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
    .end array-data

    :array_3
    .array-data 1
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
    .end array-data

    :array_4
    .array-data 1
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
    .end array-data

    :array_5
    .array-data 1
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
    .end array-data

    :array_7
    .array-data 1
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
    .end array-data

    :array_8
    .array-data 1
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
    .end array-data

    :array_9
    .array-data 1
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
    .end array-data

    :array_a
    .array-data 1
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
    .end array-data

    :array_b
    .array-data 1
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
    .end array-data

    :array_d
    .array-data 1
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
    .end array-data

    :array_e
    .array-data 1
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
    .end array-data

    :array_f
    .array-data 1
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnts/ᣎ;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 3
    new-array v1, v0, [Lnts/ᵕ;

    new-instance v2, Lnts/ᵕ;

    invoke-direct {v2, v3, v3, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 5
    iput v3, p0, Lnts/ኝ;->ᾨ:I

    .line 6
    iput v3, p0, Lnts/ኝ;->ᇭ:I

    .line 7
    iput v3, p0, Lnts/ኝ;->ㆃ:I

    .line 8
    iput v0, p0, Lnts/ኝ;->て:I

    .line 9
    iput v0, p0, Lnts/ኝ;->ዲ:I

    return-void
.end method

.method public static Ͼ([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lnts/Ԅ;->ᾨ([BI)Z

    move-result p0

    return p0
.end method

.method public static ᇭ([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lnts/Ԅ;->ᾨ([BI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lnts/Ԅ;->ㆃ([BI)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Lnts/ẩ;

    const/16 v0, 0x16

    const/16 v1, 0x10

    const/16 v2, 0x24

    invoke-static {v2, v0, v1}, Lnts/ッ;->ⴗ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᰛ([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lnts/Ԅ;->ㆃ([BI)Z

    move-result p0

    return p0
.end method

.method public static ᾨ([BI)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 8
    :goto_0
    sget-object v2, Lnts/Ԅ;->ᎊ:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 10
    sget-object v4, Lnts/Ԅ;->ᎊ:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v2

    add-int v5, v2, p1

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ne v2, v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static ㆃ([BI)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    sget-object v2, Lnts/Ԅ;->ᡲ:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 8
    sget-object v4, Lnts/Ԅ;->ᡲ:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v2

    add-int v5, v2, p1

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ne v2, v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public ᇭ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ᾨ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/Ԅ;->ᾨ([B)V

    return-void
.end method

.method public ᾨ([B[B)Lnts/Ҫ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lnts/ມ;

    iget v4, p0, Lnts/ኝ;->て:I

    iget v5, p0, Lnts/ኝ;->ዲ:I

    iget v6, p0, Lnts/ኝ;->ᇭ:I

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnts/ມ;-><init>([B[BIII)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x19

    const/16 v0, 0x12

    invoke-static {v0, v0, p2}, Lnts/ッ;->ⴗ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᾨ([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lnts/Ԅ;->ᇭ([B)V

    .line 7
    invoke-super {p0, p1}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ㆃ([B[B)Lnts/Ҫ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lnts/ዧ;->ⱪ:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lnts/ፁ;

    iget v4, p0, Lnts/ኝ;->て:I

    iget v5, p0, Lnts/ኝ;->ዲ:I

    iget v6, p0, Lnts/ኝ;->ᇭ:I

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnts/ፁ;-><init>([B[BIII)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Lnts/ẩ;

    const/16 p2, 0x12

    const/16 v0, 0x4a

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lnts/ッ;->ⴗ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p1
.end method
