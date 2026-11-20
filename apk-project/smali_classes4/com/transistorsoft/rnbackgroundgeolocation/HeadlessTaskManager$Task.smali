.class public Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;
.super Ljava/lang/Object;
.source "HeadlessTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    }
.end annotation


# static fields
.field private static final sLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mId:I

.field private final mOnErrorCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

.field private final mOnFinishCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

.field private final mOnInvokeCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

.field private final mParams:Lcom/facebook/react/bridge/WritableMap;

.field private mReactTaskId:I

.field private final mTaskName:Ljava/lang/String;

.field private final mTimeout:I


# direct methods
.method static bridge synthetic -$$Nest$mgetReactTaskId(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)I
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->getReactTaskId()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 338
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->sLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)V
    .locals 2

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->-$$Nest$fgetname(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mTaskName:Ljava/lang/String;

    .line 354
    invoke-static {}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->getNextTaskId()I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mId:I

    .line 355
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->-$$Nest$fgetonInvokeCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mOnInvokeCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

    .line 356
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->-$$Nest$fgetonFinishCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mOnFinishCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

    .line 357
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->-$$Nest$fgetonErrorCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mOnErrorCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

    .line 358
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->-$$Nest$fgettimeout(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)I

    move-result v1

    iput v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mTimeout:I

    .line 359
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->-$$Nest$fgetparams(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mParams:Lcom/facebook/react/bridge/WritableMap;

    .line 361
    const-string v1, "_transistorHeadlessTaskId"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private buildTaskConfig()Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 5

    .line 388
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mTaskName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mParams:Lcom/facebook/react/bridge/WritableMap;

    iget v3, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mTimeout:I

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;J)V

    return-object v0
.end method

.method static declared-synchronized getNextTaskId()I
    .locals 2

    const-class v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    monitor-enter v0

    .line 340
    :try_start_0
    sget-object v1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->sLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getReactTaskId()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mReactTaskId:I

    return v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mId:I

    return v0
.end method

.method invoke(Lcom/facebook/react/bridge/ReactContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mReactTaskId:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 366
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Task already invoked <IGNORED>: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    .line 369
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v0

    .line 372
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->buildTaskConfig()Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mReactTaskId:I

    .line 373
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mOnInvokeCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

    if-eqz v0, :cond_1

    .line 374
    invoke-interface {v0, p1, p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;->onInvoke(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    :cond_1
    return v1
.end method

.method onError(Ljava/lang/Exception;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mOnErrorCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0, p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;->onError(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method onFinish()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mOnFinishCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

    if-eqz v0, :cond_0

    .line 393
    iget v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mId:I

    invoke-interface {v0, v1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;->onFinish(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[HeadlessTaskManager.Task name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mTaskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
