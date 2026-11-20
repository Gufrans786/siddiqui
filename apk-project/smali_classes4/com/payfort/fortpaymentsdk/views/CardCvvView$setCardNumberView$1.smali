.class final Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CardCvvView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setCardNumberView$fortpayment_release(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/views/CardCvvView;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/views/CardCvvView;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    .line 46
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->access$getCardBrand(Lcom/payfort/fortpaymentsdk/views/CardCvvView;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/CardCvvView$setCardNumberView$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    .line 47
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultCvcLength()I

    move-result p1

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    :goto_0
    return-void
.end method
