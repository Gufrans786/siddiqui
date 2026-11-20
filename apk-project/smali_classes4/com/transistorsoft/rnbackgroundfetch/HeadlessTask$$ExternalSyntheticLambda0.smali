.class public final synthetic Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;


# direct methods
.method public synthetic constructor <init>(ILcom/facebook/react/jstasks/HeadlessJsTaskContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 2

    .line 0
    iget v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    invoke-static {v0, v1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->lambda$invokeStartTask$0(ILcom/facebook/react/jstasks/HeadlessJsTaskContext;)V

    return-void
.end method
