.class Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/provider/TSProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$gBOv60l-DgnKbLyBJ8jMt2hDavA(Lcom/transistorsoft/locationmanager/provider/TSProviderManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b;->a(Lcom/transistorsoft/locationmanager/provider/TSProviderManager;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/locationmanager/provider/TSProviderManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/provider/TSProviderManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a(Lcom/transistorsoft/locationmanager/provider/TSProviderManager;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/provider/TSProviderManager;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
