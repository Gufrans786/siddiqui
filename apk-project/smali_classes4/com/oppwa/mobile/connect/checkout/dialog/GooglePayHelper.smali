.class public Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;
.super Ljava/lang/Object;
.source "GooglePayHelper.java"


# static fields
.field public static final GATEWAY:Ljava/lang/String; = "aciworldwide"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "allowedPaymentMethods"

    .line 4
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    const-string/jumbo v2, "tokenizationSpecification"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;->setAllowedPaymentMethods(Lorg/json/JSONArray;)Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;->toJson()Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 21
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {p0}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getUnexpectedExceptionError(Ljava/lang/Exception;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method static a(Lcom/google/android/gms/wallet/PaymentsClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static getPaymentsClient(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 7
    :goto_0
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object p1

    .line 12
    invoke-static {p0, p1}, Lcom/google/android/gms/wallet/Wallet;->getPaymentsClient(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    return-object p0
.end method

.method public static isReadyToPayWithGoogle(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/String;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
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

    .line 1
    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->getPaymentsClient(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    .line 7
    invoke-static {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p1

    .line 11
    invoke-static {p0, p1, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->a(Lcom/google/android/gms/wallet/PaymentsClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    return-void
.end method
