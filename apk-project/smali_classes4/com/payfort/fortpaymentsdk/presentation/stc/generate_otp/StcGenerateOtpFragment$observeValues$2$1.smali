.class final Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StcGenerateOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
        "+",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcGenerateOtpFragment$observeValues$2$1"
    f = "StcGenerateOtpFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-direct {v0, v1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->invoke(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 118
    iget v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;

    .line 120
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;

    const-string v1, "binding.loadingContainer"

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_3

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "response_code"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "044"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {v0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$setErrorResult(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;)V

    goto/16 :goto_3

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p1, p1, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->mobileTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 125
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v0

    const-string v4, "response_message"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    iget-object p1, v2, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->loadingContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    goto :goto_3

    .line 129
    :cond_3
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    iget-object p1, v2, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->loadingContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->visible(Landroid/view/View;)V

    goto :goto_3

    .line 130
    :cond_5
    instance-of p1, p1, Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;

    if-eqz p1, :cond_7

    .line 131
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v2, p1

    :goto_2
    iget-object p1, v2, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->loadingContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$2$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getMobileNumber(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentDirections;->actionStcGenerateOtpFragmentToStcPayFragment(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentDirections$ActionStcGenerateOtpFragmentToStcPayFragment;

    move-result-object v0

    const-string v1, "actionStcGenerateOtpFrag\u2026                        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/NavDirections;

    .line 132
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    .line 140
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 118
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
