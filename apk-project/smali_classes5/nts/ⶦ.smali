.class public Lnts/ⶦ;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public ㆃ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;


# direct methods
.method public constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ⶦ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⶦ;->ᇭ(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⶦ;->ᇭ(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lnts/ⶦ;->ㆃ(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 13
    iget-object p2, p0, Lnts/ⶦ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;

    invoke-virtual {p2, p1}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ᾨ(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    sget-object p1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    const/16 v2, 0x24

    const/16 v3, 0xa0

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnts/ᄎ;->ᇭ(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ᇭ(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lnts/ⶦ;->ㆃ(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnts/ⶦ;->ᾨ(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    const/16 v3, 0x10

    const/16 v4, 0x45

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnts/ᄎ;->ᇭ(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/16 v0, 0x18

    const/16 v1, 0x2c

    const/16 v2, 0x67

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnts/ᄎ;->ᡲ:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v0, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public final ᾨ(Landroid/net/Uri;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc

    const/16 v1, 0x23

    const/16 v2, 0x94

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ㆃ(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0x43

    const/16 v2, 0x7f

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/16 v1, 0x74

    const/16 v2, 0x85

    .line 2
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    const/16 v1, 0x1b

    const/16 v2, 0x8a

    .line 3
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
