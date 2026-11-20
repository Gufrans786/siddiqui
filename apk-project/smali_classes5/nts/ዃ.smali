.class public abstract Lnts/ዃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/Ҫ;


# static fields
.field public static final ᇭ:Ljava/lang/String;

.field public static final ᰛ:Ljava/lang/String;


# instance fields
.field public ᾨ:[B

.field public ㆃ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0xd

    .line 1
    invoke-static {v0, v1, v2}, Lnts/ッ;->Ὺ(III)Ljava/lang/String;

    const/4 v0, 0x4

    const/16 v3, 0x70

    .line 2
    invoke-static {v1, v0, v3}, Lnts/ッ;->Ὺ(III)Ljava/lang/String;

    const/16 v0, 0x7b

    const/4 v1, 0x7

    const/4 v3, 0x6

    .line 3
    invoke-static {v1, v3, v0}, Lnts/ッ;->Ὺ(III)Ljava/lang/String;

    const/16 v0, 0x69

    .line 4
    invoke-static {v2, v3, v0}, Lnts/ッ;->Ὺ(III)Ljava/lang/String;

    const/16 v0, 0x13

    const/16 v1, 0x20

    .line 5
    invoke-static {v0, v3, v1}, Lnts/ッ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ዃ;->ᇭ:Ljava/lang/String;

    const/16 v0, 0x19

    const/16 v1, 0x2f

    .line 6
    invoke-static {v0, v3, v1}, Lnts/ッ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ዃ;->ᰛ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    return-void
.end method


# virtual methods
.method public abstract ᇭ([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ᇭ()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ᰛ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public ᾨ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ᾨ([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/ዃ;->ᾨ([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public ᾨ([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnts/ዃ;->ᰛ()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lnts/ዃ;->ᇭ([BII)V

    .line 4
    invoke-virtual {p0}, Lnts/ዃ;->ᇭ()[B

    move-result-object p1

    iput-object p1, p0, Lnts/ዃ;->ᾨ:[B

    .line 5
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public ㆃ([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnts/ዃ;->ᇭ([BII)V

    if-eqz p4, :cond_0

    .line 2
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return p3
.end method

.method public ㆃ(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lnts/ዃ;->ᰛ()V

    const v0, 0x8000

    .line 8
    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 11
    invoke-virtual {p0, v1, v2, v3}, Lnts/ዃ;->ᇭ([BII)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnts/ዃ;->ᇭ()[B

    move-result-object p1

    iput-object p1, p0, Lnts/ዃ;->ᾨ:[B

    .line 14
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public ㆃ([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lnts/ዃ;->ᇭ([BII)V

    .line 4
    invoke-virtual {p0}, Lnts/ዃ;->ᇭ()[B

    move-result-object v0

    iput-object v0, p0, Lnts/ዃ;->ᾨ:[B

    .line 5
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
