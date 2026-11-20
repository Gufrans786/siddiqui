.class public Lcom/intentfilter/androidpermissions/services/BroadcastService;
.super Ljava/lang/Object;
.source "BroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentfilter/androidpermissions/services/BroadcastService$IntentAction;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/services/BroadcastService;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public broadcastPermissionRequestResult(Ljava/util/Set;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentfilter/androidpermissions/models/DeniedPermissions;",
            ")V"
        }
    .end annotation

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intentfilter.androidpermissions.PERMISSIONS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "com.intentfilter.androidpermissions.PERMISSIONS_GRANTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string p1, "com.intentfilter.androidpermissions.PERMISSIONS_DENIED"

    invoke-static {p2}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/services/BroadcastService;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
