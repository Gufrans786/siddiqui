.class Lcom/oppwa/mobile/connect/checkout/dialog/e;
.super Ljava/lang/Object;
.source "BasePaymentButton.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/provider/ITransactionListener;
.implements Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;


# static fields
.field private static final n:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.e"


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field protected b:Landroid/app/Activity;

.field protected c:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

.field protected d:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/ComponentName;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

.field private l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

.field private m:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$bmicN3EgxCK6y6D7loLCxzKiv5o(Lcom/oppwa/mobile/connect/checkout/dialog/e;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rm0gyABnWNkmb8Opb5OrDx1oupw(Lcom/oppwa/mobile/connect/checkout/dialog/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->STANDALONE:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->k:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    .line 7
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private a()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    sget v1, Lcom/oppwa/mobile/connect/R$drawable;->opp_btn_background_payment:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesBaseAvailable:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->h:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->callOnClick()Z

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 3

    .line 17
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getPaymentBrands()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    const-string v2, "CARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setPaymentBrands(Ljava/util/Set;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V

    .line 25
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d()Landroid/app/Activity;

    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_pay_with:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/widget/ImageButton;)Z
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    const-string v1, "GOOGLEPAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->k:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    sget-object v2, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->STANDALONE:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    .line 39
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 40
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method private b()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->k:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->STANDALONE:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->c()V

    return-void

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a()V

    .line 19
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/e$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 33
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->n:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 22
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->o()V

    return-void

    .line 23
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getCheckoutSettingsMissedError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->i:Landroid/view/View;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/e$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->f:Landroid/content/ComponentName;

    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->createCheckoutActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    const-string v2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_PAYMENT_BUTTON_METHOD"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xf2

    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private d()Landroid/app/Activity;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 6
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1, p0}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->requestImages([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/e;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->m:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->m:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l()V

    :cond_0
    return-void

    .line 10
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method private o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Drop-in Button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 14
    const-string v1, "GOOGLEPAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->p()V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->r()V

    .line 19
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    const-string v1, "KLARNA_INSTALLMENTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    .line 20
    const-string v1, "KLARNA_INVOICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    :cond_2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->q()V

    .line 25
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    .line 26
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->c(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    return-void

    .line 27
    :cond_4
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v3, "The payment brand is null."

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method private p()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesWalletAvailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v3, "The play-services-wallet library is not available."

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method private q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v3, "Klarna country is not supported."

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private r()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getSecurityPolicyModeForBrand(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    .line 8
    :cond_0
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_REQUIRED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    .line 9
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentMethodNotAvailableError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 6
    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_payment_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->k:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    return-void
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 14
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->f:Landroid/content/ComponentName;

    .line 16
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->loading_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    sget v0, Lcom/oppwa/mobile/connect/R$id;->googlepay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->i:Landroid/view/View;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 7
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    .line 9
    const-string v0, "GOOGLEPAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b()V

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->m()V

    .line 13
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a()V

    return-void
.end method

.method public d(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method g()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    return-void
.end method

.method h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->n()V

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->m:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    return-void
.end method

.method i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    return-void
.end method

.method public imagesRequestFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V

    return-void
.end method

.method public imagesRequestSucceeded(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->containsPaymentBrand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V

    :cond_0
    return-void
.end method

.method j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 7
    sget-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 9
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->l:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object v1

    .line 14
    :cond_0
    new-instance v2, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d:Lcom/oppwa/mobile/connect/provider/IPaymentProvider;

    .line 15
    invoke-interface {v2, v1}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g:Landroid/widget/ImageButton;

    .line 19
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Landroid/widget/ImageButton;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->m()V

    :cond_2
    return-void
.end method

.method k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V

    :cond_0
    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public transactionCompleted(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 0

    return-void
.end method

.method public transactionFailed(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    return-void
.end method
