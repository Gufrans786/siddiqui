.class public Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkPackage;
.super Ljava/lang/Object;
.source "RnAmazonPaymentServiceSdkPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;

    invoke-direct {v1, p1}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 27
    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewManager;

    new-instance v1, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkViewManager;

    invoke-direct {v1}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkViewManager;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/rnamazonpaymentservicesdk/DirectPayManager;

    invoke-direct {v1, p1}, Lcom/rnamazonpaymentservicesdk/DirectPayManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;

    invoke-direct {v1, p1}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
