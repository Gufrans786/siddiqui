.class public Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_GET_CURRENT_POSITION:I = 0x2

.field public static final ACTION_GET_CURRENT_STATE:I = 0x4

.field public static final ACTION_MOTION_CHANGE:I = 0x1

.field public static final ACTION_PROVIDER_CHANGE:I = 0x3

.field public static final ACTION_WATCH_POSITION:I = 0x5

.field public static final GOOD_ACCURACY_THRESHOLD:Ljava/lang/Float;

.field private static final s:Ljava/lang/Integer;

.field private static final t:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected a:I

.field protected b:Landroid/content/Context;

.field protected c:J

.field protected final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected e:Z

.field protected f:I

.field protected g:Lorg/json/JSONObject;

.field protected h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

.field private i:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

.field private j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:J

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7IWFSQ8nzEvxNa6qadVFXn6tckM(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YfF5dOJU8vbooBn5GtNyRTqO5hQ(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f()V

    return-void
.end method

.method public static synthetic $r8$lambda$wZMredC4V-9tNL3REvihMtzQq8s(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->GOOD_ACCURACY_THRESHOLD:Ljava/lang/Float;

    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->s:Ljava/lang/Integer;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    .line 139
    iget v0, p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->b:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->c:J

    .line 140
    iget-boolean v0, p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->c:Z

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->e:Z

    .line 141
    iget v0, p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->d:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 142
    iget v0, p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->e:I

    iput v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f:I

    .line 143
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->a(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g:Lorg/json/JSONObject;

    .line 144
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->b(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    .line 145
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->getAction()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->m:J

    .line 148
    invoke-static {}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->c()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    .line 149
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->p:Landroid/os/Handler;

    .line 151
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->q:Ljava/lang/Runnable;

    .line 153
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->c:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    return p0
.end method

.method private a()Ljava/lang/Runnable;
    .locals 1

    .line 3
    new-instance v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    return-object v0
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method private b()Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    return-object v0
.end method

.method private static c()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private synthetic f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x198

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    return-void
.end method

.method public static forceStop(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 3
    invoke-interface {v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 4
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;II)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getIntent(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object p1

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    if-lt p2, v0, :cond_0

    .line 3
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p2

    invoke-static {p0, v1, p1, p2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p2

    invoke-static {p0, v1, p1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    return-void
.end method

.method a(Landroid/location/Location;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v2

    .line 14
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f:I

    const/4 v4, 0x1

    if-lez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget v5, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_0

    if-le v1, v4, :cond_0

    const-wide/16 v0, 0x7530

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    const-string p1, "sample"

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public didTimeout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->p:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    iget v4, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v3, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 16
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\ud83d\udccd  SingleLocationRequest TIMEOUT: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_2
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\ud83d\udccd  SingleLocaitonRequest ERROR: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 27
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_3

    .line 29
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found previous sample"

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    new-instance v1, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    iget v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getBestLocation()Landroid/location/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;-><init>(ILandroid/location/Location;)V

    .line 34
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 36
    :cond_3
    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onLocationError(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 37
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_4

    .line 38
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v1

    .line 6
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isBackground()Z

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->isUpdatingLocation()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 8
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 11
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->logBackgroundWarning(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 13
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->onError(I)V

    .line 18
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->requestsLocationAlways()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$a;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    :cond_2
    :goto_0
    return-void

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    return v0
.end method

.method public getBestLocation()Landroid/location/Location;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    if-nez v2, :cond_1

    move-object v2, v3

    .line 6
    :cond_1
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v4

    .line 7
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v6

    .line 8
    invoke-virtual {v3, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {v2, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 23
    :cond_4
    const-string v3, "sample"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 24
    const-string v3, "persist"

    iget-boolean v4, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->e:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getElapsed()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->m:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getExtras()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    return v0
.end method

.method public getPersist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->e:Z

    return v0
.end method

.method public getSamples()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getStartedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->m:J

    return-wide v0
.end method

.method public hasExtras()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSample()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onError(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->hasSample()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    :cond_0
    return-void
.end method

.method public startUpdatingLocation()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[SingleLocationRequest start, action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->c:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    const/16 v4, 0x64

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 9
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    .line 13
    iget v4, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 14
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    iget v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException while attempting to fetch location: "

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

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;

    iget v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;-><init>(Ljava/lang/SecurityException;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
