.class public Lnts/ㆀ;
.super Lnts/ਦ;
.source "SourceFile"

# interfaces
.implements Lnts/ẜ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ਦ;-><init>()V

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;J)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-object v0
.end method

.method public ㆃ(Ljava/net/InetAddress;IZ)Ljava/net/DatagramSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 3
    invoke-virtual {v0, p3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 4
    new-instance p3, Ljava/net/InetSocketAddress;

    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, p3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 7
    :catchall_0
    new-instance p3, Ljava/net/DatagramSocket;

    invoke-direct {p3, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    return-object p3
.end method

.method public ㆃ(Ljava/net/DatagramSocket;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method
