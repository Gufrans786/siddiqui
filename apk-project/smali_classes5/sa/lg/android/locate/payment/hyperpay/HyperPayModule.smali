.class public Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "HyperPayModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# static fields
.field private static final resultUrl:Ljava/lang/String; = "sa.lgandroidlocate://result"


# instance fields
.field appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private paymentRequestFromApp:Lcom/facebook/react/bridge/ReadableMap;

.field private result:Lcom/facebook/react/bridge/WritableMap;

.field private transactionState:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 48
    iput-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 49
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 50
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 69
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v1, "EventCompleted"

    sget-object v2, Lsa/lg/android/locate/payment/PaymentConstants;->eventCompleted:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "HyperPayModule"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    .line 118
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iput-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    .line 120
    const-string p2, "paymentRequestFromApp"

    const-string v0, "type"

    const-string v1, "eventProperty"

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 141
    :pswitch_0
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_ERROR"

    invoke-virtual {p4, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    .line 142
    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    const-string p4, "error"

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p3, p4, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 143
    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    sget-object p4, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->error:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    sget-object p4, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->error:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    iget-object p4, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->paymentRequestFromApp:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p3, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 146
    iget-object p2, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    const-string p3, "errorMessage"

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorMessage()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorCode()Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/ErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "errorCode"

    invoke-interface {p2, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object p2, Lsa/lg/android/locate/payment/PaymentConstants;->eventCompleted:Ljava/lang/String;

    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, p1, p2, p3}, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 134
    :pswitch_1
    sget-object p3, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->canceled:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    sget-object p3, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->canceled:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->paymentRequestFromApp:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 137
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object p2, Lsa/lg/android/locate/payment/PaymentConstants;->eventCompleted:Ljava/lang/String;

    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, p1, p2, p3}, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 122
    :pswitch_2
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_TRANSACTION"

    invoke-virtual {p4, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 123
    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    sget-object p4, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->complete:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getTransactionType()Lcom/oppwa/mobile/connect/provider/TransactionType;

    move-result-object p1

    sget-object p3, Lcom/oppwa/mobile/connect/provider/TransactionType;->SYNC:Lcom/oppwa/mobile/connect/provider/TransactionType;

    if-ne p1, p3, :cond_0

    .line 126
    sget-object p1, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->COMPLETED:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    iput-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->transactionState:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    .line 127
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    const-string p3, "OPPTransactionTypeSynchronous"

    invoke-interface {p1, v0, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->paymentRequestFromApp:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 129
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object p2, Lsa/lg/android/locate/payment/PaymentConstants;->eventCompleted:Ljava/lang/String;

    iget-object p3, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, p1, p2, p3}, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 3

    .line 170
    iget-object v0, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->transactionState:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    sget-object v1, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->COMPLETED:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    if-ne v0, v1, :cond_0

    .line 171
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    .line 172
    sget-object v1, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->complete:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventProperty"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    const-string v1, "type"

    const-string v2, "onHostResume"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v1, Lsa/lg/android/locate/payment/PaymentConstants;->eventCompleted:Ljava/lang/String;

    iget-object v2, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, v0, v1, v2}, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants;->HYPER_PAY_DEEP_LINK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    sget-object p1, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->COMPLETED:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    iput-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->transactionState:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    .line 157
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iput-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    .line 158
    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->complete:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventProperty"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    const-string v0, "type"

    const-string v1, "onNewIntent"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    const-string v0, "paymentRequestFromApp"

    iget-object v1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->paymentRequestFromApp:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 161
    iget-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants;->eventCompleted:Ljava/lang/String;

    iget-object v1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->result:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, p1, v0, v1}, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    return-void
.end method

.method public openHyperPay(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    iput-object p1, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->paymentRequestFromApp:Lcom/facebook/react/bridge/ReadableMap;

    .line 84
    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->NEW:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    iput-object v0, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->transactionState:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    .line 86
    const-string v0, "isSandbox"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 87
    const-string v1, "checkoutId"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "shopperResultURL"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 91
    const-string v4, "paymentBrands"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    .line 93
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 94
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_0

    .line 95
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 103
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-direct {p1, v1, v3, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    goto :goto_1

    .line 105
    :cond_2
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-direct {p1, v1, v3, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 107
    :cond_3
    const-string v2, "sa.lgandroidlocate://result"

    :goto_2
    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setShopperResultUrl(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 108
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->PROMPT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setStorePaymentDetailsMode(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setTotalAmountRequired(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 111
    iget-object v0, p0, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->createCheckoutActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lsa/lg/android/locate/payment/hyperpay/HyperPayModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method
