.class public final synthetic Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;

.field public final synthetic f$1:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent$$ExternalSyntheticLambda0;->f$0:Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent$$ExternalSyntheticLambda0;->f$0:Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/Observer;

    invoke-static {v0, v1, p1}, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;->$r8$lambda$p_OIfXg4lst0WBmQ57G0w-YMMXI(Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;Landroidx/lifecycle/Observer;Ljava/lang/Object;)V

    return-void
.end method
