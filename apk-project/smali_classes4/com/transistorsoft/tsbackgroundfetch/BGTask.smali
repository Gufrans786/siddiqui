.class public Lcom/transistorsoft/tsbackgroundfetch/BGTask;
.super Ljava/lang/Object;
.source "BGTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;
    }
.end annotation


# static fields
.field static MAX_TIME:I = 0xea60

.field private static final mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/BGTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCompletionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mJobId:I

.field private mTaskId:Ljava/lang/String;

.field private mTimedout:Z

.field private mTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandlers:Ljava/util/List;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    .line 73
    iput-boolean v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mFinished:Z

    .line 76
    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 77
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iput p4, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mJobId:I

    .line 80
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;

    invoke-direct {p2, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BGTask;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    .line 85
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    sget p3, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->MAX_TIME:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static addTask(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static cancel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "- cancel taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 270
    const-string p1, "jobscheduler"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    .line 272
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    .line 275
    :cond_0
    const-string p2, "alarm"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    if-eqz p2, :cond_1

    .line 277
    invoke-static {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getAlarmPI(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method static clear()V
    .locals 2

    .line 63
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getAlarmPI(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0xc000000

    .line 285
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;
    .locals 4

    .line 33
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 35
    invoke-virtual {v2, p0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->hasTaskId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    .line 37
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static removeTask(Ljava/lang/String;)V
    .locals 4

    .line 48
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 51
    invoke-virtual {v2, p0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->hasTaskId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 57
    sget-object p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static reschedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->finish()V

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    invoke-static {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->schedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V

    return-void
.end method

.method static schedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 9

    .line 134
    const-string v0, "TSBackgroundFetch"

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->isFetchTask()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getMinimumFetchInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getDelay()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 138
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getForceAlarmManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 141
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 143
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 144
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiredNetworkType()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 145
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresDeviceIdle()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresCharging()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStartOnBoot()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStopOnTerminate()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getPeriodic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {p0, v6, v7, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 158
    :goto_1
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 159
    const-string/jumbo v2, "taskId"

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "scheduled_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 162
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 165
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresStorageNotLow()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 166
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresBatteryNotLow()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_3
    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    .line 173
    :cond_4
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    if-eqz v2, :cond_8

    .line 175
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getAlarmPI(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v4, v3, v6

    .line 177
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getPeriodic()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v3, 0x0

    .line 178
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    .line 181
    :cond_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1f

    if-lt p0, p1, :cond_7

    .line 182
    invoke-virtual {v2}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 183
    invoke-virtual {v2, v1, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    .line 185
    :cond_6
    invoke-virtual {v2, v1, v4, v5, v8}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    .line 188
    :cond_7
    invoke-virtual {v2, v1, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_8
    return-void
.end method


# virtual methods
.method finish()V
    .locals 3

    .line 107
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mFinished:Z

    .line 110
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandlers:Ljava/util/List;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;

    .line 116
    invoke-interface {v2}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;->finish()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->removeTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 119
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method fireHeadlessEvent(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobService()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x2

    .line 241
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 242
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 249
    :catch_0
    :try_start_2
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 250
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 251
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onFetch"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 263
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 261
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    .line 259
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_4
    move-exception p1

    .line 257
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_5
    move-exception p1

    .line 255
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getJobId()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mJobId:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimedOut()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    return v0
.end method

.method hasTaskId(Ljava/lang/String;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method onTimeout(Landroid/content/Context;)V
    .locals 4

    .line 201
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BGTask] timeout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->getInstance()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getFetchCallback()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;->onTimeout(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 215
    invoke-virtual {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobService()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 217
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->fireHeadlessEvent(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    :try_end_0
    .catch Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Headless task error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->finish(Ljava/lang/String;)V

    return-void

    .line 225
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[BGTask] failed to load config for taskId: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public setCompletionHandler(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandlers:Ljava/util/List;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 302
    :try_start_0
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v1, "timeout"

    iget-boolean v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 305
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-boolean v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BGTask taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
