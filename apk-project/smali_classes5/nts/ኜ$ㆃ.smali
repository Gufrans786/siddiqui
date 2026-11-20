.class public Lnts/ኜ$ㆃ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ኜ;->ౠ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᾨ:Lnts/ኜ;

.field public final synthetic ㆃ:[Z


# direct methods
.method public constructor <init>(Lnts/ኜ;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ኜ$ㆃ;->ᾨ:Lnts/ኜ;

    iput-object p2, p0, Lnts/ኜ$ㆃ;->ㆃ:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ኜ$ㆃ;->ᾨ:Lnts/ኜ;

    iget-object v0, v0, Lnts/ኜ;->ᜂ:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 2
    iget-object v0, p0, Lnts/ኜ$ㆃ;->ᾨ:Lnts/ኜ;

    iget-object v0, v0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lnts/ኜ$ㆃ;->ᾨ:Lnts/ኜ;

    iget-object v2, p0, Lnts/ኜ$ㆃ;->ㆃ:[Z

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lnts/ኜ;->ㆃ(Lnts/ኜ;Lnts/ᛎ;[Z)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lnts/ኜ$ㆃ;->ᾨ:Lnts/ኜ;

    iget-object v1, v1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x26

    const/16 v4, 0xc

    const/16 v5, 0x255

    invoke-static {v5, v3, v4}, Lnts/ӗ;->て(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Lnts/ᛎ;

    const/16 v3, 0x32cb

    invoke-direct {v2, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lnts/ኜ$ㆃ;->ᾨ:Lnts/ኜ;

    iget-object v3, p0, Lnts/ኜ$ㆃ;->ㆃ:[Z

    invoke-static {v0, v2, v3}, Lnts/ኜ;->ㆃ(Lnts/ኜ;Lnts/ᛎ;[Z)V

    .line 10
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
