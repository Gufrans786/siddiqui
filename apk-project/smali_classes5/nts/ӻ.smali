.class public Lnts/ӻ;
.super Lnts/ᒁ;
.source "SourceFile"


# static fields
.field public static final Ὺ:[Ljava/lang/String;


# instance fields
.field public ౠ:Z

.field public ዲ:I

.field public ᎊ:Ljava/util/Vector;

.field public ᙕ:I

.field public ᡲ:Lnts/ᶛ;

.field public て:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0xc

    const/16 v2, 0x5d

    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x67

    const/16 v2, 0x78

    invoke-static {v1, v3, v2}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x10

    const/16 v2, 0x79

    const/16 v3, 0x71

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x11

    const/16 v2, 0x2f

    const/16 v3, 0x81

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x75

    const/16 v3, 0x92

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lnts/ӻ;->Ὺ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnts/ᶛ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnts/ӻ;->ౠ:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/ӻ;->ᙕ:I

    .line 4
    iput v0, p0, Lnts/ӻ;->て:I

    .line 5
    iput v0, p0, Lnts/ӻ;->ዲ:I

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ӻ;->ᎊ:Ljava/util/Vector;

    .line 29
    iput-object p1, p0, Lnts/ӻ;->ᡲ:Lnts/ᶛ;

    return-void
.end method

.method public static ㆃ(Lnts/ᖛ;I)I
    .locals 5

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 123
    invoke-virtual {p0}, Lnts/ᖛ;->ᰛ()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    and-int/2addr v1, p1

    if-ge v1, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lnts/ᖛ;->ᰛ()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int v4, v0, p1

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x7

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v1
.end method

.method public static ㆃ(Lnts/ᖛ;)Ljava/lang/String;
    .locals 2

    .line 9
    iget v0, p0, Lnts/ᖛ;->ᰛ:I

    .line 10
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ᇭ(I)B

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    .line 12
    invoke-static {p0, v1}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;I)I

    move-result v1

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object p0

    invoke-static {p0}, Lnts/ᰊ;->ㆃ([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p0, v1}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object p0

    invoke-static {p0}, Lnts/ၽ;->ዲ([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ([BIILnts/ᶛ;)Ljava/util/Vector;
    .locals 8

    .line 128
    iget-object v0, p3, Lnts/ᶛ;->ㆃ:Lnts/れ;

    .line 129
    iget-object v0, v0, Lnts/れ;->ᇭ:Lnts/ḱ;

    .line 130
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 131
    new-instance v2, Lnts/ᖛ;

    invoke-direct {v2, p0}, Lnts/ᖛ;-><init>([B)V

    .line 132
    :goto_0
    iget p0, v2, Lnts/ᖛ;->ᰛ:I

    add-int v3, p0, p1

    if-ge v3, p2, :cond_8

    .line 133
    invoke-virtual {v2, p0}, Lnts/ᖛ;->ᇭ(I)B

    move-result p0

    and-int/lit16 v3, p0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    const/4 p0, 0x7

    .line 135
    invoke-static {v2, p0}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;I)I

    move-result p0

    .line 136
    invoke-virtual {v0, p0}, Lnts/ḱ;->ᾨ(I)Lnts/ㄖ;

    move-result-object v3

    .line 137
    iget-object v3, v3, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, p0}, Lnts/ḱ;->ᾨ(I)Lnts/ㄖ;

    move-result-object p0

    .line 139
    iget-object p0, p0, Lnts/ㄖ;->ᾨ:Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    and-int/lit8 v3, p0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    if-eq p0, v4, :cond_1

    const/4 p0, 0x6

    .line 140
    invoke-static {v2, p0}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;I)I

    move-result p0

    .line 141
    invoke-virtual {v0, p0}, Lnts/ḱ;->ᾨ(I)Lnts/ㄖ;

    move-result-object p0

    .line 142
    iget-object p0, p0, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v2}, Lnts/ᖛ;->ᰛ()B

    .line 144
    invoke-static {v2}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v3, p0

    .line 146
    invoke-static {v2}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-virtual {v0, v3, p0}, Lnts/ḱ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v4, p3, Lnts/ᶛ;->ㆃ:Lnts/れ;

    .line 149
    iget v4, v4, Lnts/れ;->ᙕ:I

    .line 150
    invoke-virtual {v0, v4}, Lnts/ḱ;->ㆃ(I)V

    goto/16 :goto_4

    :cond_2
    and-int/lit8 v3, p0, 0x10

    const/4 v4, 0x4

    const/16 v5, 0x10

    if-ne v3, v5, :cond_4

    if-eq p0, v5, :cond_3

    .line 153
    invoke-static {v2, v4}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;I)I

    move-result p0

    .line 154
    invoke-virtual {v0, p0}, Lnts/ḱ;->ᾨ(I)Lnts/ㄖ;

    move-result-object p0

    .line 155
    iget-object p0, p0, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {v2}, Lnts/ᖛ;->ᰛ()B

    .line 157
    invoke-static {v2}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v3, p0

    .line 159
    invoke-static {v2}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    and-int/lit8 v3, p0, 0xf

    if-ne v3, p0, :cond_6

    if-eqz p0, :cond_5

    .line 162
    invoke-static {v2, v4}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;I)I

    move-result p0

    .line 163
    invoke-virtual {v0, p0}, Lnts/ḱ;->ᾨ(I)Lnts/ㄖ;

    move-result-object p0

    .line 164
    iget-object p0, p0, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    goto :goto_3

    .line 165
    :cond_5
    invoke-virtual {v2}, Lnts/ᖛ;->ᰛ()B

    .line 166
    invoke-static {v2}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v3, p0

    .line 168
    invoke-static {v2}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    and-int/lit8 p0, p0, 0x20

    const/16 v3, 0x20

    if-ne p0, v3, :cond_7

    const/4 p0, 0x5

    .line 170
    invoke-static {v2, p0}, Lnts/ӻ;->ㆃ(Lnts/ᖛ;I)I

    move-result p0

    .line 171
    iget-object v3, p3, Lnts/ᶛ;->ㆃ:Lnts/れ;

    .line 172
    iput p0, v3, Lnts/れ;->ᙕ:I

    .line 173
    invoke-virtual {v0, p0}, Lnts/ḱ;->ㆃ(I)V

    .line 174
    iget-object v3, p3, Lnts/ᶛ;->ㆃ:Lnts/れ;

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x3c

    const/16 v6, 0x4c

    const/16 v7, 0xec

    invoke-static {v7, v5, v6}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lnts/ィ;->ⷊ:Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Lnts/れ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_7
    const-string v3, ""

    move-object p0, v3

    .line 178
    :goto_4
    new-instance v4, Lnts/ㄖ;

    invoke-direct {v4, v3, p0}, Lnts/ㄖ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public static ㆃ(II)[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ሠ;

    invoke-direct {v0}, Lnts/ሠ;-><init>()V

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    if-ge p0, p1, :cond_0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 2
    invoke-virtual {v0, p0}, Lnts/ሠ;->ㆃ(B)Lnts/ሠ;

    goto :goto_1

    :cond_0
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    .line 3
    invoke-virtual {v0, v1}, Lnts/ሠ;->ㆃ(B)Lnts/ሠ;

    sub-int/2addr p0, p1

    :goto_0
    const/16 p1, 0x80

    if-lt p0, p1, :cond_1

    .line 4
    rem-int/lit16 v1, p0, 0x80

    add-int/2addr v1, p1

    and-int/lit16 p1, v1, 0xff

    int-to-byte p1, p1

    .line 5
    invoke-virtual {v0, p1}, Lnts/ሠ;->ㆃ(B)Lnts/ሠ;

    .line 6
    div-int/lit16 p0, p0, 0x80

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 7
    invoke-virtual {v0, p0}, Lnts/ሠ;->ㆃ(B)Lnts/ሠ;

    .line 8
    :goto_1
    invoke-virtual {v0}, Lnts/ሠ;->ㆃ()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ᾨ()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/ᒁ;->ᇭ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㆃ([B)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 105
    new-instance p1, Lnts/ᖛ;

    .line 106
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 107
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 108
    iget v0, p0, Lnts/ᒁ;->ᇭ:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 109
    invoke-virtual {p1}, Lnts/ᖛ;->ᰛ()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnts/ӻ;->ᙕ:I

    .line 112
    iget v1, p0, Lnts/ᒁ;->ㆃ:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x4b

    const/16 v1, 0x5c

    const/16 v2, 0xa1

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    :goto_0
    iget v0, p0, Lnts/ᒁ;->ᇭ:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 115
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ӻ;->ዲ:I

    .line 117
    invoke-virtual {p1}, Lnts/ᖛ;->ᰛ()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnts/ӻ;->て:I

    .line 121
    :cond_2
    invoke-virtual {p1}, Lnts/ᖛ;->Ὺ()[B

    move-result-object p1

    .line 122
    array-length v0, p1

    iget v1, p0, Lnts/ӻ;->ᙕ:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnts/ӻ;->ᡲ:Lnts/ᶛ;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lnts/ӻ;->ㆃ([BIILnts/ᶛ;)Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lnts/ӻ;->ᎊ:Ljava/util/Vector;

    return-void
.end method

.method public ㆃ()[B
    .locals 16

    move-object/from16 v0, p0

    .line 17
    new-instance v1, Lnts/ᖛ;

    invoke-direct {v1}, Lnts/ᖛ;-><init>()V

    .line 18
    iget v2, v0, Lnts/ӻ;->ᙕ:I

    if-lez v2, :cond_0

    .line 19
    invoke-virtual {v1, v2}, Lnts/ᖛ;->ዲ(I)V

    .line 20
    iget v2, v0, Lnts/ᒁ;->ᇭ:I

    or-int/lit8 v2, v2, 0x8

    .line 21
    iput v2, v0, Lnts/ᒁ;->ᇭ:I

    .line 22
    :cond_0
    iget v2, v0, Lnts/ᒁ;->ᇭ:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 23
    iget v2, v0, Lnts/ӻ;->ዲ:I

    invoke-virtual {v1, v2}, Lnts/ᖛ;->Ὺ(I)V

    .line 24
    iget v2, v0, Lnts/ӻ;->て:I

    invoke-virtual {v1, v2}, Lnts/ᖛ;->ዲ(I)V

    .line 26
    :cond_1
    iget-boolean v2, v0, Lnts/ӻ;->ౠ:Z

    iget-object v3, v0, Lnts/ӻ;->ᡲ:Lnts/ᶛ;

    iget-object v4, v3, Lnts/ᶛ;->て:Ljava/util/Vector;

    .line 27
    iget-object v3, v3, Lnts/ᶛ;->ㆃ:Lnts/れ;

    .line 28
    iget-object v5, v3, Lnts/れ;->ᾨ:Lnts/ḱ;

    .line 29
    iget-object v3, v3, Lnts/れ;->ᵑ:Ljava/lang/String;

    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_2

    const-string v6, ","

    invoke-static {v3, v6, v7}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    .line 32
    :goto_0
    new-instance v6, Lnts/ᖛ;

    invoke-direct {v6}, Lnts/ᖛ;-><init>()V

    move v9, v8

    .line 33
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    .line 35
    invoke-virtual {v4, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnts/ㄖ;

    .line 36
    iget-object v10, v10, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    .line 37
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual {v4, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnts/ㄖ;

    .line 39
    iget-object v11, v11, Lnts/ㄖ;->ᾨ:Ljava/lang/String;

    move v12, v8

    .line 40
    :goto_2
    array-length v13, v3

    if-ge v12, v13, :cond_4

    .line 41
    aget-object v13, v3, v12

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v8

    :goto_3
    move v13, v7

    .line 42
    :goto_4
    iget-object v14, v5, Lnts/ḱ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    const/4 v15, -0x1

    if-ge v13, v14, :cond_6

    .line 43
    iget-object v14, v5, Lnts/ḱ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v14, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnts/ㄖ;

    .line 44
    iget-object v14, v14, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    .line 45
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v5, Lnts/ḱ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v14, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnts/ㄖ;

    .line 46
    iget-object v14, v14, Lnts/ㄖ;->ᾨ:Ljava/lang/String;

    .line 47
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    move v13, v15

    :goto_5
    const/4 v14, 0x7

    if-eq v13, v15, :cond_7

    .line 48
    invoke-static {v13, v14}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v10

    .line 49
    aget-byte v11, v10, v8

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v10, v8

    .line 50
    invoke-virtual {v6, v10}, Lnts/ᖛ;->ᾨ([B)V

    goto/16 :goto_c

    :cond_7
    move v13, v7

    .line 51
    :goto_6
    iget-object v7, v5, Lnts/ḱ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v13, v7, :cond_9

    .line 52
    iget-object v7, v5, Lnts/ḱ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v7, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnts/ㄖ;

    .line 53
    iget-object v7, v7, Lnts/ㄖ;->ㆃ:Ljava/lang/String;

    .line 54
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_9
    move v13, v15

    :goto_7
    const/16 v7, 0x40

    if-eq v13, v15, :cond_b

    if-eqz v12, :cond_a

    const/4 v7, 0x4

    .line 55
    invoke-static {v13, v7}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v7

    .line 56
    aget-byte v13, v7, v8

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    goto :goto_8

    :cond_a
    const/4 v15, 0x6

    .line 58
    invoke-static {v13, v15}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v13

    .line 59
    aget-byte v15, v13, v8

    or-int/2addr v7, v15

    int-to-byte v7, v7

    aput-byte v7, v13, v8

    move-object v7, v13

    .line 61
    :goto_8
    invoke-virtual {v6, v7}, Lnts/ᖛ;->ᾨ([B)V

    move v13, v14

    goto :goto_a

    :cond_b
    if-eqz v12, :cond_c

    .line 63
    invoke-virtual {v6, v8}, Lnts/ᖛ;->ㆃ(B)V

    goto :goto_9

    .line 64
    :cond_c
    invoke-virtual {v6, v7}, Lnts/ᖛ;->ㆃ(B)V

    :goto_9
    if-eqz v2, :cond_d

    .line 66
    invoke-static {v10}, Lnts/ᰊ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v7

    .line 67
    array-length v13, v7

    .line 68
    invoke-static {v13, v14}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v15

    .line 69
    aget-byte v14, v15, v8

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v15, v8

    .line 70
    invoke-virtual {v6, v15}, Lnts/ᖛ;->ᾨ([B)V

    .line 71
    invoke-virtual {v6, v7, v8, v13}, Lnts/ᖛ;->ᾨ([BII)V

    const/4 v13, 0x7

    goto :goto_a

    .line 73
    :cond_d
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v13, 0x7

    invoke-static {v7, v13}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v7

    .line 74
    invoke-virtual {v6, v7}, Lnts/ᖛ;->ᾨ([B)V

    .line 75
    invoke-static {v10}, Lnts/ၽ;->て(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lnts/ᖛ;->ᾨ([B)V

    :goto_a
    if-eqz v2, :cond_e

    .line 79
    invoke-static {v11}, Lnts/ᰊ;->ㆃ(Ljava/lang/String;)[B

    move-result-object v7

    .line 80
    array-length v14, v7

    .line 81
    invoke-static {v14, v13}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v13

    .line 82
    aget-byte v15, v13, v8

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    aput-byte v15, v13, v8

    .line 83
    invoke-virtual {v6, v13}, Lnts/ᖛ;->ᾨ([B)V

    .line 84
    invoke-virtual {v6, v7, v8, v14}, Lnts/ᖛ;->ᾨ([BII)V

    goto :goto_b

    .line 86
    :cond_e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v13}, Lnts/ӻ;->ㆃ(II)[B

    move-result-object v7

    .line 87
    invoke-virtual {v6, v7}, Lnts/ᖛ;->ᾨ([B)V

    .line 88
    invoke-static {v11}, Lnts/ၽ;->て(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lnts/ᖛ;->ᾨ([B)V

    :goto_b
    if-nez v12, :cond_f

    .line 91
    invoke-virtual {v5, v10, v11}, Lnts/ḱ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1000

    .line 92
    invoke-virtual {v5, v7}, Lnts/ḱ;->ㆃ(I)V

    :cond_f
    :goto_c
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 96
    :cond_10
    invoke-virtual {v6}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Lnts/ᖛ;->ᾨ([B)V

    .line 98
    iget v2, v0, Lnts/ӻ;->ᙕ:I

    if-lez v2, :cond_11

    .line 99
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lnts/ᖛ;->ᾨ([B)V

    :cond_11
    const/4 v2, 0x1

    .line 100
    iput v2, v0, Lnts/ᒁ;->ᾨ:I

    .line 101
    invoke-virtual {v1}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v1

    .line 102
    iput-object v1, v0, Lnts/ᒁ;->Ͼ:[B

    .line 103
    invoke-super {v0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v1

    return-object v1
.end method
