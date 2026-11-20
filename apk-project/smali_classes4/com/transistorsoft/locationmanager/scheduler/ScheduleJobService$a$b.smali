.class Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$b;->a:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a$b;->a:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;

    iget-object v1, v0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->b:Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService$a;->a:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
