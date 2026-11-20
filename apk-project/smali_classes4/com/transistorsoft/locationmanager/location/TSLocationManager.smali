.class public Lcom/transistorsoft/locationmanager/location/TSLocationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;,
        Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;
    }
.end annotation


# static fields
.field public static final LOCATION_ERROR_BACKGROUND_WHEN_IN_USE:I = 0x3

.field public static final LOCATION_ERROR_CANCELLED:I = 0x1f3

.field public static final LOCATION_ERROR_DENIED:I = 0x1

.field public static final LOCATION_ERROR_MINIMUM_ACCURACY:I = 0x64

.field public static final LOCATION_ERROR_NETWORK:I = 0x2

.field public static final LOCATION_ERROR_NOT_INITIALIZED:I = -0x1

.field public static final LOCATION_ERROR_TIMEOUT:I = 0x198

.field public static final LOCATION_ERROR_TRACKING_MODE_DISABLED:I = 0x65

.field public static final LOCATION_ERROR_UNKNOWN:I = 0x0

.field private static n:Lcom/transistorsoft/locationmanager/location/TSLocationManager; = null

.field private static final o:F = 250.0f

.field private static final p:Ljava/lang/String; = "odometer_latitude"

.field private static final q:Ljava/lang/String; = "odometer_longitude"

.field private static final r:Ljava/lang/String; = "odometer_accuracy"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/location/LocationRequest;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

.field private g:Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

.field private final h:Landroid/location/Location;

.field private final i:Landroid/location/Location;

.field private final j:Landroid/location/Location;

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private l:F

.field private m:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;


