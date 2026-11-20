.class final Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StcPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->purchase(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2$1;

    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2$1;-><init>(Lcom/payfort/fortpaymentsdk/domain/model/Result;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
