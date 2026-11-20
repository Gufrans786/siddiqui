.class public abstract Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

.field protected b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

.field protected c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

.field protected g:Landroid/content/ComponentName;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

.field protected j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

.field protected k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

.field protected l:Lcom/google/android/gms/wallet/PaymentsClient;

.field protected m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

.field protected n:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

.field protected o:Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;

.field protected p:Lcom/oppwa/mobile/connect/exception/PaymentError;

.field protected q:I

.field private r:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public static synthetic $r8$lambda$G7ZUfU1eA_99DfDDCp9UYnTsnTs(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GRUtTR3BOig3HlhBCRra2mi5qwo(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gbv_TCe4j0rcu-uJ7mIusGzz6wk(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Ttpu5CG71t7e6iO1XQpC14z9cc(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e:Z

    .line 23
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->o:Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Landroid/os/Bundle;
    .locals 3

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    const-string v2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    const-string v2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->i:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    const-string v2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_BRAND"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TOKEN"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    .line 144
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->k()Z

    move-result p1

    .line 145
    const-string p2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_SKIP_PAYMENT_METHOD_SELECTION_SCREEN"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p4, :cond_0

    .line 149
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PROVIDER_MODE"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 153
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    const-string p1, "Google Pay error with no status message"

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;)V

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 10
    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;)V

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 18
    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;)V

    .line 19
    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 26
    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda4;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;)V

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 95
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d()V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 97
    invoke-static {p2}, Lcom/google/android/gms/wallet/PaymentData;->getFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/wallet/PaymentData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e()V

    .line 105
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/google/android/gms/wallet/PaymentData;)V

    .line 107
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 108
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    .line 110
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p2, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Ljava/lang/String;Lcom/google/android/gms/wallet/PaymentData;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 117
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/google/android/gms/wallet/PaymentData;)V

    return-void

    .line 118
    :cond_3
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 119
    :cond_4
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private a(ILcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->q:I

    .line 156
    invoke-virtual {p0, p2, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)Landroid/content/Intent;

    move-result-object p2

    .line 158
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 28
    const-string p1, "TRANSACTION_RESULT_KEY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 29
    const-string v0, "PAYMENT_ERROR_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/exception/PaymentError;

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d()V

    return-void
.end method

.method private b()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 16
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Google Pay payment data is empty."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Lcom/google/android/gms/wallet/PaymentData;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->getCardInfo()Lcom/google/android/gms/wallet/CardInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/wallet/CardInfo;->getCardNetwork()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    const-string v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 31
    const-string v0, "cardNetwork"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    const-string v0, "MASTERCARD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const-string p1, "MASTER"

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 66
    new-instance v1, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/token/Token;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 71
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/payment/PaymentParams;Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "PAYTRAIL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->createPaytrailPaymentParams(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isKlarnaAvailable:Z

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;

    invoke-direct {v1, v0, p1}, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 11
    :cond_1
    const-string v1, "INICIS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Lcom/oppwa/mobile/connect/payment/inicis/InicisPaymentParams;

    invoke-direct {v1, v0, p1}, Lcom/oppwa/mobile/connect/payment/inicis/InicisPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 14
    :cond_2
    new-instance v1, Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-direct {v1, v0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string p1, "PAYMENT_PARAMS_RESULT_KEY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 2
    const-string v0, "TOKENIZED_RESULT_KEY"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/payment/PaymentParams;Z)V

    return-void
.end method

.method private d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p1, "PAYMENT_METHOD_RESULT_KEY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "TOKEN_RESULT_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/ProcessingFragment;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/ProcessingFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)Landroid/content/Intent;
.end method

.method protected a(Lcom/google/android/gms/wallet/PaymentData;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    .line 85
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->g:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-static {p0, v0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/k;->a(Landroid/app/Activity;Landroid/content/ComponentName;Lcom/oppwa/mobile/connect/payment/PaymentParams;Lcom/google/android/gms/wallet/PaymentData;)Landroid/content/Intent;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->newInstance(Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/payment/PaymentParams;Z)V
    .locals 2

    .line 45
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 46
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->n:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    invoke-virtual {v0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->n:Lcom/oppwa/mobile/connect/checkout/dialog/d0;

    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;)V

    invoke-virtual {p1, p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;)V

    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e()V

    .line 65
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/google/android/gms/wallet/PaymentData;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, v0, p1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(ILcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V
    .locals 1

    .line 129
    instance-of v0, p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    if-eqz v0, :cond_0

    .line 130
    check-cast p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;->getError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getUnexpectedExceptionError(Ljava/lang/Exception;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    .line 135
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 2

    const/4 v0, 0x0

    .line 66
    :try_start_0
    const-string v1, "GOOGLEPAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->i()V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/dialog/b0;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;-><init>(Lcom/oppwa/mobile/connect/payment/PaymentParams;)V

    .line 76
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->a()V

    .line 77
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/b0;->b()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->m:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 79
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e()V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/google/android/gms/wallet/PaymentData;)V

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d()V

    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .line 127
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/z;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 1

    .line 60
    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->newInstance(Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected b(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 2

    .line 7
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->p:Lcom/oppwa/mobile/connect/exception/PaymentError;

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorCode()Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    :cond_0
    const/16 v0, 0x66

    .line 15
    invoke-direct {p0, v0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(ILcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b(Ljava/lang/String;)Z

    move-result v0

    .line 45
    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/z;->a(Ljava/lang/String;Z)Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;

    move-result-object v0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    sget-object p3, Lcom/oppwa/mobile/connect/checkout/dialog/t;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    if-ne p2, p3, :cond_0

    instance-of p1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->g()V

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->i:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->isCardBrand(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
.end method

.method protected d()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "Checkout was canceled"

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->warning(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    :cond_0
    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(ILcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h()V

    return-void
.end method

.method protected f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->h()V

    return-void
.end method

.method protected g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->k:Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->j:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->i:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    invoke-static {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->newInstance(Lcom/oppwa/mobile/connect/checkout/dialog/a0;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Lcom/oppwa/mobile/connect/payment/CheckoutInfo;Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->l:Lcom/google/android/gms/wallet/PaymentsClient;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->c()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->getPaymentsClient(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->l:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getGooglePayPaymentDataRequestJson()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 9
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getGooglePayPaymentDataRequestJson()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/wallet/PaymentDataRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentDataRequest;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 15
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->l:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/wallet/PaymentsClient;->loadPaymentData(Lcom/google/android/gms/wallet/PaymentDataRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/16 v1, 0x309

    .line 17
    invoke-static {v0, p0, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->resolveTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;I)V

    return-void

    .line 23
    :cond_2
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v3, "Payment data request is invalid."

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method protected abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x309

    if-eq p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/Exception;)V

    return-void

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 3
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;Z)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->r:Landroidx/activity/OnBackPressedCallback;

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->r:Landroidx/activity/OnBackPressedCallback;

    .line 20
    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->r:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    return-void
.end method
