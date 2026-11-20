.class public final synthetic Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReactContext;

.field public final synthetic f$2:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/ReactContext;

    iput-object p3, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->$r8$lambda$EzrwQXId9z-pTcSiEwtKfMmYwhk(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method
