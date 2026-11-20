.class public Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/utils/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/oppwa/mobile/connect/utils/BaseTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppwa/mobile/connect/utils/BaseTask<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/oppwa/mobile/connect/utils/BaseTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/oppwa/mobile/connect/utils/BaseTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;->b:Lcom/oppwa/mobile/connect/utils/BaseTask;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;->b:Lcom/oppwa/mobile/connect/utils/BaseTask;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/BaseTask;->call()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;->a:Landroid/os/Handler;

    new-instance v2, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTaskForHandler;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;->b:Lcom/oppwa/mobile/connect/utils/BaseTask;

    invoke-direct {v2, v3, v0}, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTaskForHandler;-><init>(Lcom/oppwa/mobile/connect/utils/BaseTask;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/TaskRunner$RunnableTask;->b:Lcom/oppwa/mobile/connect/utils/BaseTask;

    invoke-virtual {v1, v0}, Lcom/oppwa/mobile/connect/utils/BaseTask;->onError(Ljava/lang/Exception;)V

    return-void
.end method
