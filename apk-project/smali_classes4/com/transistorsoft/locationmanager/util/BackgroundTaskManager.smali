.class public Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;,
        Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;
    }
.end annotation


# static fields
.field public static ACTION:Ljava/lang/String; = "BackgroundTask"

.field public static TASK_ID_FIELD:Ljava/lang/String; = "taskId"

.field private static final c:J = 0x2bf20L

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->c()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private a(I)Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;

    .line 5
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    .line 7
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized b()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    invoke-direct {v1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;-><init>()V

    sput-object v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    .line 2
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static c()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->b()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    .line 2
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->e:Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    return-object v0
.end method


# virtual methods
.method b(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelBackgroundTask(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a(I)Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->cancel()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->b(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)Z

    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/content/Context;ILcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a(I)Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find Task: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 4
    invoke-interface {p3}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;->onFinish()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1, p3}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->start(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;)V

    return-void
.end method

.method public startBackgroundTask(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->startBackgroundTask(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    return-void
.end method

.method public startBackgroundTask(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;-><init>(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)V

    return-void
.end method

.method public stopBackgroundTask(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->a(I)Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find find background task: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;->stop()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->b(Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Task;)Z

    return-void
.end method
