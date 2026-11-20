.class Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;
.super Ljava/lang/Object;
.source "HeadlessTaskManager.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->createReactContextAndScheduleTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

.field final synthetic val$reactHost:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;->val$reactHost:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    invoke-static {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->-$$Nest$fgetmIsReactContextInitialized(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    invoke-static {v0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->-$$Nest$mdrainTaskQueue(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V

    .line 218
    :try_start_0
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;->val$reactHost:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "removeReactInstanceEventListener"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/facebook/react/ReactInstanceEventListener;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$1;->val$reactHost:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 221
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeadlessTask reflection error removeReactInstanceEventListener: "

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
