.class final Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InitSecureConnectionActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->observeValues()V
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V
    .locals 3

    .line 55
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "merchantReq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const-string v1, "currencyDecimalPoints"

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getCurrencyDecimalPoints()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "merchantToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getEnvironment$fortpayment_release()Ljava/lang/String;

    move-result-object p1

    const-string v1, "environment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string p1, "defaultLocale"

    invoke-static {}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->getDEFAULT_SYSTEM_LANGUAGE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-virtual {p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->failedMessage$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void

    .line 71
    :cond_2
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    if-eqz v0, :cond_3

    .line 72
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    check-cast v1, Landroid/content/Context;

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-virtual {v2}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->convertThrowableToSdkResponse(Landroid/content/Context;Ljava/lang/Throwable;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->failedMessage$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    :cond_3
    return-void
.end method
