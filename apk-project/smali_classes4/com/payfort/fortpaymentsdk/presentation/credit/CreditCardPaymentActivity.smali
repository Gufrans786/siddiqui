.class public final Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;
.super Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;
.source "CreditCardPaymentActivity.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreditCardPaymentActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreditCardPaymentActivity.kt\ncom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010\u0008J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0002J\u0008\u0010\u0017\u001a\u00020\u000cH\u0002J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;",
        "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;",
        "()V",
        "binding",
        "Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;",
        "getCurrencyDecimalPoints",
        "",
        "()Ljava/lang/Integer;",
        "getMerchantToken",
        "Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;",
        "hideRememberMe",
        "",
        "initListeners",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onFailure",
        "sdkResponse",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "onSuccess",
        "setupViews",
        "showRememberMe",
        "showResponsePage",
        "startLoading",
        "fortpayment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;


# direct methods
.method public static synthetic $r8$lambda$grkWFfPOus-J8Kk5s7yhC18-Aok(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->initListeners$lambda$4(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vsYxMITaUs2ldGLS6KF4ISN-CkY(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->initListeners$lambda$5(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    return-object p0
.end method

.method private final getCurrencyDecimalPoints()Ljava/lang/Integer;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "currencyDecimalPoints"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "merchantToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    return-object v0
.end method

.method private final hideRememberMe()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeRL:Landroid/widget/LinearLayout;

    const-string v3, "binding.rememberMeRL"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeTB:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method private final initListeners()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v3, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeTB:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$$ExternalSyntheticLambda1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;-><init>(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setOnMaskedNumberChanged(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final initListeners$lambda$4(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->onBackPressed()V

    return-void
.end method

.method private static final initListeners$lambda$5(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-virtual {p0, p2}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->isRememberMeEnabled(Z)V

    return-void
.end method

.method private final setupViews()V
    .locals 10

    .line 39
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "currency"

    invoke-virtual {v0, v1, v2}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getParamValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v1, v0}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getCurrencySymbolResId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 42
    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v4, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_0
    iget-object v4, v4, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->currencySymbolIV:Landroid/widget/ImageView;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->currencySymbolIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->amountTV:Landroid/widget/TextView;

    sget-object v4, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getCurrencyDecimalPoints()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->formatAmount(Ljava/util/Map;IZ)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->currencySymbolIV:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->amountTV:Landroid/widget/TextView;

    sget-object v4, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getCurrencyDecimalPoints()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/payfort/fortpaymentsdk/utils/Utils;->formatAmount$default(Lcom/payfort/fortpaymentsdk/utils/Utils;Ljava/util/Map;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getPaymentOptionValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 51
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getPaymentOptionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 52
    :cond_7
    :goto_1
    sget-object v4, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    invoke-virtual {v4, v0}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCodeOrNull(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v0

    .line 53
    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v4, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_8
    iget-object v4, v4, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getEnvironment$fortpayment_release()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setUp$fortpayment_release(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 54
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_10

    sget v5, Lcom/payfort/fortpaymentsdk/R$dimen;->_10sdp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_10

    sget v6, Lcom/payfort/fortpaymentsdk/R$dimen;->_20sdp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 56
    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v6, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_9
    iget-object v6, v6, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v6}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_a

    float-to-int v7, v4

    invoke-virtual {v6, v7, v5, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 58
    :cond_a
    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v6, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_b
    iget-object v6, v6, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardCvv:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    invoke-virtual {v6}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_c

    float-to-int v7, v4

    invoke-virtual {v6, v7, v5, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 60
    :cond_c
    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v6, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_d
    iget-object v6, v6, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-virtual {v6}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_e

    float-to-int v7, v4

    invoke-virtual {v6, v7, v5, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 62
    :cond_e
    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v6, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_f
    iget-object v6, v6, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->cardHolderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    invoke-virtual {v6}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_10

    float-to-int v4, v4

    invoke-virtual {v6, v4, v5, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    :cond_10
    if-eqz v0, :cond_12

    .line 66
    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v4, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_11
    iget-object v4, v4, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardCvv:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    invoke-virtual {v4, v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setUpPaymentOption$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 68
    :cond_12
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->hideRememberMe()V

    .line 69
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 71
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->isRememberMe()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->displayRememberMe(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 73
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->showRememberMe()V

    goto/16 :goto_a

    .line 78
    :cond_13
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/LocalizationService;->getDefaultLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getDefaultLocale(this)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ar"

    const/4 v5, 0x2

    invoke-static {v0, v4, v1, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 79
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_14
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getMaskedCardNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_15
    move-object v4, v3

    :goto_2
    invoke-static {v4}, Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil;->hackMaskedCardForArabic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setText$fortpayment_release(Ljava/lang/String;)V

    goto :goto_4

    .line 80
    :cond_16
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_17

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_17
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getMaskedCardNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_18
    move-object v4, v3

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setText$fortpayment_release(Ljava/lang/String;)V

    .line 82
    :goto_4
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getExpDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_19
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v0

    const-string v4, "expDate"

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getExpDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :cond_1a
    move-object v0, v3

    :goto_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getExpDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_1b
    move-object v0, v3

    :goto_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x4

    if-lt v0, v6, :cond_1f

    .line 83
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getExpDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_1c
    move-object v0, v3

    .line 84
    :goto_8
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getExpDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_1d
    move-object v1, v3

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v1, :cond_1e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1e
    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-virtual {v1, v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setText$fortpayment_release(Ljava/lang/String;)V

    .line 90
    :cond_1f
    :goto_a
    new-instance v0, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v1, :cond_20

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_20
    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const-string v4, "binding.etCardNumberView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v4, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_21
    iget-object v4, v4, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardCvv:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    const-string v5, "binding.etCardCvv"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v5, :cond_22

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_22
    iget-object v5, v5, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    const-string v6, "binding.etCardExpiry"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v6, :cond_23

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_23
    iget-object v6, v6, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->cardHolderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    const-string v7, "binding.cardHolderNameView"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;-><init>(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/views/CardCvvView;Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;)V

    .line 93
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v1, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_24
    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getEnvironment$fortpayment_release()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v5

    const-string v6, "getMerchantRequest()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    check-cast v6, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    invoke-virtual {v1, v4, v5, v0, v6}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setUpInternalButton$fortpayment_release(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    .line 94
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_25

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    move-object v3, v0

    :goto_b
    iget-object v0, v3, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->isValidatedBefore$fortpayment_release(Z)V

    return-void
.end method

.method private final showRememberMe()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeRL:Landroid/widget/LinearLayout;

    const-string v3, "binding.rememberMeRL"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->showVisibility(Landroid/view/View;Z)V

    .line 159
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeTB:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method private final showResponsePage(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "merchantReq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 141
    const-string v1, "sdkResp"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    const-string p1, "defaultLocale"

    invoke-static {}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->getDEFAULT_SYSTEM_LANGUAGE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->loadingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->displayCancelPaymentDialog(Landroid/app/Activity;)V

    return-void

    .line 153
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payfort/fortpaymentsdk/R$string;->pf_no_back_tnx_processing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez p1, :cond_0

    .line 32
    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->setupViews()V

    .line 34
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->initListeners()V

    return-void
.end method

.method public onFailure(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 2

    const-string v0, "sdkResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->backToMerchant(Landroid/app/Activity;Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 2

    const-string v0, "sdkResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->isShowResponsePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->showResponsePage(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->backToMerchant(Landroid/app/Activity;Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method public startLoading()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->loadingContainer:Landroid/widget/RelativeLayout;

    const-string v3, "binding.loadingContainer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->visible(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->cardHolderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v0, v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-virtual {v0, v3}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardCvv:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    invoke-virtual {v0, v3}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeRL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-virtual {v0, v3}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setEnabled(Z)V

    return-void
.end method
