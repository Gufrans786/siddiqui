.class Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;
.super Ljava/lang/Object;
.source "CardPaymentInfoFragment.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Editable;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->c(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)V

    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->d(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)V

    return-void
.end method
