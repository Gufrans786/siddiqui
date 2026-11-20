.class public Lnts/ヌ;
.super Lnts/ⶫ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    const/16 v1, 0x1000

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/PushbackInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 2
    :goto_0
    new-instance v0, Lnts/ᝁ;

    invoke-direct {v0}, Lnts/ᝁ;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lnts/ⶫ;-><init>(Ljava/io/InputStream;Lnts/ᝁ;I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lnts/ⶫ;->ዲ:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lnts/ⶫ;->ᙕ:I

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lnts/ⶫ;->ౠ:Lnts/ᥛ;

    if-eqz v1, :cond_2

    int-to-long v2, v0

    .line 4
    invoke-interface {v1}, Lnts/ᥛ;->ㆃ()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0xf

    const-string v2, "5\u001b\u001d\u0015W\u0018\u0014\u0019\u001eZ\u000c\u0016\r\u001b\u001c\u0018\u0002\u0000\r\u0005IjWY\u001d}aqi\u0016_QTVVB\u0011G\\\u000cDD]IEOC\n\u0002?1u\u0015\t\u0019\u0001~79<>>*y/4d,,5!-\'+bTig#C_OW(aojhh|/yb2zzcw{q}4f[U\u0011qm}e\u001aS]XZZN\u001dKP\u0000HHQEICO\u0006\u00c0\u00fd\u00f3\u00b7\u00d7\u00cb\u00db\u00c3\u00bc\u00f5\u00fb\u00fe\u00fc\u00fc\u00e8\u00bb\u00ed\u00f6\u00a6\u00ee\u00ee\u00f7\u00e3\u00ef\u00e5\u00e9\u00a0\u0089\u00b4\u00ba\u00fe\u009e\u0082\u0092\u008a\u00f5\u00bc\u00b2\u00b7\u00b5\u00b5\u00a1\u00f2\u00a4\u00bf\u00ef\u00a7\u00a7\u00be\u00aa\u00a6\u00ac\u00a0\u00e9\u00b7\u008a\u0084\u00c0\u00a4\u00b4\u00a6\u00c9\u00d8\u00d8\u00c9\u008b\u0087\u008b\u008e\u0087\u0080\u0087\u009c\u00d0\u009e\u0085\u00d5\u009d\u0095\u0099\u0096\u008a\u008d\u009b\u009e\u0088\u00ed\u009d\u00a0\u00ae\u00ea\u008e\u009e\u008c\u00ee\u00a2\u00a8\u00a6\u00a1\u00ae\u00b7\u00b2\u00ab\u00f9\u00b1\u00a8\u00fa\u00b4\u00b2\u00bc\u00b1\u00a3\u00a2\u00b6\u00b1\u00a1\u00fa"

    const/16 v3, 0xd8

    const/16 v4, 0x1e

    .line 6
    invoke-static {v2, v3, v4, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    .line 7
    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lnts/ⶫ;->ዲ:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lnts/ⶫ;->ᎊ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lnts/ⶫ;->ㆃ:Z

    return-void
.end method

.method public ㆃ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lnts/ⶫ;->ㆃ(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lnts/ⶫ;->ㆃ([BII)I

    move-result v1

    int-to-long v3, v1

    .line 3
    invoke-virtual {p0, v0, v2, v2}, Lnts/ⶫ;->ㆃ([BII)I

    .line 4
    iget-object v0, p0, Lnts/ⶫ;->ౠ:Lnts/ᥛ;

    invoke-interface {v0}, Lnts/ᥛ;->ㆃ()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x75

    const-string v2, "5\u001b\u001d\u0015W\u0018\u0014\u0019\u001eZ\u000c\u0016\r\u001b\u001c\u0018\u0002\u0000\r\u0005IjWY\u001d}aqi\u0016_QTVVB\u0011G\\\u000cDD]IEOC\n\u0002?1u\u0015\t\u0019\u0001~79<>>*y/4d,,5!-\'+bTig#C_OW(aojhh|/yb2zzcw{q}4f[U\u0011qm}e\u001aS]XZZN\u001dKP\u0000HHQEICO\u0006\u00c0\u00fd\u00f3\u00b7\u00d7\u00cb\u00db\u00c3\u00bc\u00f5\u00fb\u00fe\u00fc\u00fc\u00e8\u00bb\u00ed\u00f6\u00a6\u00ee\u00ee\u00f7\u00e3\u00ef\u00e5\u00e9\u00a0\u0089\u00b4\u00ba\u00fe\u009e\u0082\u0092\u008a\u00f5\u00bc\u00b2\u00b7\u00b5\u00b5\u00a1\u00f2\u00a4\u00bf\u00ef\u00a7\u00a7\u00be\u00aa\u00a6\u00ac\u00a0\u00e9\u00b7\u008a\u0084\u00c0\u00a4\u00b4\u00a6\u00c9\u00d8\u00d8\u00c9\u008b\u0087\u008b\u008e\u0087\u0080\u0087\u009c\u00d0\u009e\u0085\u00d5\u009d\u0095\u0099\u0096\u008a\u008d\u009b\u009e\u0088\u00ed\u009d\u00a0\u00ae\u00ea\u008e\u009e\u008c\u00ee\u00a2\u00a8\u00a6\u00a1\u00ae\u00b7\u00b2\u00ab\u00f9\u00b1\u00a8\u00fa\u00b4\u00b2\u00bc\u00b1\u00a3\u00a2\u00b6\u00b1\u00a1\u00fa"

    const/16 v3, 0xb7

    const/16 v4, 0x21

    .line 6
    invoke-static {v2, v3, v4, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    .line 7
    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method
