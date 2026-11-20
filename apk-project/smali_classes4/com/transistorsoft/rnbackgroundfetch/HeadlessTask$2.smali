.class Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;
.super Ljava/lang/Object;
.source "HeadlessTask.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->createReactContextAndScheduleTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

.field final synthetic val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

.field final synthetic val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;


# direct methods
.method public static synthetic $r8$lambda$EzrwQXId9z-pTcSiEwtKfMmYwhk(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->lambda$onReactContextInitialized$0(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    iput-object p3, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactContextInitialized$0(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    invoke-static {v0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->-$$Nest$minvokeStartTask(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 5

    .line 160
    invoke-static {}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    new-instance v2, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {p1, p0}, Lcom/facebook/react/ReactInstanceManager;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    return-void
.end method
