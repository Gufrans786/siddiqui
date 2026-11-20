.class Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;
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

.field final synthetic val$reactHost:Ljava/lang/Object;

.field final synthetic val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;


# direct methods
.method public static synthetic $r8$lambda$c4w4WO58ynnojTTLeHtRiuxaWdw(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->lambda$onReactContextInitialized$0(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    iput-object p3, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$reactHost:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactContextInitialized$0(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    invoke-static {v0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->-$$Nest$minvokeStartTask(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 5

    .line 137
    invoke-static {}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    new-instance v2, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :try_start_0
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$reactHost:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "removeReactInstanceEventListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/facebook/react/ReactInstanceEventListener;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$reactHost:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[HeadlessTask] reflection error removeReactInstanceEventListener"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
