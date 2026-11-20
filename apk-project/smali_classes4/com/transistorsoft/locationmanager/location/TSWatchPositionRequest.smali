.class public Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;
    }
.end annotation


# instance fields
.field private u:J

.field private v:Landroid/app/PendingIntent;

.field private final w:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 7
    iget v1, p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f:I

    .line 8
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->a(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->u:J

    return-void
.end method


# virtual methods
.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;-><init>(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->u:J

    return-wide v0
.end method

.method h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    iget v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->stopService(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->h:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    :cond_0
    return-void
.end method

.method public startUpdatingLocation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->h()V

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 13
    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->u:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 14
    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->u:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 18
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    iget v3, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a:I

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException while attempting to watchPosition: "

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

    :catchall_0
    move-exception v0

    .line 23
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
