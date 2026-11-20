.class public Lnts/ᶢ;
.super Lnts/ⴳ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ᶢ$ㆃ;
    }
.end annotation


# instance fields
.field public ϴ:Ljava/net/DatagramPacket;

.field public ߛ:I

.field public ᅌ:I

.field public ᇌ:I

.field public ዖ:Z

.field public ጊ:Ljava/lang/String;

.field public Ꮆ:I

.field public Ꮽ:Z

.field public ᐘ:I

.field public ᒃ:I

.field public ᒸ:Z

.field public ᛩ:Ljava/net/DatagramSocket;

.field public ᬋ:I

.field public ₑ:Lnts/ᶢ$ㆃ;

.field public Ⱐ:Z

.field public パ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lnts/ⴳ;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lnts/ᶢ;->ጊ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lnts/ᶢ;->ᬋ:I

    .line 11
    iput-object v0, p0, Lnts/ᶢ;->パ:Ljava/lang/String;

    .line 12
    iput v1, p0, Lnts/ᶢ;->ߛ:I

    const/16 v0, 0x800

    .line 14
    iput v0, p0, Lnts/ᶢ;->Ꮆ:I

    .line 15
    iput v0, p0, Lnts/ᶢ;->ᇌ:I

    .line 17
    iput-boolean p2, p0, Lnts/ᶢ;->ᒸ:Z

    .line 18
    iput-boolean v1, p0, Lnts/ᶢ;->Ⱐ:Z

    .line 20
    iput v0, p0, Lnts/ᶢ;->ᒃ:I

    .line 21
    iput p2, p0, Lnts/ᶢ;->ᅌ:I

    .line 23
    iput-boolean v1, p0, Lnts/ᶢ;->Ꮽ:Z

    .line 29
    iput-boolean v1, p0, Lnts/ᶢ;->ዖ:Z

    .line 33
    instance-of p2, p1, Lnts/ᢶ;

    if-eqz p2, :cond_0

    .line 34
    check-cast p1, Lnts/ᢶ;

    :cond_0
    return-void
.end method


