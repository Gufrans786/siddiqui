.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;
.super Lnts/ᯋ;
.source "SourceFile"


# instance fields
.field public ዲ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᯋ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ዲ:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 4
    sget p1, Lcom/nsoftware/ipworks3ds/sdk/R$layout;->activity_nsoftwaresdk_html:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 5
    sget-object p1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p1}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 8
    iget-object p1, p1, Lnts/ᣐ;->ᾭ:Lnts/ᗋ;

    invoke-virtual {p1}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ᇭ(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lnts/ᯋ;->onResume()V

    .line 3
    iget-boolean v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ዲ:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 8
    iget-object v0, v0, Lnts/ᣐ;->ឧ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    sget v1, Lcom/nsoftware/ipworks3ds/sdk/R$id;->htmlWebView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nsoftware/ipworks3ds/sdk/core/MyWebView;

    .line 11
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ᇭ(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ዲ:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;->ዲ:Z

    return-void
.end method

.method public final ᇭ(Ljava/lang/String;)V
    .locals 9

    const/16 v0, 0x26

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x5

    const/16 v3, 0x7d

    .line 2
    invoke-static {v2, v0, v3}, Lnts/ᾨ;->Ὺ(III)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lnts/ᾨ;->ㆃ(Landroid/view/Window;Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, p0}, Lnts/ᯋ;->ᰛ(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 7
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->htmlWebView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/nsoftware/ipworks3ds/sdk/core/MyWebView;

    .line 8
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 21
    new-instance v0, Lnts/ⶦ;

    invoke-direct {v0, p0}, Lnts/ⶦ;-><init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientWebChallengeListener;)V

    invoke-virtual {v3, v0}, Lcom/nsoftware/ipworks3ds/sdk/core/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v4, ""

    const/4 v8, 0x0

    move-object v5, p1

    .line 22
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p1}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lnts/ᯋ;->ᾨ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V

    return-void
.end method

.method public ᾨ(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
