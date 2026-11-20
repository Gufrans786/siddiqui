.class public Lnts/ኜ;
.super Lnts/ⴳ;
.source "SourceFile"


# static fields
.field public static final ቂ:Ljava/lang/String;

.field public static final ᖝ:Ljava/lang/String;

.field public static final ⶖ:[I

.field public static final バ:[Ljava/lang/String;


# instance fields
.field public ζ:Ljava/net/Socket;

.field public ϴ:Z

.field public ߛ:Ljava/util/Hashtable;

.field public క:Lnts/Ꭲ;

.field public ᅌ:Z

.field public ᇌ:I

.field public ዖ:Lnts/ⴳ;

.field public ጊ:Ljava/lang/String;

.field public Ꮆ:I

.field public Ꮽ:Ljava/lang/String;

.field public ᐘ:Ljava/lang/String;

.field public ᒃ:Lnts/Ꭲ;

.field public ᒸ:[Ljava/lang/String;

.field public ᛩ:Ljava/lang/String;

.field public ᜂ:Ljavax/net/ssl/SSLSocket;

.field public ᬋ:Ljava/lang/String;

.field public ₑ:Z

.field public Ⱐ:Lnts/Ꭲ;

.field public パ:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x67

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ኜ;->ቂ:Ljava/lang/String;

    const/4 v0, 0x3

    const/16 v3, 0x25

    .line 2
    invoke-static {v2, v0, v3}, Lnts/ӗ;->て(III)Ljava/lang/String;

    const/16 v4, 0x4c

    const/16 v5, 0xa

    .line 3
    invoke-static {v5, v0, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnts/ኜ;->ᖝ:Ljava/lang/String;

    const/4 v4, 0x6

    .line 14
    new-array v6, v4, [Ljava/lang/String;

    const/16 v7, 0x11

    const/16 v8, 0xd

    const/4 v9, 0x5

    invoke-static {v8, v9, v7}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/16 v1, 0x12

    const/16 v7, 0x38

    invoke-static {v1, v2, v7}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/16 v1, 0x19

    const/16 v7, 0x5d

    invoke-static {v1, v2, v7}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    const/16 v1, 0xc

    const/16 v2, 0x20

    invoke-static {v2, v9, v1}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3, v5, v2}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v6, v1

    const-string v0, ""

    aput-object v0, v6, v9

    sput-object v6, Lnts/ኜ;->バ:[Ljava/lang/String;

    .line 15
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ኜ;->ⶖ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xc0
        0x300
        0xc00
        0x30
        0xc
        0x3
    .end array-data
.end method

.method public constructor <init>(Lnts/ⴳ;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lnts/ⴳ;-><init>(Ljava/lang/Object;)V

    .line 2
    sget-object p2, Lnts/ኜ;->ᖝ:Ljava/lang/String;

    iput-object p2, p0, Lnts/ኜ;->ᐘ:Ljava/lang/String;

    .line 3
    const-string p2, ""

    iput-object p2, p0, Lnts/ኜ;->ᛩ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnts/ኜ;->ϴ:Z

    .line 8
    sget-object v1, Lnts/ኜ;->ቂ:Ljava/lang/String;

    iput-object v1, p0, Lnts/ኜ;->ጊ:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lnts/ኜ;->ᬋ:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lnts/ኜ;->パ:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v1, 0xfc0

    .line 14
    iput v1, p0, Lnts/ኜ;->ᇌ:I

    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v2, v0

    iput-object v2, p0, Lnts/ኜ;->ᒸ:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lnts/ኜ;->Ⱐ:Lnts/Ꭲ;

    .line 18
    iput-object v2, p0, Lnts/ኜ;->ᒃ:Lnts/Ꭲ;

    .line 20
    iput-boolean v0, p0, Lnts/ኜ;->ᅌ:Z

    .line 22
    iput-object p2, p0, Lnts/ኜ;->Ꮽ:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lnts/ኜ;->క:Lnts/Ꭲ;

    .line 33
    iput-object p1, p0, Lnts/ኜ;->ዖ:Lnts/ⴳ;

    .line 35
    sget-wide p1, Lnts/ⴳ;->ᇢ:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lnts/ኜ;->ₑ:Z

    return-void
.end method

.method public static synthetic ㆃ(Lnts/ኜ;Lnts/ᛎ;[Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnts/ኜ;->ㆃ(Lnts/ᛎ;[Z)V

    return-void
.end method


# virtual methods
.method public fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public fireSSLStatus(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public Ͼ(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lnts/ኜ;->ᒸ:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    aget-object v1, v1, v4

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lnts/ኜ;->ₑ:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    .line 4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lnts/ኜ;->ᒸ:[Ljava/lang/String;

    .line 6
    :goto_0
    iget v2, v0, Lnts/ኜ;->Ꮆ:I

    if-eqz v2, :cond_e

    .line 7
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v5, v4

    .line 8
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_d

    .line 9
    aget-object v6, v1, v5

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    const/16 v9, 0x57

    const/4 v10, 0x6

    .line 52
    invoke-static {v8, v10, v9}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    const/16 v11, 0x35

    const/16 v12, 0x9

    .line 54
    invoke-static {v11, v10, v12, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v8

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3b

    const/16 v13, 0x1c

    const/16 v14, 0xc

    .line 56
    invoke-static {v11, v14, v13}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/16 v13, 0x60

    if-eqz v11, :cond_3

    const/16 v9, 0x47

    const/16 v10, 0x20

    .line 58
    invoke-static {v9, v14, v10, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    goto/16 :goto_3

    :cond_3
    const/16 v11, 0x19

    const/16 v15, 0x53

    const/16 v9, 0x8

    .line 60
    invoke-static {v15, v9, v11}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/16 v4, 0x80

    if-eqz v11, :cond_4

    const/16 v10, 0x5b

    const/16 v11, 0x7b

    .line 62
    invoke-static {v10, v9, v11, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    move v13, v4

    goto/16 :goto_3

    :cond_4
    const/16 v9, 0x63

    const/4 v11, 0x7

    const/16 v14, 0x6a

    .line 64
    invoke-static {v9, v11, v14}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v4, 0x64

    .line 65
    invoke-static {v14, v11, v4, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    :goto_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    const/16 v9, 0x71

    const/16 v14, 0x36

    const/4 v15, 0x3

    .line 67
    invoke-static {v9, v15, v14}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v4, 0x74

    .line 68
    invoke-static {v4, v15, v11, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    goto :goto_2

    :cond_6
    const/16 v9, 0x77

    .line 70
    invoke-static {v9, v12, v13}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x6e

    .line 72
    invoke-static {v4, v12, v9, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    const/16 v13, 0x28

    goto :goto_3

    :cond_7
    const/16 v4, 0x89

    .line 74
    invoke-static {v4, v11, v3}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x90

    const/16 v9, 0x58

    .line 76
    invoke-static {v4, v11, v9, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    const/16 v13, 0x38

    goto :goto_3

    :cond_8
    const/16 v4, 0x97

    const/16 v9, 0x53

    const/16 v11, 0xc

    .line 78
    invoke-static {v4, v11, v9}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0xa3

    const/16 v9, 0x1b

    .line 80
    invoke-static {v4, v11, v9, v8}, Lnts/ㆃ;->ᾨ(IIII)I

    move-result v9

    const/16 v13, 0xa8

    goto :goto_3

    :cond_9
    const/4 v9, -0x1

    goto :goto_2

    .line 85
    :goto_3
    new-instance v4, Ljava/util/StringTokenizer;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-direct {v4, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 87
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    .line 88
    :cond_b
    iget v4, v0, Lnts/ኜ;->Ꮆ:I

    if-lt v13, v4, :cond_c

    .line 89
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 93
    :cond_d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 94
    :cond_e
    :goto_5
    iget-boolean v2, v0, Lnts/ኜ;->ϴ:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 95
    :goto_6
    array-length v5, v1

    if-ge v2, v5, :cond_10

    .line 96
    aget-object v5, v1, v2

    const/16 v6, 0xaf

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-ge v4, v2, :cond_f

    .line 97
    aget-object v5, v1, v4

    .line 98
    aget-object v6, v1, v2

    aput-object v6, v1, v4

    .line 99
    aput-object v5, v1, v2

    add-int/lit8 v4, v4, 0x1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    .line 105
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v8

    .line 106
    :goto_7
    array-length v5, v1

    if-ge v4, v5, :cond_12

    .line 107
    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_11

    const-string v5, "; "

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 113
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xb4

    const/16 v6, 0x61

    invoke-static {v5, v3, v6}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 114
    iget-object v2, v0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 116
    iget-object v1, v0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    return-void
.end method

.method public ౠ(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/16 v2, 0x1c

    const/16 v3, 0x34

    const/16 v4, 0x239

    .line 2
    invoke-static {v4, v2, v3}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lnts/ኜ;->ዖ:Lnts/ⴳ;

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lnts/ኜ$ㆃ;

    invoke-direct {v2, p0, v0}, Lnts/ኜ$ㆃ;-><init>(Lnts/ኜ;[Z)V

    .line 19
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    iget-object v2, p0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 23
    iget-object v2, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 24
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lnts/ኜ;->ㆃ(Lnts/ᛎ;[Z)V

    .line 25
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    .line 27
    iget-object v3, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v3

    .line 28
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x26

    const/4 v6, 0x6

    const/16 v7, 0x27b

    invoke-static {v7, v5, v6}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v4, Lnts/ᛎ;

    const/16 v5, 0x32cb

    invoke-direct {v4, v5, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    .line 30
    invoke-virtual {p0, v4, v0}, Lnts/ኜ;->ㆃ(Lnts/ᛎ;[Z)V

    .line 31
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    :goto_0
    invoke-virtual {p0}, Lnts/ኜ;->ᵑ()V

    if-nez p1, :cond_1

    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter p1

    .line 42
    :catch_1
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lnts/ኜ;->ᵑ()V

    .line 43
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_2

    .line 52
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 p1, 0x1d

    const/16 v0, 0x31

    const/16 v1, 0x2a1

    .line 55
    invoke-static {v1, p1, v0}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_2
    :try_start_5
    iget-object v2, p0, Lnts/ኜ;->ዖ:Lnts/ⴳ;

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v2}, Lnts/ⴳ;->ᙕ()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 59
    :cond_3
    :try_start_6
    iget-object v2, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 63
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 64
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public ᚹ()Ljava/util/Hashtable;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    return-object v0
.end method

.method public ᯚ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public ᵑ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    .line 5
    throw v0
.end method

.method public ᾨ(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->ᰛ([B)[B

    move-result-object p1

    invoke-static {p1}, Lnts/ၽ;->ㆃ([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public ᾨ(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ⱪ()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public ⴗ()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public せ()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public て(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lnts/ၽ;->ౠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnts/ኜ;->ᒸ:[Ljava/lang/String;

    return-void
.end method

.method public ㆃ(Ljava/net/Socket;Ljava/lang/String;ZLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public ㆃ(Lnts/ᛎ;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final ㆃ(Lnts/ᛎ;[Z)V
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    .line 2
    aget-boolean v2, p2, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 3
    aput-boolean v2, p2, v1

    const/16 p2, 0x12

    if-nez p1, :cond_5

    .line 12
    iget-object v1, p0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 13
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x36

    const/16 v5, 0x75

    const/16 v6, 0xd6

    invoke-static {v6, v4, v5}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x16

    const/16 v5, 0x76

    const/16 v6, 0x10c

    invoke-static {v6, v4, v5}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lnts/ዧ;->せ:Z

    invoke-static {v2, v3}, Lnts/ᵗ;->ㆃ(Ljava/lang/String;Z)I

    move-result v2

    .line 17
    sget-boolean v3, Lnts/ዧ;->ᚹ:Z

    invoke-static {v2, v3}, Lnts/ᵗ;->ㆃ(IZ)Lnts/ᵗ;

    move-result-object v2

    const/16 v3, 0x122

    const/16 v4, 0x25

    const/16 v5, 0x58

    .line 19
    invoke-static {v3, v4, v5}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v6, 0x3f

    const/16 v7, 0x147

    invoke-static {v7, v4, v6}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 22
    iget-object v4, v2, Lnts/ᵗ;->ᙕ:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x150

    const/16 v6, 0x65

    invoke-static {v4, p2, v6}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 24
    iget v3, v2, Lnts/ᵗ;->て:I

    mul-int/lit8 v3, v3, 0x8

    .line 25
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {v2}, Lnts/ᵗ;->Ὺ()Z

    move-result v3

    if-nez v3, :cond_4

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v3, 0x7

    const/16 v4, 0x67

    const/16 v6, 0x162

    invoke-static {v6, v3, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Lnts/ᵗ;->ᎊ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v3, 0x10

    const/16 v4, 0x40

    const/16 v6, 0x169

    invoke-static {v6, v3, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Lnts/ᵗ;->ౠ()I

    move-result v3

    int-to-long v3, v3

    const/4 v6, 0x4

    invoke-static {v3, v4, v6}, Lnts/ၽ;->ㆃ(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v3, 0x179

    const/16 v4, 0xf

    invoke-static {v3, v4, v5}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Lnts/ᵗ;->て()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v3, 0x188

    const/16 v4, 0x13

    const/16 v5, 0x18

    invoke-static {v3, v5, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 31
    iget v3, v2, Lnts/ᵗ;->て:I

    .line 32
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object v3, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v6, 0x1a0

    const/16 v7, 0x17

    const/16 v8, 0x14

    invoke-static {v6, v8, v7}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v3, 0x1b4

    const/16 v6, 0x68

    invoke-static {v3, v4, v6}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v4, v2, Lnts/ᵗ;->ᙕ:Ljava/lang/String;

    .line 38
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v3, 0x1c7

    const/16 v4, 0x2b

    invoke-static {v3, v5, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v4, v2, Lnts/ᵗ;->ㆃ:Ljava/lang/String;

    .line 41
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v3, 0x1df

    const/16 v4, 0x4d

    invoke-static {v3, v8, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget v6, v2, Lnts/ᵗ;->て:I

    mul-int/lit8 v6, v6, 0x8

    .line 44
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v3, 0x1f3

    const/16 v4, 0x24

    invoke-static {v3, v5, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lnts/ᵗ;->て()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lnts/ኜ;->ߛ:Ljava/util/Hashtable;

    const/16 v3, 0x1c

    const/16 v4, 0x3c

    const/16 v5, 0x20b

    invoke-static {v5, v3, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget v0, v2, Lnts/ᵗ;->て:I

    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, p2}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 55
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x227

    const/16 v2, 0x7d

    invoke-static {v1, p2, v2}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnts/ኜ;->fireSSLStatus(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 57
    iget-object p2, p0, Lnts/ኜ;->ዖ:Lnts/ⴳ;

    invoke-virtual {p2, p1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 59
    :catch_0
    :goto_3
    iget-object p2, p0, Lnts/ኜ;->ζ:Ljava/net/Socket;

    iget-object v0, p0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0, p1, p2, v0}, Lnts/ኜ;->ㆃ(Lnts/ᛎ;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public ㆃ([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ㆃ(Ljava/net/Socket;)Z
    .locals 0

    .line 61
    instance-of p1, p1, Ljavax/net/ssl/SSLSocket;

    return p1
.end method
