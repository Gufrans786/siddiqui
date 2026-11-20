.class Lcom/transistorsoft/locationmanager/http/HttpService$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/http/HttpService$e;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/http/HttpService;

.field final synthetic b:Lcom/transistorsoft/locationmanager/http/HttpService$e;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService$e;Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$e;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$e;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->d(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    return-void
.end method

.method public onStart(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$e;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->b(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$e;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A BackgroundTask is already executing a FlushTask.  taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", backgroundTaskId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$e;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->b(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
