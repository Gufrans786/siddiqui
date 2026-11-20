.class Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;
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

.field final synthetic val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;->val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    invoke-static {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->-$$Nest$fgetmIsReactContextInitialized(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    invoke-static {v0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->-$$Nest$mdrainTaskQueue(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V

    .line 240
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$2;->val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {p1, p0}, Lcom/facebook/react/ReactInstanceManager;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    return-void
.end method