# virtual methods
.method public Ͼ(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶢ;->ᒸ:Z

    .line 5
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ౠ(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget p1, p0, Lnts/ᶢ;->ᐘ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lnts/ᶢ;->ᵑ()V

    .line 5
    new-instance p1, Lnts/ᶢ$ㆃ;

    iget-boolean v2, p0, Lnts/ⴳ;->ཞ:Z

    invoke-direct {p1, p0, v2}, Lnts/ᶢ$ㆃ;-><init>(Lnts/ᶢ;Z)V

    iput-object p1, p0, Lnts/ᶢ;->ₑ:Lnts/ᶢ$ㆃ;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 7
    iput v1, p0, Lnts/ᶢ;->ᐘ:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p0}, Lnts/ᶢ;->ⴗ()V

    .line 10
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x1a

    const/16 v2, 0x2e

    const/16 v3, 0xf7

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    iget p1, p0, Lnts/ᶢ;->ᐘ:I

    if-ne p1, v1, :cond_2

    .line 17
    invoke-virtual {p0}, Lnts/ᶢ;->ⴗ()V

    .line 20
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ዲ()I
    .locals 1

    .line 13
    iget v0, p0, Lnts/ᶢ;->ᅌ:I

    return v0
.end method

.method public ዲ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 5
    iput p1, p0, Lnts/ᶢ;->ᒃ:I

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x38

    const/16 v2, 0x27

    const/16 v3, 0x18a

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ዲ(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 19
    :cond_0
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 20
    iget-boolean v1, p0, Lnts/ᶢ;->Ⱐ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 24
    :try_start_1
    iget-object v1, p0, Lnts/ᶢ;->ϴ:Ljava/net/DatagramPacket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x34

    const/16 v2, 0x62

    const/16 v3, 0x294

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    :goto_0
    iput-object p1, p0, Lnts/ᶢ;->ጊ:Ljava/lang/String;

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ᎊ()V
    .locals 2

    .line 12
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    invoke-super {p0}, Lnts/ⴳ;->ᎊ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 16
    :try_start_1
    invoke-virtual {p0, v1}, Lnts/ᶢ;->ౠ(Z)V
    :try_end_1
    .catch Lnts/ᛎ; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catch_0
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

.method public ᎊ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5
    :try_start_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    invoke-interface {v1, v2, p1}, Lnts/ẜ;->ᾨ(Ljava/net/DatagramSocket;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_0
    :goto_0
    iput p1, p0, Lnts/ᶢ;->ᇌ:I

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ᙕ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 15
    :try_start_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    invoke-interface {v1, v2, p1}, Lnts/ẜ;->ㆃ(Ljava/net/DatagramSocket;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 21
    :cond_0
    :goto_0
    iput p1, p0, Lnts/ᶢ;->Ꮆ:I

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ᙕ(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 5
    iput-boolean p1, p0, Lnts/ᶢ;->Ꮽ:Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x40

    const/16 v2, 0x8

    const/16 v3, 0x1ec

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᚹ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    iget-object v1, p0, Lnts/ᶢ;->パ:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ᡲ(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Lnts/ᶢ;->Ⱐ:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lnts/ᶢ;->ϴ:Ljava/net/DatagramPacket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x38

    const/16 v2, 0x50

    const/16 v3, 0x2c8

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iput p1, p0, Lnts/ᶢ;->ᬋ:I

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᰛ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnts/ᶢ;->ᅌ:I

    return-void
.end method

.method public final ᵑ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 3
    iput-object v1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    .line 6
    :cond_0
    iget-object v0, p0, Lnts/ᶢ;->パ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnts/ᶢ;->パ:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v0, p0, Lnts/ᶢ;->ጊ:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 9
    sget-object v2, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget v3, p0, Lnts/ᶢ;->ߛ:I

    iget-boolean v4, p0, Lnts/ᶢ;->Ꮽ:Z

    invoke-interface {v2, v1, v3, v4}, Lnts/ẜ;->ㆃ(Ljava/net/InetAddress;IZ)Ljava/net/DatagramSocket;

    move-result-object v1

    iput-object v1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    .line 10
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    invoke-interface {v1, v2}, Lnts/ẜ;->ㆃ(Ljava/net/DatagramSocket;)Z

    move-result v1

    iput-boolean v1, p0, Lnts/ᶢ;->Ꮽ:Z

    .line 12
    iget-object v1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 14
    iget-boolean v1, p0, Lnts/ᶢ;->Ⱐ:Z

    if-eqz v1, :cond_3

    .line 15
    iget v1, p0, Lnts/ᶢ;->ᬋ:I

    if-eqz v1, :cond_2

    .line 18
    sget-object v2, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v3, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    invoke-interface {v2, v3, v0, v1}, Lnts/ẜ;->ㆃ(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I)V

    goto :goto_1

    .line 19
    :cond_2
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x45

    const/16 v2, 0x5d

    const/16 v3, 0x111

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    :goto_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    iget v3, p0, Lnts/ᶢ;->ᇌ:I

    invoke-interface {v1, v2, v3}, Lnts/ẜ;->ᾨ(Ljava/net/DatagramSocket;I)V

    .line 25
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    iget v3, p0, Lnts/ᶢ;->Ꮆ:I

    invoke-interface {v1, v2, v3}, Lnts/ẜ;->ㆃ(Ljava/net/DatagramSocket;I)V

    .line 27
    new-instance v1, Ljava/net/DatagramPacket;

    sget-object v2, Lnts/ዧ;->ዲ:[B

    iget v3, p0, Lnts/ᶢ;->ᬋ:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v1, p0, Lnts/ᶢ;->ϴ:Ljava/net/DatagramPacket;

    return-void
.end method

.method public final ⴗ()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lnts/ᶢ;->ᐘ:I

    .line 3
    iget-object v0, p0, Lnts/ᶢ;->ₑ:Lnts/ᶢ$ㆃ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lnts/ᶢ$ㆃ;->ㆃ:Z

    .line 5
    iget-object v0, v0, Lnts/ᶢ$ㆃ;->ᾨ:Lnts/ᶢ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    iput-object v1, p0, Lnts/ᶢ;->ₑ:Lnts/ᶢ$ㆃ;

    .line 10
    :cond_0
    iget-object v0, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 14
    :cond_1
    iput-object v1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    .line 15
    iput-object v1, p0, Lnts/ᶢ;->ϴ:Ljava/net/DatagramPacket;

    return-void
.end method

.method public せ()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    monitor-exit v0

    return v1

    .line 5
    :cond_0
    iget v1, p0, Lnts/ᶢ;->ߛ:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public て(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 27
    iput p1, p0, Lnts/ᶢ;->ߛ:I

    .line 29
    monitor-exit v0

    return-void

    .line 30
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x34

    const/16 v2, 0x26

    const/16 v3, 0x260

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public て(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 15
    :goto_0
    :try_start_1
    iput-object p1, p0, Lnts/ᶢ;->パ:Ljava/lang/String;

    .line 17
    monitor-exit v0

    return-void

    .line 18
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x34

    const/4 v2, 0x4

    const/16 v3, 0x22c

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public て(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 5
    iput-boolean p1, p0, Lnts/ᶢ;->Ⱐ:Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x34

    const/16 v2, 0x6f

    const/16 v3, 0x156

    invoke-static {v3, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ㆃ(Lnts/ᢞ;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x57

    .line 1
    invoke-static {v0, v1, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "0"

    const/16 v5, 0x2be

    const/16 v6, 0x20

    if-eqz v3, :cond_1

    .line 2
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_0

    return-object v4

    .line 4
    :cond_0
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    .line 5
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0xd7

    const/16 v1, 0x6a

    invoke-static {v0, v6, v1}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    const/16 v3, 0xe

    const/16 v7, 0x5d

    .line 6
    invoke-static {v1, v3, v7}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    const-string v7, ""

    if-eqz v3, :cond_3

    .line 7
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->ᙕ(Z)V

    return-object v7

    .line 11
    :cond_2
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-boolean v0, p0, Lnts/ᶢ;->Ꮽ:Z

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v3, 0x16

    const/16 v8, 0x7d

    const/16 v9, 0xd

    .line 15
    invoke-static {v3, v9, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->て(Z)V

    return-object v7

    .line 20
    :cond_4
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 21
    iget-boolean v0, p0, Lnts/ᶢ;->Ⱐ:Z

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v3, 0x23

    const/16 v8, 0x41

    .line 24
    invoke-static {v3, v9, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 25
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_6

    .line 26
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->ዲ(I)V

    return-object v7

    .line 29
    :cond_6
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 30
    iget v0, p0, Lnts/ᶢ;->ᒃ:I

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v3, 0x30

    const/16 v8, 0x17

    const/16 v10, 0xc

    .line 33
    invoke-static {v3, v10, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 34
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_8

    .line 35
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->ᙕ(I)V

    return-object v7

    .line 38
    :cond_8
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 39
    iget v0, p0, Lnts/ᶢ;->Ꮆ:I

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v3, 0x3c

    const/4 v8, 0x1

    .line 42
    invoke-static {v3, v9, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 43
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_a

    .line 44
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->ᎊ(I)V

    return-object v7

    .line 47
    :cond_a
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 48
    iget v0, p0, Lnts/ᶢ;->ᇌ:I

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v3, 0xf

    const/16 v8, 0x2c

    const/16 v9, 0x49

    .line 51
    invoke-static {v9, v3, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v7

    :cond_c
    const/16 v3, 0x58

    const/4 v8, 0x3

    .line 58
    invoke-static {v3, v10, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 59
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_d

    .line 60
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 61
    check-cast p1, Ljava/net/DatagramSocket;

    iput-object p1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    return-object v7

    .line 62
    :cond_d
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const/16 v3, 0x64

    const/16 v8, 0x60

    const/16 v10, 0xa

    .line 66
    invoke-static {v3, v10, v8}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 67
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_f

    return-object v4

    .line 69
    :cond_f
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    .line 70
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x22

    const/16 v1, 0x3f

    const/16 v2, 0xb5

    invoke-static {v2, v0, v1}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_10
    const/16 v3, 0x10

    const/16 v4, 0x13

    const/16 v5, 0x6e

    .line 71
    invoke-static {v5, v3, v4}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 72
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v0, :cond_11

    .line 73
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    iput-boolean p1, p0, Lnts/ᶢ;->ዖ:Z

    return-object v7

    .line 76
    :cond_11
    iget-boolean p1, p0, Lnts/ᶢ;->ዖ:Z

    if-eqz p1, :cond_12

    const/4 p1, 0x4

    const/16 v0, 0x45

    const/16 v1, 0x7e

    invoke-static {v1, p1, v0}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const/16 p1, 0x82

    const/4 v0, 0x5

    invoke-static {p1, v0, v6}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const/16 v3, 0x87

    const/16 v4, 0x9

    .line 78
    invoke-static {v3, v4, v9}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 79
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_14

    .line 80
    invoke-virtual {p0}, Lnts/ᶢ;->ᚹ()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_14
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1}, Lnts/ᶢ;->て(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x90

    .line 83
    invoke-static {v3, v4, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 84
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_16

    .line 85
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lnts/ᶢ;->せ()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :cond_16
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->て(I)V

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x99

    const/16 v3, 0x3d

    .line 87
    invoke-static {v2, v1, v3}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 88
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_18

    .line 89
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 90
    iget v0, p0, Lnts/ᶢ;->ᅌ:I

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :cond_18
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    .line 93
    iput p1, p0, Lnts/ᶢ;->ᅌ:I

    goto :goto_0

    :cond_19
    const/16 v1, 0xa1

    const/16 v2, 0x36

    .line 94
    invoke-static {v1, v10, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 95
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_1a

    .line 96
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 97
    iget-boolean v0, p0, Lnts/ᶢ;->ᒸ:Z

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1a
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lnts/ᶢ;->Ͼ(Z)V

    goto :goto_0

    :cond_1b
    const/16 v1, 0xab

    const/16 v2, 0x56

    .line 100
    invoke-static {v1, v10, v2}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 101
    iget-boolean v1, p1, Lnts/ᢞ;->ᇭ:Z

    if-nez v1, :cond_1e

    .line 102
    iget-object p1, p1, Lnts/ᢞ;->ᾨ:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lnts/ၽ;->ᰛ(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 104
    array-length v1, p1

    if-nez v1, :cond_1c

    goto :goto_0

    .line 105
    :cond_1c
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnts/ᶢ;->ㆃ([BII)V

    :cond_1d
    :goto_0
    return-object v7

    .line 106
    :cond_1e
    invoke-super {p0, p1}, Lnts/ⴳ;->ㆃ(Lnts/ᢞ;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ㆃ([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget v1, p0, Lnts/ᶢ;->ᐘ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 110
    :try_start_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶢ;->ϴ:Ljava/net/DatagramPacket;

    invoke-interface {v1, v2, p1, p2, p3}, Lnts/ẜ;->ㆃ(Ljava/net/DatagramPacket;[BII)V

    .line 111
    iget-object p1, p0, Lnts/ᶢ;->ᛩ:Ljava/net/DatagramSocket;

    iget-object p2, p0, Lnts/ᶢ;->ϴ:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 112
    invoke-virtual {p0}, Lnts/ⴳ;->て()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 121
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 124
    :cond_1
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x2a

    const/16 p3, 0x20

    const/16 v1, 0x1c2

    invoke-static {v1, p2, p3}, Lnts/ӗ;->ᵑ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x6d

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public ㆃ([BLjava/lang/String;I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
