.class public Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;
    }
.end annotation


# static fields
.field public static final ACCESS_BACKGROUND_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"

.field public static final ACTION_ACTIVITY_IS_ACTIVE:Ljava/lang/String; = "ACTIVITY_IS_ACTIVE"

.field public static final ACTION_LOCATION_SETTINGS:Ljava/lang/String; = "locationsettings"

.field public static final LOCATION_SETTINGS_REQUEST_CODE:I = 0x65

.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Hg2-ZAD0qb5vgGwsYJ-x8kTd5bU(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Slq0486YH9d8cJ_Ly4EHcKiHr2U(Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->buildLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v0

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/app/Activity;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 15
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Unknown action sent to TSLocationManagerActivity -- stopping"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 20
    const-string v0, "locationsettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a()V

    return-void

    .line 22
    :cond_1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->b()V

    :cond_2
    return-void
.end method

.method private static synthetic a(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->b:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private synthetic a(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 31
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    .line 32
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 38
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Location Settings Resolution: START"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 44
    :try_start_1
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    const/16 v0, 0x65

    .line 47
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 53
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 56
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x2136

    if-ne v0, p1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getBackgroundPermissionRationale()Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->pause()V

    .line 5
    new-instance v1, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$a;-><init>(Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->onStartActivity(Landroid/app/Activity;Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->resume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static isActive()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Action \'"

    .line 1
    const-string v1, "locationsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableLocationAuthorizationAlert()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v2, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->b:Ljava/util/Set;

    monitor-enter v2

    .line 14
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' already pending <IGNORED>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 16
    monitor-exit v2

    return-void

    .line 18
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    new-instance p1, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 28
    :cond_3
    :goto_0
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initiate TSLocationManagerActivity action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " (MainActivity is null)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 29
    sget-object p0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->b:Ljava/util/Set;

    monitor-enter p0

    .line 30
    :try_start_2
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 31
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public static startIfEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    const-string v1, "locationsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "Location settings resolution: ACCEPTED"

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3
    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/location/LocationSettingsStates;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationSettingsStates;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x65

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "Location settings resolution: DENIED"

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->cancel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    return-void

    .line 32
    :catch_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->c()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->pause()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
