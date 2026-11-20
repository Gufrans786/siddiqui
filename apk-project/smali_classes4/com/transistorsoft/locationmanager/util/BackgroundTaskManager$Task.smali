.class public Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/UUID;

.field private final c:Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;

.field private d:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;

.field private e:Ljava/lang/Runnable;

.field private f:Z

.field private g:Z

.field final synthetic h:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;


# direct methods
.method public static synthetic $r8$lambda$MxrPMYfebM0RncisFh0Ydh03Fx0(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$uDy-VRrGqhkaZRILgVNkaya1F7Y(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->b()V

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->h:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->f:Z

    .line 4
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->g:Z

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    .line 9
    iput-boolean p3, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->f:Z

    .line 11
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;

    .line 13
    new-instance p3, Landroidx/work/Data$Builder;

    invoke-direct {p3}, Landroidx/work/Data$Builder;-><init>()V

    .line 14
    const-string/jumbo p4, "taskId"

    invoke-virtual {p3, p4, p1}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    .line 16
    invoke-static {p2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p2

    .line 17
    new-instance p3, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class p4, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;

    invoke-direct {p3, p4}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    sget-object p4, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 18
    invoke-virtual {p3, p4}, Landroidx/work/OneTimeWorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object p3

    check-cast p3, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 19
    invoke-virtual {p3, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 20
    invoke-virtual {p1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object p3

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->b:Ljava/util/UUID;

    .line 22
    invoke-virtual {p2, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;

    iget v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;->onStart(I)V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FORCE STOP BACKGROUND TASK (max duration: 180000ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->stop()V

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->b(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->e:Ljava/lang/Runnable;

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->h:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->e:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->h:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u23f3\u26a0\ufe0f   cancelBackgroundTask: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->d:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;->onFinish()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->d()V

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;

    iget v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;->onCancel(I)V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    return v0
.end method

.method public start(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->g:Z

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "Calling BackgroundTaskManager.Task.start on an already started task was IGNORED"

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->g:Z

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u23f3 startBackgroundTask: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->d:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;

    .line 8
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->f:Z

    if-nez p1, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->c()V

    .line 11
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u23f3 stopBackgroundTask: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->d:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;->onFinish()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->d()V

    return-void
.end method
