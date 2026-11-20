.class public Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;
.super Landroid/app/job/JobService;
.source "FetchJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;,
        Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;
    }
.end annotation


# static fields
.field private static final sExecutedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->sExecutedJobs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onStartJob$0$com-transistorsoft-tsbackgroundfetch-FetchJobService(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 54
    const-string v0, "TSBackgroundFetch"

    const-string v1, "- jobFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .line 23
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 24
    const-string v1, "scheduled_at"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x3e8

    cmp-long v1, v3, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v2

    .line 33
    :cond_0
    const-string/jumbo v1, "taskId"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->sExecutedJobs:Ljava/util/List;

    monitor-enter v1

    .line 39
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;

    .line 40
    invoke-virtual {v4, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->isDuplicate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const-string v3, "TSBackgroundFetch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Caught duplicate Job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": [IGNORED]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0, p1, v2}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 43
    monitor-exit v1

    return v2

    .line 47
    :cond_2
    sget-object v3, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->sExecutedJobs:Ljava/util/List;

    new-instance v4, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;

    invoke-direct {v4, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    .line 49
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    new-instance v1, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;Landroid/app/job/JobParameters;)V

    .line 57
    new-instance v2, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;I)V

    .line 58
    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->onFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 65
    const-string v0, "TSBackgroundFetch"

    const-string v1, "- onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "taskId"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->onTimeout(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p1, 0x1

    return p1
.end method
