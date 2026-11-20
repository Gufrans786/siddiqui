.class final Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StcPayFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;-><init>()V
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$viewModel$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$viewModel$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;->access$getEnvironment(Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideStcViewModelFactory(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$viewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
