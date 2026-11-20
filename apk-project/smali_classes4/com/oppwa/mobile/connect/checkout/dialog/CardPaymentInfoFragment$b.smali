.class Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$b;
.super Ljava/lang/Object;
.source "CardPaymentInfoFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->t()V
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
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "+"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setSelectionAtTheEnd()V

    :cond_0
    return-void
.end method
