.class public Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$kr4imu66CbZI5CgPPyZRh5MUSOc(Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;->c(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private synthetic c(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->TASK_ID_FIELD:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->stop(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
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

    const/16 v1, 0x800

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
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 9
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->TASK_ID_FIELD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->TASK_ID_FIELD:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 12
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;I)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->onStartJob(Landroid/content/Context;ILcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "BackgroundTaskService called with no taskId"

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p3}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    :goto_0
    const/4 p1, 0x3

    return p1
.end method
