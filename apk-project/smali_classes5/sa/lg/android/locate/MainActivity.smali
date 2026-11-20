.class public final Lsa/lg/android/locate/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\"\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lsa/lg/android/locate/MainActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "<init>",
        "()V",
        "mReactInstanceManager",
        "Lcom/facebook/react/ReactInstanceManager;",
        "getMainComponentName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "createReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "LGo-v4.1.0(68)-(231026_2115)_productionRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 4

    .line 42
    new-instance v0, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactActivity;

    invoke-virtual {p0}, Lsa/lg/android/locate/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;Z)V

    check-cast v0, Lcom/facebook/react/ReactActivityDelegate;

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "locate_go"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/ReactActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 31
    :try_start_0
    iget-object v0, p0, Lsa/lg/android/locate/MainActivity;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/react/ReactInstanceManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lsa/lg/android/locate/autobid/AutoBidLoginActivity;->guard(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_login_required

    return-void

    :cond_login_required

    .line 24
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lorg/devio/rn/splashscreen/SplashScreen;->show(Landroid/app/Activity;)V

    .line 25
    invoke-virtual {p0}, Lsa/lg/android/locate/MainActivity;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    iput-object p1, p0, Lsa/lg/android/locate/MainActivity;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {p0}, Lsa/lg/android/locate/autobid/AutoBidController;->install(Landroid/app/Activity;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1}, Lsa/lg/android/locate/autobid/AutoBidController;->handleVolumeUp(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_autobid_volume

    return v0

    :cond_autobid_volume
    invoke-static {p0, p1}, Lsa/lg/android/locate/autobid/AutoBidController;->handleVolumeDown(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_autobid_volume_down

    return v0

    :cond_autobid_volume_down
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
