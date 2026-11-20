.class public abstract Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;
.source "PaymentInfoFragment.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;


# instance fields
.field protected d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

.field protected e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

.field protected f:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/oppwa/mobile/connect/payment/token/Token;

.field protected i:Ljava/lang/String;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/Button;

.field protected m:Landroid/widget/ProgressBar;

.field protected n:Z


# direct methods
.method public static synthetic $r8$lambda$2BOgLFi9z2ts4d6ros7r-2grQbs(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ri9ZFoqpKhqh87XhwZ83zxOEO2Q(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->c(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;-><init>()V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/payment/PaymentParams;Z)Landroid/os/Bundle;
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "PAYMENT_PARAMS_RESULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    const-string p1, "TOKENIZED_RESULT_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 8
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->c()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isTotalAmountRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    if-eqz v0, :cond_0

    .line 11
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_pay_amount:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_pay:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->b()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 7
    const-class v2, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/payment/PaymentParams;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
.end method

.method protected b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->j:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(I)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 7
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 8
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->f:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    .line 9
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_BRAND"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    .line 10
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/token/Token;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 11
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PROVIDER_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->i:Ljava/lang/String;

    .line 12
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_SKIP_PAYMENT_METHOD_SELECTION_SCREEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->n:Z

    :cond_0
    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->m:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p2, Lcom/oppwa/mobile/connect/R$string;->checkout_payment_details:I

    invoke-virtual {p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->b(Landroid/view/View;)V

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->m:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    sget p2, Lcom/oppwa/mobile/connect/R$id;->payment_info_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->j:Landroid/widget/TextView;

    .line 11
    sget p2, Lcom/oppwa/mobile/connect/R$id;->logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->m:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->n:Z

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
