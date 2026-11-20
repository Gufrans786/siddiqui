.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/util/LocationAuthorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "LocationAuthorization: Permission denied"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 7
    invoke-interface {v2, p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    .line 13
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 14
    :try_start_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 15
    invoke-interface {v1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 20
    :cond_3
    :goto_2
    new-instance p1, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getStatus()I

    move-result v0

    .line 23
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 26
    :cond_4
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "LocationAuthorization: Permission granted"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 5
    invoke-interface {v2}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getStatus()I

    move-result v1

    .line 11
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/intentfilter/androidpermissions/PermissionManager;->checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method
