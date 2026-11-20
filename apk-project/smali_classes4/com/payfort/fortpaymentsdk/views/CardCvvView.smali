.class public final Lcom/payfort/fortpaymentsdk/views/CardCvvView;
.super Lcom/payfort/fortpaymentsdk/views/FortView;
.source "CardCvvView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/views/CardCvvView$Companion;,
        Lcom/payfort/fortpaymentsdk/views/CardCvvView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardCvvView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardCvvView.kt\ncom/payfort/fortpaymentsdk/views/CardCvvView\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,91:1\n65#2,16:92\n93#2,3:108\n*S KotlinDebug\n*F\n+ 1 CardCvvView.kt\ncom/payfort/fortpaymentsdk/views/CardCvvView\n*L\n31#1:92,16\n31#1:108,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0017\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\u0010J\u0017\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0000\u00a2\u0006\u0002\u0008\u0012J\r\u0010\u0013\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0014R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/views/CardCvvView;",
        "Lcom/payfort/fortpaymentsdk/views/FortView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "cardNumberView",
        "Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;",
        "defaultPaymentOption",
        "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;",
        "getCardBrand",
        "isValid",
        "",
        "setCardNumberView",
        "",
        "setCardNumberView$fortpayment_release",
        "setUpPaymentOption",
        "setUpPaymentOption$fortpayment_release",
        "validateCvc",
        "validateCvc$fortpayment_release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/payfort/fortpaymentsdk/views/CardCvvView$Companion;

.field private static final DEFAULT_MAX_LENGTH:I = 0x3


# instance fields
.field private cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

.field private defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;


# direct methods
.method public static synthetic $r8$lambda$8CPo-UGrFokKvF1PlYSAAZm3Ops(Lcom/payfort/fortpaymentsdk/views/CardCvvView;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->_init_$lambda$1(Lcom/payfort/fortpaymentsdk/views/CardCvvView;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/views/CardCvvView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/views/CardCvvView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->Companion:Lcom/payfort/fortpaymentsdk/views/CardCvvView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;->CARD_CVV:Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;

    invoke-direct {p0, p1, v0, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 28
    :goto_1
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 29
    :goto_2
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p2, "1234567890"

    invoke-static {p2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p2

    check-cast p2, Landroid/text/method/KeyListener;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 31
    :goto_3
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/TextView;

    .line 107
    new-instance p2, Lcom/payfort/fortpaymentsdk/views/CardCvvView$special$$inlined$addTextChangedListener$default$1;

    invoke-direct {p2, p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView$special$$inlined$addTextChangedListener$default$1;-><init>(Lcom/payfort/fortpaymentsdk/views/CardCvvView;)V

    .line 108
    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 36
    :cond_4
    new-instance p1, Lcom/payfort/fortpaymentsdk/views/CardCvvView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView$$ExternalSyntheticLambda0;-><init>(Lcom/payfort/fortpaymentsdk/views/CardCvvView;)V

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/payfort/fortpaymentsdk/views/CardCvvView;Landroid/view/View;Z)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->validateCvc$fortpayment_release()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCardBrand(Lcom/payfort/fortpaymentsdk/views/CardCvvView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getCardBrand()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object p0

    return-object p0
.end method

.method private final getCardBrand()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;
    .locals 6

    .line 69
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCardNumberOrNull(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    check-cast v3, Ljava/lang/CharSequence;

    const-string v1, "*"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v1, v4, v5, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    return-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    :cond_5
    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getCardBrand()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;->isValidCardCvc(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setCardNumberView$fortpayment_release(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;-><init>(Lcom/payfort/fortpaymentsdk/views/CardCvvView;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->onValueChanged$fortpayment_release(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final setUpPaymentOption$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V
    .locals 3

    .line 84
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    .line 86
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultCvcLength()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final validateCvc$fortpayment_release()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getCardBrand()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;->isValidCardCvc(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/payfort/fortpaymentsdk/views/CardCvvView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_cancel_cvv_amex_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setError(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_cancel_cvv_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setError(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_cancel_required_field:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setError(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setError(Ljava/lang/String;)V

    return-void
.end method
