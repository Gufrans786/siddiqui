.class public Lnts/ਦ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ẜ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᾨ(Ljava/net/DatagramSocket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v0, 0x800

    if-le p2, v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    :cond_0
    return-void
.end method

.method public ᾨ(Ljava/net/Socket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v0, 0x800

    if-le p2, v0, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_0
    return-void
.end method

.method public ㆃ(Ljava/lang/String;J)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-object v0
.end method

.method public ㆃ(Ljava/net/InetAddress;IZ)Ljava/net/DatagramSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p3, Ljava/net/DatagramSocket;

    invoke-direct {p3, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    return-object p3
.end method

.method public ㆃ(Ljava/net/DatagramPacket;[BII)V
    .locals 0

    .line 5
    invoke-virtual {p1, p2, p3, p4}, Ljava/net/DatagramPacket;->setData([BII)V

    return-void
.end method

.method public ㆃ(Ljava/net/DatagramSocket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v0, 0x800

    if-le p2, v0, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    :cond_0
    return-void
.end method

.method public ㆃ(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1, p2, p3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public ㆃ(Ljava/net/Socket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v0, 0x800

    if-le p2, v0, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_0
    return-void
.end method

.method public ㆃ(Ljava/net/DatagramSocket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
