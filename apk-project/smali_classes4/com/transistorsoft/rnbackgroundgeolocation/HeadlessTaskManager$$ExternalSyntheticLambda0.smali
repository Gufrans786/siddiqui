.class public final synthetic Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/ReactContext;

    check-cast p1, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->$r8$lambda$VRbt315bsy87r1TSkMrb-32Ptpc(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V

    return-void
.end method
