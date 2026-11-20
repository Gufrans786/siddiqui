.class final Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreeDsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$viewModel$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$viewModel$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getEnvironment$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideCompleteThreeDsUseViewModelFactory(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModelFactory;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$viewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
