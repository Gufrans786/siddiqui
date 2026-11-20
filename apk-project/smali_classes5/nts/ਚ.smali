.class public Lnts/ਚ;
.super Lnts/વ;
.source "SourceFile"


# static fields
.field public static ౠ:[B


# instance fields
.field public Ͼ:Lnts/ᜂ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ਚ;->ౠ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        -0x64t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnts/વ;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance p1, Lnts/ᜂ;

    invoke-direct {p1}, Lnts/ᜂ;-><init>()V

    iput-object p1, p0, Lnts/ਚ;->Ͼ:Lnts/ᜂ;

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lnts/વ;->write([BII)V

    .line 2
    iget-object v0, p0, Lnts/ਚ;->Ͼ:Lnts/ᜂ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ᜂ;->ㆃ([BII)V

    return-void
.end method

.method public ᾨ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    sget-object v1, Lnts/ਚ;->ౠ:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lnts/ㆁ;->ㆃ([BII)V

    return-void
.end method

.method public ㆃ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ਚ;->Ͼ:Lnts/ᜂ;

    invoke-virtual {v0}, Lnts/ᜂ;->ᾨ()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnts/વ;->ᾨ:Lnts/ㆁ;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lnts/ㆁ;->ㆃ([BII)V

    return-void
.end method
