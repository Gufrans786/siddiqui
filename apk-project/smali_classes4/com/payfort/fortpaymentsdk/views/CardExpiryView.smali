.class public final Lcom/payfort/fortpaymentsdk/views/CardExpiryView;
.super Lcom/payfort/fortpaymentsdk/views/FortView;
.source "CardExpiryView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/views/CardExpiryView$Companion;,
        Lcom/payfort/fortpaymentsdk/views/CardExpiryView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardExpiryView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardExpiryView.kt\ncom/payfort/fortpaymentsdk/views/CardExpiryView\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,118:1\n65#2,16:119\n93#2,3:135\n18#3:138\n18#3:140\n26#4:139\n26#4:141\n*S KotlinDebug\n*F\n+ 1 CardExpiryView.kt\ncom/payfort/fortpaymentsdk/views/CardExpiryView\n*L\n35#1:119,16\n35#1:135,3\n49#1:138\n53#1:140\n49#1:139\n53#1:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J \u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\r\u0010\u0011\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0013J\r\u0010\u0014\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\r\u0010\u0018\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/views/CardExpiryView;",
        "Lcom/payfort/fortpaymentsdk/views/FortView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "controlDigits",
        "",
        "editable",
        "Landroid/text/Editable;",
        "formatExpiryDate",
        "expiryDateET",
        "Landroid/widget/EditText;",
        "lastInput",
        "",
        "currentInput",
        "getMonth",
        "",
        "getMonth$fortpayment_release",
        "getYear",
        "getYear$fortpayment_release",
        "isValid",
        "",
        "validateExpiryDate",
        "validateExpiryDate$fortpayment_release",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/views/CardExpiryView$Companion;

.field private static final DEFAULT_MAX_LENGTH:I = 0x5

.field private static final DIVIDER:C = '/'

.field private static final _DIVIDER:Ljava/lang/String; = "/"


# direct methods
.method public static synthetic $r8$lambda$9YTigB60fgWrVYxF2pZNiFhib7Y(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->_init_$lambda$2(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->Companion:Lcom/payfort/fortpaymentsdk/views/CardExpiryView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;->CARD_EXPIRY:Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;

    invoke-direct {p0, p1, v0, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 32
    :goto_1
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "1234567890/-"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    check-cast v0, Landroid/text/method/KeyListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 33
    :goto_2
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 34
    :goto_3
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string p2, ""

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Landroid/widget/TextView;

    .line 134
    new-instance v0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;

    invoke-direct {v0, p0, p1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;-><init>(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 135
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    :cond_4
    new-instance p1, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$$ExternalSyntheticLambda0;-><init>(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;)V

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/view/View;Z)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->validateExpiryDate$fortpayment_release()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$controlDigits(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/text/Editable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->controlDigits(Landroid/text/Editable;)V

    return-void
.end method

.method public static final synthetic access$formatExpiryDate(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->formatExpiryDate(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final controlDigits(Landroid/text/Editable;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 106
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v3, v2, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final formatExpiryDate(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/yy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 75
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 77
    :catch_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "0"

    const/16 v8, 0xc

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x2

    const-string v11, "/"

    if-ne v0, v4, :cond_1

    invoke-static {p2, v11, v10, v4, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 78
    const-string v3, "/"

    const-string v4, ""

    const/4 v5, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gt p2, v8, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 86
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-static {p2, v11, v10, v4, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 87
    const-string v3, "/"

    const-string v4, ""

    const/4 v5, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gt p2, v8, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 92
    :cond_2
    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v9, :cond_4

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 96
    const-string v3, "/"

    const-string v4, ""

    const/4 v5, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, v9, :cond_4

    .line 98
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final getMonth$fortpayment_release()I
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    new-array v0, v1, [Ljava/lang/String;

    .line 49
    :cond_0
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final getYear$fortpayment_release()I
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    new-array v0, v0, [Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 53
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isValid()Z
    .locals 4

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getMonth$fortpayment_release()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getYear$fortpayment_release()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;->isValidCardExpiryDate(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final validateExpiryDate$fortpayment_release()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getMonth$fortpayment_release()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getYear$fortpayment_release()I

    move-result v1

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;->isValidCardExpiryDate(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$WhenMappings;->$EnumSwitchMapping$0:[I

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

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_cancel_exp_date_in_past:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setError(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_cancel_exp_date_invalid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setError(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_cancel_required_field:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setError(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setError(Ljava/lang/String;)V

    return-void
.end method
