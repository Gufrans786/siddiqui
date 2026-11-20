.class public final Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;
.source "CheckoutActivity.java"


# static fields
.field public static final ACTION_ON_BEFORE_SUBMIT:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.action.ACTION_ON_BEFORE_SUBMIT"

.field public static final CHECKOUT_PAYMENT_BUTTON_METHOD:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_PAYMENT_BUTTON_METHOD"

.field public static final CHECKOUT_RECEIVER:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_RECEIVER"

.field public static final CHECKOUT_RESULT_ERROR:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_ERROR"

.field public static final CHECKOUT_RESULT_RESOURCE_PATH:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_RESOURCE_PATH"

.field public static final CHECKOUT_RESULT_SETTINGS:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_SETTINGS"

.field public static final CHECKOUT_RESULT_TRANSACTION:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_TRANSACTION"

.field public static final CHECKOUT_SETTINGS:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

.field public static final EXTRA_CHECKOUT_ID:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_ID"

.field public static final EXTRA_GOOGLE_PAY_PAYMENT_DATA:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_GOOGLE_PAY_PAYMENT_DATA"

.field public static final EXTRA_ORDER_SUMMARY:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_ORDER_SUMMARY"

.field public static final EXTRA_PAYMENT_BRAND:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_BRAND"

.field public static final EXTRA_SENDER_COMPONENT_NAME:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_SENDER_COMPONENT_NAME"

.field public static final EXTRA_TRANSACTION_ABORTED:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION_ABORTED"

.field public static final REQUEST_CODE_CHECKOUT:I = 0xf2

.field public static final RESULT_CANCELED:I = 0x65

.field public static final RESULT_ERROR:I = 0x66

.field public static final RESULT_OK:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 2

    .line 18
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->getLogLibrariesInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checkout started:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.STATE_PAYMENT_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/PaymentParams;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 17
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.STATE_IS_CHECKOUT_FRAGMENT_INITIATED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e:Z

    return-void
.end method

.method private static a(Lcom/oppwa/mobile/connect/checkout/dialog/a0;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configured payment brands: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setKlarnaCountry(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 13
    :cond_0
    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->a(Landroid/app/Activity;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getCheckoutSettingsMissedError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checkout id was changed:\nNew checkout id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nOld checkout id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION_ABORTED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->setCurrentCheckoutId(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->e(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCheckoutIdInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getTransactionAbortedError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-virtual {v2, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->setCheckoutId(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v2, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setCheckoutId(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->setResourcePath(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCustomLogos()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCustomLogos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/util/Map;)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getThemeResId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getThemeResId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->d()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 3
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->d()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Ljava/lang/String;[Lcom/oppwa/mobile/connect/payment/token/Token;)Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void
.end method

.method private x()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "CARD"

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->g()V

    return-void

    .line 10
    :cond_2
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getNoAvailablePaymentMethodsError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method


# virtual methods
.method protected a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    const-string v2, "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_TRANSACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_ERROR"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getResourcePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_RESOURCE_PATH"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppwa/mobile/connect/utils/Logger;->checkOutdatedFiles(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->g:Landroid/content/ComponentName;

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_PAYMENT_BUTTON_METHOD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->b:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    :goto_0
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isWindowSecurityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->t()V

    .line 17
    :cond_2
    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_activity_checkout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 19
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->v()V

    .line 29
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 30
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v1

    .line 31
    invoke-static {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    .line 33
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-direct {v0, p0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->n:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    .line 35
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->s()V

    if-eqz p1, :cond_3

    .line 38
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->a(Landroid/os/Bundle;)V

    return-void

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->b:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    if-ne p1, v0, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f()V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.action.ACTION_ON_BEFORE_SUBMIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->b(Landroid/content/Intent;)V

    .line 10
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_ORDER_SUMMARY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 12
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOOGLEPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;)V

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.STATE_PAYMENT_PARAMS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e:Z

    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.STATE_IS_CHECKOUT_FRAGMENT_INITIATED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->i:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e:Z

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->a(Lcom/oppwa/mobile/connect/checkout/dialog/a0;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/t;->b:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    if-ne v0, v1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->x()V

    return-void

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method u()Lcom/oppwa/mobile/connect/checkout/dialog/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    return-object v0
.end method
