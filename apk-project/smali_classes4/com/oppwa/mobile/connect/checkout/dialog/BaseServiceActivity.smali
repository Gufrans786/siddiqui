.class public abstract Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;
.source "BaseServiceActivity.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/b;


# instance fields
.field protected s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;


# direct methods
.method public static synthetic $r8$lambda$7WsYvuoPmLjeBKIPUmHpbRdnNL0(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Lcom/google/android/gms/tasks/Task;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    .line 158
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/wallet/PaymentsClient;Ljava/lang/String;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 161
    invoke-static {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-static {p2}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p2

    .line 165
    invoke-static {p1, p2, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->a(Lcom/google/android/gms/wallet/PaymentsClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    return-void
.end method

.method private c(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 3

    .line 21
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object v0

    .line 22
    const-string v1, "secureTransactionId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getBancontactLinkAppSchemeUrlMissingError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void

    .line 30
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 37
    :catch_0
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getBancontactLinkAppNotInstalledError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private d(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "ALIPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isAlipayAvailable:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->g(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isKlarnaAvailable:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void

    .line 14
    :cond_1
    const-string v1, "BANCONTACT_LINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getTransactionType()Lcom/oppwa/mobile/connect/provider/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/oppwa/mobile/connect/provider/TransactionType;->ASYNC:Lcom/oppwa/mobile/connect/provider/TransactionType;

    if-ne v0, v1, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->f(Lcom/oppwa/mobile/connect/provider/Transaction;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->e(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d(Ljava/lang/String;)V

    .line 29
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method

.method private d(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isKlarnaAvailable:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private k()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->getPaymentsClient(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->l:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 5
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda5;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V

    .line 14
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getGooglePayPaymentDataRequestJson()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GOOGLEPAY"

    if-eqz v2, :cond_1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->l:Lcom/google/android/gms/wallet/PaymentsClient;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 18
    invoke-virtual {v4}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getGooglePayPaymentDataRequestJson()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-direct {p0, v2, v4, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->a(Lcom/google/android/gms/wallet/PaymentsClient;Ljava/lang/String;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 25
    sget-object v2, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne v0, v2, :cond_0

    .line 26
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->n()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne v0, v1, :cond_2

    .line 34
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->n()V

    return-void

    .line 37
    :cond_2
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v3, "GooglePayPaymentDataRequestJson is not set."

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method private l()Lcom/oppwa/mobile/connect/provider/Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;-><init>(Lcom/oppwa/mobile/connect/payment/PaymentParams;)V

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a(Lcom/oppwa/mobile/connect/checkout/dialog/t;)V

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getShopperResultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->isCollectRedShieldDeviceId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a(Landroid/content/Context;)V

    .line 9
    :cond_0
    new-instance v1, Lcom/oppwa/mobile/connect/provider/Transaction;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->b()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oppwa/mobile/connect/provider/Transaction;-><init>(Lcom/oppwa/mobile/connect/payment/PaymentParams;)V

    return-object v1
.end method

.method private m()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isThreeDS2Available:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;

    .line 3
    invoke-static {}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->getInstance()Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->getConfig()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;-><init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->setLocale(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->build()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private r()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/t;->b:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getNoAvailablePaymentMethodsError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentMethodNotAvailableError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    .line 5
    :goto_1
    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-direct {v1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v1
.end method


# virtual methods
.method protected a(Lcom/oppwa/mobile/connect/checkout/dialog/e0;)V
    .locals 3

    .line 136
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->a(Z)V

    .line 142
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->b()Lcom/oppwa/mobile/connect/provider/Transaction;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->a()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    if-nez p1, :cond_1

    .line 147
    :try_start_0
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->d(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorCode()Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object v1

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_THREEDS2_CANCELED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    if-ne v1, v2, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d()V

    return-void

    .line 152
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->d(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->i:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    .line 90
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 91
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getBrandDetectionPriority()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->setBrandDetectionPriority(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V

    .line 97
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->r()V

    .line 99
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 100
    invoke-virtual {p0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->a(Lcom/oppwa/mobile/connect/checkout/dialog/a0;Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Z

    move-result p1

    .line 101
    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->p()V

    return-void

    .line 105
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "BrandsValidation is null"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 4
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 5
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getPaymentBrands()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getTokens()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;-><init>(Ljava/util/Set;[Lcom/oppwa/mobile/connect/payment/token/Token;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 9
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 11
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isPaymentBrandsOrderUsedForTokens()Z

    move-result v1

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;Z)V

    .line 16
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->n:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    .line 18
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->d()Z

    move-result v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Z)V

    .line 23
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 24
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaCountry()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    .line 30
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 31
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 32
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getShopperResultUrl()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object p1

    const-string v0, "GOOGLEPAY"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesWalletAvailable:Z

    if-eqz p1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->k()V

    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->n()V

    return-void

    .line 47
    :cond_2
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "CheckoutInfo is null"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V
    .locals 1

    .line 134
    invoke-static {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V

    .line 135
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->q()V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/checkout/dialog/a0;Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Z
    .locals 4

    .line 125
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->d()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->d()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 132
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCardBrandsDisplayMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    move-result-object v0

    sget-object v3, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;->GROUPED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    if-ne v0, v3, :cond_3

    .line 133
    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method protected c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->continueWithPayment(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object p2

    const-string v0, "clientToken"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object p2

    const-string v0, "callbackUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object p2

    const-string v0, "failureCallbackUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object p2

    const-string v0, "connectorId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    .line 11
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void

    .line 20
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string p2, "Klarna inline payments params are invalid."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method protected e(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method

.method protected f(Lcom/oppwa/mobile/connect/provider/Transaction;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2MethodRedirectUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected g(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object v0

    .line 2
    const-string v1, "alipaySignedInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/oppwa/mobile/connect/utils/TaskRunner;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/utils/TaskRunner;-><init>()V

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/a;

    invoke-direct {v2, p0, p1, p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a;-><init>(Landroid/app/Activity;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/checkout/dialog/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/oppwa/mobile/connect/utils/TaskRunner;->executeAsync(Lcom/oppwa/mobile/connect/utils/BaseTask;)V

    return-void
.end method

.method protected j()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->m()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object v3

    .line 6
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->l()Lcom/oppwa/mobile/connect/provider/Transaction;

    move-result-object v4

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 7
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getEndpoint()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    move-object v2, p0

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->sendTransaction(Landroid/app/Activity;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, v2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    return-void
.end method

.method protected n()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->r()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 5
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 6
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->c()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->getBrandsValidationLiveData(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V

    .line 12
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 2
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    invoke-virtual {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->getCheckoutInfoLiveData(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onAlipayCanceled()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d()V

    return-void
.end method

.method public onAlipayCompleted(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->setCurrentCheckoutId(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    .line 11
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 13
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 14
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    .line 4
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->getTransactionResultLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda3;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V

    .line 5
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    .line 7
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->getPaymentErrorLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda4;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V

    .line 8
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz v0, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 2
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->c()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->s:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    invoke-virtual {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->getImagesRequestLiveData([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected abstract q()V
.end method
