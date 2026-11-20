.class final Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StcGenerateOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->observeValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 5

    .line 108
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->mobileTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->mobileTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 112
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    sget v4, Lcom/payfort/fortpaymentsdk/R$string;->pf_error_invalid_mobilenumber:I

    invoke-virtual {v3, v4}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    iget-object v0, v2, Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;->btnContinue:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method
