.class final Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;
.super Ljava/lang/Object;
.source "RepeatStcFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

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

    .line 113
    instance-of p2, p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;

    const-string v0, "binding.progressLoading"

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p2, :cond_1

    .line 114
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

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

    goto :goto_3

    .line 117
    :cond_1
    sget-object p2, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

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

    goto :goto_3

    .line 118
    :cond_3
    instance-of p1, p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;

    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    iget-object p1, p1, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->progressLoading:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, p1

    :goto_2
    iget-object p1, v1, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->tvMobileNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections;->actionRepeatStcFragmentToStcPayFragment(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcPayFragment;

    move-result-object p1

    const-string p2, "actionRepeatStcFragmentT\u2026                        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p2

    .line 125
    check-cast p1, Landroidx/navigation/NavDirections;

    .line 124
    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    .line 130
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;

    invoke-virtual {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$observeValues$2$1;->emit(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
