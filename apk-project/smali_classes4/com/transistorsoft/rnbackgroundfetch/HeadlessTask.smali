.class public Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;
.super Ljava/lang/Object;
.source "HeadlessTask.java"


# static fields
.field private static final HEADLESS_TASK_NAME:Ljava/lang/String; = "BackgroundFetch"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private final mBGTask:Lcom/transistorsoft/tsbackgroundfetch/BGTask;


# direct methods
.method public static synthetic $r8$lambda$2dSSvaxXEAoCTDqYukVrqm20kJw(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->lambda$invokeStartTask$1(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minvokeStartTask(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mBGTask:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 39
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 40
    const-string/jumbo v1, "taskId"

    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v1, "timeout"

    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTimedOut()Z

    move-result p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    new-instance p2, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    const-string v1, "BackgroundFetch"

    const-wide/16 v2, 0x7530

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;J)V

    .line 44
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[HeadlessTask] Failed invoke HeadlessTask: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TSBackgroundFetch"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createReactContextAndScheduleTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Landroid/content/Context;)V
    .locals 6

    .line 129
    const-string v0, "[HeadlessTask] initializing ReactContext"

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->isBridglessArchitectureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->getReactHost(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    .line 134
    new-instance v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Ljava/lang/Object;)V

    .line 148
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "addReactInstanceEventListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/facebook/react/ReactInstanceEventListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 149
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "start"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 151
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[HeadlessTask] reflection error addReactInstanceEventListener: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->getReactNativeHost(Landroid/content/Context;)Lcom/facebook/react/ReactNativeHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p2

    .line 157
    new-instance v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 164
    invoke-virtual {p2}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    return-void
.end method

.method private getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;
    .locals 5

    .line 114
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->isBridglessArchitectureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->getReactHost(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    const-string v1, "getReactHost() is null in New Architecture"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentReactContext"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[HeadlessTask] Reflection error getCurrentReactContext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->getReactNativeHost(Landroid/content/Context;)Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    return-object p1
.end method

.method private getReactHost(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getReactHost"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[HeadlessTask] Reflection error ReactHost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getReactNativeHost(Landroid/content/Context;)Lcom/facebook/react/ReactNativeHost;
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    return-object p1
.end method

.method private invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isBridglessArchitectureEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 171
    :try_start_0
    const-string v1, "com.facebook.react.defaults.DefaultNewArchitectureEntryPoint"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 172
    const-string v2, "getBridgelessEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 174
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method static synthetic lambda$invokeStartTask$0(ILcom/facebook/react/jstasks/HeadlessJsTaskContext;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[HeadlessTask] end taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->isTaskRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->finishTask(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$invokeStartTask$1(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 3

    .line 77
    const-string v0, "TSBackgroundFetch"

    .line 0
    const-string v1, "[HeadlessTask] start taskId: "

    .line 77
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)I

    move-result p2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mBGTask:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    new-instance v2, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;-><init>(ILcom/facebook/react/jstasks/HeadlessJsTaskContext;)V

    invoke-virtual {v1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->setCompletionHandler(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 88
    :catch_0
    const-string p1, "[HeadlessTask] task attempted to run in the foreground.  Task ignored."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 60
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->createReactContextAndScheduleTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Landroid/content/Context;)V

    return-void

    .line 65
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method
