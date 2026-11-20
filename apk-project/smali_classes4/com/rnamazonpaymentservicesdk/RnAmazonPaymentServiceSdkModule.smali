.class public Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RnAmazonPaymentServiceSdkModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RnAmazonPaymentServiceSdk"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RnAmazonPaymentServiceSdk"

.field private static final PAYFORT_REQUEST_CODE:I = 0x48e


# instance fields
.field private fortCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->fortCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;

    .line 39
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private callSdk(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8

    .line 119
    const-string v0, "TEST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string p2, "https://sbcheckout.payfort.com"

    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "PRODUCTION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 122
    const-string p2, "https://checkout.payfort.com"

    goto :goto_0

    .line 121
    :cond_1
    const-string p2, ""

    :goto_0
    move-object v3, p2

    .line 125
    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    :try_start_0
    invoke-static {}, Lcom/payfort/fortpaymentsdk/FortSdk;->getInstance()Lcom/payfort/fortpaymentsdk/FortSdk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->fortCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;

    .line 133
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;

    invoke-direct {v7, p0, p6, p5}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;-><init>(Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    const/16 v4, 0x48e

    move-object v2, p1

    .line 128
    invoke-virtual/range {v0 .. v7}, Lcom/payfort/fortpaymentsdk/FortSdk;->registerCallback(Landroid/app/Activity;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;ILcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;ZLcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static native nativeMultiply(II)I
.end method


# virtual methods
.method public callCustomFortRequest(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->setRequestObject(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 197
    invoke-static {p2}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->setPayButtonProps(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 198
    invoke-static {p3}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->setEnvironment(Ljava/lang/String;)V

    .line 199
    invoke-static {p4}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->setCallbackOnSuccess(Lcom/facebook/react/bridge/Callback;)V

    .line 200
    invoke-static {p5}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->setCallbackOnFailure(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public callDirectPayFortRequest(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 180
    invoke-static {p1}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->setRequestObject(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 181
    invoke-static {p2}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->setPayButtonProps(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 182
    invoke-static {p3}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->setEnvironment(Ljava/lang/String;)V

    .line 183
    invoke-static {p4}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->setCallbackOnSuccess(Lcom/facebook/react/bridge/Callback;)V

    .line 184
    invoke-static {p5}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->setCallbackOnFailure(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public callFortRequest(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->fortCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager$Factory;->create()Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->fortCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;

    :cond_0
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    .line 89
    new-instance p2, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-direct {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;-><init>()V

    .line 91
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->setRequestMap(Ljava/util/Map;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->setShowResponsePage(Z)V

    move-object p1, p0

    .line 95
    invoke-direct/range {p1 .. p7}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->callSdk(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getDeviceID(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/FortSdk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 65
    const-string v1, "Create Event Error"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "RnAmazonPaymentServiceSdk"

    return-object v0
.end method

.method public multiply(IILcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    mul-int/2addr p1, p2

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/16 p1, 0x48e

    if-ne p2, p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->fortCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;

    invoke-interface {p1, p2, p3, p4}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
