.class Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/event/TerminateEvent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/transistorsoft/locationmanager/event/TerminateEvent;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/event/TerminateEvent;Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->c:Lcom/transistorsoft/locationmanager/event/TerminateEvent;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "TERMINATE_EVENT ignored (MainActivity is still active)."

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setActivity(Landroid/app/Activity;)V

    .line 5
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onActivityDestroy()V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->isUpdatingLocation()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 12
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    if-eqz v2, :cond_3

    .line 13
    :cond_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->logBackgroundWarning(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnableHeadless()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v2, "terminate"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    :cond_4
    return-void
.end method
