.class public final Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 FortCardNumberView.kt\ncom/payfort/fortpaymentsdk/views/FortCardNumberView\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n69#2,34:98\n71#3:132\n77#4:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;


# direct methods
.method public constructor <init>(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$setServerCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 102
    sget-object v1, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    invoke-virtual {v1, p1}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCardNumber(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v1

    .line 103
    sget-object v3, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->UNKNOWN:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eq v1, v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v3, v1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$setLastCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v3, v1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$setCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 107
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$getLastCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    iget-object v8, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v8}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$getLastCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultMaxLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v2

    :goto_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    iget-object v8, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v8}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$getCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultMaxLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_5
    move-object v8, v2

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 112
    :goto_2
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$getDefaultPaymentOption$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v3

    if-nez v3, :cond_b

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x4

    if-lt v3, v6, :cond_9

    .line 114
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v6}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$getCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v6

    sget-object v7, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->UNKNOWN:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eq v6, v7, :cond_7

    move v6, v4

    goto :goto_3

    :cond_7
    move v6, v5

    :goto_3
    invoke-virtual {v3, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 115
    :goto_4
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v6}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$getCardBrand$p(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getIcon()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v2

    :goto_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    goto :goto_6

    .line 116
    :cond_9
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    :cond_b
    :goto_6
    const/16 v3, 0xf

    const/4 v6, 0x2

    .line 121
    const-string v7, "*"

    if-ne v0, v3, :cond_c

    sget-object v3, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->AMEX:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eq v1, v3, :cond_d

    :cond_c
    const/16 v1, 0x10

    if-eq v0, v1, :cond_d

    const/16 v1, 0x13

    if-ne v0, v1, :cond_e

    :cond_d
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 122
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->access$checkCardNumber(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)V

    .line 125
    :cond_e
    check-cast p1, Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {p1, v7, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 126
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getOnMaskedNumberChanged$fortpayment_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_f
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->getOnValueChanged$fortpayment_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
