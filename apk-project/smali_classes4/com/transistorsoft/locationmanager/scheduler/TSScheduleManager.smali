.class public Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "action"

.field public static final ACTION_ONESHOT:Ljava/lang/String; = "ONESHOT"

.field private static e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager; = null

.field private static final f:I = 0x29a


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/text/SimpleDateFormat;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/scheduler/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$soLhQRneAwU7AXSrIBNg1CeEK7k(Lcom/transistorsoft/locationmanager/scheduler/Schedule;Lcom/transistorsoft/locationmanager/scheduler/Schedule;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Lcom/transistorsoft/locationmanager/scheduler/Schedule;Lcom/transistorsoft/locationmanager/scheduler/Schedule;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->b:Ljava/text/SimpleDateFormat;

    .line 7
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/scheduler/Schedule;Lcom/transistorsoft/locationmanager/scheduler/Schedule;)I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    .line 2
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 82
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduled Alarm: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ON"

    goto :goto_0

    :cond_0
    const-string v4, "OFF"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getScheduleUseAlarmManager()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "trackingMode"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v3, "enabled"

    invoke-virtual {v0, v3, p1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v0, v1, p3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr p2, v3

    goto :goto_1

    :cond_1
    const-wide/16 p2, 0x0

    .line 93
    :goto_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JobScheduler triggerDelay: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 96
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v5, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x29a

    invoke-direct {v1, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 101
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 102
    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 103
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    .line 107
    :cond_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "Schedule with AlarmManager"

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v4, Lcom/transistorsoft/locationmanager/scheduler/ScheduleService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v3, "schedule_enabled"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleService;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 115
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-le v5, v6, :cond_5

    .line 117
    invoke-virtual {v4}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {v4, v2, p1, p2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_3
    const/16 v6, 0x21

    if-le v5, v6, :cond_4

    .line 121
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v5, "Scheduling exact alarms requires android.permission.USE_EXACT_ALARM with SDK >= 34.  Using in-exact Alarm"

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v6, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const/high16 p3, 0x8000000

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p3

    invoke-static {p1, v2, v0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 127
    :cond_4
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {v4, v2, p1, p2, v0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    .line 130
    :cond_5
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {v4, v2, p1, p2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private a()Z
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedule()Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasSchedule()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Received an empty schedule"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 176
    new-instance v5, Lcom/transistorsoft/locationmanager/scheduler/Schedule;

    invoke-direct {v5, v4}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->isLiteralDate()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->isExpired()Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    new-instance v4, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .line 138
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 139
    const-string v1, "ONESHOT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v3, "action"

    invoke-virtual {v0, v3, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v4, "jobscheduler"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 160
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v6, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v3, 0x20000000

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v3

    invoke-static {v1, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    .line 5
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->e:Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    return-object p0
.end method


# virtual methods
.method a(Ljava/util/Calendar;Ljava/lang/Boolean;)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->stop()V

    .line 6
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 12
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "Failed to find a schedule.  Giving up."

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x7

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 18
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Day #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Searching schedule for alarms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    monitor-enter v1

    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;

    .line 23
    invoke-virtual {v3, p1}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->isNext(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 28
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    .line 33
    iget-object v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 35
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Scheduler says we should be ENABLED but we are NOT"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 36
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    invoke-direct {p0, p2, p1, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V

    return-void

    .line 39
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p2, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    iget v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V

    .line 40
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;)V

    return-void

    .line 43
    :cond_5
    iget-object v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 45
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Scheduler says we should be DISABLED but we are NOT"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 46
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    invoke-direct {p0, p2, p1, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V

    return-void

    .line 49
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    iget v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V

    return-void

    .line 52
    :cond_7
    iget-object v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Scheduler says we should be DISABLED but we are NOT"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 56
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v0, v3, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    invoke-direct {p0, p2, p1, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V

    return-void

    .line 58
    :cond_8
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "Scheduler failed to find any alarms today.  Checking tomorrow..."

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 60
    invoke-virtual {p1, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {p1, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/util/Calendar;Ljava/lang/Boolean;)V

    return-void

    .line 65
    :cond_9
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "Failed to find next alarm"

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 68
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Scheduler says we should be DISABLED but we are NOT"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 69
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p1, v5}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/Boolean;Ljava/util/Calendar;I)V

    return-void

    .line 71
    :cond_b
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Day #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": Failed to find alarms on this day.  Trying tomorrow..."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 74
    invoke-virtual {p1, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 75
    invoke-virtual {p1, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/util/Calendar;Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 78
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getScheduleUseAlarmManager()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v1, 0x29a

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v2, Lcom/transistorsoft/locationmanager/scheduler/ScheduleService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleService;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 9
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public canScheduleExactAlarms()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public cancelOneShot(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel OneShot: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->alarm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 13
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v2, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string v1, "ONESHOT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v2, 0x8000000

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v2

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 21
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->stop()V

    .line 4
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onConfigChange(Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 2
    const-string v0, "schedule"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->restart(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public oneShot(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    return-void
.end method

.method public oneShot(Ljava/lang/String;JZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    return-void
.end method

.method public oneShot(Ljava/lang/String;JZZ)V
    .locals 7

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Oneshot "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is already pending"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->alarm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduled OneShot: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms (jobID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->alarm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "action"

    const-string v2, "ONESHOT"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p4, :cond_2

    .line 11
    new-instance p4, Landroid/os/PersistableBundle;

    invoke-direct {p4}, Landroid/os/PersistableBundle;-><init>()V

    .line 12
    invoke-virtual {p4, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p4, v1, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p5, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v0, "jobscheduler"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/job/JobScheduler;

    if-nez p5, :cond_1

    .line 17
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "JobScheduler is null.  Cannot fire oneshot: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v3, Lcom/transistorsoft/locationmanager/scheduler/ScheduleJobService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 22
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_2
    const/16 v5, 0x21

    if-gt v0, v5, :cond_3

    if-eqz p4, :cond_3

    move p5, v3

    .line 39
    :cond_3
    new-instance p4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-class v6, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;

    invoke-direct {p4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-virtual {p4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v3

    invoke-static {v1, v2, p4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 45
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_4

    .line 48
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "AlarmManager is null.  Cannot fire oneshot: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr p2, v2

    const/16 p1, 0x1f

    if-lt v0, p1, :cond_7

    .line 56
    invoke-virtual {v1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p5, :cond_5

    .line 57
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    .line 59
    :cond_5
    invoke-virtual {v1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p5, :cond_6

    .line 60
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p5, "Scheduling exact alarms requires android.permission.USE_EXACT_ALARM with SDK >= 34.  Oneshot using in-exact Alarm"

    invoke-static {p5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 62
    :cond_6
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    .line 65
    :cond_7
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public restart(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedulerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Schedule changed:  restarting..."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->b()V

    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setSchedulerEnabled(Ljava/lang/Boolean;)V

    .line 9
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->stop()V

    .line 10
    monitor-exit v1

    return-void

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedulerEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Scheduler already started.  IGNORED"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 14
    monitor-exit v1

    return-void

    .line 16
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setSchedulerEnabled(Ljava/lang/Boolean;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    const-string/jumbo v2, "\ud83c\udfbe  Scheduler ON"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    monitor-enter v2

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transistorsoft/locationmanager/scheduler/Schedule;

    .line 24
    invoke-virtual {v4}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 26
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    const-string/jumbo v2, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 31
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/util/Calendar;Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception v0

    .line 32
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 33
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Scheduler OFF"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setSchedulerEnabled(Ljava/lang/Boolean;)V

    .line 4
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->b()V

    return-void
.end method