# direct methods
.method public static synthetic $r8$lambda$5JuMQ5Xwop6_vLuPFEPWWe2k9-8(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxY-baJIk4rJgYK1PpesjhSKydk(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HmvZu9abxKGWhD_Udih5JLlopMU(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$tBg6zRZJj41EWswWGuaG5By1JH8(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uwbwjsh85hhQzwEYgtn279JqoX0(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v0, Landroid/location/Location;

    const-string v1, "TSLocationManager"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    .line 12
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    .line 13
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->k:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 70
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 72
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method static a(Landroid/location/Location;)Landroid/location/Location;
    .locals 3

    .line 4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 8
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->n:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->n:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->n:Lcom/transistorsoft/locationmanager/location/TSLocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a()V
    .locals 3

    .line 105
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Clear last odometer location"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->reset()V

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    const-string v1, "odometer_latitude"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v1, "odometer_longitude"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "odometer_accuracy"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_0
    move-exception v1

    .line 115
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(F)V
    .locals 6

    const-string v0, "Median accuracy: "

    .line 82
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->k:Ljava/util/ArrayList;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-le p1, v2, :cond_0

    .line 85
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->k:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    new-instance v2, Lcom/transistorsoft/locationmanager/location/TSLocationManager$g;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$g;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 95
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->l:F

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_2

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->l:F

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v3, p1

    iput v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->l:F

    .line 101
    :goto_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->l:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 102
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(IILandroid/location/Location;)V
    .locals 4

    .line 48
    invoke-static {p3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v0

    .line 49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    .line 50
    const-string p1, "SingleLocationResult"

    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo p1, "watchPosition"

    goto :goto_0

    .line 63
    :cond_1
    const-string p1, "providerchange"

    goto :goto_0

    .line 64
    :cond_2
    const-string p1, "getCurrentPosition"

    goto :goto_0

    .line 67
    :cond_3
    const-string p1, "motionchange"

    .line 76
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " LocationResult: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms old)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\ud83d\udccd  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 104
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0

    .line 9
    invoke-interface {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method private synthetic a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Landroid/location/Location;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 11
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->applyExtras(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onLocation(Landroid/location/Location;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter v0

    .line 23
    :try_start_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance p2, Landroid/location/Location;

    const-string v1, "TSLocationManager"

    invoke-direct {p2, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {p2, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 27
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    .line 29
    invoke-interface {p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onLocation(Landroid/location/Location;)V

    return-void

    .line 31
    :cond_3
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Could not fetch last location"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 32
    const-string p2, "Could not fetch last location"

    invoke-interface {p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 33
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private synthetic a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Ljava/lang/Exception;)V
    .locals 2

    .line 34
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter p2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/location/Location;

    const-string v1, "TSLocationManager"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onLocation(Landroid/location/Location;)V

    return-void

    .line 46
    :cond_1
    const-string p2, "Could not fetch last location"

    invoke-interface {p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 3

    .line 116
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    return-object p0
.end method

.method private synthetic b()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string v1, "TSLocationManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    const-string v1, "odometer_latitude"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "odometer_longitude"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    const-string v1, "odometer_latitude"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 6
    const-string v1, "odometer_longitude"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    cmpl-double v3, v1, v6

    if-eqz v3, :cond_1

    .line 8
    new-instance v3, Landroid/location/Location;

    const-string v6, "TSLocationManager"

    invoke-direct {v3, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 10
    invoke-virtual {v3, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 11
    const-string v1, "odometer_accuracy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 13
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 14
    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v2, "odometer"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 17
    invoke-virtual {v3, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 19
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load last odometer location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {v1, v3}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method private b(Landroid/location/Location;)Z
    .locals 4

    .line 23
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->g:Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda4;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/location/Location;)V
    .locals 5

    const-string v0, "Odometer: "

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f(Landroid/location/Location;)V

    .line 5
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {p1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 12
    monitor-exit v1

    return-void

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->incrementOdometer(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 15
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f(Landroid/location/Location;)V

    .line 17
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Location-services: OFF"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private d(Landroid/location/Location;)Z
    .locals 9

    const-string v0, "Detected invalid location (teleport) with apparent speed of "

    const-string v1, "Distance from last location: "

    .line 10
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {p0, v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 12
    monitor-exit v2

    return v4

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-static {p1, v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->speedBetween(Landroid/location/Location;Landroid/location/Location;)F

    move-result v3

    .line 15
    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v5, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    .line 16
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-static {p1, v6}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->elapsedTimeMillis(Landroid/location/Location;Landroid/location/Location;)J

    move-result-wide v6

    long-to-float v6, v6

    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    .line 20
    monitor-exit v2

    return v4

    .line 22
    :cond_1
    sget-object v7, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", apparent speed: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSpeedJumpFilter()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " meters/s (distance from last location: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " meters, dt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    monitor-exit v2

    return p1

    .line 30
    :cond_3
    :goto_0
    const-string p1, "However, location mocking is detected.  Normally, this location would be ignored as an anomaly."

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 32
    monitor-exit v2

    return v4

    .line 38
    :cond_4
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    .line 6
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    .line 7
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop LocationRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e(Landroid/location/Location;)Z
    .locals 8

    .line 12
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 14
    monitor-exit v0

    return v2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    .line 16
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    .line 17
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    .line 18
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-nez v1, :cond_1

    .line 20
    monitor-exit v0

    return v3

    .line 22
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static elapsedTimeMillis(Landroid/location/Location;Landroid/location/Location;)J
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private f(Landroid/location/Location;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->applyExtras(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 12
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    .line 13
    const-string v5, "odometer_latitude"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    const-string v1, "odometer_longitude"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    const-string v1, "odometer_accuracy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private g(Landroid/location/Location;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/location/Location;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/location/Location;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 11
    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(F)V

    .line 14
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 16
    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    const-string v3, "motionchange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_0
    const-string v3, "sample"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 24
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDesiredOdometerAccuracy()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_6

    .line 26
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 27
    :cond_3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c(Landroid/location/Location;)V

    goto :goto_1

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v1

    .line 30
    :try_start_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 31
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f(Landroid/location/Location;)V

    .line 33
    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 36
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    monitor-enter v1

    .line 37
    :try_start_2
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->MAXIMUM_LOCATION_ACCURACY:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_8

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 40
    :cond_8
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 42
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter v1

    .line 43
    :try_start_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 45
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 46
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p1

    .line 47
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 48
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->n:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->n:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->n:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    return-object p0
.end method

.method public static locationAge(Landroid/location/Location;)J
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static speedBetween(Landroid/location/Location;Landroid/location/Location;)F
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->elapsedTimeMillis(Landroid/location/Location;Landroid/location/Location;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    long-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public buildLocationRequest()Lcom/google/android/gms/location/LocationRequest;
    .locals 9

    const-string v0, ".  Applying default 10.0"

    const-string v1, "Invalid distanceFilter: "

    .line 1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    monitor-enter v3

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDistanceFilter()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 5
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 9
    :cond_0
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getFastestLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getFastestLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 12
    :cond_1
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x437a0000    # 250.0f

    cmpg-float v1, v4, v0

    if-gez v1, :cond_2

    move v4, v0

    .line 17
    :cond_2
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDeferTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-gez v7, :cond_3

    goto :goto_0

    :cond_3
    move-wide v5, v0

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 22
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 23
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 24
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_1

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v1, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 27
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 28
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 29
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 31
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    return-object v0

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized buildTSLocation(Landroid/location/Location;)Lcom/transistorsoft/locationmanager/location/TSLocation;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->g(Landroid/location/Location;)V

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocation;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->m:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancelRequest(I)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getRequest(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    :cond_0
    return-void
.end method

.method public cancelRequest(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    .line 9
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->didTimeout()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x198

    goto :goto_1

    :cond_2
    const/16 v0, 0x1f3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->onError(I)V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopUpdatingLocation()V

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopWatchPosition()V

    .line 3
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e()V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    .line 6
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentLocationProvider()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->m:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    return-object v0
.end method

.method public getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->register(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method public getLastGoodLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Landroid/location/Location;

    const-string v1, "TSLocationManager"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->i:Landroid/location/Location;

    invoke-virtual {v0, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onLocation(Landroid/location/Location;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "Permission failure"

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda3;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException while attempting to getLastLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public getLastOdometerLocation()Landroid/location/Location;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    new-instance v1, Landroid/location/Location;

    const-string v2, "TSLocationManager"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequest(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isLocationServicesEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 5
    invoke-static {v0}, Landroidx/core/location/LocationManagerCompat;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isUpdatingLocation()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onConfigChange(Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "desiredAccuracy"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    const-string v0, "distanceFilter"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    const-string v0, "locationUpdateInterval"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    const-string v0, "fastestLocationUpdateInterval"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    const-string v0, "deferTime"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    const-string v0, "disableElasticity"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    const-string v0, "elasticityMultiplier"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->requestLocationUpdates()V

    return-void
.end method

.method public onLocationError(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TSLocationManager received location error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$e;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$e;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 6

    const-string v0, "Re-scaled distanceFilter: "

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Process LocationResult"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableElasticity()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDistanceFilter()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 16
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sget-object v4, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->MAXIMUM_LOCATION_ACCURACY:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 17
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->calculateDistanceFilter(F)F

    move-result v2

    .line 19
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/android/gms/location/LocationRequest;->getSmallestDisplacement()F

    move-result v4

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_0

    .line 21
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->getSmallestDisplacement()F

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "->"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 23
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->updateLocationRequest()V

    .line 25
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 30
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Null Context in SingleLocationResultAction"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    .line 34
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 37
    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e(Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 38
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAllowIdenticalLocations()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 39
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "IGNORED: same as last location"

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_3
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v4, "Same as last location"

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_4
    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d(Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 52
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->buildTSLocation(Landroid/location/Location;)Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_8

    monitor-exit p0

    return-void

    .line 63
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object p1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v3, "tslocationmanager_ooooiii3_full_vol"

    invoke-virtual {p1, v2, v3}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 65
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersist()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 66
    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 69
    :try_start_5
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public onProviderChange(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->m:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringStationaryRegion()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->isUpdatingLocation()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringStationaryRegion()V

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isPermissionGranted()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 39
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->g:Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 47
    :cond_4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    monitor-enter p1

    .line 48
    :try_start_0
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    new-instance p1, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 52
    invoke-virtual {p1, v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;

    new-instance v2, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;

    invoke-direct {v2, p0, v1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Landroid/location/Location;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    .line 53
    invoke-virtual {p1, v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;

    .line 104
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->g:Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    .line 105
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    return-void

    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 172
    :cond_5
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderChange with no location permission -- doing nothing (lastLocation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->h:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_6
    :goto_1
    new-instance p1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)V

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method public declared-synchronized onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V
    .locals 9

    const-string v0, "Acquired motionchange position, isMoving: "

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 5
    :try_start_2
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to find SingleLocationRequest.  Request ignored."

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    .line 15
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getAction()I

    move-result v1

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(IILandroid/location/Location;)V

    .line 17
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(Landroid/location/Location;)V

    .line 20
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 22
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 24
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    .line 25
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    :try_start_4
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :try_start_5
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getBestLocation()Landroid/location/Location;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 31
    iget v4, v2, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 32
    const-string v4, "event"

    const-string v8, "motionchange"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v4, v6, :cond_2

    .line 36
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v4, "tslocationmanager_ooooiii3_full_vol"

    invoke-virtual {v0, v3, v4}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "Acquired current position"

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v4, v0, :cond_3

    .line 39
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v8, "tslocationmanager_ooooiii3_full_vol"

    invoke-virtual {v0, v4, v8}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v4, "Acquired providerchange position"

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 41
    const-string v0, "event"

    const-string v4, "providerchange"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne v4, v0, :cond_4

    .line 43
    const-string v0, "persist"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->buildTSLocation(Landroid/location/Location;)Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object p1

    .line 47
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->setExtras(Lorg/json/JSONObject;)V

    .line 50
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 52
    iget v0, v2, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    if-ne v0, v7, :cond_7

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;

    invoke-direct {v3, p1}, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v4, "tslocationmanager_chime_short_chord_up"

    invoke-virtual {v0, v3, v4}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->requestLocationUpdates()V

    goto :goto_1

    .line 58
    :cond_6
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v4, "tslocationmanager_marimba_drop"

    invoke-virtual {v0, v3, v4}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d()V

    .line 63
    :cond_7
    :goto_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;

    invoke-direct {v3, p0, v2, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPersist()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 72
    iget v0, v2, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    if-ne v0, v7, :cond_8

    move v5, v7

    :cond_8
    if-eq v0, v6, :cond_9

    .line 74
    invoke-virtual {v1, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 77
    :cond_9
    :try_start_6
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v5}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 78
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    .line 132
    :cond_a
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v3, "tslocationmanager_click_tap_done_checkbox5_full_vol"

    invoke-virtual {v0, v1, v3}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->getLocation()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->buildTSLocation(Landroid/location/Location;)Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object p1

    .line 134
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->setExtras(Lorg/json/JSONObject;)V

    .line 137
    :cond_b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_c
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 138
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method public onStopDetection(Lcom/transistorsoft/locationmanager/event/StopDetectionEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDistanceFilter()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->updateLocationRequest()V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onWatchPositionResult(Lcom/transistorsoft/locationmanager/location/WatchPositionResult;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "tslocationmanager_ooooiii3_full_vol"

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->getRequestId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(I)V

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopWatchPosition()V

    .line 6
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "onWatchPositionResult:  watchPositionRequest is null"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getAction()I

    move-result v0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->getRequestId()I

    move-result v1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(IILandroid/location/Location;)V

    .line 17
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->getLocation()Landroid/location/Location;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->buildTSLocation(Landroid/location/Location;)Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->setExtras(Lorg/json/JSONObject;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPersist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->onSuccess(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public register(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestLocationUpdates()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Location-services: ON"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->buildLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/service/TrackingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 15
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException while attempting to requestLocationUpdates: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOdometer(Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setOdometer(Ljava/lang/Float;)V

    .line 4
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setOdometer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", isMoving: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Landroid/location/Location;)Z

    move-result v1

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroid/location/Location;

    const-string v0, "TSLocationManager"

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    monitor-enter v1

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->j:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocation;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 25
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 27
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a()V

    .line 28
    new-instance p1, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p1, p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setPersist(Z)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    .line 31
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDesiredOdometerAccuracy()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setDesiredAccuracy(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    const/4 p2, 0x3

    .line 32
    invoke-virtual {p1, p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    .line 33
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    return-void

    :catchall_1
    move-exception p2

    .line 35
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopUpdatingLocation()V

    .line 7
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a()V

    return-void
.end method

.method public stopUpdatingLocation()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d()V

    return-void
.end method

.method public stopWatchPosition()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "watchPosition: OFF"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->h()V

    :cond_1
    return-void
.end method

.method public updateLocationRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Attempt to refreshLocationUpdates when not updating location"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 9
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 11
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException while attempting to updateLocationRequest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public watchPosition(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "watchPosition: ON"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->h()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->f:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->g()V

    return-void
.end method
