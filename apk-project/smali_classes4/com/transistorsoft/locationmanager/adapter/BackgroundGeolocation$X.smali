.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "X"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method public constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;)Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->persist(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->count()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush()V

    :cond_1
    :goto_0
    return-void

    .line 20
    :cond_2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$b;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$b;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
