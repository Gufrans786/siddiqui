.class public final synthetic Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

.field public final synthetic f$1:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

.field public final synthetic f$2:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    iput-object p3, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;->f$2:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    iget-object v2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda1;->f$2:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->$r8$lambda$2dSSvaxXEAoCTDqYukVrqm20kJw(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method
