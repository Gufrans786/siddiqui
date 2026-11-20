.class public final synthetic Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, v1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->$r8$lambda$KUkIcjcbxNpojhfJKgicI76X1Uw(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method
