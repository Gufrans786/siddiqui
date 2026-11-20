.class public Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String; = "TSLocationManager"


# direct methods
.method public static synthetic $r8$lambda$P9gGNKncvMGYMeem89V6XEr9iHM()V
    .locals 0

    invoke-static {}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$_33XW1EgB6UNBASopzOGQaHgSsM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic a()V
    .locals 0

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "ONESHOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v2

    invoke-static {p1, v1, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 6
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {v1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9
    invoke-virtual {p2}, Landroid/app/PendingIntent;->cancel()V

    .line 12
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v1, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;-><init>(Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
