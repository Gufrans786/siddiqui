.class public Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "KlarnaInlinePaymentInfoFragment.java"


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private final C:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentViewCallback;

.field private o:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

.field private p:Lcom/oppwa/mobile/connect/provider/Transaction;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/ScrollView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$DGZiOAhH7sAHLVtW7CPrbw8R5aU(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gqcgfdBV8_JwyZBWhEaWHf1LkG0(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->f()V

    return-void
.end method

.method public static synthetic $r8$lambda$pE9yGasixnvU3ccj4bXNcYgbC80(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->g()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    .line 23
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->C:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentViewCallback;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "KLARNA_PAYMENTS_SLICEIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "KLARNA_PAYMENTS_PAYLATER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "KLARNA_PAYMENTS_PAYNOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :pswitch_0
    const-string p1, "pay_over_time"

    return-object p1

    .line 10
    :pswitch_1
    const-string p1, "pay_later"

    return-object p1

    .line 11
    :pswitch_2
    const-string p1, "pay_now"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57ffcb3a -> :sswitch_2
        -0x575c7384 -> :sswitch_1
        0x897c585 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->B:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 44
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getShopperResultUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oppwa/mobile/connect/R$color;->checkout_background_color_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_1
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;

    invoke-direct {v2, p0, p1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;ZI)V

    .line 35
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    .line 36
    invoke-virtual {p1}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 54
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/provider/Transaction;

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/provider/Transaction;

    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_KLARNA_INLINE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-direct {v0, v1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/provider/Transaction;

    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_KLARNA_INLINE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v1, "Error sending request to callbackUrl/failureCallbackUrl."

    invoke-direct {p2, v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->B:Z

    return p0
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->e()V

    return-void
.end method

.method private b(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getBrandSpecificInfo()Ljava/util/Map;

    move-result-object p1

    .line 15
    const-string v0, "clientToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->q:Ljava/lang/String;

    .line 16
    const-string v0, "callbackUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->r:Ljava/lang/String;

    .line 17
    const-string v0, "connectorId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->t:Ljava/lang/String;

    .line 19
    const-string v0, "failureCallbackUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->s:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 8
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->C:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentViewCallback;

    invoke-direct {v0, v1, p1, v2}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentViewCallback;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->setAlpha(F)V

    .line 12
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->w:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 32
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getShopperResultUrl()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, p1, v1}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->sendCallbackRequestToPaypipe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->z:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->A:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->A:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-direct {p0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->u:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic d(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->r:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->s:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->v:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private synthetic f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->authorize(ZLjava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->e()V

    return-void
.end method

.method private synthetic g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->x:Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getShopperResultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->u:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Z)V

    .line 5
    :try_start_0
    new-instance v0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 6
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->setInitialTransactionId(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public continueWithPayment(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->B:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->s:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    .line 6
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->d()V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->s:Ljava/lang/String;

    const-string p2, "Unexpected PA transaction failure"

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->B:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 5
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/oppwa/mobile/connect/provider/Transaction;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/provider/Transaction;

    if-eqz p3, :cond_0

    .line 7
    invoke-direct {p0, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    .line 11
    :cond_0
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_klarna_inline_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->B:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p2, Lcom/oppwa/mobile/connect/R$id;->payment_info_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->v:Landroid/widget/ScrollView;

    .line 4
    sget p2, Lcom/oppwa/mobile/connect/R$id;->progress_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->y:Landroid/widget/RelativeLayout;

    .line 5
    sget p2, Lcom/oppwa/mobile/connect/R$id;->payment_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->w:Landroid/widget/RelativeLayout;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->payment_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->u:Landroid/widget/Button;

    .line 7
    sget p2, Lcom/oppwa/mobile/connect/R$id;->overlap_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->z:Landroid/view/View;

    .line 8
    sget p2, Lcom/oppwa/mobile/connect/R$id;->progress_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->A:Landroid/view/View;

    .line 10
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->u:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
