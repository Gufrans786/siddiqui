.class Lcom/intentfilter/androidpermissions/PermissionHandler;
.super Ljava/lang/Object;
.source "PermissionHandler.java"


# instance fields
.field private final appStatus:Lcom/intentfilter/androidpermissions/helpers/AppStatus;

.field private final logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

.field private final manager:Lcom/intentfilter/androidpermissions/PermissionManager;

.field private final pendingPermissionRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intentfilter/androidpermissions/PermissionManager;Landroid/content/Context;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    invoke-direct {v0, p2}, Lcom/intentfilter/androidpermissions/helpers/AppStatus;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-static {p2}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;-><init>(Lcom/intentfilter/androidpermissions/helpers/AppStatus;Lcom/intentfilter/androidpermissions/helpers/Logger;Lcom/intentfilter/androidpermissions/PermissionManager;)V

    return-void
.end method

.method constructor <init>(Lcom/intentfilter/androidpermissions/helpers/AppStatus;Lcom/intentfilter/androidpermissions/helpers/Logger;Lcom/intentfilter/androidpermissions/PermissionManager;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    .line 35
    iput-object p2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    .line 36
    iput-object p3, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    .line 37
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->appStatus:Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    return-void
.end method

.method private filterGrantedPermissions(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v2, v1}, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionAlreadyGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private filterPendingPermissions(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Permission request for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pending, not asking again."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private informPermissionsDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 96
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 97
    invoke-virtual {p1}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;->stripped()Ljava/util/Set;

    move-result-object v3

    .line 98
    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 100
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {v1, p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    .line 102
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private informPermissionsGranted([Ljava/lang/String;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 109
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 112
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {v1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    .line 114
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerForBroadcastIfNeeded(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->filterGrantedPermissions(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p2}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p2, "com.intentfilter.androidpermissions.PERMISSIONS_REQUEST"

    invoke-direct {p0, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->registerForBroadcastIfNeeded(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->filterPendingPermissions(Ljava/util/Set;)V

    .line 49
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->requestPermissions(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method invalidatePendingPermissionRequests(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 83
    new-instance v0, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {v0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;-><init>()V

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    new-instance v2, Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/intentfilter/androidpermissions/models/DeniedPermission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0, v0}, Lcom/intentfilter/androidpermissions/PermissionHandler;->informPermissionsDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    .line 89
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->unregisterBroadcastReceiver()V

    :cond_1
    return-void
.end method

.method onPermissionsResult([Ljava/lang/String;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-direct {p0, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->informPermissionsDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->informPermissionsGranted([Ljava/lang/String;)V

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 62
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;->stripped()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 63
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->unregisterBroadcastReceiver()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method requestPermissions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No pending foreground permission request for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", asking."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->appStatus:Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    invoke-virtual {v0}, Lcom/intentfilter/androidpermissions/helpers/AppStatus;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->startPermissionActivity(Ljava/util/Set;)V

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->showPermissionNotification(Ljava/util/Set;)V

    return-void
.end method
