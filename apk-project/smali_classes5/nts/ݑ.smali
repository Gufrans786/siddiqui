.class public Lnts/ݑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ẜ;


# static fields
.field public static ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᾨ(Ljava/net/DatagramSocket;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method public ᾨ(Ljava/net/Socket;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method public ㆃ(Ljava/lang/String;J)Ljava/io/RandomAccessFile;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const-string v2, "rw"

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    new-instance p2, Ljava/io/RandomAccessFile;

    invoke-direct {p2, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lnts/ݑ;->ㆃ:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lnts/ݑ;->ㆃ:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 15
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 16
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    .line 17
    new-array v4, v4, [B

    .line 21
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    int-to-long v5, v5

    cmp-long v7, v5, p2

    const/4 v8, 0x0

    if-ltz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_0
    if-eqz v7, :cond_4

    move-wide v5, p2

    :cond_4
    long-to-int v5, v5

    .line 23
    invoke-virtual {v3, v4, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V

    if-eqz v7, :cond_2

    .line 26
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 27
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 31
    :cond_6
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    return-object v0
.end method

.method public ㆃ(Ljava/net/InetAddress;IZ)Ljava/net/DatagramSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/net/DatagramSocket;

    invoke-direct {p3, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    return-object p3
.end method

.method public ㆃ(Ljava/net/DatagramPacket;[BII)V
    .locals 2

    .line 2
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setData([B)V

    .line 5
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setLength(I)V

    return-void
.end method

.method public ㆃ(Ljava/net/DatagramSocket;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

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

    return-void
.end method

.method public ㆃ(Ljava/net/Socket;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method public ㆃ(Ljava/net/DatagramSocket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
