.class public Lnts/ᶢ$ㆃ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᶢ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ᾨ:Lnts/ᶢ;

.field public ㆃ:Z


# direct methods
.method public constructor <init>(Lnts/ᶢ;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lnts/ᶢ$ㆃ;->ㆃ:Z

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lnts/ᶢ$ㆃ;->ㆃ:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 5
    iget v1, v1, Lnts/ᶢ;->Ꮆ:I

    .line 6
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 7
    iget v3, v3, Lnts/ᶢ;->Ꮆ:I

    .line 8
    new-array v3, v3, [B

    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 9
    iget v4, v4, Lnts/ᶢ;->Ꮆ:I

    .line 10
    invoke-direct {v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 11
    iget-object v3, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 12
    iget-object v3, v3, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :catch_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 18
    :try_start_2
    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 19
    iget v4, v4, Lnts/ᶢ;->Ꮆ:I

    if-ge v4, v1, :cond_1

    .line 20
    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 21
    iget v4, v4, Lnts/ᶢ;->Ꮆ:I

    .line 22
    invoke-virtual {v2, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 24
    iget v4, v4, Lnts/ᶢ;->Ꮆ:I

    if-le v4, v1, :cond_2

    .line 25
    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 26
    iget v4, v4, Lnts/ᶢ;->Ꮆ:I

    .line 27
    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/net/DatagramPacket;->setData([B)V

    .line 28
    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 29
    iget v1, v4, Lnts/ᶢ;->Ꮆ:I

    .line 30
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 33
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v4, v0, [B

    .line 34
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    invoke-virtual {v0}, Lnts/ⴳ;->て()V

    .line 36
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 37
    iget v0, v0, Lnts/ᶢ;->Ꮆ:I

    .line 38
    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 40
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 42
    :catch_1
    :goto_2
    :try_start_4
    iget-boolean v5, p0, Lnts/ᶢ$ㆃ;->ㆃ:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 43
    iget-boolean v5, v5, Lnts/ᶢ;->ᒸ:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_3

    .line 44
    :try_start_5
    iget-object v5, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    iget-object v5, v5, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 49
    :cond_3
    :try_start_6
    iget-object v5, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lnts/ᶢ;->ㆃ([BLjava/lang/String;I)V

    .line 50
    iget-boolean v4, p0, Lnts/ᶢ$ㆃ;->ㆃ:Z

    if-nez v4, :cond_4

    .line 51
    monitor-exit v0

    goto :goto_3

    .line 53
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_1
    move-exception v4

    .line 54
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    .line 78
    iget-object v4, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    iget-object v4, v4, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v4

    .line 79
    :try_start_a
    iget-boolean v5, p0, Lnts/ᶢ$ㆃ;->ㆃ:Z

    if-nez v5, :cond_5

    monitor-exit v4

    :goto_3
    return-void

    .line 80
    :cond_5
    new-instance v5, Lnts/ᛎ;

    invoke-direct {v5, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 82
    iget v6, v5, Lnts/ᛎ;->ㆃ:I

    .line 83
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lnts/ᶢ;->ㆃ(ILjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 85
    iget-boolean v0, v0, Lnts/ᶢ;->ዖ:Z

    if-eqz v0, :cond_6

    .line 86
    iget v0, v5, Lnts/ᛎ;->ㆃ:I

    const/16 v6, 0x2bc

    if-ne v0, v6, :cond_6

    .line 87
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1b

    const/16 v6, 0x2a

    const/16 v7, 0x300

    invoke-static {v7, v5, v6}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_6

    .line 88
    :try_start_b
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 89
    invoke-virtual {v0}, Lnts/ᶢ;->ᵑ()V

    .line 90
    iget-object v0, p0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    .line 91
    iget-object v0, v0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v3, v0

    .line 92
    :catch_3
    :cond_6
    :try_start_c
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 93
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1
.end method
