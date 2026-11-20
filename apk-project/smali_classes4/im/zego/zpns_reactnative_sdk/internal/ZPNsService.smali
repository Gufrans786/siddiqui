.class public Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;
.super Lcom/facebook/react/HeadlessJsTaskService;
.source "ZPNsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobWorkEnqueuer;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkEnqueuer;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;,
        Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ZPNs RN Service"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;",
            "Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field private handler:Landroid/os/Handler;

.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

.field mCurProcessor:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->sLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 399
    invoke-direct {p0}, Lcom/facebook/react/HeadlessJsTaskService;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mInterruptIfStopped:Z

    .line 62
    iput-boolean v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mStopped:Z

    .line 63
    iput-boolean v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mDestroyed:Z

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V
    .locals 3

    if-eqz p3, :cond_1

    .line 495
    sget-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 496
    :try_start_0
    invoke-static {p0, p1, v1, p2, p4}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    move-result-object v2

    .line 497
    invoke-virtual {v2, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;->ensureJobId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :try_start_1
    invoke-virtual {v2, p3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 507
    :try_start_2
    invoke-static {p0, p1, v1, p2, p4}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    move-result-object p0

    .line 508
    invoke-virtual {p0, p3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 511
    :goto_0
    monitor-exit v0

    return-void

    .line 509
    :cond_0
    throw v2

    :catchall_0
    move-exception p0

    .line 511
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 493
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;Z)V
    .locals 1

    .line 472
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3, p4}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 48
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->handler:Landroid/os/Handler;

    .line 51
    :cond_0
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;
    .locals 4

    .line 521
    new-instance v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;

    invoke-direct {v0, p1, p4}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;-><init>(Landroid/content/ComponentName;Z)V

    .line 522
    sget-object v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    if-nez v2, :cond_2

    .line 524
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    .line 528
    new-instance p2, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobWorkEnqueuer;

    invoke-direct {p2, p0, p1, p3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 526
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 529
    :cond_1
    new-instance p2, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkEnqueuer;

    invoke-direct {p2, p0, p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 530
    :goto_0
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_2
    return-object v2
.end method


# virtual methods
.method dequeueWork()Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;
    .locals 3

    .line 636
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mJobImpl:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 637
    invoke-interface {v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;->dequeueWork()Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 641
    :cond_0
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 643
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doStopCurrentWork()Z
    .locals 2

    .line 596
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCurProcessor:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

    if-eqz v0, :cond_0

    .line 597
    iget-boolean v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mStopped:Z

    .line 600
    invoke-virtual {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .locals 2

    .line 604
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCurProcessor:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

    if-nez v0, :cond_1

    .line 605
    new-instance v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

    invoke-direct {v0, p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;)V

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCurProcessor:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

    .line 606
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatWorkEnqueuer:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 610
    :cond_0
    iget-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCurProcessor:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 6

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 37
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    const-string v1, "ZPNsRNSDKHeadlessJsTaskService"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isStopped()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 432
    invoke-super {p0, p1}, Lcom/facebook/react/HeadlessJsTaskService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 433
    iget-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mJobImpl:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;

    if-eqz p1, :cond_0

    .line 434
    invoke-interface {p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZPNsService returning engine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 405
    invoke-super {p0}, Lcom/facebook/react/HeadlessJsTaskService;->onCreate()V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZPNsService onCreate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 409
    new-instance v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;)V

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mJobImpl:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatJobEngine;

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatWorkEnqueuer:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    .line 413
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    invoke-static {p0, v0, v2, v2, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatWorkEnqueuer:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 444
    invoke-super {p0}, Lcom/facebook/react/HeadlessJsTaskService;->onDestroy()V

    .line 445
    invoke-virtual {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->doStopCurrentWork()Z

    .line 446
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 447
    :try_start_0
    iput-boolean v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mDestroyed:Z

    .line 448
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatWorkEnqueuer:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    invoke-virtual {v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 449
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2

    .line 550
    invoke-direct {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;

    invoke-direct {v1, p0, p0, p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;Landroid/content/Intent;)V

    .line 551
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/HeadlessJsTaskService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .locals 2

    .line 615
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 616
    monitor-enter v0

    const/4 v1, 0x0

    .line 617
    :try_start_0
    iput-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCurProcessor:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CommandProcessor;

    .line 626
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 627
    invoke-virtual {p0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->ensureProcessorRunningLocked(Z)V

    goto :goto_0

    .line 628
    :cond_0
    iget-boolean v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 629
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mCompatWorkEnqueuer:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;

    invoke-virtual {v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 631
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .locals 0

    .line 570
    iput-boolean p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->mInterruptIfStopped:Z

    return-void
.end method
