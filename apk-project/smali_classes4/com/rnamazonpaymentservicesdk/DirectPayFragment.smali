.class public Lcom/rnamazonpaymentservicesdk/DirectPayFragment;
.super Landroidx/fragment/app/Fragment;
.source "DirectPayFragment.java"


# static fields
.field private static callbackOnFailure:Lcom/facebook/react/bridge/Callback;

.field private static callbackOnSuccess:Lcom/facebook/react/bridge/Callback;

.field private static environment:Ljava/lang/String;

.field private static payButtonProps:Lcom/facebook/react/bridge/ReadableMap;

.field private static requestMap:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method static bridge synthetic -$$Nest$sfgetcallbackOnFailure()Lcom/facebook/react/bridge/Callback;
    .locals 1

    sget-object v0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->callbackOnFailure:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetcallbackOnSuccess()Lcom/facebook/react/bridge/Callback;
    .locals 1

    sget-object v0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->callbackOnSuccess:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static setCallbackOnFailure(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 53
    sput-object p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->callbackOnFailure:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method public static setCallbackOnSuccess(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->callbackOnSuccess:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method public static setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->environment:Ljava/lang/String;

    return-void
.end method

.method public static setPayButtonProps(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->payButtonProps:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method

.method public static setRequestObject(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->requestMap:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    new-instance p1, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 68
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    sget-object p3, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->payButtonProps:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p3

    .line 78
    invoke-static {p1, p3}, Lcom/rnamazonpaymentservicesdk/Utils;->customizeButton(Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;Ljava/util/HashMap;)Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    move-result-object v0

    invoke-static {p3}, Lcom/rnamazonpaymentservicesdk/Utils;->customizeButtonParams(Ljava/util/HashMap;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance p3, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-direct {p3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;-><init>()V

    .line 83
    sget-object v0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->requestMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->setRequestMap(Ljava/util/Map;)V

    .line 87
    sget-object v0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->environment:Ljava/lang/String;

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "https://sbcheckout.payfort.com"

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->environment:Ljava/lang/String;

    const-string v1, "PRODUCTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "https://checkout.payfort.com"

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, ""

    .line 95
    :goto_0
    new-instance v1, Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;-><init>(Lcom/rnamazonpaymentservicesdk/DirectPayFragment;Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;)V

    .line 114
    invoke-virtual {p1, v0, p3, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setup(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
