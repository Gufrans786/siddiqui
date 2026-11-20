.class final Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;
.super Ljava/lang/Object;
.source "RepeatStcFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "emit",
        "(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "+",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    instance-of p2, p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;

    const-string v0, "binding.progressLoading"

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p2, :cond_1

    .line 92
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->progressLoading:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    goto/16 :goto_3

    .line 95
    :cond_1
    sget-object p2, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->progressLoading:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->visible(Landroid/view/View;)V

    goto/16 :goto_3

    .line 96
    :cond_3
    instance-of p2, p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;

    if-eqz p2, :cond_8

    .line 97
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_4
    iget-object p2, p2, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->progressLoading:Landroid/widget/ProgressBar;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    .line 98
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    .line 100
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "masked_phone_number"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_5
    iget-object p2, p2, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->tvMobileNumber:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6
    iget-object p1, p1, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->btnContinue:Lcom/google/android/material/button/MaterialButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 103
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v1, p1

    :goto_2
    iget-object p1, v1, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->holder:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string p2, "binding.holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->visible(Landroid/view/View;)V

    .line 107
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;

    invoke-virtual {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$1$1;->emit(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
