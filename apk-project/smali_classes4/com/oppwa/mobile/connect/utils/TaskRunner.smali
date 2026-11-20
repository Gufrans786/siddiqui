.class public Lcom/oppwa/mobile/connect/utils/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTaskForHandler;,
        Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner;->a:Landroid/os/Handler;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public executeAsync(Lcom/oppwa/mobile/connect/utils/BaseTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oppwa/mobile/connect/utils/BaseTask<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner;->a:Landroid/os/Handler;

    invoke-direct {v1, v2, p1}, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;-><init>(Landroid/os/Handler;Lcom/oppwa/mobile/connect/utils/BaseTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/utils/BaseTask;->onError(Ljava/lang/Exception;)V

    return-void
.end method
