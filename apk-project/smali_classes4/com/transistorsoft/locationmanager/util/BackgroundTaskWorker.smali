.class public Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# instance fields
.field final a:I

.field private b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$G_kWoYwOHUT3byKbZmhqrGlXVOc(Landroid/app/Notification;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a(Landroid/app/Notification;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VrtaASs6KREl9CV2NMMaBcG647E(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqQpUMQLuXEc_WJtdauFceUtTBQ(Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->b(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object p1

    const-string/jumbo p2, "taskId"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a:I

    return-void
.end method

.method private static synthetic a(Landroid/app/Notification;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/work/ForegroundInfo;

    const v1, 0x97b639

    invoke-direct {v0, v1, p0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 3
    const-string p0, "getForegroundInfoAsync"

    return-object p0
.end method

.method private static synthetic a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic b(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a:I

    new-instance v3, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda0;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->onStartJob(Landroid/content/Context;ILcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[BackgroundTaskWorker id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", workId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->build(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda2;-><init>(Landroid/app/Notification;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onStopped()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    .line 6
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BackgroundTaskWorker] System stopped taskId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->cancelBackgroundTask(Landroid/content/Context;I)V

    return-void
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
