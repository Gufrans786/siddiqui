.class final Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;
.source "ZPNsService.java"

# interfaces
.implements Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobServiceEngineImpl"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;


# direct methods
.method constructor <init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;)V
    .locals 1

    .line 256
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 257
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dequeueWork()Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;
    .locals 5

    .line 290
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 294
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    invoke-virtual {v2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 306
    new-instance v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;

    invoke-direct {v0, p0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    .line 299
    :try_start_3
    const-string v3, "JobServiceEngineImpl"

    const-string v4, "Failed to run mParams.dequeueWork()!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 302
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 268
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 270
    iget-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->ensureProcessorRunningLocked(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 277
    iget-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    invoke-virtual {p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->doStopCurrentWork()Z

    move-result p1

    .line 278
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 281
    :try_start_0
    iput-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 282
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
