.class public Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;
    }
.end annotation


# static fields
.field private static final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final s:J = 0xea60L

.field protected static t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static u:Lcom/google/android/gms/location/ActivityTransitionEvent;

.field private static final v:[Ljava/lang/String;


# instance fields
.field public mForegroundServiceType:I


# direct methods
.method public static synthetic $r8$lambda$B5q2b4KG5Vc7Z0TeHOJ2nAksvwo(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCT8WwtKVR13ZeCRdw1vuEgXvu0(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rLKqc9-u4r5Of6S-LLoBbgf0xuQ(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Lcom/google/android/gms/location/ActivityTransitionEvent;

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;-><init>(IIJ)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->u:Lcom/google/android/gms/location/ActivityTransitionEvent;

    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "HUAWEI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->v:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    const/16 v0, 0x100

    .line 12
    iput v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->mForegroundServiceType:I

    return-void
.end method

.method private a(Lcom/google/android/gms/location/ActivityRecognitionResult;)I
    .locals 4

    .line 209
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object p1

    .line 212
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/google/android/gms/location/DetectedActivity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->activity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 215
    sget-object v2, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 233
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->b(Landroid/content/Context;)V

    return v3
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;Lcom/google/android/gms/location/ActivityRecognitionResult;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)I

    move-result p0

    return p0
.end method

.method private static synthetic a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "Failed to initiate motion-activity updates (ERROR CODE: "

    .line 4
    sget-object v1, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    :try_start_0
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    .line 7
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").  This device does not support the Motion API due to missing sensors (eg: gyroscope, accelerometer)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/util/Sensors;->print()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initiate motion-activity updates:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/util/Sensors;->print()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/location/ActivityTransitionResult;)V
    .locals 18

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/ActivityTransitionResult;->getTransitionEvents()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 19
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "handleActivityTransitionResult received null transitionEvents"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_1
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v4, "Motion Transition Result"

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v5

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/location/ActivityTransitionEvent;

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getTransitionType()I

    move-result v6

    if-nez v6, :cond_13

    .line 33
    sget-object v6, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->u:Lcom/google/android/gms/location/ActivityTransitionEvent;

    .line 34
    sput-object v4, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->u:Lcom/google/android/gms/location/ActivityTransitionEvent;

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\ud83c\udfbe  ENTER: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v8

    invoke-static {v8}, Lcom/transistorsoft/locationmanager/util/Util;->getActivityName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasTriggerActivity(I)Z

    move-result v8

    const/4 v11, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v10, v11

    goto :goto_1

    :cond_2
    move v10, v9

    :goto_1
    if-eqz v7, :cond_3

    if-nez v8, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    move v12, v9

    .line 44
    :goto_2
    sget-object v13, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "*** wasMoving: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nowMoving: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", startedMoving: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", justStopped; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v13

    const/4 v14, 0x3

    const-wide/16 v16, 0x0

    const/4 v15, 0x0

    if-eq v13, v14, :cond_e

    if-eqz v12, :cond_4

    goto/16 :goto_7

    .line 68
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->i()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 95
    :cond_5
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v6, "Refused to initiate location-services from MotionTransition event in the background with WhenInUse authorization"

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_6
    :goto_3
    move-object/from16 v6, p0

    goto/16 :goto_9

    :cond_7
    :goto_4
    if-nez v10, :cond_9

    .line 96
    sget-object v4, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_6

    .line 117
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 118
    const-string v4, "STOP_TIMEOUT"

    invoke-virtual {v5, v4}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v4

    const-string/jumbo v6, "tslocationmanager_bell_ding_pop"

    invoke-virtual {v4, v0, v6}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_9
    :goto_5
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 121
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMotionTriggerDelay()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 122
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/32 v9, 0xea60

    cmp-long v4, v6, v9

    if-gez v4, :cond_a

    move-wide v6, v9

    :cond_a
    if-eqz v8, :cond_c

    cmp-long v4, v6, v16

    if-gtz v4, :cond_b

    goto :goto_6

    .line 129
    :cond_b
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v4

    const-string/jumbo v8, "tslocationmanager_dot_retry"

    invoke-virtual {v4, v0, v8}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-wide v7, v6

    .line 130
    const-string v6, "MOTION_TRIGGER_DELAY"

    invoke-virtual/range {v5 .. v10}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    .line 133
    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->canScheduleExactAlarms()Z

    move-result v4

    if-nez v4, :cond_6

    .line 134
    sget-object v4, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 135
    :cond_c
    :goto_6
    invoke-static {v0, v8, v15}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    goto :goto_3

    .line 147
    :cond_d
    invoke-static {v0, v8, v15}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    goto :goto_3

    .line 148
    :cond_e
    :goto_7
    sget-object v8, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMotionTriggerDelay()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v12, v16

    if-ltz v8, :cond_f

    if-nez v7, :cond_f

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v4

    if-eq v6, v4, :cond_f

    .line 151
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v4

    const-string/jumbo v6, "tslocationmanager_dot_stopaction2"

    invoke-virtual {v4, v0, v6}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    const-string v4, "MOTION_TRIGGER_DELAY"

    invoke-virtual {v5, v4}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    move-object/from16 v6, p0

    .line 153
    invoke-virtual {v6, v9}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    goto :goto_8

    :cond_f
    move-object/from16 v6, p0

    .line 155
    :goto_8
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 156
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 157
    sget-object v4, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_10

    .line 158
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v4, v15}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    goto :goto_9

    .line 160
    :cond_10
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Landroid/content/Context;)V

    goto :goto_9

    .line 163
    :cond_11
    invoke-static {v0, v9, v15}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 198
    :cond_12
    :goto_9
    sget-object v4, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v6, p0

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\ud83d\udd34  EXIT: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/util/Util;->getActivityName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_14
    move-object/from16 v6, p0

    .line 203
    const-string/jumbo v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;Lcom/google/android/gms/location/ActivityTransitionResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Lcom/google/android/gms/location/ActivityTransitionResult;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "Failed to initiate activity-transition updates (ERROR CODE: "

    .line 205
    :try_start_0
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    .line 206
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").  This device does not support the Motion API due to missing sensors (eg: gyroscope, accelerometer)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 208
    :catch_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initiate activity-transition updates:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 3
    sget-object p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x8

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 11
    new-instance v5, Lcom/google/android/gms/location/ActivityTransition$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/location/ActivityTransition$Builder;-><init>()V

    .line 12
    invoke-virtual {v5, v4}, Lcom/google/android/gms/location/ActivityTransition$Builder;->setActivityType(I)Lcom/google/android/gms/location/ActivityTransition$Builder;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v1}, Lcom/google/android/gms/location/ActivityTransition$Builder;->setActivityTransition(I)Lcom/google/android/gms/location/ActivityTransition$Builder;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/location/ActivityTransition$Builder;->build()Lcom/google/android/gms/location/ActivityTransition;

    move-result-object v5

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v5, Lcom/google/android/gms/location/ActivityTransition$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/location/ActivityTransition$Builder;-><init>()V

    .line 20
    invoke-virtual {v5, v4}, Lcom/google/android/gms/location/ActivityTransition$Builder;->setActivityType(I)Lcom/google/android/gms/location/ActivityTransition$Builder;

    move-result-object v4

    .line 21
    invoke-virtual {v4, v2}, Lcom/google/android/gms/location/ActivityTransition$Builder;->setActivityTransition(I)Lcom/google/android/gms/location/ActivityTransition$Builder;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityTransition$Builder;->build()Lcom/google/android/gms/location/ActivityTransition;

    move-result-object v4

    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognition;->getClient(Landroid/content/Context;)Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-static {p0, v1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 34
    invoke-interface {v0, p0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->removeActivityUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 37
    new-instance v1, Lcom/google/android/gms/location/ActivityTransitionRequest;

    invoke-direct {v1, v3}, Lcom/google/android/gms/location/ActivityTransitionRequest;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->requestActivityTransitionUpdates(Lcom/google/android/gms/location/ActivityTransitionRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static disableMotionTriggerDelay(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method public static getLastActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->u:Lcom/google/android/gms/location/ActivityTransitionEvent;

    return-object v0
.end method

.method public static getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->u:Lcom/google/android/gms/location/ActivityTransitionEvent;

    return-object v0
.end method

.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    if-lt p1, v1, :cond_1

    .line 7
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p1

    invoke-static {p0, v3, v0, p1}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBadVendor()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->v:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMoving(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->u:Lcom/google/android/gms/location/ActivityTransitionEvent;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasTriggerActivity(I)Z

    move-result p0

    return p0
.end method

.method public static isStarted()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->hasGeofences()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Start motion-activity updates"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/location/ActivityRecognition;->getClient(Landroid/content/Context;)Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x0

    .line 29
    invoke-static {v0, v2}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/gms/location/ActivityRecognitionClient;->requestActivityUpdates(JLandroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$$ExternalSyntheticLambda0;-><init>()V

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 32
    :cond_4
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Cannot start motion-activity updates:  permission is denied"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop motion-activity updates"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognition;->getClient(Landroid/content/Context;)Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/location/ActivityRecognitionClient;->removeActivityTransitionUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/location/ActivityRecognitionClient;->removeActivityUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method private static stopService(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->stop(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x100

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
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x1

    .line 1
    invoke-super {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result p2

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p2, :cond_0

    .line 5
    sget-object p1, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x2

    return p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;-><init>(Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;Landroid/content/Intent;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    return p1
.end method
