.class Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3
    const-string v1, "ONESHOT"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "action"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$a;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$a;-><init>(Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;)V

    invoke-static {v1, v0, v2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;)V

    return-void

    .line 9
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->TASK_ID_FIELD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    invoke-virtual {v2}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$b;

    invoke-direct {v3, p0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$b;-><init>(Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->onStartJob(Landroid/content/Context;ILcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;)V

    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "trackingMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    invoke-virtual {v2}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a(Landroid/content/Context;ZI)V

    .line 25
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->a:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
