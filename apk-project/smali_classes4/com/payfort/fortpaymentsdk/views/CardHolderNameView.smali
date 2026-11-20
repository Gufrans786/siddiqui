.class public final Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;
.super Lcom/payfort/fortpaymentsdk/views/FortView;
.source "CardHolderNameView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/views/CardHolderNameView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;",
        "Lcom/payfort/fortpaymentsdk/views/FortView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "isValid",
        "",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView$Companion;

.field private static final DEFAULT_MAX_LENGTH:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->Companion:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;->CARD_HOLDER_NAME:Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;

    invoke-direct {p0, p1, v0, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-array v0, v0, [Landroid/text/InputFilter$LengthFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, p2

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;->isValidCardHolderName(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
