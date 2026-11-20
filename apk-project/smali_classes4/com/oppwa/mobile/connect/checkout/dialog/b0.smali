.class Lcom/oppwa/mobile/connect/checkout/dialog/b0;
.super Ljava/lang/Object;
.source "PaymentParamsBuilder.java"


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/payment/PaymentParams;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/payment/PaymentParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {}, Lcom/iovation/mobile/android/FraudForceManager;->getInstance()Lcom/iovation/mobile/android/FraudForceManager;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/iovation/mobile/android/FraudForceConfiguration;

    invoke-direct {v1}, Lcom/iovation/mobile/android/FraudForceConfiguration;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iovation/mobile/android/FraudForceManager;->initialize(Lcom/iovation/mobile/android/FraudForceConfiguration;Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iovation/mobile/android/FraudForceManager;->getBlackbox(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    const-string v1, "customParameters[SHOPPER_TOUCHID]"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .line 6
    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isIovationAvailable:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    const-string v1, "customer.browserFingerprint.value"

    invoke-virtual {v0, v1, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/checkout/dialog/t;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 4
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/t;->a()Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string v1, "customParameters[SHOPPER_MSDKIntegrationType]"

    invoke-virtual {v0, v1, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->setShopperResultUrl(Ljava/lang/String;)V

    return-void
.end method

.method b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    return-object v0
.end method
