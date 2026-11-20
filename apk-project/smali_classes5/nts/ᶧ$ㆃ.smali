.class public Lnts/ᶧ$ㆃ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᶧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public Ͼ:Z

.field public ౠ:Z

.field public volatile ᇭ:Ljava/io/InputStream;

.field public ዲ:[B

.field public ᎊ:Z

.field public ᙕ:Z

.field public ᚹ:Z

.field public ᛃ:I

.field public ᡲ:I

.field public ᰛ:Z

.field public ᵑ:Z

.field public volatile ᾨ:Ljava/net/Socket;

.field public Ὺ:I

.field public final synthetic ⱪ:Lnts/ᶧ;

.field public Ⲳ:I

.field public ⴗ:Z

.field public せ:[B

.field public て:[B

.field public ㆃ:I


# direct methods
.method public constructor <init>(Lnts/ᶧ;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->ᰛ:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    .line 9
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ౠ:Z

    .line 10
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lnts/ᶧ$ㆃ;->ᛃ:I

    .line 20
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->ᵑ:Z

    .line 22
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->ᚹ:Z

    .line 24
    iput-object v0, p0, Lnts/ᶧ$ㆃ;->せ:[B

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public static synthetic ᾨ(Lnts/ᶧ$ㆃ;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnts/ᶧ$ㆃ;->ౠ:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic ㆃ(Lnts/ᶧ$ㆃ;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v0}, Lnts/ᶧ;->ㆃ(Lnts/ᶧ;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iput-object v0, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;

    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z

    return-void
.end method

.method public static synthetic ㆃ(Lnts/ᶧ$ㆃ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 2
    iget-object v1, v1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x6e

    const/16 v3, 0x2e9

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget v0, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->ౠ()V

    .line 7
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->ᇭ()V

    .line 8
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->ᙕ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Ͼ()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->せ:[B

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ᶧ$ㆃ;->せ:[B

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;

    iget-object v2, p0, Lnts/ᶧ$ㆃ;->せ:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v4

    .line 5
    :cond_1
    iget-object v2, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v2, v2, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v3, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 7
    iget-object v3, v3, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 8
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->せ:[B

    invoke-virtual {v3, v5, v4, v1}, Lnts/ᇾ;->ㆃ([BII)V

    .line 9
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method public final ౠ()V
    .locals 14

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-nez v0, :cond_1a

    .line 11
    :try_start_1
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 12
    iget-object v5, v5, Lnts/ᶧ;->Ϯ:Ljava/lang/String;

    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 14
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 15
    iget-object v5, v5, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 16
    invoke-virtual {v5}, Lnts/ڊ;->ᒸ()Z

    move-result v5

    const/16 v6, 0x66

    if-eqz v5, :cond_2

    new-instance v5, Lnts/ᛎ;

    const/16 v7, 0x24

    const/16 v8, 0x6e

    const/16 v9, 0x1c1

    invoke-static {v9, v7, v8}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v5

    .line 17
    :cond_2
    new-instance v5, Lnts/ᛎ;

    const/16 v7, 0x22

    const/16 v8, 0x63

    const/16 v9, 0x1e5

    invoke-static {v9, v7, v8}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v5

    .line 21
    :cond_3
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 22
    :try_start_2
    iget v6, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    if-eq v6, v2, :cond_4

    .line 23
    monitor-exit v5

    return-void

    .line 25
    :cond_4
    iput-boolean v3, p0, Lnts/ᶧ$ㆃ;->ౠ:Z

    .line 26
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :try_start_3
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 29
    iget-object v5, v5, Lnts/ᶧ;->Ϯ:Ljava/lang/String;

    .line 30
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 31
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 32
    iget-boolean v6, v6, Lnts/ᶧ;->ᒃ:Z

    if-eqz v6, :cond_5

    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/net/Inet4Address;

    if-ne v6, v7, :cond_5

    .line 34
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 35
    iget-object v5, v5, Lnts/ᶧ;->Ϯ:Ljava/lang/String;

    .line 36
    invoke-static {v5, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v5

    .line 39
    :cond_5
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 40
    iget-object v6, v6, Lnts/ᶧ;->ⶦ:Ljava/lang/String;

    .line 41
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 42
    iget v6, v6, Lnts/ᶧ;->ᚇ:I

    if-nez v6, :cond_8

    .line 43
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 44
    iget-boolean v6, v6, Lnts/ᶧ;->パ:Z

    if-eqz v6, :cond_6

    goto :goto_1

    .line 45
    :cond_6
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v6}, Lnts/ᶧ;->ᾨ(Lnts/ᶧ;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 46
    new-instance v6, Ljava/net/Socket;

    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v6, v7}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 47
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 48
    iget v8, v8, Lnts/ᶧ;->Ἂ:I

    .line 49
    invoke-direct {v7, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_8

    .line 51
    :cond_7
    new-instance v6, Ljava/net/Socket;

    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 52
    iget v7, v7, Lnts/ᶧ;->Ἂ:I

    .line 53
    invoke-direct {v6, v5, v7}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    goto/16 :goto_8

    .line 54
    :cond_8
    :goto_1
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 55
    iget-object v6, v6, Lnts/ᶧ;->ⶦ:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    const/16 v6, 0x9

    const/16 v7, 0x47

    const/16 v8, 0x207

    .line 57
    invoke-static {v8, v6, v7}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 62
    :cond_a
    invoke-static {v6}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    move v8, v3

    .line 64
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_c

    .line 65
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v9, v10, :cond_b

    .line 66
    aget-object v6, v7, v8

    .line 67
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_c
    move-object v7, v6

    move-object v6, v4

    :goto_3
    if-eqz v6, :cond_19

    .line 76
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    .line 78
    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 79
    iget v9, v9, Lnts/ᶧ;->ᚇ:I

    if-eqz v9, :cond_11

    if-eqz v8, :cond_d

    .line 80
    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 81
    iget v9, v9, Lnts/ᶧ;->ᚇ:I

    .line 82
    invoke-virtual {v8, v7, v9}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 84
    :cond_d
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 85
    iget-boolean v7, v7, Lnts/ᶧ;->Ⱐ:Z

    if-eqz v7, :cond_f

    .line 86
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v7}, Lnts/ᶧ;->ᾨ(Lnts/ᶧ;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Ljava/net/Socket;

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    goto :goto_4

    .line 87
    :cond_e
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    iput-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 88
    :goto_4
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v7, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 89
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 90
    iget v9, v9, Lnts/ᶧ;->ᚇ:I

    .line 91
    invoke-direct {v8, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 92
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 93
    iget v8, v8, Lnts/ᶧ;->Ἂ:I

    .line 94
    invoke-direct {v7, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_8

    .line 96
    :cond_f
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v7}, Lnts/ᶧ;->ᾨ(Lnts/ᶧ;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 97
    new-instance v7, Ljava/net/Socket;

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 98
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 99
    iget v9, v9, Lnts/ᶧ;->ᚇ:I

    .line 100
    invoke-direct {v8, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 101
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 102
    iget v8, v8, Lnts/ᶧ;->Ἂ:I

    .line 103
    invoke-direct {v7, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_8

    .line 105
    :cond_10
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 106
    iget v8, v8, Lnts/ᶧ;->Ἂ:I

    .line 107
    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 108
    iget v9, v9, Lnts/ᶧ;->ᚇ:I

    .line 109
    invoke-direct {v7, v5, v8, v6, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    iput-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    goto/16 :goto_8

    .line 112
    :cond_11
    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 113
    iget-boolean v9, v9, Lnts/ᶧ;->パ:Z

    if-eqz v9, :cond_15

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x12c

    rem-long/2addr v9, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    long-to-int v9, v9

    add-int/lit16 v9, v9, 0x200

    move v10, v3

    :goto_5
    const/16 v11, 0x3e8

    if-ge v9, v11, :cond_14

    if-nez v10, :cond_14

    if-eqz v8, :cond_12

    .line 117
    :try_start_4
    invoke-virtual {v8, v7, v9}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 119
    :cond_12
    iget-object v11, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v11}, Lnts/ᶧ;->ᾨ(Lnts/ᶧ;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 120
    new-instance v11, Ljava/net/Socket;

    sget-object v12, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v11, v12}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v11, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 121
    iget-object v11, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v12, Ljava/net/InetSocketAddress;

    invoke-direct {v12, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v11, v12}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 122
    iget-object v11, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v12, Ljava/net/InetSocketAddress;

    iget-object v13, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 123
    iget v13, v13, Lnts/ᶧ;->Ἂ:I

    .line 124
    invoke-direct {v12, v5, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v11, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_6

    .line 126
    :cond_13
    new-instance v11, Ljava/net/Socket;

    iget-object v12, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 127
    iget v12, v12, Lnts/ᶧ;->Ἂ:I

    .line 128
    invoke-direct {v11, v5, v12, v6, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    iput-object v11, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_6
    move v10, v1

    goto :goto_7

    .line 134
    :catch_0
    :try_start_5
    iget-object v11, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 135
    iget-object v11, v11, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 136
    invoke-virtual {v11}, Lnts/ⴳ;->て()V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :catch_1
    move-exception v5

    .line 137
    new-instance v6, Lnts/ᛎ;

    const/16 v7, 0x59

    const/16 v8, 0x1e

    const/16 v9, 0x231

    invoke-static {v9, v7, v8}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x274d

    invoke-direct {v6, v5, v8, v7}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    throw v6

    :cond_14
    if-nez v10, :cond_17

    .line 144
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 145
    invoke-virtual {v5}, Lnts/ᶧ;->ᙕ()V

    .line 146
    new-instance v5, Lnts/ᛎ;

    const/16 v6, 0x28

    const/16 v7, 0x72

    const/16 v8, 0x28a

    invoke-static {v8, v6, v7}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1389

    invoke-direct {v5, v7, v6}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    .line 147
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v6, v5}, Lnts/ᶧ;->ㆃ(Lnts/ᶧ;Lnts/ᛎ;)V

    goto :goto_9

    .line 151
    :cond_15
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-static {v7}, Lnts/ᶧ;->ᾨ(Lnts/ᶧ;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 152
    new-instance v7, Ljava/net/Socket;

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 153
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v6, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 154
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 155
    iget v8, v8, Lnts/ᶧ;->Ἂ:I

    .line 156
    invoke-direct {v7, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_8

    .line 158
    :cond_16
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 159
    iget v8, v8, Lnts/ᶧ;->Ἂ:I

    .line 160
    invoke-direct {v7, v5, v8, v6, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    iput-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 172
    :cond_17
    :goto_8
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 173
    :try_start_6
    iget v6, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    if-eq v6, v2, :cond_18

    .line 174
    monitor-exit v5

    :goto_9
    return-void

    .line 176
    :cond_18
    monitor-exit v5

    goto :goto_a

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6

    .line 177
    :cond_19
    new-instance v5, Lnts/ᛎ;

    const/16 v6, 0x21

    const/16 v7, 0x2a

    const/16 v8, 0x210

    invoke-static {v8, v6, v7}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x45e

    invoke-direct {v5, v7, v6}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_1
    move-exception v6

    .line 178
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6

    :catch_2
    move-exception v5

    goto :goto_c

    :cond_1a
    :goto_a
    if-eqz v0, :cond_1b

    .line 283
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v5, v3, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 285
    :cond_1b
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v5, v6, v3}, Lnts/ᶧ;->ㆃ(Ljava/net/Socket;Z)V

    .line 288
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 289
    :try_start_a
    iget v6, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    if-ne v6, v2, :cond_1c

    .line 291
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;

    .line 292
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-static {v6, v7}, Lnts/ᶧ;->ㆃ(Lnts/ᶧ;Ljava/net/Socket;)V

    .line 295
    :cond_1c
    iget v6, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    if-ne v6, v2, :cond_1d

    .line 296
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 297
    iput v2, v6, Lnts/ᶧ;->ཞ:I

    .line 300
    iget-object v7, v6, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 301
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 302
    iget-object v7, v6, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v7}, Lnts/ⴳ;->て()V

    .line 303
    invoke-virtual {v6, v4}, Lnts/ᶧ;->ᾨ(Lnts/ᛎ;)V

    .line 304
    invoke-virtual {v6}, Lnts/ᶧ;->ᛃ()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_b

    :cond_1d
    if-nez v0, :cond_1e

    .line 305
    :try_start_b
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 306
    iget-object v6, v6, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 307
    iget-object v7, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v6, v3, v7}, Lnts/ڊ;->ㆃ(ZLjava/net/Socket;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 313
    :catch_3
    :cond_1e
    :goto_b
    :try_start_c
    iput-boolean v1, p0, Lnts/ᶧ$ㆃ;->ౠ:Z

    .line 314
    monitor-exit v5

    goto :goto_d

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :goto_c
    if-nez v0, :cond_1f

    .line 317
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    if-eqz v0, :cond_1f

    .line 319
    :try_start_e
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 320
    iget-object v0, v0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 321
    iget-object v6, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v0, v3, v6}, Lnts/ڊ;->ㆃ(ZLjava/net/Socket;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 326
    :catch_4
    :cond_1f
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v3, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    :try_start_f
    iget v0, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    if-ne v0, v2, :cond_20

    .line 328
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    new-instance v2, Lnts/ᛎ;

    invoke-direct {v2, v5}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lnts/ᶧ;->ㆃ(Lnts/ᶧ;Lnts/ᛎ;)V

    const/4 v0, 0x4

    .line 329
    iput v0, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    .line 332
    :cond_20
    iput-boolean v1, p0, Lnts/ᶧ$ㆃ;->ౠ:Z

    .line 333
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 336
    :goto_d
    iput-object v4, p0, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    return-void

    :catchall_3
    move-exception v0

    .line 337
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 338
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v1
.end method

.method public final ᇭ()V
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 1
    :cond_0
    :goto_0
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v4, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v4

    .line 2
    :try_start_0
    iget v5, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 3
    monitor-exit v4

    return-void

    .line 5
    :cond_1
    iget-boolean v5, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lnts/ᶧ$ㆃ;->ᰛ:Z

    if-eqz v5, :cond_3

    .line 6
    :cond_2
    iget v5, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    iput v5, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    .line 7
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ᎊ:Z

    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    .line 8
    iput-boolean v7, p0, Lnts/ᶧ$ㆃ;->ᰛ:Z

    .line 9
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 11
    iget-boolean v4, p0, Lnts/ᶧ$ㆃ;->ᎊ:Z

    if-eqz v4, :cond_19

    iget v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    iget v5, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    if-eq v4, v5, :cond_19

    .line 12
    iget v5, p0, Lnts/ᶧ$ㆃ;->ᛃ:I

    const/16 v8, 0xa

    const/16 v9, 0xd

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    if-ne v5, v9, :cond_4

    .line 13
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->て:[B

    aget-byte v5, v5, v4

    if-ne v5, v8, :cond_4

    .line 14
    invoke-virtual {p0, v4, v0, v7}, Lnts/ᶧ$ㆃ;->ㆃ(III)I

    move-result v4

    iput v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    .line 15
    iput v4, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    .line 17
    :cond_4
    iput v10, p0, Lnts/ᶧ$ㆃ;->ᛃ:I

    goto :goto_0

    .line 21
    :cond_5
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 22
    iget-boolean v4, v4, Lnts/ᶧ;->ᾤ:Z

    if-eqz v4, :cond_a

    move v4, v7

    .line 23
    :goto_1
    iget v5, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    invoke-virtual {p0, v5, v4, v0}, Lnts/ᶧ$ㆃ;->ㆃ(III)I

    move-result v4

    if-eq v4, v10, :cond_9

    .line 24
    iput v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    .line 25
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->て:[B

    aget-byte v5, v5, v4

    if-eq v5, v9, :cond_7

    if-ne v5, v8, :cond_6

    goto :goto_2

    :cond_6
    move v4, v0

    goto :goto_1

    .line 28
    :cond_7
    :goto_2
    invoke-virtual {p0, v4, v0}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v4

    iput v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    .line 29
    iget v8, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    neg-int v8, v8

    invoke-virtual {p0, v4, v8}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v4

    sub-int/2addr v4, v0

    .line 30
    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    if-eqz v8, :cond_8

    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 31
    iget-object v9, v9, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 32
    iput v4, v9, Lnts/ڊ;->ㆀ:I

    goto :goto_3

    .line 33
    :cond_8
    new-array v8, v4, [B

    .line 34
    :goto_3
    invoke-virtual {p0, v8, v4}, Lnts/ᶧ$ㆃ;->ㆃ([BI)V

    .line 35
    iput v5, p0, Lnts/ᶧ$ㆃ;->ᛃ:I

    goto :goto_4

    :cond_9
    move-object v8, v1

    :goto_4
    if-eqz v8, :cond_a

    .line 36
    invoke-virtual {p0, v8, v0}, Lnts/ᶧ$ㆃ;->ㆃ([BZ)V

    goto/16 :goto_0

    .line 41
    :cond_a
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 42
    iget-object v5, v4, Lnts/ᶧ;->ᦝ:[B

    .line 43
    array-length v8, v5

    if-eqz v8, :cond_12

    .line 44
    new-array v8, v0, [Z

    aput-boolean v7, v8, v7

    .line 45
    array-length v9, v5

    .line 46
    iget v11, v4, Lnts/ᶧ;->Ё:I

    .line 47
    iget v4, v4, Lnts/ᶧ;->ᨍ:I

    if-lez v4, :cond_b

    .line 48
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_b
    move v4, v7

    .line 51
    :goto_5
    iget v12, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    invoke-virtual {p0, v12, v4, v9}, Lnts/ᶧ$ㆃ;->ㆃ(III)I

    move-result v4

    if-eq v4, v10, :cond_11

    .line 52
    iput v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    if-lez v11, :cond_d

    .line 54
    iget v12, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    neg-int v12, v12

    invoke-virtual {p0, v4, v12}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v4

    if-ne v4, v11, :cond_d

    .line 55
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    if-eqz v4, :cond_c

    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 56
    iget-object v5, v5, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 57
    iput v11, v5, Lnts/ڊ;->ㆀ:I

    goto :goto_6

    .line 58
    :cond_c
    new-array v4, v11, [B

    .line 59
    :goto_6
    invoke-virtual {p0, v4, v11}, Lnts/ᶧ$ㆃ;->ㆃ([BI)V

    goto :goto_9

    .line 63
    :cond_d
    iget v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    move v12, v7

    :goto_7
    if-ge v12, v9, :cond_e

    .line 66
    iget-object v13, p0, Lnts/ᶧ$ㆃ;->て:[B

    aget-byte v13, v13, v4

    aget-byte v14, v5, v12

    if-ne v13, v14, :cond_e

    .line 67
    invoke-virtual {p0, v4, v0}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_e
    if-ne v12, v9, :cond_10

    .line 72
    iget v5, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    neg-int v5, v5

    invoke-virtual {p0, v4, v5}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v5

    sub-int/2addr v5, v9

    .line 73
    iget-object v9, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    if-eqz v9, :cond_f

    iget-object v10, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 74
    iget-object v10, v10, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 75
    iput v5, v10, Lnts/ڊ;->ㆀ:I

    goto :goto_8

    .line 76
    :cond_f
    new-array v9, v5, [B

    .line 77
    :goto_8
    invoke-virtual {p0, v9, v5}, Lnts/ᶧ$ㆃ;->ㆃ([BI)V

    .line 78
    iput v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    .line 79
    aput-boolean v0, v8, v7

    move-object v4, v9

    goto :goto_9

    :cond_10
    move v4, v0

    goto :goto_5

    :cond_11
    move-object v4, v1

    :goto_9
    if-eqz v4, :cond_12

    .line 80
    aget-boolean v5, v8, v7

    invoke-virtual {p0, v4, v5}, Lnts/ᶧ$ㆃ;->ㆃ([BZ)V

    goto/16 :goto_0

    .line 81
    :cond_12
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 82
    iget v5, v4, Lnts/ᶧ;->Ё:I

    .line 83
    iget v4, v4, Lnts/ᶧ;->ᨍ:I

    if-eqz v4, :cond_13

    .line 84
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 87
    :cond_13
    iget v4, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iget v8, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    neg-int v8, v8

    invoke-virtual {p0, v4, v8}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v4

    if-lt v4, v5, :cond_15

    .line 88
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    if-eqz v4, :cond_14

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 89
    iget-object v8, v8, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 90
    iput v5, v8, Lnts/ڊ;->ㆀ:I

    goto :goto_a

    .line 91
    :cond_14
    new-array v4, v5, [B

    .line 92
    :goto_a
    invoke-virtual {p0, v4, v5}, Lnts/ᶧ$ㆃ;->ㆃ([BI)V

    .line 93
    iget v8, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    invoke-virtual {p0, v8, v5}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v5

    iput v5, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    goto :goto_c

    .line 97
    :cond_15
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 98
    iget-object v4, v4, Lnts/ᶧ;->ᦝ:[B

    .line 99
    array-length v4, v4

    if-nez v4, :cond_17

    .line 100
    iget v4, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iget v5, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    neg-int v5, v5

    invoke-virtual {p0, v4, v5}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v4

    .line 101
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    if-eqz v5, :cond_16

    iget-object v8, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 102
    iget-object v8, v8, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 103
    iput v4, v8, Lnts/ڊ;->ㆀ:I

    goto :goto_b

    .line 104
    :cond_16
    new-array v5, v4, [B

    .line 105
    :goto_b
    invoke-virtual {p0, v5, v4}, Lnts/ᶧ$ㆃ;->ㆃ([BI)V

    .line 106
    iget v4, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iput v4, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    move-object v4, v5

    goto :goto_c

    :cond_17
    move-object v4, v1

    :goto_c
    if-eqz v4, :cond_18

    .line 107
    invoke-virtual {p0, v4, v7}, Lnts/ᶧ$ㆃ;->ㆃ([BZ)V

    goto/16 :goto_0

    .line 111
    :cond_18
    iput-boolean v7, p0, Lnts/ᶧ$ㆃ;->ᎊ:Z

    .line 114
    :cond_19
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v5

    .line 115
    :try_start_1
    iget-boolean v4, p0, Lnts/ᶧ$ㆃ;->ᵑ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v4, :cond_1a

    .line 117
    :try_start_2
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v4, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 120
    :catch_0
    :try_start_3
    monitor-exit v5

    goto/16 :goto_0

    .line 122
    :cond_1a
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ᚹ:Z

    .line 123
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_1b

    .line 125
    iget-boolean v4, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z

    if-nez v4, :cond_1b

    .line 127
    :try_start_4
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->ᰛ()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 128
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 129
    iget-object v4, v4, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 130
    invoke-virtual {v4}, Lnts/ڊ;->ⴗ()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 131
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v2, v0

    goto :goto_d

    :catch_1
    move-exception v2

    .line 136
    new-instance v3, Lnts/ᛎ;

    invoke-direct {v3, v2}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    move v2, v7

    .line 140
    :cond_1b
    :goto_d
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v4, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v4

    .line 141
    :try_start_5
    iget-boolean v5, p0, Lnts/ᶧ$ㆃ;->ⴗ:Z

    if-nez v5, :cond_1c

    .line 142
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ⴗ:Z

    .line 143
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 145
    :cond_1c
    iput-boolean v7, p0, Lnts/ᶧ$ㆃ;->ᚹ:Z

    .line 146
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 147
    iget-boolean v4, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z

    if-eqz v4, :cond_21

    .line 148
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v4, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v4

    .line 149
    :try_start_6
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 150
    iget v5, v5, Lnts/ᶧ;->ཞ:I

    const/4 v8, 0x3

    if-ne v5, v6, :cond_1e

    .line 151
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 152
    iget-object v5, v5, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 153
    iget v5, v5, Lnts/ڊ;->ᐘ:I

    if-ne v5, v8, :cond_1d

    goto :goto_e

    .line 154
    :cond_1d
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 155
    iget-object v5, v5, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 156
    invoke-virtual {v5}, Lnts/ڊ;->ᇌ()V

    .line 158
    monitor-exit v4

    goto/16 :goto_0

    .line 159
    :cond_1e
    :goto_e
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 160
    iget v5, v5, Lnts/ᶧ;->ཞ:I

    if-ne v5, v8, :cond_1f

    .line 161
    iput-boolean v7, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z

    move v2, v7

    goto :goto_f

    .line 162
    :cond_1f
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 163
    iget v5, v5, Lnts/ᶧ;->ཞ:I

    if-nez v5, :cond_20

    .line 164
    iput-boolean v7, p0, Lnts/ᶧ$ㆃ;->ᙕ:Z

    .line 166
    :cond_20
    :goto_f
    monitor-exit v4

    goto :goto_10

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_21
    :goto_10
    if-nez v2, :cond_0

    .line 170
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v4, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_7
    iget-boolean v5, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    if-nez v5, :cond_22

    .line 172
    monitor-exit v4

    goto/16 :goto_0

    .line 175
    :cond_22
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->ㆃ()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 176
    monitor-exit v4

    goto/16 :goto_0

    .line 178
    :cond_23
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_24

    .line 181
    invoke-virtual {p0, v3}, Lnts/ᶧ$ㆃ;->ㆃ(Lnts/ᛎ;)V

    .line 184
    :cond_24
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v5

    .line 185
    :try_start_8
    iget v4, p0, Lnts/ᶧ$ㆃ;->ㆃ:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-ne v4, v6, :cond_27

    .line 189
    :try_start_9
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 190
    iget v4, v4, Lnts/ᶧ;->ཞ:I

    if-ne v4, v6, :cond_26

    if-eqz v3, :cond_26

    .line 191
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 192
    iget-object v4, v4, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 193
    iget-boolean v4, v4, Lnts/ڊ;->ᢛ:Z

    if-nez v4, :cond_26

    .line 194
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 195
    iget-object v4, v4, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 196
    iget-boolean v4, v4, Lnts/ڊ;->ᘆ:Z

    if-eqz v4, :cond_25

    .line 197
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x37

    const/16 v8, 0x35

    const/16 v9, 0x2b2

    invoke-static {v9, v6, v8}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_11

    .line 200
    :cond_25
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 201
    iget-object v4, v4, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 202
    invoke-virtual {v4, v3}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 206
    :cond_26
    :goto_11
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-virtual {v4, v7, v7}, Lnts/ᶧ;->ㆃ(ZZ)V
    :try_end_9
    .catch Lnts/ᛎ; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 210
    :catch_2
    :cond_27
    :try_start_a
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 211
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 212
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 213
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    .line 214
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method public final ᙕ()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    :catch_0
    :goto_0
    iget-object v3, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 5
    iget v3, v3, Lnts/ᶧ;->ᐘ:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 8
    iget v5, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 9
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->ᾨ()V

    .line 10
    monitor-exit v0

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    const/4 v1, 0x5

    .line 15
    iput v1, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    .line 16
    monitor-exit v0

    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x4

    .line 19
    iput v5, p0, Lnts/ᶧ$ㆃ;->ㆃ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v5, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final ᰛ()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 2
    iget-object v0, v0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lnts/ᶧ$ㆃ;->Ͼ()Z

    move-result v0

    return v0

    .line 6
    :cond_0
    iget v0, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iget v1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    .line 7
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->て:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    if-nez v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 14
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;

    iget-object v1, p0, Lnts/ᶧ$ㆃ;->て:[B

    iget v5, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 15
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 16
    iget-object v1, v1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 17
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->て:[B

    iget v5, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lnts/ⴳ;->ㆃ(I[BII)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_2
    iget v1, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    invoke-virtual {p0, v1, v0}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v0

    iput v0, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    .line 26
    iput-boolean v3, p0, Lnts/ᶧ$ㆃ;->ᎊ:Z

    goto :goto_0

    :catch_0
    return v3

    .line 29
    :cond_3
    :goto_0
    iget v0, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iget v1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    if-ge v0, v1, :cond_6

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    const/16 v0, 0x800

    if-le v1, v0, :cond_4

    move v1, v0

    .line 37
    :cond_4
    :try_start_1
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ᇭ:Ljava/io/InputStream;

    iget-object v4, p0, Lnts/ᶧ$ㆃ;->て:[B

    iget v5, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 38
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 39
    iget-object v1, v1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 40
    iget-object v4, p0, Lnts/ᶧ$ㆃ;->て:[B

    iget v5, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lnts/ⴳ;->ㆃ(I[BII)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v2, :cond_5

    return v3

    .line 48
    :cond_5
    iget v1, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    invoke-virtual {p0, v1, v0}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v0

    iput v0, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    .line 49
    iput-boolean v3, p0, Lnts/ᶧ$ㆃ;->ᎊ:Z

    nop

    :catch_1
    :cond_6
    return v3
.end method

.method public final ᾨ()V
    .locals 4

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lnts/ᶧ$ㆃ;->ᛃ:I

    .line 4
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 5
    iget v1, v0, Lnts/ᶧ;->ᨍ:I

    .line 6
    iput v1, v0, Lnts/ᶧ;->ᨍ:I

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lnts/ᶧ$ㆃ;->ᰛ:Z

    .line 8
    iget v2, v0, Lnts/ᶧ;->Ё:I

    .line 9
    iget v0, v0, Lnts/ᶧ;->ᄎ:I

    const/high16 v3, 0x10000

    .line 10
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 12
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ᶧ$ㆃ;->て:[B

    .line 13
    iput-boolean v1, p0, Lnts/ᶧ$ㆃ;->ᎊ:Z

    .line 14
    iput-boolean v2, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    .line 15
    iput v1, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iput v1, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    iput v1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    .line 17
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 18
    iget-object v0, v0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 19
    iget-boolean v0, v0, Lnts/ڊ;->ਦ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnts/ᶧ$ㆃ;->て:[B

    array-length v0, v0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    return-void
.end method

.method public final ㆃ(II)I
    .locals 1

    add-int/2addr p1, p2

    if-gez p1, :cond_0

    .line 41
    iget-object p2, p0, Lnts/ᶧ$ㆃ;->て:[B

    array-length p2, p2

    add-int/2addr p1, p2

    return p1

    .line 42
    :cond_0
    iget-object p2, p0, Lnts/ᶧ$ㆃ;->て:[B

    array-length v0, p2

    if-lt p1, v0, :cond_1

    .line 43
    array-length p2, p2

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public final ㆃ(III)I
    .locals 1

    .line 30
    invoke-virtual {p0, p1, p2}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result p1

    .line 31
    iget p2, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    neg-int v0, p1

    invoke-virtual {p0, p2, v0}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result p2

    if-lt p2, p3, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ㆃ(Lnts/ᛎ;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget v1, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 87
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-virtual {v1, p1}, Lnts/ዧ;->ㆃ(Lnts/ᛎ;)V

    .line 89
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ㆃ(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->ᵑ:Z

    .line 17
    iget-boolean p1, p0, Lnts/ᶧ$ㆃ;->ᚹ:Z

    if-nez p1, :cond_0

    .line 18
    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lnts/ᶧ$ㆃ;->ⴗ:Z

    .line 22
    :goto_0
    iget-boolean p1, p0, Lnts/ᶧ$ㆃ;->ⴗ:Z

    if-nez p1, :cond_1

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p0, p1, :cond_1

    .line 24
    iget-object p1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 25
    iget-object p1, p1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 26
    invoke-virtual {p1}, Lnts/ⴳ;->ᙕ()V

    goto :goto_0

    .line 28
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ㆃ([BI)V
    .locals 5

    .line 32
    iget v0, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iget v1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->て:[B

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    add-int v0, v1, p2

    .line 35
    iget-object v3, p0, Lnts/ᶧ$ㆃ;->て:[B

    array-length v4, v3

    if-gt v0, v4, :cond_1

    .line 36
    invoke-static {v3, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 38
    :cond_1
    array-length v0, v3

    sub-int/2addr v0, v1

    invoke-static {v3, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->て:[B

    array-length v1, v0

    iget v3, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    sub-int/2addr v1, v3

    sub-int/2addr p2, v1

    .line 40
    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v2, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final ㆃ([BZ)V
    .locals 3

    .line 44
    iget-object v0, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :catch_0
    :goto_0
    :try_start_0
    iget v1, p0, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lnts/ᶧ$ㆃ;->Ͼ:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 53
    iget-boolean v1, v1, Lnts/ᶧ;->ᜧ:Z

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 55
    iget-object v1, v1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 56
    iget-object v2, p0, Lnts/ᶧ$ㆃ;->ዲ:[B

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    .line 57
    iget-object v2, v2, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 58
    iget v2, v2, Lnts/ڊ;->ㆀ:I

    goto :goto_1

    :cond_1
    array-length v2, p1

    :goto_1
    invoke-virtual {v1}, Lnts/ⴳ;->て()V

    .line 59
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    invoke-virtual {v1, p1, p2}, Lnts/ᶧ;->ㆃ([BZ)V

    .line 60
    iget p1, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    iput p1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    .line 61
    iget-object p1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object p1, p1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 66
    :cond_2
    :try_start_1
    iget-object v1, p0, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v1, v1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :cond_3
    :goto_2
    :try_start_2
    iget p1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    iput p1, p0, Lnts/ᶧ$ㆃ;->Ὺ:I

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lnts/ᶧ$ㆃ;->ᛃ:I

    .line 69
    monitor-exit v0

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ㆃ()Z
    .locals 2

    .line 29
    iget v0, p0, Lnts/ᶧ$ㆃ;->Ⲳ:I

    iget v1, p0, Lnts/ᶧ$ㆃ;->ᡲ:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lnts/ᶧ$ㆃ;->ㆃ(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnts/ᶧ$ㆃ;->ᰛ:Z

    return v0
.end method
