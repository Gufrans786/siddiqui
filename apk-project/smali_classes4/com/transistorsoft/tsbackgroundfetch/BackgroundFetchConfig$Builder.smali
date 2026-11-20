.class public Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
.super Ljava/lang/Object;
.source "BackgroundFetchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private delay:J

.field private forceAlarmManager:Z

.field private isFetchTask:Z

.field private jobService:Ljava/lang/String;

.field private minimumFetchInterval:I

.field private periodic:Z

.field private requiredNetworkType:I

.field private requiresBatteryNotLow:Z

.field private requiresCharging:Z

.field private requiresDeviceIdle:Z

.field private requiresStorageNotLow:Z

.field private startOnBoot:Z

.field private stopOnTerminate:Z

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 44
    iput v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->minimumFetchInterval:I

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->delay:J

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->periodic:Z

    .line 47
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->forceAlarmManager:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->stopOnTerminate:Z

    .line 49
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->startOnBoot:Z

    .line 50
    iput v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiredNetworkType:I

    .line 51
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresBatteryNotLow:Z

    .line 52
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresCharging:Z

    .line 53
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresDeviceIdle:Z

    .line 54
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresStorageNotLow:Z

    .line 55
    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->isFetchTask:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->jobService:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->jobService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresDeviceIdle:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresStorageNotLow:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->forceAlarmManager:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->periodic:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->delay:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->stopOnTerminate:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->startOnBoot:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->isFetchTask:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->minimumFetchInterval:I

    return p0
.end method

.method static synthetic access$700(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiredNetworkType:I

    return p0
.end method

.method static synthetic access$800(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresBatteryNotLow:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresCharging:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;
    .locals 2

    .line 145
    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;)V

    return-object v0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;
    .locals 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TSBackgroundFetch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 150
    const-string/jumbo v0, "taskId"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setTaskId(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 153
    :cond_0
    const-string p2, "isFetchTask"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->isFetchTask:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setIsFetchTask(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 156
    :cond_1
    const-string p2, "minimumFetchInterval"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->minimumFetchInterval:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setMinimumFetchInterval(I)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 159
    :cond_2
    const-string/jumbo p2, "stopOnTerminate"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->stopOnTerminate:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setStopOnTerminate(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 162
    :cond_3
    const-string p2, "requiredNetworkType"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiredNetworkType:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiredNetworkType(I)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 165
    :cond_4
    const-string p2, "requiresBatteryNotLow"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresBatteryNotLow:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresBatteryNotLow(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 168
    :cond_5
    const-string p2, "requiresCharging"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresCharging:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresCharging(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 171
    :cond_6
    const-string p2, "requiresDeviceIdle"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresDeviceIdle:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresDeviceIdle(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 174
    :cond_7
    const-string p2, "requiresStorageNotLow"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresStorageNotLow:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresStorageNotLow(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 177
    :cond_8
    const-string/jumbo p2, "startOnBoot"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->startOnBoot:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setStartOnBoot(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 180
    :cond_9
    const-string p2, "jobService"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 181
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setJobService(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 183
    :cond_a
    const-string p2, "forceAlarmManager"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->forceAlarmManager:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setForceAlarmManager(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 186
    :cond_b
    const-string p2, "periodic"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 187
    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->periodic:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setPeriodic(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 189
    :cond_c
    const-string p2, "delay"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    iget-wide v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->delay:J

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setDelay(J)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 192
    :cond_d
    new-instance p1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    invoke-direct {p1, p0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;)V

    return-object p1
.end method

.method public setDelay(J)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 140
    iput-wide p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->delay:J

    return-object p0
.end method

.method public setForceAlarmManager(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->forceAlarmManager:Z

    return-object p0
.end method

.method public setIsFetchTask(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->isFetchTask:Z

    return-object p0
.end method

.method public setJobService(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->jobService:Ljava/lang/String;

    return-object p0
.end method

.method public setMinimumFetchInterval(I)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 71
    iput p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->minimumFetchInterval:I

    :cond_0
    return-object p0
.end method

.method public setPeriodic(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->periodic:Z

    return-object p0
.end method

.method public setRequiredNetworkType(I)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ERROR] Invalid requiredNetworkType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; Defaulting to NETWORK_TYPE_NONE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 99
    :cond_0
    iput p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiredNetworkType:I

    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresBatteryNotLow:Z

    return-object p0
.end method

.method public setRequiresCharging(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresCharging:Z

    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresDeviceIdle:Z

    return-object p0
.end method

.method public setRequiresStorageNotLow(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->requiresStorageNotLow:Z

    return-object p0
.end method

.method public setStartOnBoot(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->startOnBoot:Z

    return-object p0
.end method

.method public setStopOnTerminate(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->stopOnTerminate:Z

    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->taskId:Ljava/lang/String;

    return-object p0
.end method
