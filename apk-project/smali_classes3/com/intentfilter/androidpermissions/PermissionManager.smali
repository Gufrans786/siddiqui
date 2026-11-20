.class public Lcom/intentfilter/androidpermissions/PermissionManager;
.super Landroid/content/BroadcastReceiver;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;
    }
.end annotation


# static fields
.field private static permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

.field private notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

.field private final permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-direct {v0, p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;-><init>(Lcom/intentfilter/androidpermissions/PermissionManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    .line 43
    const-class p1, Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-static {p1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    .line 44
    invoke-static {}, Lcom/intentfilter/androidpermissions/NotificationSettings;->getDefault()Lcom/intentfilter/androidpermissions/NotificationSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/intentfilter/androidpermissions/PermissionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;

    .line 51
    :cond_0
    sget-object p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;

    return-object p0
.end method

.method private logPermissionsResponse([Ljava/lang/String;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 124
    const-string p2, "Received broadcast response for permission(s). \nGranted: %s\nDenied: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method private notificationDismissIntent(Ljava/util/Set;)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    const-class v2, Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 118
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    filled-new-array {v1}, [I

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/intentfilter/androidpermissions/helpers/VersionOrchestrator;->getImmutablePendingIntentFlags([I)I

    move-result v1

    const/16 v2, 0x64

    .line 119
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private permissionActivityIntent(Ljava/util/Set;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    const-class v2, Lcom/intentfilter/androidpermissions/PermissionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 90
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 1
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

    .line 55
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    const-string p1, "com.intentfilter.androidpermissions.PERMISSIONS_GRANTED"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string v0, "com.intentfilter.androidpermissions.PERMISSIONS_DENIED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    invoke-static {p2}, Lorg/parceler/Parcels;->unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/intentfilter/androidpermissions/PermissionManager;->logPermissionsResponse([Ljava/lang/String;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    .line 67
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->onPermissionsResult([Ljava/lang/String;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void
.end method

.method permissionAlreadyGranted(Ljava/lang/String;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const-string v1, "Registering for PERMISSIONS_REQUEST broadcast"

    invoke-virtual {v0, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method removePendingPermissionRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->invalidatePendingPermissionRequests(Ljava/util/Collection;)V

    return-void
.end method

.method public setNotificationSettings(Lcom/intentfilter/androidpermissions/NotificationSettings;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    return-void
.end method

.method showPermissionNotification(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/intentfilter/androidpermissions/services/NotificationService;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/intentfilter/androidpermissions/services/NotificationService;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    invoke-virtual {v1}, Lcom/intentfilter/androidpermissions/NotificationSettings;->getTitleResId()I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    invoke-virtual {v2}, Lcom/intentfilter/androidpermissions/NotificationSettings;->getMessageResId()I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    invoke-virtual {v3}, Lcom/intentfilter/androidpermissions/NotificationSettings;->getSmallIconResId()I

    move-result v3

    .line 81
    iget-object v4, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionActivityIntent(Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v4

    .line 83
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationDismissIntent(Ljava/util/Set;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/intentfilter/androidpermissions/services/NotificationService;->buildNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/intentfilter/androidpermissions/services/NotificationService;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method startPermissionActivity(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionActivityIntent(Ljava/util/Set;)Landroid/content/Intent;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const-string v1, "Un-registering for PERMISSIONS_REQUEST broadcast"

    invoke-virtual {v0, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
