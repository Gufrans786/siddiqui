.class public Lnts/ⴳ;
.super Lnts/ዧ;
.source "SourceFile"


# static fields
.field public static લ:Ljava/lang/String; = null

.field public static ଙ:Ljava/lang/String; = null

.field public static ఋ:I = 0x0

.field public static ᇢ:D = 0.0

.field public static ᡤ:Z = true

.field public static ㇸ:Lnts/ẜ;


# instance fields
.field public η:I

.field public Ϯ:J

.field public Ё:Ljava/io/FileOutputStream;

.field public И:I

.field public ཊ:Z

.field public ཞ:Z

.field public ᄎ:Z

.field public ᚇ:Z

.field public ᜧ:Ljava/lang/String;

.field public យ:I

.field public ᦝ:Ljava/lang/String;

.field public ᨍ:Lnts/ሠ;

.field public ᬌ:Ljava/lang/String;

.field public ᯋ:I

.field public ᴨ:Z

.field public Ἂ:Ljava/lang/Thread;

.field public ᾤ:Z

.field public ⱋ:J

.field public ⶦ:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/16 v1, 0x4f

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 2
    invoke-static {v2, v3, v1}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    const/16 v1, 0x28

    .line 3
    invoke-static {v3, v3, v1}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    const/16 v1, 0x6b

    const/16 v4, 0xc

    const/4 v5, 0x4

    .line 4
    invoke-static {v4, v5, v1}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    sput-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    const/4 v6, 0x1

    .line 10
    sput v6, Lnts/ⴳ;->ఋ:I

    const-string v7, ""

    .line 11
    sput-object v7, Lnts/ⴳ;->લ:Ljava/lang/String;

    const-wide/16 v7, 0x0

    .line 12
    sput-wide v7, Lnts/ⴳ;->ᇢ:D

    .line 13
    sput-object v1, Lnts/ⴳ;->ଙ:Ljava/lang/String;

    const/16 v7, 0x10

    const/16 v8, 0x1b

    const/16 v9, 0x13

    .line 17
    :try_start_0
    invoke-static {v7, v9, v8}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v2

    .line 18
    :goto_0
    sput-boolean v7, Lnts/ⴳ;->ᡤ:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 22
    :catch_0
    sput-boolean v2, Lnts/ⴳ;->ᡤ:Z

    goto :goto_1

    .line 23
    :catch_1
    sput-boolean v2, Lnts/ⴳ;->ᡤ:Z

    :goto_1
    const/16 v7, 0x23

    const/4 v8, 0x7

    .line 29
    :try_start_1
    invoke-static {v7, v8, v9}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lnts/ⴳ;->ଙ:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 30
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lnts/ⴳ;->ଙ:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 32
    :catch_2
    sput-object v1, Lnts/ⴳ;->ଙ:Ljava/lang/String;

    :cond_1
    :goto_2
    const/16 v7, 0x2a

    const/16 v10, 0x61

    .line 35
    invoke-static {v7, v4, v10}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x36

    const/16 v11, 0x22

    invoke-static {v10, v0, v11}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x39

    const/16 v11, 0x18

    .line 36
    invoke-static {v10, v4, v11}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x45

    const/16 v13, 0x34

    invoke-static {v12, v3, v13}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v12, 0x4b

    if-eqz v10, :cond_5

    const/16 v10, 0x41

    .line 38
    :try_start_2
    invoke-static {v12, v11, v10}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v11, 0x63

    const/16 v13, 0x38

    invoke-static {v11, v8, v13}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lnts/ⴳ;->લ:Ljava/lang/String;

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v10, "."

    .line 40
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move v11, v2

    .line 41
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_4

    if-ne v11, v10, :cond_2

    goto :goto_4

    .line 43
    :cond_2
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 45
    :cond_4
    :goto_5
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    sput-wide v1, Lnts/ⴳ;->ᇢ:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    :cond_5
    const-string v1, "0"

    .line 50
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v10, 0x5

    if-eqz v1, :cond_6

    const/16 v1, 0x6a

    invoke-static {v1, v4, v8}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x76

    const/16 v11, 0x3e

    invoke-static {v4, v3, v11}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    sput v10, Lnts/ⴳ;->ఋ:I

    goto/16 :goto_6

    :cond_6
    const/16 v1, 0x7c

    .line 53
    invoke-static {v1, v0, v9}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    .line 54
    sput v6, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    :cond_7
    const/16 v1, 0x7f

    const/16 v4, 0x3a

    .line 55
    invoke-static {v1, v0, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    .line 56
    sput v2, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    :cond_8
    const/16 v1, 0x82

    const/16 v4, 0x19

    .line 57
    invoke-static {v1, v0, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    .line 58
    sput v0, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    :cond_9
    const/16 v1, 0x85

    .line 59
    invoke-static {v1, v0, v12}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_a

    .line 60
    sput v5, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    :cond_a
    const/16 v1, 0x88

    const/16 v4, 0x59

    .line 61
    invoke-static {v1, v0, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    .line 62
    sput v10, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    :cond_b
    const/16 v1, 0x8b

    const/16 v4, 0x75

    .line 63
    invoke-static {v1, v0, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_c

    .line 64
    sput v3, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    :cond_c
    const/16 v1, 0x8e

    const/16 v3, 0x2e

    .line 65
    invoke-static {v1, v0, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_d

    .line 66
    sput v8, Lnts/ⴳ;->ఋ:I

    goto :goto_6

    .line 68
    :cond_d
    sput v8, Lnts/ⴳ;->ఋ:I

    .line 71
    :goto_6
    sget v0, Lnts/ⴳ;->ఋ:I

    .line 72
    invoke-static {v0}, Lnts/ⴳ;->ౠ(I)Z

    move-result v1

    if-eqz v1, :cond_10

    if-ge v0, v2, :cond_e

    .line 74
    new-instance v0, Lnts/ݑ;

    invoke-direct {v0}, Lnts/ݑ;-><init>()V

    sput-object v0, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    goto :goto_7

    :cond_e
    if-ge v0, v5, :cond_f

    .line 76
    new-instance v0, Lnts/ਦ;

    invoke-direct {v0}, Lnts/ਦ;-><init>()V

    sput-object v0, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    goto :goto_7

    .line 78
    :cond_f
    new-instance v0, Lnts/ㆀ;

    invoke-direct {v0}, Lnts/ㆀ;-><init>()V

    sput-object v0, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    :cond_10
    :goto_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lnts/ዧ;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lnts/ⴳ;->ཞ:Z

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lnts/ⴳ;->ᯋ:I

    const-wide/16 v1, 0x0

    .line 102
    iput-wide v1, p0, Lnts/ⴳ;->ⱋ:J

    .line 103
    iput-boolean v0, p0, Lnts/ⴳ;->ཊ:Z

    const/16 v3, 0x3e8

    .line 104
    iput v3, p0, Lnts/ⴳ;->И:I

    .line 106
    iput v0, p0, Lnts/ⴳ;->យ:I

    .line 107
    iput-wide v1, p0, Lnts/ⴳ;->Ϯ:J

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lnts/ⴳ;->Ἂ:Ljava/lang/Thread;

    .line 110
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lnts/ⴳ;->ⶦ:Ljava/util/Vector;

    .line 111
    iput-boolean v0, p0, Lnts/ⴳ;->ᚇ:Z

    .line 113
    iput-boolean p1, p0, Lnts/ⴳ;->ᄎ:Z

    .line 114
    iput-boolean v0, p0, Lnts/ⴳ;->ᴨ:Z

    .line 115
    iput-boolean p1, p0, Lnts/ⴳ;->ᾤ:Z

    .line 117
    const-string v2, ""

    iput-object v2, p0, Lnts/ⴳ;->ᦝ:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    .line 119
    iput-object v1, p0, Lnts/ⴳ;->ᨍ:Lnts/ሠ;

    .line 121
    iput-object v2, p0, Lnts/ⴳ;->ᜧ:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lnts/ⴳ;->ᬌ:Ljava/lang/String;

    .line 123
    iput p1, p0, Lnts/ⴳ;->η:I

    .line 138
    :try_start_0
    sget-boolean p1, Lnts/ⴳ;->ᡤ:Z

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᰛ(Z)V

    .line 139
    sget p1, Lnts/ⴳ;->ఋ:I

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    .line 140
    iput-boolean v0, p0, Lnts/ⴳ;->ᾤ:Z
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static ౠ(I)Z
    .locals 6

    .line 1
    sget v0, Lnts/ⴳ;->ఋ:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    const/16 v4, 0x16

    const/16 v5, 0x91

    invoke-static {v5, v3, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x11

    const/16 v3, 0x66

    const/16 v4, 0xa5

    invoke-static {v4, v2, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0xc

    const/16 v3, 0x75

    const/16 v4, 0xb6

    invoke-static {v4, v2, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    const/16 v4, 0x72

    const/16 v5, 0xc2

    invoke-static {v5, v3, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static ᙕ(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    :cond_0
    sget-object v0, Lnts/ⴳ;->ଙ:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public Ͼ(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    const v1, 0x20c49b

    if-le p1, v1, :cond_0

    move p1, v1

    .line 3
    :cond_0
    :try_start_0
    iput p1, p0, Lnts/ⴳ;->ᯋ:I

    .line 7
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᇭ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lnts/ዧ;->ౠ()V

    if-lez p1, :cond_1

    .line 22
    iget-object v1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    const/16 v2, 0x14

    if-le p1, v2, :cond_0

    move p1, v2

    :cond_0
    invoke-static {v1, p1}, Lnts/ᾨ;->ㆃ(Ljava/lang/Object;I)V

    .line 24
    :cond_1
    invoke-virtual {p0}, Lnts/ዧ;->ౠ()V

    .line 25
    monitor-exit v0

    return-void

    .line 26
    :cond_2
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x8

    const/16 v2, 0x35

    const/16 v3, 0x189

    invoke-static {v3, v1, v2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ዲ()I
    .locals 1

    .line 1
    iget v0, p0, Lnts/ⴳ;->η:I

    return v0
.end method

.method public ᎊ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0xc

    const/16 v3, 0x40

    const/16 v4, 0x17d

    invoke-static {v4, v2, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12d

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 3
    iget-object v1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ᙕ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 3
    iget-wide v0, p0, Lnts/ⴳ;->ⱋ:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    iget v2, p0, Lnts/ⴳ;->ᯋ:I

    iget v3, p0, Lnts/ⴳ;->И:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lnts/ⴳ;->ᇭ(I)V

    return-void
.end method

.method public ᛃ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v1, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    .line 7
    throw v0

    .line 8
    :catch_0
    iput-object v1, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    :cond_0
    return-void
.end method

.method public ᡲ()V
    .locals 2

    .line 1
    iget v0, p0, Lnts/ⴳ;->យ:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lnts/ⴳ;->Ϯ:J

    return-void
.end method

.method public ᰛ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnts/ⴳ;->η:I

    return-void
.end method

.method public ᰛ(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lnts/ⴳ;->ᴨ:Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᾨ([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x24

    const/16 v1, 0x28

    const/16 v2, 0x1be

    invoke-static {v2, v0, v1}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x130

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lnts/ⴳ;->ᨍ:Lnts/ሠ;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lnts/ሠ;->ㆃ([B)Lnts/ሠ;

    :cond_1
    return-void
.end method

.method public Ὺ()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnts/ⴳ;->ᡲ()V

    .line 2
    iget v0, p0, Lnts/ⴳ;->ᯋ:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lnts/ⴳ;->ⱋ:J

    return-void
.end method

.method public Ⲳ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lnts/ⴳ;->ᚇ:Z

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lnts/ⴳ;->ᄎ:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lnts/ⴳ;->Ἂ:Ljava/lang/Thread;

    if-eq v2, v1, :cond_0

    .line 6
    iget-object v3, p0, Lnts/ⴳ;->ⶦ:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 7
    iput-object v1, p0, Lnts/ⴳ;->Ἂ:Ljava/lang/Thread;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lnts/ⴳ;->Ὺ()V

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public て()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnts/ⴳ;->ᡲ()V

    .line 2
    iget-boolean v0, p0, Lnts/ⴳ;->ཊ:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnts/ⴳ;->ⱋ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lnts/ⴳ;->Ὺ()V

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/ᢞ;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/16 v0, 0x7e

    const/16 v1, 0xc9

    const/16 v2, 0xf

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lnts/ⴳ;->ཊ:Z

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    .line 8
    iput-boolean p1, p0, Lnts/ⴳ;->ཊ:Z

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0xd8

    const/16 v3, 0xc

    .line 9
    invoke-static {v0, v2, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-boolean v0, p0, Lnts/ⴳ;->ᄎ:Z

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    .line 16
    iput-boolean p1, p0, Lnts/ⴳ;->ᄎ:Z

    goto/16 :goto_2

    :cond_3
    const/16 v0, 0x11

    const/16 v4, 0x73

    const/16 v5, 0xe7

    .line 17
    invoke-static {v5, v0, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_4

    .line 19
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 20
    iget-boolean v0, p0, Lnts/ⴳ;->ᚇ:Z

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_4
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    .line 24
    iput-boolean p1, p0, Lnts/ⴳ;->ᚇ:Z

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0x15

    const/16 v4, 0x77

    const/16 v5, 0xf8

    .line 25
    invoke-static {v5, v0, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 27
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lnts/ⴳ;->И:I

    if-ne v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_7
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const/16 v2, 0x3e8

    :goto_1
    iput v2, p0, Lnts/ⴳ;->И:I

    goto/16 :goto_2

    :cond_9
    const/16 v0, 0x10d

    const/16 v4, 0x2a

    .line 30
    invoke-static {v0, v3, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_a

    .line 32
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 33
    iget-boolean v0, p0, Lnts/ⴳ;->ᴨ:Z

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_a
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᰛ(Z)V

    goto/16 :goto_2

    :cond_b
    const/16 v0, 0x119

    const/16 v4, 0x2d

    .line 37
    invoke-static {v0, v3, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_c

    .line 39
    iget-object p1, p0, Lnts/ⴳ;->ᦝ:Ljava/lang/String;

    return-object p1

    .line 40
    :cond_c
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lnts/ⴳ;->ᦝ:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0xe

    const/4 v3, 0x7

    const/16 v4, 0x125

    .line 42
    invoke-static {v4, v0, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 43
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_f

    .line 44
    iget-object p1, p0, Lnts/ⴳ;->ᨍ:Lnts/ሠ;

    if-nez p1, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p1}, Lnts/ሠ;->ㆃ()[B

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_f
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    const-string v0, "on"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 47
    new-instance p1, Lnts/ሠ;

    invoke-direct {p1}, Lnts/ሠ;-><init>()V

    iput-object p1, p0, Lnts/ⴳ;->ᨍ:Lnts/ሠ;

    goto/16 :goto_2

    :cond_10
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lnts/ⴳ;->ᨍ:Lnts/ሠ;

    goto/16 :goto_2

    :cond_11
    const/16 v0, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x133

    .line 49
    invoke-static {v4, v0, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_12

    .line 51
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 52
    iget-boolean v0, p0, Lnts/ⴳ;->ᾤ:Z

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_12
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    .line 56
    iput-boolean p1, p0, Lnts/ⴳ;->ᾤ:Z

    goto/16 :goto_2

    :cond_13
    const/16 v0, 0x149

    const/16 v3, 0x65

    const/16 v4, 0xd

    .line 57
    invoke-static {v0, v4, v3}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_14

    .line 59
    iget-object p1, p0, Lnts/ⴳ;->ᜧ:Ljava/lang/String;

    return-object p1

    .line 60
    :cond_14
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lnts/ⴳ;->ᜧ:Ljava/lang/String;

    goto/16 :goto_2

    :cond_15
    const/16 v0, 0x156

    .line 62
    invoke-static {v0, v2, v4}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_16

    .line 64
    iget-object p1, p0, Lnts/ⴳ;->ᬌ:Ljava/lang/String;

    return-object p1

    .line 65
    :cond_16
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lnts/ⴳ;->ᬌ:Ljava/lang/String;

    goto :goto_2

    :cond_17
    const/16 v0, 0x10

    const/16 v2, 0x45

    const/16 v3, 0x165

    .line 67
    invoke-static {v3, v0, v2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 68
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_18

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lnts/ⴳ;->ཞ:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_18
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    iput-boolean p1, p0, Lnts/ⴳ;->ཞ:Z

    goto :goto_2

    :cond_19
    const/16 v0, 0x8

    const/16 v2, 0x1f

    const/16 v3, 0x175

    .line 73
    invoke-static {v3, v0, v2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 74
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_1a

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnts/ⴳ;->ዲ()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1a
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᰛ(I)V

    :goto_2
    return-object v1

    .line 80
    :cond_1b
    invoke-super {p0, p1}, Lnts/ዧ;->ㆃ(Lnts/ᢞ;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(I[BII)V
    .locals 4

    .line 83
    iget-object v0, p0, Lnts/ⴳ;->Ё:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnts/ⴳ;->ᨍ:Lnts/ሠ;

    if-eqz v0, :cond_2

    :cond_0
    if-gtz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const-string v1, ""

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 p1, 0x13

    const/16 v2, 0x5d

    const/16 v3, 0x1f6

    .line 94
    invoke-static {v3, p1, v2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᾨ([B)V

    .line 95
    invoke-static {p2, p3, p4}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ㆃ([B)V

    .line 96
    invoke-static {v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ㆃ([B)V

    const/16 p1, 0x209

    const/16 p2, 0x37

    .line 97
    invoke-static {p1, v0, p2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᾨ([B)V

    return-void

    :cond_4
    const/16 p1, 0x11

    const/16 v2, 0x35

    const/16 v3, 0x1e2

    .line 100
    invoke-static {v3, p1, v2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᾨ([B)V

    .line 101
    invoke-static {p2, p3, p4}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ㆃ([B)V

    .line 102
    invoke-static {v1}, Lnts/ၽ;->ㆃ(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⴳ;->ㆃ([B)V

    const/16 p1, 0x1f3

    const/16 p2, 0x43

    .line 103
    invoke-static {p1, v0, p2}, Lnts/ݶ;->Ͼ(III)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lnts/ⴳ;->ᾨ([B)V

    return-void
.end method

.method public ㆃ(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 81
    iget-boolean p1, p0, Lnts/ዧ;->Ͼ:Z

    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lnts/ⴳ;->ᎊ()V

    :cond_0
    return-void
.end method

.method public ㆃ([B)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 107
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 108
    aget-byte v2, p1, v1

    int-to-char v3, v2

    const/16 v4, 0xa

    const-string v5, "\\"

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_1

    .line 111
    :cond_0
    invoke-static {v5}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ⴳ;->ᾨ([B)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x5c

    if-eq v3, v2, :cond_2

    const/16 v2, 0x24

    if-eq v3, v2, :cond_2

    const/16 v2, 0x22

    if-eq v3, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v3, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v3, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v3, v2, :cond_2

    const/16 v2, 0x5d

    if-ne v3, v2, :cond_3

    .line 115
    :cond_2
    invoke-static {v5}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ⴳ;->ᾨ([B)V

    .line 117
    :cond_3
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-byte v2, v3, v0

    .line 118
    invoke-virtual {p0, v3}, Lnts/ⴳ;->ᾨ([B)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
