.class public Lnts/ᶧ$ᇭ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᶧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u11ed"
.end annotation


# instance fields
.field public Ͼ:[[B

.field public ౠ:[B

.field public volatile ᇭ:Ljava/io/OutputStream;

.field public ዲ:Z

.field public ᎊ:Z

.field public ᙕ:I

.field public ᡲ:Z

.field public ᰛ:I

.field public volatile ᾨ:Ljava/net/Socket;

.field public final synthetic Ὺ:Lnts/ᶧ;

.field public て:B

.field public ㆃ:I


# direct methods
.method public constructor <init>(Lnts/ᶧ;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lnts/ᶧ$ᇭ;->ᡲ:Z

    .line 18
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public static synthetic ᇭ(Lnts/ᶧ$ᇭ;)V
    .locals 2

    .line 1
    iget v0, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    .line 5
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 6
    iget-boolean v0, v0, Lnts/ᶧ;->ᬌ:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->ㆃ()V

    .line 10
    :cond_1
    iget-object p0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object p0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public static synthetic ᾨ(Lnts/ᶧ$ᇭ;)Z
    .locals 1

    .line 1
    iget p0, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic ㆃ(Lnts/ᶧ$ᇭ;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    invoke-static {v0}, Lnts/ᶧ;->ㆃ(Lnts/ᶧ;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    return-void

    .line 6
    :cond_0
    iput-object v0, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    iput-object v0, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    return-void
.end method

.method public static synthetic ㆃ(Lnts/ᶧ$ᇭ;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->ౠ:[B

    array-length v0, v0

    iget v1, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnts/ᶧ$ᇭ;->ᰛ:I

    .line 59
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->ౠ:[B

    iget v2, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget p1, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    iget p2, p0, Lnts/ᶧ$ᇭ;->ᰛ:I

    add-int/2addr p1, p2

    iput p1, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lnts/ᶧ$ᇭ;->ᎊ:Z

    .line 65
    iget-object p0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    invoke-virtual {p0}, Lnts/ᶧ;->ዲ()V

    .line 66
    new-instance p0, Lnts/ᛎ;

    const/16 p1, 0x16

    const/16 p2, 0x6d

    const/16 p3, 0x306

    invoke-static {p3, p1, p2}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x87

    invoke-direct {p0, p2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 2
    iget-object v2, v2, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    const/16 v3, 0x73

    const/16 v4, 0x31c

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget v0, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->Ͼ()V

    .line 13
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->ᇭ()V

    .line 15
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 23
    iget-object v1, v1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 24
    iget-object v1, v1, Lnts/ڊ;->ᾳ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 26
    iget-object v1, v1, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 27
    iget-boolean v1, v1, Lnts/ڊ;->ᰅ:Z

    if-eqz v1, :cond_0

    .line 28
    :catch_0
    :goto_1
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 29
    iget-object v1, v1, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 31
    iget-object v1, v1, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 34
    :try_start_1
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v1, v1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->ㆃ()V

    .line 40
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public final Ͼ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    :catch_0
    :goto_0
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 5
    iget v3, v3, Lnts/ᶧ;->ᐘ:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 8
    iget v5, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    const/4 v6, 0x1

    const/4 v7, 0x5

    if-ne v5, v6, :cond_1

    .line 11
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    :goto_1
    iput v7, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    .line 12
    monitor-exit v0

    goto :goto_2

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 17
    iput v7, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    .line 18
    monitor-exit v0

    :goto_2
    return-void

    :cond_2
    const/4 v5, 0x4

    .line 21
    iput v5, p0, Lnts/ᶧ$ᇭ;->ㆃ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object v5, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final ᇭ()V
    .locals 9

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    const/4 v2, 0x2

    if-nez v1, :cond_2

    .line 15
    iget v1, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    if-eq v1, v2, :cond_1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 19
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v1, v1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 27
    :catch_0
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lnts/ᶧ$ᇭ;->ዲ:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 28
    iput-boolean v4, p0, Lnts/ᶧ$ᇭ;->ዲ:Z

    .line 29
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 30
    iget v1, v1, Lnts/ᶧ;->ᴨ:I

    .line 31
    new-array v5, v2, [I

    aput v1, v5, v3

    const/4 v1, 0x3

    aput v1, v5, v4

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lnts/ᶧ$ᇭ;->Ͼ:[[B

    .line 33
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 35
    iget v0, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    if-lez v0, :cond_0

    .line 37
    :try_start_3
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 39
    :try_start_4
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ͼ:[[B

    aget-object v1, v1, v2

    .line 40
    iget v2, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    .line 41
    iget-object v5, p0, Lnts/ᶧ$ᇭ;->ౠ:[B

    invoke-static {v5, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-byte v5, p0, Lnts/ᶧ$ᇭ;->て:B

    sub-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lnts/ᶧ$ᇭ;->て:B

    .line 44
    iget-object v5, p0, Lnts/ᶧ$ᇭ;->Ͼ:[[B

    aget-object v3, v5, v3

    iput-object v3, p0, Lnts/ᶧ$ᇭ;->ౠ:[B

    .line 45
    iput v4, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    .line 46
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->ᾨ()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 51
    iget-wide v7, v3, Lnts/ᶧ;->ₑ:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_5

    .line 52
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 53
    iget-object v3, v3, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 54
    invoke-virtual {v3}, Lnts/ⴳ;->ᙕ()V

    .line 55
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->ᾨ()J

    move-result-wide v5

    goto :goto_1

    .line 56
    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :try_start_5
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 61
    :try_start_6
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 62
    iput-wide v3, v1, Lnts/ᶧ;->ᬋ:J

    .line 63
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 64
    iget-wide v3, v1, Lnts/ᶧ;->ϴ:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 65
    iput-wide v3, v1, Lnts/ᶧ;->ϴ:J

    .line 66
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    :try_start_7
    invoke-virtual {p0}, Lnts/ᶧ$ᇭ;->ᰛ()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 68
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catchall_1
    move-exception v1

    .line 69
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v0

    .line 80
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v1, v1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_c
    iget-boolean v2, p0, Lnts/ᶧ$ᇭ;->ᡲ:Z

    if-eqz v2, :cond_6

    .line 82
    iget-object v2, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    new-instance v3, Lnts/ᛎ;

    invoke-direct {v3, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lnts/ዧ;->ㆃ(Lnts/ᛎ;)V

    .line 89
    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 90
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1
.end method

.method public final ᰛ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lnts/ᶧ$ᇭ;->ᡲ:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnts/ᶧ$ᇭ;->ᎊ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lnts/ᶧ$ᇭ;->ᎊ:Z

    .line 5
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    invoke-static {v1}, Lnts/ᶧ;->ᰛ(Lnts/ᶧ;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ᾨ()J
    .locals 8

    .line 2
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 5
    iget-wide v3, v3, Lnts/ᶧ;->ᬋ:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    const-wide/16 v4, 0x0

    if-lez v3, :cond_0

    .line 6
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 7
    iput-wide v1, v3, Lnts/ᶧ;->ጊ:J

    .line 8
    iput-wide v1, v3, Lnts/ᶧ;->ᬋ:J

    .line 9
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 10
    iput-wide v4, v3, Lnts/ᶧ;->ϴ:J

    .line 11
    :cond_0
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 12
    iget-wide v6, v3, Lnts/ᶧ;->ₑ:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_1

    const-wide/16 v1, -0x1

    .line 13
    monitor-exit v0

    return-wide v1

    .line 15
    :cond_1
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 16
    iget-wide v6, v3, Lnts/ᶧ;->ጊ:J

    sub-long v6, v1, v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_2

    .line 17
    monitor-exit v0

    return-wide v4

    .line 19
    :cond_2
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 20
    iget-wide v6, v3, Lnts/ᶧ;->ϴ:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_3

    .line 21
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 22
    iput-wide v4, v3, Lnts/ᶧ;->ϴ:J

    .line 23
    :cond_3
    iget-object v3, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 24
    iget-wide v3, v3, Lnts/ᶧ;->ϴ:J

    long-to-double v3, v3

    .line 25
    iget-object v5, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 26
    iget-wide v5, v5, Lnts/ᶧ;->ጊ:J

    sub-long/2addr v1, v5

    long-to-double v1, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v5

    div-double/2addr v3, v1

    double-to-long v1, v3

    .line 27
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ㆃ()V
    .locals 8

    .line 11
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 12
    iget-object v1, v0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 13
    iget v0, v0, Lnts/ᶧ;->ཞ:I

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    .line 14
    iget v0, v1, Lnts/ᇾ;->ᙕ:I

    const/16 v6, 0x14

    if-eq v0, v6, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {v1, v2, v4}, Lnts/ᇾ;->ㆃ(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    iput v6, v1, Lnts/ᇾ;->ᙕ:I

    goto :goto_0

    .line 20
    :cond_0
    iput-object v5, v1, Lnts/ᇾ;->ᛩ:Lnts/Ѷ;

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 22
    iget-object v1, v0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 23
    iget-object v1, v1, Lnts/ᇾ;->ᇢ:Ljava/util/Hashtable;

    .line 24
    iput-object v1, v0, Lnts/ᶧ;->ᅌ:Ljava/util/Hashtable;

    .line 25
    iput-object v5, v0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 26
    :cond_2
    :try_start_1
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 27
    iget-object v0, v0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 28
    iget-object v1, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    invoke-virtual {v0, v4, v1}, Lnts/ڊ;->ㆃ(ZLjava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 30
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    .line 33
    :goto_1
    iput-object v5, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    .line 34
    iput-object v5, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    .line 35
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_2
    iget-boolean v5, p0, Lnts/ᶧ$ᇭ;->ᡲ:Z

    if-eqz v5, :cond_8

    .line 37
    iget-object v5, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    .line 38
    iget v6, v5, Lnts/ᶧ;->ᯋ:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 39
    iput v3, v5, Lnts/ᶧ;->ᯋ:I

    .line 43
    :cond_3
    iget v6, v5, Lnts/ᶧ;->ⱋ:I

    if-nez v6, :cond_4

    .line 44
    iget-object v6, v5, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v6, v1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 48
    :cond_4
    iget v6, v5, Lnts/ᶧ;->ཞ:I

    if-ne v6, v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    .line 49
    :goto_2
    iput v4, v5, Lnts/ᶧ;->ཞ:I

    if-eqz v2, :cond_7

    .line 52
    iget v2, v5, Lnts/ᶧ;->ⱋ:I

    if-nez v2, :cond_6

    iget-object v1, v5, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    iget-object v1, v1, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    :cond_6
    invoke-virtual {v5, v1}, Lnts/ᶧ;->ᇭ(Lnts/ᛎ;)V

    .line 55
    :cond_7
    iget-object v1, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 57
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
