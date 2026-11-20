.class public Lcom/transistorsoft/locationmanager/service/TrackingService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/TrackingService$f;
    }
.end annotation


# static fields
.field private static final A:I = 0x124f80

.field private static final B:Landroid/os/Handler;

.field private static final z:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private q:Z

.field private r:Landroid/location/Location;

.field private s:Landroid/location/Location;

.field private t:Ljava/util/Date;

.field private u:Z

.field private v:Lcom/google/android/gms/location/LocationAvailability;

.field private w:Lcom/google/android/gms/location/LocationResult;

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$yBI3JF77rzCAQ_CPRGsYDzdglis(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/TrackingService;->B:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    .line 17
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->s:Landroid/location/Location;

    .line 22
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->s:Landroid/location/Location;

    return-object p0
.end method

.method private a(JLandroid/location/Location;)V
    .locals 8

    if-nez p3, :cond_0

    .line 6
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "beginMotionActivityCheckTimer was provided null location"

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableStopDetection()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->s:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDistanceFilter()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :goto_0
    return-void

    .line 19
    :cond_2
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->s:Landroid/location/Location;

    const-wide/32 v0, 0xea60

    add-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    cmp-long p3, p1, v0

    if-lez p3, :cond_3

    move-wide v4, v0

    goto :goto_1

    :cond_3
    move-wide v4, p1

    .line 28
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v2

    .line 29
    const-string p1, "MOTION_ACTIVITY_CHECK"

    invoke-virtual {v2, p1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 30
    const-string v3, "MOTION_ACTIVITY_CHECK"

    invoke-virtual/range {v2 .. v7}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/TrackingService;JLandroid/location/Location;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(JLandroid/location/Location;)V

    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 12

    .line 31
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableStopDetection()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 40
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\ud83d\udc1e Mock location detected with motion-activity STILL:  stopTimeout timer would normally be initiated here \ud83d\udc1e."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return v3

    .line 47
    :cond_2
    iput-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    .line 50
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopTimeout()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    const/16 v6, 0x1a

    if-lt v2, v6, :cond_3

    .line 53
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/32 v4, 0x124f80

    :cond_3
    move-wide v8, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-gtz v0, :cond_4

    .line 60
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Stop-timeout elapsed!"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v3, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return v1

    .line 65
    :cond_4
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "tslocationmanager_chime_bell_confirm"

    invoke-virtual {v0, v2, v3}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 69
    const-string v7, "STOP_TIMEOUT"

    invoke-virtual/range {v6 .. v11}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    .line 72
    const-string v0, "MOTION_ACTIVITY_CHECK"

    invoke-virtual {v6, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->v:Lcom/google/android/gms/location/LocationAvailability;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->requestLocationUpdates()V

    goto :goto_0

    .line 78
    :cond_5
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/TrackingService;Landroid/location/Location;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/service/TrackingService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->s:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/service/TrackingService;)Lcom/google/android/gms/location/LocationAvailability;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->v:Lcom/google/android/gms/location/LocationAvailability;

    return-object p0
.end method

.method static b(Landroid/content/Context;)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableStopDetection()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    const-string v1, "STOP_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 10
    const-class v0, Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {p0, v0, p1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->launchService(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/location/LocationAvailability;->extractLocationAvailability(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->v:Lcom/google/android/gms/location/LocationAvailability;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->v:Lcom/google/android/gms/location/LocationAvailability;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location availability: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->v:Lcom/google/android/gms/location/LocationAvailability;

    return-void
.end method

.method private b(Landroid/location/Location;)V
    .locals 7

    .line 11
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 12
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Received stoppedAt location"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->w:Lcom/google/android/gms/location/LocationResult;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->elapsedTimeMillis(Landroid/location/Location;Landroid/location/Location;)J

    move-result-wide v0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getLastActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 36
    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-nez v2, :cond_8

    .line 37
    invoke-direct {p0, v0, v1, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(JLandroid/location/Location;)V

    return-void

    .line 43
    :cond_2
    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-nez v2, :cond_4

    .line 44
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 49
    :cond_3
    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-nez v2, :cond_4

    .line 51
    invoke-direct {p0, v0, v1, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(JLandroid/location/Location;)V

    return-void

    .line 56
    :cond_4
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    if-nez v2, :cond_5

    .line 57
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "performStopDetection found mStoppedAtLocation == null"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    invoke-virtual {p1, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    .line 69
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    .line 70
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStationaryRadius()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x41c80000    # 25.0f

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_6

    move v2, v4

    .line 73
    :cond_6
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Distance from stoppedAtLocation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    cmpl-float v2, v3, v2

    if-lez v2, :cond_8

    .line 77
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "Force cancel cancel stopTimeout due to apparent movement beyond stoppedAt location"

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 78
    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz v2, :cond_7

    .line 79
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    .line 85
    :cond_7
    invoke-direct {p0, v0, v1, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(JLandroid/location/Location;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/location/LocationAvailability;->hasLocationAvailability(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/location/LocationAvailability;->extractLocationAvailability(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location availability: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "TrackingService: LocationResult"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object p1

    .line 13
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_1

    .line 18
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Unexpected null from LocationResult.getLastLocation() while trying to determine distance from stoppedAtLocation"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 23
    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 25
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 27
    :cond_2
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v4

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\ud83d\udccd  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Age: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_3
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    .line 36
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/google/android/gms/location/LocationResult;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableStopDetection()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/location/Location;)V

    .line 43
    :cond_4
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->w:Lcom/google/android/gms/location/LocationResult;

    return-void
.end method

.method public static changePace(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, p1, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public static changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string p0, "Refused attempt to execute changePace while disabled <IGNORED>"

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    return-void

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v1

    .line 11
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 12
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Cannot changePace(true) while in the background with WhenInUse authorization"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->requestsLocationAlways()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/TrackingService$b;-><init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x3

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    :cond_2
    return-void

    .line 38
    :cond_3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMotionTriggerDelay()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 39
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    const-string v2, "MOTION_TRIGGER_DELAY"

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 42
    :cond_4
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez p2, :cond_5

    .line 48
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->isAcquiringMotionChange()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    sget-object v3, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getRequest(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    move-result-object v4

    if-eqz v4, :cond_5

    if-ne p1, v2, :cond_5

    .line 51
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Waiting for existing motionchange request #"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to complete"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setIsMoving(Ljava/lang/Boolean;)V

    .line 57
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v3

    if-eqz p1, :cond_6

    .line 60
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->stop(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    .line 63
    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringStationaryRegion()V

    .line 65
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 66
    const-string v0, "motionchange"

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_6
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    const-string v4, "MOTION_ACTIVITY_CHECK"

    invoke-virtual {v0, v4}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringSignificantLocationChanges()V

    .line 75
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->start(Landroid/content/Context;)V

    .line 78
    :cond_7
    :goto_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->isAcquiringMotionChange()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    sget-object v0, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(I)V

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 83
    :cond_8
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/transistorsoft/locationmanager/service/TrackingService$f;

    invoke-direct {v3, p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/TrackingService$f;-><init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 84
    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p2

    check-cast p2, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    .line 85
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;

    move-result-object p2

    .line 87
    sget-object v0, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    invoke-virtual {v1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    .line 93
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopUpdatingLocation()V

    .line 94
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    const-string p2, "STOP_TIMEOUT"

    invoke-virtual {p0, p2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 97
    :cond_9
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setPace: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " \u2192 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static changeTrackingMode(Landroid/content/Context;ILcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopUpdatingLocation()V

    .line 5
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->stop(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->isAcquiringMotionChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(I)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setEnabled(Ljava/lang/Boolean;Z)V

    .line 14
    invoke-static {p0, p2}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v0

    invoke-static {p0, v2, p1, v0}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, v2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    const-string v1, "MOTION_ACTIVITY_CHECK"

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->s:Landroid/location/Location;

    return-void
.end method

.method public static isAcquiringMotionChange()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    const-string v2, "STOP_TIMEOUT"

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->r:Landroid/location/Location;

    .line 7
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v1

    const-string/jumbo v2, "tslocationmanager_bell_ding_pop"

    invoke-virtual {v1, v0, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TrackingService motionchange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopAfterElapsedMinutes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->t:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopAfterElapsedMinutes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0xea60

    mul-long v7, v1, v3

    .line 12
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v7

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->t:Ljava/util/Date;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v6, "STOP_AFTER_ELAPSED_MINUTES"

    invoke-virtual/range {v5 .. v10}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnStationary()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->u:Z

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 22
    :cond_3
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->u:Z

    if-eqz v0, :cond_4

    .line 23
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stopping on stationary"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->stop(Landroid/content/Context;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->t:Ljava/util/Date;

    .line 28
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    .line 29
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->i()V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopUpdatingLocation()V

    return-void
.end method

.method public static restart(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 4
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->requestLocationUpdates()V

    return-void

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/TrackingService$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/service/TrackingService$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 4

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setEnabled(Ljava/lang/Boolean;)V

    .line 8
    const-string v2, "locationsettings"

    invoke-static {p0, v2}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->startIfEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->start()V

    .line 13
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->startMonitoringConnectivityChanges(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->getInstance()Lcom/transistorsoft/locationmanager/device/DeviceSettings;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->startMonitoringPowerSaveChanges(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    .line 22
    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/transistorsoft/locationmanager/service/TrackingService$f;

    .line 23
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, p0, v3, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService$f;-><init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    const/4 v1, 0x3

    .line 24
    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setPersist(Z)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    .line 26
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;

    move-result-object p1

    .line 28
    sget-object v1, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 30
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 33
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->start(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    const-string v2, "STOP_TIMEOUT"

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string v2, "MOTION_TRIGGER_DELAY"

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 10
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setEnabled(Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setIsMoving(Ljava/lang/Boolean;)V

    .line 13
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    .line 14
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->isAcquiringMotionChange()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    sget-object v3, Lcom/transistorsoft/locationmanager/service/TrackingService;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(I)V

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopAfterElapsedMinutes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 23
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    const-string v3, "STOP_AFTER_ELAPSED_MINUTES"

    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 26
    :cond_2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->stopService(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stop()V

    .line 30
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stop()V

    .line 32
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringStationaryRegion()V

    .line 34
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->stop(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->stop(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->stopMonitoringConnectivityChanges(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->getInstance()Lcom/transistorsoft/locationmanager/device/DeviceSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->stopMonitoringPowerSaveChanges(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/crash/a;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/crash/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/crash/a;->h()V

    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->stop(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onActivityTransitionEvent(Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getTransitionType()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 6
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigChange(Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    const-string v1, "foregroundService"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x97b639

    if-eqz v1, :cond_1

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getForegroundService()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->build(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getForegroundService()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->build(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 19
    :cond_2
    const-string v1, "heartbeatInterval"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHeartbeatInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->stop(Landroid/content/Context;)V

    .line 27
    :cond_4
    :goto_1
    const-string/jumbo v1, "stopTimeout"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz v1, :cond_5

    .line 29
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/service/TrackingService$d;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/service/TrackingService$d;-><init>(Lcom/transistorsoft/locationmanager/service/TrackingService;)V

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastGoodLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    .line 40
    :cond_5
    const-string/jumbo v1, "stopAfterElapsedMinutes"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopAfterElapsedMinutes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v3

    .line 43
    const-string v2, "STOP_AFTER_ELAPSED_MINUTES"

    invoke-virtual {v3, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 44
    iput-object v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->t:Ljava/util/Date;

    if-lez v1, :cond_6

    int-to-long v1, v1

    const-wide/32 v4, 0xea60

    mul-long v5, v1, v4

    .line 47
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->t:Ljava/util/Date;

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 48
    const-string v4, "STOP_AFTER_ELAPSED_MINUTES"

    invoke-virtual/range {v3 .. v8}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    .line 51
    :cond_6
    const-string/jumbo v1, "useSignificantChangesOnly"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 56
    :cond_7
    const-string v1, "disableStopDetection"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 57
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableStopDetection()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 58
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->w:Lcom/google/android/gms/location/LocationResult;

    if-eqz p1, :cond_8

    .line 60
    new-instance p1, Landroid/location/Location;

    const-string v0, "TSLocationManager"

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->w:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 63
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/location/Location;)V

    return-void

    .line 65
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->updateLocationRequest()V

    return-void

    .line 68
    :cond_9
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->i()V

    .line 69
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    :cond_a
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->j()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    .line 8
    const-string v1, "MOTION_ACTIVITY_CHECK"

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onMotionActivityCheckEvent(Lcom/transistorsoft/locationmanager/event/MotionActivityCheckEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->q:Z

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->w:Lcom/google/android/gms/location/LocationResult;

    if-nez p1, :cond_2

    .line 13
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "onMotionActivityCheckEvent fired but found a null mLastLocationResult"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->updateLocationRequest()V

    return-void

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/service/TrackingService$e;-><init>(Lcom/transistorsoft/locationmanager/service/TrackingService;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    if-eqz v0, :cond_a

    .line 18
    const-string p1, "motionchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    :cond_3
    invoke-virtual {p0, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 22
    :cond_4
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(J)V

    goto :goto_0

    :cond_5
    const-wide/16 v3, 0x0

    .line 25
    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(J)V

    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->k()V

    goto/16 :goto_2

    .line 28
    :cond_6
    const-string p1, "STOP_TIMEOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 31
    :cond_7
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->isAcquiringMotionChange()Z

    move-result p1

    if-nez p1, :cond_e

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/service/TrackingService$c;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/service/TrackingService$c;-><init>(Lcom/transistorsoft/locationmanager/service/TrackingService;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastGoodLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    goto :goto_2

    .line 44
    :cond_9
    const-string/jumbo p1, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 45
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "action: start"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    goto :goto_2

    .line 48
    :cond_a
    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 50
    invoke-virtual {p0, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 59
    :cond_b
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->c(Landroid/content/Intent;)V

    goto :goto_2

    .line 60
    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/location/LocationAvailability;->hasLocationAvailability(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/content/Intent;)V

    goto :goto_2

    .line 63
    :cond_d
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UNKNOWN INTENT RECEIVED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 68
    :cond_e
    :goto_2
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 69
    invoke-virtual {p0, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 71
    :cond_f
    invoke-virtual {p0, p3}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return v1
.end method

.method public onStopAfterElapsedMinutesEvent(Lcom/transistorsoft/locationmanager/event/StopAfterElapsedMinutesEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService;->t:Ljava/util/Date;

    return-void
.end method
