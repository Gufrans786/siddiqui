.class public Lnts/ᶧ$ᾨ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᶧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1fa8"
.end annotation


# instance fields
.field public final synthetic Ͼ:Lnts/ᶧ;

.field public ᇭ:[B

.field public ᰛ:Lnts/ᶧ;

.field public volatile ᾨ:Ljava/io/InputStream;

.field public ㆃ:Z


# direct methods
.method public constructor <init>(Lnts/ᶧ;ZLjava/net/Socket;Lnts/ᶧ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lnts/ᶧ$ᾨ;->ㆃ:Z

    const/16 p1, 0x4000

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lnts/ᶧ$ᾨ;->ᇭ:[B

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lnts/ᶧ$ᾨ;->ᰛ:Lnts/ᶧ;

    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 11
    iput-object p4, p0, Lnts/ᶧ$ᾨ;->ᰛ:Lnts/ᶧ;

    .line 13
    :try_start_0
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lnts/ᶧ$ᾨ;->ᾨ:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    .line 2
    iget-object v2, v2, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    const/16 v3, 0x21

    const/16 v4, 0x329

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lnts/ᶧ$ᾨ;->ㆃ:Z

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lnts/ᶧ$ᾨ;->ᾨ()V

    .line 7
    invoke-virtual {p0}, Lnts/ᶧ$ᾨ;->ㆃ()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lnts/ᶧ$ᾨ;->ᰛ:Lnts/ᶧ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnts/ᶧ;->ⴗ()V

    :cond_1
    return-void
.end method

.method public final ᾨ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-boolean v3, p0, Lnts/ᶧ$ᾨ;->ㆃ:Z

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    .line 5
    iget v3, v3, Lnts/ᶧ;->ᐘ:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 8
    :try_start_1
    iget-object v3, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    iget-object v3, v3, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final ㆃ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lnts/ᶧ$ᾨ;->ㆃ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lnts/ᶧ$ᾨ;->ᾨ:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 5
    :cond_0
    :try_start_3
    iget-object v1, p0, Lnts/ᶧ$ᾨ;->ᾨ:Ljava/io/InputStream;

    iget-object v2, p0, Lnts/ᶧ$ᾨ;->ᇭ:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object v2, p0, Lnts/ᶧ$ᾨ;->Ͼ:Lnts/ᶧ;

    .line 7
    iget-object v2, v2, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 8
    iget-object v3, p0, Lnts/ᶧ$ᾨ;->ᇭ:[B

    invoke-virtual {v2, v3, v4, v1}, Lnts/ᇾ;->ㆃ([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :catch_0
    :cond_1
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
