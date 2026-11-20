.class public Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;
.super Ljava/lang/Object;
.source "HeadlessTaskManager.java"

# interfaces
.implements Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;,
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$ContextError;,
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$TaskNotFoundError;,
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TSLocationManager"

.field private static sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;


# instance fields
.field private final mIsHeadlessJsTaskListenerRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsInitializingReactContext:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsReactContextInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTaskQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mWillDrainTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$KUkIcjcbxNpojhfJKgicI76X1Uw(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->lambda$drainTaskQueue$1(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VRbt315bsy87r1TSkMrb-32Ptpc(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->lambda$drainTaskQueue$0(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsReactContextInitialized(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsReactContextInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdrainTaskQueue(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->drainTaskQueue(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsReactContextInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mWillDrainTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsInitializingReactContext:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsHeadlessJsTaskListenerRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private addTask(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createReactContextAndScheduleTask(Landroid/content/Context;)V
    .locals 6

    .line 202
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsInitializingReactContext:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsReactContextInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    invoke-direct {p0, v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->drainTaskQueue(Lcom/facebook/react/bridge/ReactContext;)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsInitializingReactContext:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "[createReactContextAndScheduleTask] initialize ReactContext"

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactHost(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->isBridglessArchitectureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    new-instance p1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;

    invoke-direct {p1, p0, v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Ljava/lang/Object;)V

    .line 226
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "addReactInstanceEventListener"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Lcom/facebook/react/ReactInstanceEventListener;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 227
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v1, "start"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 229
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeadlessTask reflection error ReactHost start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactNativeHost(Landroid/content/Context;)Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    .line 235
    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 243
    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drainTaskQueue(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mWillDrainTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private findTaskByReactId(I)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    .line 303
    invoke-static {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->-$$Nest$mgetReactTaskId(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 308
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;
    .locals 1

    .line 75
    sget-object v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getInstanceSynchronized()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    .line 78
    :cond_0
    sget-object v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    return-object v0
.end method

.method private static declared-synchronized getInstanceSynchronized()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    invoke-direct {v1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;-><init>()V

    sput-object v1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    .line 83
    :cond_0
    sget-object v1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->sInstance:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;
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

.method private getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;
    .locals 5

    .line 185
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->isBridglessArchitectureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactHost(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    const-string v1, "getReactHost() is null in New Architecture"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentReactContext"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 190
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 192
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reflection error getCurrentReactContext: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactNativeHost(Landroid/content/Context;)Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    return-object p1
.end method

.method private getReactHost(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 177
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getReactHost"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getReactNativeHost(Landroid/content/Context;)Lcom/facebook/react/ReactNativeHost;
    .locals 0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    return-object p1
.end method

.method private hasTasks()Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)Z
    .locals 4

    .line 136
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsHeadlessJsTaskListenerRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->addTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->invoke(Lcom/facebook/react/bridge/ReactContext;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p2, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->onError(Ljava/lang/Exception;)V

    return v3
.end method

.method private isBridglessArchitectureEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 255
    :try_start_0
    const-string v1, "com.facebook.react.defaults.DefaultNewArchitectureEntryPoint"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 256
    const-string v2, "getBridgelessEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 257
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private synthetic lambda$drainTaskQueue$0(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 275
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->removeTask(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$drainTaskQueue$1(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    new-instance v2, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeTask(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public findTask(I)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mTaskQueue:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    .line 289
    invoke-virtual {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 294
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finishTask(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$TaskNotFoundError;,
            Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$ContextError;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsReactContextInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->findTask(I)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object p1

    .line 124
    invoke-static {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->-$$Nest$mgetReactTaskId(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->isTaskRunning(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    invoke-static {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->-$$Nest$mgetReactTaskId(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->finishTask(I)V

    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance p1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$TaskNotFoundError;

    invoke-direct {p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$TaskNotFoundError;-><init>(I)V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$ContextError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".finishTask ReactContext is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$ContextError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_3
    new-instance p1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$ContextError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".finishTask:  ReactContext not initialized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$ContextError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onHeadlessJsTaskFinish(I)V
    .locals 3

    .line 157
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->findTaskByReactId(I)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0, v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->removeTask(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    .line 162
    invoke-virtual {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->onFinish()V

    .line 164
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onHeadlessJsTaskFinish] taskId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onHeadlessJsTaskStart(I)V
    .locals 0

    return-void
.end method

.method public startTask(Landroid/content/Context;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 103
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->addTask(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    .line 105
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->mIsReactContextInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->createReactContextAndScheduleTask(Landroid/content/Context;)V

    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 110
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->removeTask(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    :cond_1
    return-void
.end method
