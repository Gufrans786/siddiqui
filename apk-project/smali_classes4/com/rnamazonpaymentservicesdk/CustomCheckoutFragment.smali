.class public Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomCheckoutFragment.java"


# static fields
.field private static callbackOnFailure:Lcom/facebook/react/bridge/Callback;

.field private static callbackOnSuccess:Lcom/facebook/react/bridge/Callback;

.field private static environment:Ljava/lang/String;

.field private static payButtonProps:Lcom/facebook/react/bridge/ReadableMap;

.field private static requestMap:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method static bridge synthetic -$$Nest$sfgetcallbackOnFailure()Lcom/facebook/react/bridge/Callback;
    .locals 1

    sget-object v0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->callbackOnFailure:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetcallbackOnSuccess()Lcom/facebook/react/bridge/Callback;
    .locals 1

    sget-object v0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->callbackOnSuccess:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static setCallbackOnFailure(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->callbackOnFailure:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method public static setCallbackOnSuccess(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 57
    sput-object p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->callbackOnSuccess:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method public static setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 53
    sput-object p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->environment:Ljava/lang/String;

    return-void
.end method

.method public static setPayButtonProps(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->payButtonProps:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method

.method public static setRequestObject(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->requestMap:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 68
    new-instance p1, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance p2, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v1, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v2, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p3, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 77
    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v3, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;

    invoke-direct {v3, p2, v0, v1, p1}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;-><init>(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/views/CardCvvView;Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;)V

    .line 95
    sget-object p1, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->payButtonProps:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p1

    .line 97
    invoke-static {v2, p1}, Lcom/rnamazonpaymentservicesdk/Utils;->customizeButton(Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;Ljava/util/HashMap;)Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    move-result-object p2

    invoke-static {p1}, Lcom/rnamazonpaymentservicesdk/Utils;->customizeButtonParams(Ljava/util/HashMap;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance p1, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-direct {p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;-><init>()V

    .line 102
    sget-object p2, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->requestMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->setRequestMap(Ljava/util/Map;)V

    .line 107
    sget-object p2, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->environment:Ljava/lang/String;

    const-string v0, "TEST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    const-string p2, "https://sbcheckout.payfort.com"

    goto :goto_0

    .line 109
    :cond_0
    sget-object p2, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->environment:Ljava/lang/String;

    const-string v0, "PRODUCTION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 110
    const-string p2, "https://checkout.payfort.com"

    goto :goto_0

    .line 109
    :cond_1
    const-string p2, ""

    .line 115
    :goto_0
    new-instance v0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;

    invoke-direct {v0, p0, v2}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;-><init>(Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;)V

    .line 133
    invoke-virtual {v2, p2, p1, v3, v0}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setup(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V

    return-object p3
.end method

.method public onDestroy()V
    .locals 0

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 148
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
