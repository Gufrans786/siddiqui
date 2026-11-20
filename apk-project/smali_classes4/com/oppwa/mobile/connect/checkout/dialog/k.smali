.class Lcom/oppwa/mobile/connect/checkout/dialog/k;
.super Ljava/lang/Object;
.source "CheckoutHelper.java"


# direct methods
.method static a(Landroid/app/Activity;Landroid/content/ComponentName;Lcom/oppwa/mobile/connect/payment/PaymentParams;Lcom/google/android/gms/wallet/PaymentData;)Landroid/content/Intent;
    .locals 2

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.action.ACTION_ON_BEFORE_SUBMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_BRAND"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_ID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 38
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_GOOGLE_PAY_PAYMENT_DATA"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string p0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_SENDER_COMPONENT_NAME"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/wallet/PaymentData;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentMethodToken;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 60
    :goto_0
    new-instance v0, Lcom/oppwa/mobile/connect/payment/googlepay/GooglePayPaymentParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/googlepay/GooglePayPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;[Lcom/oppwa/mobile/connect/payment/token/Token;)Lcom/oppwa/mobile/connect/payment/token/Token;
    .locals 4

    if-eqz p1, :cond_2

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 18
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Lcom/oppwa/mobile/connect/payment/token/Token;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    const-string v3, "CARD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-static {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Lcom/oppwa/mobile/connect/payment/token/Token;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "paymentMethodData"

    .line 62
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    const-string/jumbo v0, "tokenizationData"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 68
    const-string/jumbo v0, "token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 72
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 75
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v1, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 11
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 12
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 16
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 0

    .line 25
    sget-boolean p1, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesBaseAvailable:Z

    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/oppwa/mobile/connect/payment/token/Token;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/token/Card;->getExpiryMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/token/Card;->getExpiryYear()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isCardExpired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Redirect URL is not valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string v0, "Redirect URL is null or empty."

    invoke-static {v0}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p0
.end method
