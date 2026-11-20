.class final Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$fortRequest$2;
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
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
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

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$fortRequest$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$fortRequest$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentArgs;->fromBundle(Landroid/os/Bundle;)Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    const-string v1, "fromBundle(requireActivi\u2026nt?.extras!!).merchantReq"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$fortRequest$2;->invoke()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    return-object v0
.end method
