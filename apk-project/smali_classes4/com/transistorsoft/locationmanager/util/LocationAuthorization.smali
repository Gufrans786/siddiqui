.class public Lcom/transistorsoft/locationmanager/util/LocationAuthorization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_REQUEST_ALWAYS:Ljava/lang/String; = "Always"

.field public static final AUTHORIZATION_REQUEST_ANY:Ljava/lang/String; = "Any"

.field public static final AUTHORIZATION_REQUEST_WHEN_IN_USE:Ljava/lang/String; = "WhenInUse"

.field public static final LOCATION_PERMISSION_DENIED:Ljava/lang/String; = "Permission denied"

.field public static final LOCATION_PERMISSION_GRANTED:Ljava/lang/String; = "Permission granted"

.field public static final LOCATION_PERMISSION_REQUESTING:Ljava/lang/String; = "Requesting permission"

.field public static final LOCATION_PERMISSION_REQUESTING_BACKGROUND:Ljava/lang/String; = "Requesting Background permission"

.field public static final NAME:Ljava/lang/String; = "LocationAuthorization"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->d(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 4
    const-string v0, "Always"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->c(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 3
    const-string v0, "Any"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;-><init>(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-static {p0, v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestPermission(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .line 5
    const-string v0, "WhenInUse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getBackgroundPermissionRationale()Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->shouldShow(Landroid/app/Activity;)Z

    move-result v3

    .line 42
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Should show backgroundPermissionRationale? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-nez v3, :cond_2

    .line 46
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void

    .line 50
    :cond_1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->c(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void

    .line 56
    :cond_2
    new-instance v3, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;

    invoke-direct {v3, p0, p1, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;-><init>(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    invoke-virtual {v2, v1, v3}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->show(Landroid/app/Activity;Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;)V

    return-void

    .line 57
    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 62
    sget-object v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_4
    new-instance v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;-><init>(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-static {p0, v1, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestPermission(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public static hasActivityPermission(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public static hasBackgroundPermission(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public static hasPermission(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static logBackgroundWarning(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p0

    .line 2
    const-string/jumbo v0, "\u26a0\ufe0f  Background location-updates forbidden (WhenInUse)"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Cannot initiate location requests in the background/headless with WhenInUse authorization."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location updates must have previously been initiated with your app in the foreground.  Eg: .changePace(true)."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "useSignificantChangesOnly cannot continue location-updates after app terminate."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "You may want to configure stopOnTerminate: true"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestActivityPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;

    invoke-direct {v2, p0, v0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    const-string v2, "LOCATION_ALWAYS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {p0, p2}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void

    .line 6
    :cond_1
    const-string v2, "LOCATION_WHEN_IN_USE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    const-string v2, "ACTIVITY_RECOGNITION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 11
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    sget-object p1, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a:Ljava/util/List;

    monitor-enter p1

    .line 20
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 24
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    return-void

    .line 28
    :cond_6
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;

    invoke-direct {p2, p0, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static requestTemporaryFullAccuracy(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$g;

    invoke-direct {v2, p0, v1, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$g;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {p0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;-><init>()V

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;

    invoke-direct {v1, p1, p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;-><init>(Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationAuthorizationRequest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    :cond_1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    :cond_2
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "LocationAuthorization: Permission granted"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$b;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$b;-><init>(Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 29
    :cond_3
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "LocationAuthorization: Requesting Background permission"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 31
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setDidShowBackgroundPermissionRationale(Ljava/lang/Boolean;)V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_6

    .line 38
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 39
    const-string v3, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationAuthorizationRequest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDidShowBackgroundPermissionRationale()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1e

    if-lt v2, v0, :cond_5

    .line 44
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->d(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void

    .line 47
    :cond_5
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_6
    invoke-static {p0, v1, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestPermission(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public static withPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$e;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$e;-><init>(Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "LocationAuthorization: Permission granted"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$f;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$f;-><init>(Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 22
    :cond_1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "LocationAuthorization: Requesting permission"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {p0, v0, p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestPermission(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method
