.class public Lcom/oppwa/mobile/connect/threeds/TaskRunner$RunnableTaskForHandler;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableTaskForHandler"
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
.field private final a:Lcom/oppwa/mobile/connect/threeds/BaseTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppwa/mobile/connect/threeds/BaseTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oppwa/mobile/connect/threeds/BaseTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppwa/mobile/connect/threeds/BaseTask<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/TaskRunner$RunnableTaskForHandler;->a:Lcom/oppwa/mobile/connect/threeds/BaseTask;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/TaskRunner$RunnableTaskForHandler;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/TaskRunner$RunnableTaskForHandler;->a:Lcom/oppwa/mobile/connect/threeds/BaseTask;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/TaskRunner$RunnableTaskForHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/threeds/BaseTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
